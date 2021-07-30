Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A16F63DB704
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jul 2021 12:13:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C84A6F421;
	Fri, 30 Jul 2021 10:13:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 058F36F421
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Jul 2021 10:13:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10060"; a="212796835"
X-IronPort-AV: E=Sophos;i="5.84,281,1620716400"; d="scan'208";a="212796835"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2021 03:13:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,281,1620716400"; d="scan'208";a="507928380"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP; 30 Jul 2021 03:13:41 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 30 Jul 2021 03:13:41 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 30 Jul 2021 03:13:40 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Fri, 30 Jul 2021 03:13:40 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Fri, 30 Jul 2021 03:13:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WOE0BTtXqQcZK4uK+tJ7M5KfJsm1iPUGvGfaFWy0uzZU2Y481SFe/A4MWHGrFVaGrqfIXvY0jihDBcDyWRxgMeP9TchV1EFpZ22OaP/2r8juriiwtQz4fiur6C5qoG5ZUoADZ12rL27+CH9HzfIDV9sj9mBmrjKRNFznV9Q4DhO/bCGljdhfsT30qpBMNZBRNsM5L1CSu9yMBf4wo94vJ5g40Rx6xTla2UIN6HiF90Re9mIUzUVt1B/bDya7FCm01ZOvcNaLNUqkNFKHKEEGZSgrMzJ+LHk3MA8P+lyQb9pZawgD2aZSpOyLNtGQkp3k8fMTE5/R8U11xJfh6bIumg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yFu84iho+VOP6puRE8sAJzVc4m60i4p/1MlIxcYm450=;
 b=feTsKD5K6mvSJyCNSsqcSKEmLuP09nQbI9EqizKjhf3teHBohkJJ/J7efDA+qAxf1Vp02i+OzuN9S0pAgFwDPPqLOSWON0h0YxmT0lFsjz/kIq5udh6S2TtRSLiTjYWjCtkzlMZvot5AIfBfjwESUzER/pC/aMj7K3cMV+JWHZTDRdhxj9CFWY1IhABihI8YW77lhHIIU6ZKxDekkyUiBg1iohAMtDPnKAUBTqAt5acU0YCvEF2iqtxZnbyLkJ7sqy9S9OCSRr71XyIUZXYLDWJyTeN6Kc7Z1aM9SmRpF57NkKHiFe2RLhizrQtEC+l2NvBecQjrNIMv3PT5QI8Zwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yFu84iho+VOP6puRE8sAJzVc4m60i4p/1MlIxcYm450=;
 b=taVuj6fDPHCb1jFib/xVWQgLqcG+yPB/DWm+m4P6ZglZ8bQETH4gdCmZcTvD+huty5VOaDa3/btFQw6Qf21kaVDnKCSME+0vpI0T54sey5g61kXaN8TBgjwrEUyQ1sjzWW3OTid3mHd317B5rh1V8KsOkhLNGq5Xe/mP8Kgi7xQ=
Authentication-Results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5501.namprd11.prod.outlook.com (2603:10b6:5:39d::23)
 by DM5PR11MB1804.namprd11.prod.outlook.com (2603:10b6:3:114::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.18; Fri, 30 Jul
 2021 10:13:38 +0000
Received: from DM4PR11MB5501.namprd11.prod.outlook.com
 ([fe80::5d0c:2e2e:b7e7:eb3b]) by DM4PR11MB5501.namprd11.prod.outlook.com
 ([fe80::5d0c:2e2e:b7e7:eb3b%6]) with mapi id 15.20.4373.025; Fri, 30 Jul 2021
 10:13:38 +0000
To: "Shankar, Uma" <uma.shankar@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
References: <1626668714-17780-1-git-send-email-ankit.k.nautiyal@intel.com>
 <77eb4fa7722a488ebe653c37bad259e5@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <58b2957b-c70e-3c13-a853-cd288a071b34@intel.com>
Date: Fri, 30 Jul 2021 15:43:27 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.12.0
In-Reply-To: <77eb4fa7722a488ebe653c37bad259e5@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
X-ClientProxiedBy: PN0PR01CA0022.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:4e::19) To DM4PR11MB5501.namprd11.prod.outlook.com
 (2603:10b6:5:39d::23)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.0.103] (49.207.223.26) by
 PN0PR01CA0022.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c01:4e::19) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4373.20 via Frontend Transport; Fri, 30 Jul 2021 10:13:36 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ea6a7f20-4438-48ec-0e8a-08d95342b2a1
