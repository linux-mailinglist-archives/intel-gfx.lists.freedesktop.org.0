Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E622743C37B
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Oct 2021 09:06:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49B766E542;
	Wed, 27 Oct 2021 07:06:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CE286E542
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Oct 2021 07:06:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10149"; a="229948550"
X-IronPort-AV: E=Sophos;i="5.87,186,1631602800"; d="scan'208";a="229948550"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2021 00:06:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,186,1631602800"; d="scan'208";a="724903618"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP; 27 Oct 2021 00:06:29 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 27 Oct 2021 00:06:29 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 27 Oct 2021 00:06:28 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 27 Oct 2021 00:06:28 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 27 Oct 2021 00:06:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cwEbIMcUX4pwOSfqb6oyHr2OgJ370SsdTUuBAY32I5jSbhioagtpkp1+fItfjNXn2IF2NUHs2kakocRTLAOtg7RNYZ+kH8iC2FAqHLde848At1mjBtWKlCOT+VYRdODrzxC/Q/lynmsAcpZan2wwyOSBwOyJ/dm56Vt7N/HHIeIP/2TnHEwhAfM52lt07+0mcFBwQCU3DSygPp0NQ2i15LDKKP3ZpRGOqF0ZZwtd6yQ0wnqfR6sGwHJ9Rr2mgpmqY1XQBkTau8zOrLjVoZJE2D+1zOk0Oyy/o1/E4UTFATdLdcsRUrdlJR5y+McPAz4CgYtPBmslUW47+WDMngEsQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u2rhA3MuobyUmiJgRM+c5fD5us4PXgneqoBXgQ4ngcE=;
 b=ExyBIoSkThfWiFnGWsOh81H4UoQewY6fpd5r0yYqudAO4CeCE0t+9fw576wVwOFcG6ONDgskgq69vJ3i10dmeDmTYLDY6HRsG/CBAlnloN3rYV7PhldLJ0961jTTfSxYTYJq3krn+DbNkWni6EpIRtt7Wj6oA+aOT+lPAxyesgjxneaj6muulngeK8WAcPmTh5l/gMn8G1zKWEB0bLpJnp+y80a+MHI857pVBDga6Fmi4KA/c06UhPdaAdkeUn+BR6ZKDJs/d1TRoOeLpDqIQ6zZRL4ZA0v6saL2H+h5NjLpgw0wY0xacs0EePw5nSc2AVdFni+IJFbt/AXrGZWtNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u2rhA3MuobyUmiJgRM+c5fD5us4PXgneqoBXgQ4ngcE=;
 b=P3DR+kGt3frmzIwGhVSe/JxX4foB1c+RP9N1cC9JrB5aiJaeLz+ilrXAZl0oYu+GKK4ttELzrlduaERoDOEu9IY6scQ+pFS6mTt+g187LoxCoDVYMfUHS3Qkd3hohd5k3MRxA2/txagzzxwZu8T8yfG0yoSlLNpNAeEdBCGLmQQ=
Authentication-Results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5501.namprd11.prod.outlook.com (2603:10b6:5:39d::23)
 by DM5PR11MB1323.namprd11.prod.outlook.com (2603:10b6:3:14::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4649.14; Wed, 27 Oct 2021 07:06:27 +0000
Received: from DM4PR11MB5501.namprd11.prod.outlook.com
 ([fe80::389d:c727:c71d:d869]) by DM4PR11MB5501.namprd11.prod.outlook.com
 ([fe80::389d:c727:c71d:d869%3]) with mapi id 15.20.4628.020; Wed, 27 Oct 2021
 07:06:27 +0000
Message-ID: <90e98c64-064d-fa5e-7ba5-a58b412f78b8@intel.com>
Date: Wed, 27 Oct 2021 12:36:17 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.2.0
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20211015133921.4609-1-ville.syrjala@linux.intel.com>
 <20211015133921.4609-14-ville.syrjala@linux.intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20211015133921.4609-14-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0112.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:96::20) To DM4PR11MB5501.namprd11.prod.outlook.com
 (2603:10b6:5:39d::23)
MIME-Version: 1.0
Received: from [192.168.0.113] (49.207.211.197) by
 PN3PR01CA0112.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c01:96::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4628.22 via Frontend Transport; Wed, 27 Oct 2021 07:06:25 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 901998a1-8604-4a9f-6f09-08d999184b3b
