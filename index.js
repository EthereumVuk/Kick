/**
 Normally, whenever we use a class in JS we have to create an instance of that class
 to access any of the methods tied to it.
 */

import React, { Component } from 'react';
import { Card, Button } from 'semantic-ui-react';//use {} when importing one component
import factory from '../ethereum/factory';
import Layout from '../components/Layout';

class CampaignIndex extends Component {
    // with a static keyword this method is not assigned to an instance of a class 
    // instead the function is assigned to the class itself
    static async getInitialProps() {
        const campaigns = await factory.methods.getDeployedCampaings().call();

        return { campaigns }; 
    }

    renderCampaigns() {
        const items = this.props.campaigns.map(address => {
            return {
                header: address,
                description: <a>View Camapign</a>,
                fluid: true
            };
        });

        return <Card.Group items = {items} />;
    }
    
    render() {
        return 
        <Layout>
            <div>
                <h3>Open Campaigns</h3>
                <Button floated = "right" content = "Create Campaign" icon = "add circle" primary/>
                { this.renderCampaigns() }
            </div>
        </Layout>
    }
}

export default CampaignIndex;