X-MS-TrafficTypeDiagnostic: DM5PR11MB1804:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM5PR11MB1804A57A1D1C4E58AD7F0DA2CEEC9@DM5PR11MB1804.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2tv31SIAkv7pjcHRrQ7Jr70Hbx/ttYQFC4Pevk0heAVVmE+V2OCzhTe119/uv1g6gOt5WcnVAH5dlCWvU/lXxCOMIRsndW8ba6pVAzSx0C45nB4liJpI+Wg8YkVJFKtSDuYpTwlkARSELl/MUZwY7J30ANQ33JDYMyiuetHd2yW7ML3rmjh7UaUfUlIILBGHhIrmax3Y8hLXVsIwlZLQgaCkTvIvNzi+MA7gJks1dOvBCsO5vPZTD6Ew5eXhwT9t87AnVpE1OSzKgekM7WLqPpacNfleo27C3LsePJqL78n/OJIRp+Lm+JKMYtWqQwQi8cTyCpzKD99IF3q1LIhgZO5AbFqNRxnx7IAQiG2RxzM/KvVpRFSl5pWZEvuv+LS04RoFUcRvQl5/ewYIjdjREpd2FG1Vt2nhfLcfqFhwCaxTqzsTRRGngJ+bN1ZOXmAMNUbPlkHgYoAspU59dtCvG9ra+F1y42i0tYzxczMaCiIYBgQ5IhPvyuiCJYb7FqFZnPbjRVZ5RIOentckA545uoHvEc9Yw4a1GB7+lKlaWtt2x8aplWlWy+ck3tGb03tzhGtKeG/nGwqsF2kyxmGTGD7eWMrboNoObp/BonSeL5AzhmQo38Bbc2niVZOy0NVPPDMEDQf4U5TJ4eJU4v9sDdZ8LCqqqPnErB+ZcJyDavXsLGiWt+L9IbNJ023jgQ/3Wc4HrPWw+zI+4ckTPteflBFF8MVayjzA+k1/MpzafY0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5501.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(26005)(31686004)(86362001)(36756003)(83380400001)(8676002)(6486002)(66476007)(66556008)(53546011)(31696002)(8936002)(2906002)(186003)(66946007)(956004)(55236004)(316002)(2616005)(16576012)(110136005)(966005)(5660300002)(508600001)(38100700002)(1006002)(6666004)(4326008)(54906003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WGl1a1cxR3NnYm1xdXlxdS9RZGRlSUtCcTRCdW44TUdDVWJ3ODZMeXh2L2NT?=
 =?utf-8?B?aEhIb3JiRmZrNzY1elcxcUlwbTZ3YlpRREpvczZ6N0ZVMTQ1SjV2SmoyWmVr?=
 =?utf-8?B?OXd0cWp5NjF3a1RBRHRDOHZaenJyUHJ1dUxUNmNGZFlubFA0OWY4dkI0QlVW?=
 =?utf-8?B?U0FGN0Z4bjlialJsN0I0REhIM1BNcHBPWld4bVZwUk1zR05VWGVFK0FDWDJ2?=
 =?utf-8?B?T0k3OUluVit0eTlXM3JIV010aW5uNnU2bmJJenQzVlBsZHpqRGlPdUdqZ1pq?=
 =?utf-8?B?VEdxNmwxVlk0RXQ3MlA3R1RVcWh6TzRhVE4xZ1AydGtyVzZlQkpSMFM3RzVs?=
 =?utf-8?B?bndtR1F6K1V0UTZBRlZRYUhJMUp6VHdDc2JHSk1SNkxvdGNXRjBKN0ZxLzdl?=
 =?utf-8?B?c2NYbVZablZDam9mYXlFOWU0ZkJzZ2d5bUx2OXBwZVR5OVkvK0l5R3h5RXFz?=
 =?utf-8?B?S1VJYk5iMmhFNCtNYlVLWkl4WUtvbjhDUzN6ckhpWUMvUkg5c0dDS3JCNzNM?=
 =?utf-8?B?YmlxVm1BZUc0Q0g1Um82Ny9COG5wVWtMWE9vNUhGMHdyMDVYWHRIbzJLeGtM?=
 =?utf-8?B?OG5rNEZHUDRyNkRLckt4cTIrbVhvamtzOGZnVENRNnVoZXMzWmRzVU05eGhZ?=
 =?utf-8?B?K1hoVHhnWHBwQXZoQWY1SURrdzNQOTNWeHJ2MExYYW9Xamd3eUJ4c216c2JD?=
 =?utf-8?B?ajFVTC9qUGRicldlK3JpRk5ESE5ORTFnV0tCelMxUWh3TU1CbzVYQkRnaVlT?=
 =?utf-8?B?YWVSMlAzYnQyK25yMnJsSWFVR1pEZzZINFEySGg0ZFkrZEt2UlprVklIOS9i?=
 =?utf-8?B?VzNxQVdCQm0zT0xqMjc2VGFaMnY0K3Q4dHJ5bG5HNGRwTW9qNFloMmpBTkV0?=
 =?utf-8?B?YWtITTBKVGt2U3hETTRQdWdqbkdBUEViR09xdExBbG9kaXl3dGJ5YmdtbGgy?=
 =?utf-8?B?N3ZOeExnMmZqaVJYQWcyaVhPZGFjVWlaVTA1WFBhS3AxQzZUY1lPTmljK25O?=
 =?utf-8?B?VjMrN2tHQ1ZFUk5JdEY0allwTnltYy85RXkzSENtSzZxV2h2bGhrdytFOEVx?=
 =?utf-8?B?Z2ZIUm9lR2RYOVlKelVnNXZqRDc0WWNKSTJiRFZmNVFPam5tVWlVSlg3YXlP?=
 =?utf-8?B?WGVJM2tCU1ZxTWN2WEpKb1hvV0NVWmhIaU5CbmpmR0F1b2s0N09XWnAybXA4?=
 =?utf-8?B?bVVubEJPajBEaUNuZmpnRGEzT0hlMUNCb3plUnlEYmE3YTcrS2NkM3RrRjRp?=
 =?utf-8?B?enNpSFE1Rkx4R1BObGVqY0lTZ0RSeXZQOTg1TzJoTThtSkhTUUcyc3FXS2Ns?=
 =?utf-8?B?VDZHNkpmakxDa2loUnUxT0d3YTVrSmNLOVpZTCsrdDM4TjRIWnFXUXNsdEpa?=
 =?utf-8?B?Z09sRHRZTmRYZjFmTm9raDMwdVF1WWNXYzNZblFZSi9WNWg5aXdxbDV0cWFl?=
 =?utf-8?B?OC9vT2xOOVhmTWNzWjQ1MmtEeEdySmExT0ljbkxFek8vVVNpbU9nWGRObm5H?=
 =?utf-8?B?VkpLQVpGbWhJWnZHU3lGdFZqOXB1aTA5TWd5cmVVZmNTT1o5YTZaejRrMU1N?=
 =?utf-8?B?VGgyZHd4T2tFZG5mcVZ2SDRvcTJOUjR2bGsxNkVRZVB5R0xWM3ZxQW1vZnlD?=
 =?utf-8?B?d1pZYkRRSngvdWNGTSt1WEE2YnhWWTFrblNGZVdKOFk5cjdoNU5sZ0pVUTc2?=
 =?utf-8?B?SHE2bEVyMU91RGlnRXJWTnlTdHhuRDdmUnp4aVNWSlMyL0JUUHpPYVFUWmRH?=
 =?utf-8?Q?Y2twNOIJ8Cq/KbXbMMjpCP+LdH3J9yOppZG/f4c?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ea6a7f20-4438-48ec-0e8a-08d95342b2a1
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5501.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jul 2021 10:13:38.2508 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0qWsExZGDcuGJ24CdOzvidOCW4FHLN9H2lmnkjbDAQZo4Za2D1hbPx29K/LmIUKTe8RY2p5lg3b7xxlm54cLGg0I/Vdi0hSl50nRwk3jwaA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1804
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix the 12 BPC bits for PIPE_MISC
 reg
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Uma,

Thanks for the comments it made me have a look at the things again, 
especially for DSI case.
For Dithering with 12bpc, the bspec doesn’t say anything. In 
intel_display.c we are enabling dithering only for 6bpc panels. However, 
we do write the BPC in Pipe MISC based on pipe_bpp, even if we enable 
dithering or not.
This helps in case of populating crtc_state->pipe_bpp during readout.
For DSI the trans ctl ddi register does not have a BPC field, and so 
readout for crtc_state->bipe_ppp we have to rely on PIPE MISC discussed 
by Ville in [1].
Now that the PIPE_MISC's dithering bpc bits also represent port output 
bpc, it has added to the confusion.

So a simple solution would be to just rename the bits simply as 
PIPE_MISC_#BPC and correct the value of 12 BPC macro which was 
introduced in [2].
So even for older platforms, we keep on writing 12 bpc in PIPE_MISC. 
Since we do not enable dithering, these bits would not mean anything for 
dithering, but continue to serve for reading out of crtc_state->pipe_bpp 
as before.

For newer platform we'll fill PIPE_MISC port output bpc information 
similar to TRANS_DDI_FUNC_CTL bits per color field for all BPC.

[1] 
https://cgit.freedesktop.org/drm-tip/commit/?id=e1b7058ece718c0350ad2e5bfbdab17885bd9f39
[2] 
https://cgit.freedesktop.org/drm-tip/commit/?id=756f85cffef2bc84aa85b25031c1c97721928bd2

Please find my response inline:


On 7/29/2021 1:31 PM, Shankar, Uma wrote:
>
>> -----Original Message-----
>> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
>> Sent: Monday, July 19, 2021 9:55 AM
>> To: intel-gfx@lists.freedesktop.org
>> Cc: Shankar, Uma <uma.shankar@intel.com>; Nikula, Jani <jani.nikula@intel.com>;
>> ville.syrjala@linux.intel.com
>> Subject: [PATCH] drm/i915: Fix the 12 BPC bits for PIPE_MISC reg
> Append display in header.


Thanks, I will take care of this in next version of the patch.

>> From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>
>> Till DISPLAY12 the PIPE_MISC bits 5-7 are used to set the Dithering BPC, with valid
>> values of 6, 8, 10 BPC.
>> For ADLP+ these bits are used to set the PORT OUTPUT BPC, with valid values of: 6,
>> 8, 10, 12 BPC, and need to be programmed whether dithering is enabled or not.
>>
>> This patch:
>> -corrects the bits 5-7 for PIPE MISC register for 12 BPC.
>> -renames the bits and mask to have generic names for these bits for dithering bpc
>> and port output bpc.
>>
> I guess we have 2 issues here. One is wrong definition of 12bpc for dither which seems not
> even there in hw before display 12 platforms.  Other one is the port output bpc fix.
> Would suggest to split this patch in 2 addressing these issues separately. Send 1st patch as
> Fixme (with commit it is fixing), and other as normal feature addition.

Agreed will add the fixes tag for the 12 bpc correction with commit 
mentioned in the link [2] above.

But I think, removing the 12 BPC bit in one patch and reintroducing the 
correct 12 bpc value might break something in DSI for first patch, 
because although the value written in pipe misc is incorrect we still 
use it and translate to correct bpp.

A single patch with correction and the meaning for 12 bpc and putting in 
place why this is required for older platform, as mentioned above should 
be sufficient.


>
>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display.c | 23 +++++++++++++----------
>>   drivers/gpu/drm/i915/i915_reg.h              | 16 +++++++++++-----
>>   2 files changed, 24 insertions(+), 15 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
>> b/drivers/gpu/drm/i915/display/intel_display.c
>> index 65ddb6c..dc4869f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -5760,16 +5760,18 @@ static void bdw_set_pipemisc(const struct
>> intel_crtc_state *crtc_state)
>>
>>   switch (crtc_state->pipe_bpp) {
>>   case 18:
>> -val |= PIPEMISC_DITHER_6_BPC;
>> +val |= PIPEMISC_6_BPC;
>>   break;
>>   case 24:
>> -val |= PIPEMISC_DITHER_8_BPC;
>> +val |= PIPEMISC_8_BPC;
>>   break;
>>   case 30:
>> -val |= PIPEMISC_DITHER_10_BPC;
>> +val |= PIPEMISC_10_BPC;
>>   break;
>>   case 36:
>> -val |= PIPEMISC_DITHER_12_BPC;
>> +/* Port output 12BPC defined for ADLP+ */
>> +if (DISPLAY_VER(dev_priv) > 12)
>> +val |= PIPEMISC_12_BPC_ADLP;
> We have 12 bpc in TRANS_DDI_FUNC_CTRL for BDW+, so what happens to dithering
> if we have 12bpc enabled. We should confirm this.

As mentioned above, bspec doesnt say anything abut dithering with 12 bpc 
and also we enable dithering for 6bpc panels only.


>
>>   break;
>>   default:
>>   MISSING_CASE(crtc_state->pipe_bpp);
>> @@ -5822,15 +5824,16 @@ int bdw_get_pipemisc_bpp(struct intel_crtc *crtc)
>>
>>   tmp = intel_de_read(dev_priv, PIPEMISC(crtc->pipe));
>>
>> -switch (tmp & PIPEMISC_DITHER_BPC_MASK) {
>> -case PIPEMISC_DITHER_6_BPC:
>> +switch (tmp & PIPEMISC_BPC_MASK) {
>> +case PIPEMISC_6_BPC:
>>   return 18;
>> -case PIPEMISC_DITHER_8_BPC:
>> +case PIPEMISC_8_BPC:
>>   return 24;
>> -case PIPEMISC_DITHER_10_BPC:
>> +case PIPEMISC_10_BPC:
>>   return 30;
>> -case PIPEMISC_DITHER_12_BPC:
>> -return 36;
>> +/* PORT OUTPUT 12 BPC defined for ADLP+ */
>> +case PIPEMISC_12_BPC_ADLP:
>> +return DISPLAY_VER(dev_priv) > 12 ? 36 : 0;
> Returning 0 seems odd, as this will give bpp as 0 which is not right.
> We should throw a WARN since getting 12bpc set in pipe_misc is not expected (as not supported)
> on pre gen12.
>
> To me there is some discrepancy here, as transcoder output supports 12bpc so dithering
> also should have that. If not we have a issue with DSI since it tries to get pipe_bpp from
> bdw_get_pipemisc. Please check this out once.

You are right, as mentioned above, its better to keep using the pipe 
misc bpp bits for 12 bpc as well to avoid breaking DSI.

Since, we do not enable dithering in such case, it shouldn't be a problem.

I will remove the platform check from here and simply return 36.

Regards,

Ankit

>>   default:
>>   MISSING_CASE(tmp);
>>   return 0;
>> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
>> index 943fe48..963d87d 100644
>> --- a/drivers/gpu/drm/i915/i915_reg.h
>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>> @@ -6166,11 +6166,17 @@ enum {
>>   #define   PIPEMISC_HDR_MODE_PRECISION(1 << 23) /* icl+ */
>>   #define   PIPEMISC_OUTPUT_COLORSPACE_YUV  (1 << 11)
>>   #define   PIPEMISC_PIXEL_ROUNDING_TRUNCREG_BIT(8) /* tgl+ */
>> -#define   PIPEMISC_DITHER_BPC_MASK(7 << 5)
>> -#define   PIPEMISC_DITHER_8_BPC(0 << 5)
>> -#define   PIPEMISC_DITHER_10_BPC(1 << 5)
>> -#define   PIPEMISC_DITHER_6_BPC(2 << 5)
>> -#define   PIPEMISC_DITHER_12_BPC(3 << 5)
>> +/*
>> + * For Display < 13, Bits 5-7 of PIPE MISC represent DITHER BPC with
>> + * valid values of: 6, 8, 10 BPC.
>> + * ADLP+, the bits 5-7 represent PORT OUTPUT BPC with valid values of:
>> + * 6, 8, 10, 12 BPC.
>> + */
>> +#define   PIPEMISC_BPC_MASK(7 << 5)
>> +#define   PIPEMISC_8_BPC(0 << 5)
>> +#define   PIPEMISC_10_BPC(1 << 5)
>> +#define   PIPEMISC_6_BPC(2 << 5)
>> +#define   PIPEMISC_12_BPC_ADLP(4 << 5) /* adlp+ */
>>   #define   PIPEMISC_DITHER_ENABLE(1 << 4)
>>   #define   PIPEMISC_DITHER_TYPE_MASK(3 << 2)
>>   #define   PIPEMISC_DITHER_TYPE_SP(0 << 2)
>> --
>> 2.8.1