X-MS-TrafficTypeDiagnostic: DM5PR11MB1323:
X-Microsoft-Antispam-PRVS: <DM5PR11MB132394152D534C402D727E7FCE859@DM5PR11MB1323.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:597;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Chw7PtPGF6VPYxlV60mfEYgO6sBv2mKGZzmoJVu8CpaeLnPkGgh1zcF7IxU6XghC5SXywPcOZFAnT5KWJg1G62PsI3AXBw3Fu2ZDR0Ygv6bsFa4EA6a4NLPWGIoTttk5smgnysbcX/XpIgwG8Tkb5e71Iv/9B6AtvarhxnL6uEIXEGDndbjkibnw/jK92SSKC0AFut78jmYNGIknHdASYbR1gP2br0bJv1Emn20aBQeo0gwqfhlBvszdbrH9nlH2PAVQwqOwEo+FXQJrun5gMrHSHoTQEoLSxGjEXsmPGcAIagN5rcHLETDLaLX52csNKaOb8wNkMhqjt4DJTueGsi924KTCIYCR28D6g58k2FaMZeI3xyYKik8oz/Mw5pcya5GFuhlg3ZM+VDGRba7h6DpAioRN6x9aNirIVZrxjIxXzMu3xx4S7B02vb1VuPzZyK3aodiWQiFUbS0CfZGZc6LhhOMxJM0gDA6FKu6VodSMGjGl7y8tCKTCENTH9/MytVB9mQil1iPhCEiDs9IfcXCBNxTkNFJM5SpdlM01K4//tFB7g571Xr3wE6SCwJY9fbBXlZR53wOYvLOALJxZWb3Whz1pLKsvNZUCt3XSVA7m6selp3BmyX0Vl40iAuaQLSNsvAz33/ImwSpcW2UzBmnt9PLE2EZxYO/ZswlJuU+joe4fc7TLhkQNWr2FrZNRtxGr7xpGDAolIbvM3POlvC8HTnWk63wITUIB6veaHnOid4mxIi9pIOxll7/KT2wwxCCwo36Ylg3n21zRu6MQlu2OVLqGItbaGbryjY93DWB7jmUlJfgjVH8s5DhlAjIO
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5501.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(66556008)(186003)(66946007)(66476007)(86362001)(2616005)(16576012)(26005)(31696002)(316002)(8676002)(966005)(83380400001)(82960400001)(38100700002)(5660300002)(8936002)(36756003)(1006002)(53546011)(956004)(508600001)(55236004)(2906002)(6486002)(31686004)(6666004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WU5ialJWYXp0MmMzZThFd2wrQTRhRHdlZ3I3ZEtuYnJrb3N4UnFtMTlSQmo1?=
 =?utf-8?B?SlhOeG5waHZ6d056UUZuZjRvQlVJTGg0Z2tRbEZRMVhJNVhNcWhiMlhjYm9t?=
 =?utf-8?B?elFucXd2Zi8wc01UQ1Y2VkdPeVpndFF5SzNuMFRqa1JvWHdQdVNyRzNjQUJW?=
 =?utf-8?B?MkVGckJDMDc5VHF3NWdLcFBMTjFZOWtOajJsLytPaUQ5emVTMytleHZ2RHlk?=
 =?utf-8?B?TTZlN0syZ3U3dWZEY1E1d09vcWpnWEhORkNHYUo4MGRSbU1VRmRUdzRiYi9t?=
 =?utf-8?B?YlIrd3QzNVdJLzQ5U3RCQ3FPVk5hY2JzZ1hZYU5EWUlSSTlweDFDOWROcGNS?=
 =?utf-8?B?Nk5FNlBWdHdSTzE4U1l0bURrcFdKQW13VTBURTlCOVVIT1h4ZEFBVGszYmd6?=
 =?utf-8?B?MWpZeHlSeStEWkloalRlNDVRL1NDZlBxZzFMcEFhQkdLZjRnczkzOGFvdFRR?=
 =?utf-8?B?UHF0QzdVTFpCQlFMWVY5MEczMUVpNWYzY0lOZWxwOVBQNFBaTXMzRXM3dmxC?=
 =?utf-8?B?T0hPTU40ZVVYTFRZNnhSNlNMaXNIc3lzOU1EMCtzc3I2dTUyU1crcGFGOXMv?=
 =?utf-8?B?cHczTDhYWThFTTNaOXJFK3JvZFh1aDIwSmRZL0xzNU1DLzVXUzVvWnpLd0xH?=
 =?utf-8?B?Tng4U1BMRUZBKzBUOE1LU0syMHRQQkNPT2twMTJ4aTdGSmtjN2FZNEFJVThp?=
 =?utf-8?B?RXc5KzVPQUkvYndLN2tseTJBRmdQMFVsOE9oS2lQdkVsRVc0T2FZV1Vqb3pN?=
 =?utf-8?B?aVVLVTFXNW1uOWRlQlgxYkRCbEw5c0VadGF6WjIxK2ZHc0xNU0NUU1R2ek1D?=
 =?utf-8?B?aGFhMlNva1lzMEpYbllWeDltaS9QVnBRQlZsWWhuWTl1bWFtdGJwTHEwZita?=
 =?utf-8?B?NkxCbzNteitkU0JoTTRoa1Zma0FRdkZhUGhnTkpCY2xMUEt6YXBEZE0xd2ZF?=
 =?utf-8?B?NVFtTXJLWEdsZlRwTHhpWDVtTmpvSmQyQTlGajB1Z3ZRREZaOGtXaFJQeTVK?=
 =?utf-8?B?NjVPRGI3WDFJSDhtOUN3TTYwWGl2THNSdmg2K1FaZjVZb3NkMmVuRnZqajFE?=
 =?utf-8?B?SC8rc05STytEWDUwazFJR0pGTGJSaVp2bGI2ZGNTSlRxakpLMGNFc0s3Nzdr?=
 =?utf-8?B?bE1UdjdCeVRDRCtVcjVURFM5eVRabEpRaGpIMzVJS21MeEVlR2o4SElGLy9a?=
 =?utf-8?B?RzBjR09jYVRLZ3JUM2pQa2l5dXNjWTlEZ0hSanA1dVBISUl0Mk9VWHYxRGVw?=
 =?utf-8?B?M2ZobGdmRmFtdWZMdldsanFPc0lPUmQ1dTJ3dzJKeWtUU1FtaDZTTUtIL2JH?=
 =?utf-8?B?bCtXdk9ueEd2N05TV2tLb0FCbkZUOFRZTERLSDY4a3pVM3dsU3dlRjJncm5L?=
 =?utf-8?B?ZmtZbU5Nb0Z3Z2M1MlE4YVlUanMyc2VGMEhobStTTmU2RVpXdEZicUhUR3dP?=
 =?utf-8?B?TjF3RVVVWlRKclMyQUwxb1M1dUR6SlZHaTlGUEFNeVVIQVFGN3VEQTJON0JK?=
 =?utf-8?B?OG1Ld1BsUjdpMFFhK2VxRHVHb3BSMTFoek1uYTlkVmtWSDl0U3hSN292eThN?=
 =?utf-8?B?dE9tSUpkU3d6eE51QS9xWVpHQ2hRNC9wa2d5aXc1UmUycXF5TUx4WVREK09I?=
 =?utf-8?B?dEIxKytNaG9xaktQYzYrZVRHL0VLTCtMQjhyU09DU09KcFJqT21QRFhtM2cr?=
 =?utf-8?B?QWlhb1lXWklCOGVLeWxMWXd4bDBpamdPV0UzZmFHcWcyTVN1Zk8weEYxcGY5?=
 =?utf-8?B?ZnkyUjU5S2xDeHZwZjB0eHFRanVvZUY4MHJFVWM1MTBrYndoWGdQYXZ5dnBO?=
 =?utf-8?B?RFIvQzhqZ1k0WUExTm1EQ2ZxSERWaUpST3dFRWZlUk1zcE53Z0IvRXNERStS?=
 =?utf-8?B?SzB1dEp3Wkx6cjNTalM2T0o0ekxob0xVaDB5NzVxS3lSS09wdjhvdmxWQVpC?=
 =?utf-8?B?MGZTNFVmU0FWZWdPaHRyM3hhZFM2Q245cTRTUld0cDFacEd3cUczYnJ6SjZK?=
 =?utf-8?B?SXBtZXBQV0JpQTlFVFpGSHJ3TkVRK09rc05YTndZRTRBZEtYQzNLVzUwaERl?=
 =?utf-8?B?cUV4T0lYS1gveHJIWXdNQUJETGx1V3cvVDZaZWpwRVpHTHVFRVVwZGhnaVB3?=
 =?utf-8?B?aVVJRG5OSkhDNjQ3RktSdmorYVZ1SURUNXhqUTJuS0VaZmhNeWFJNXdSMWpk?=
 =?utf-8?B?RlRpeVJ3ZTZVMEdaTVFtZHZBTHlpTjJJbElGdzlMV2JwaXh3RnRLeC9Uc3l0?=
 =?utf-8?B?ZmQ1L2pTS2ptM2JuQ29CRHVhOXZ3PT0=?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 901998a1-8604-4a9f-6f09-08d999184b3b
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5501.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Oct 2021 07:06:27.4427 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jeDZeeWhqxz50w59EaemRGN3cIFtRF1r+w5+nu3dOHqysQjucBBXHKYk609o9wdefed5AzrSDBAcov/B8FdOJeBWVywAn99lJTcub+NHVl0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1323
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 13/20] drm/i915/dp: Reorder
 intel_dp_compute_config() a bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 10/15/2021 7:09 PM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Consolidate the double pfit call, and reorder things so that
> intel_dp_output_format() and intel_dp_compute_link_config() are
> back-to-back. They are intimately related, and will need to be
> called twice to properly handle the "4:2:0 also" modes.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp.c | 23 ++++++++++-------------
>   1 file changed, 10 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 2440a6a2e4fc..de2b3d33a726 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1764,25 +1764,12 @@ intel_dp_compute_config(struct intel_encoder *encoder,
>   	if (HAS_PCH_SPLIT(dev_priv) && !HAS_DDI(dev_priv) && encoder->port != PORT_A)
>   		pipe_config->has_pch_encoder = true;
>   
> -	pipe_config->output_format = intel_dp_output_format(&intel_connector->base,
> -							    adjusted_mode);
> -
> -	if (pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
> -		ret = intel_panel_fitting(pipe_config, conn_state);
> -		if (ret)
> -			return ret;
> -	}
> -
>   	pipe_config->has_audio = intel_dp_has_audio(encoder, pipe_config, conn_state);
>   
>   	if (intel_dp_is_edp(intel_dp) && intel_connector->panel.fixed_mode) {
>   		ret = intel_panel_compute_config(intel_connector, adjusted_mode);
>   		if (ret)
>   			return ret;
> -
> -		ret = intel_panel_fitting(pipe_config, conn_state);
> -		if (ret)
> -			return ret;
>   	}
>   
>   	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
> @@ -1798,10 +1785,20 @@ intel_dp_compute_config(struct intel_encoder *encoder,
>   	if (intel_dp_hdisplay_bad(dev_priv, adjusted_mode->crtc_hdisplay))
>   		return -EINVAL;
>   
> +	pipe_config->output_format = intel_dp_output_format(&intel_connector->base,
> +							    adjusted_mode);
> +
>   	ret = intel_dp_compute_link_config(encoder, pipe_config, conn_state);
>   	if (ret < 0)
>   		return ret;
>   
> +	if ((intel_dp_is_edp(intel_dp) && intel_connector->panel.fixed_mode) ||
> +	    pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
> +		ret = intel_panel_fitting(pipe_config, conn_state);

Panel fitting code will perhaps need handling for Big joiner.

In case of bigjoiner, we might need to set the pch_pfit->dest width 
halved, otherwise we might have scaler width going out of bound.

Now that we already have pipe_config->bigjoiner set, we can use it in 
pch_panel_fitting( ) to tweak dest width.

Something like 
https://github.com/aknautiyal/drm-tip/commit/c15060be2eca81738f8f0d3431e04215777edfc9

Regards,

Ankit

> +		if (ret)
> +			return ret;
> +	}
> +
>   	pipe_config->limited_color_range =
>   		intel_dp_limited_color_range(pipe_config, conn_state);
>   
