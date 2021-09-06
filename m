Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 477494018A3
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Sep 2021 11:12:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35C958967F;
	Mon,  6 Sep 2021 09:12:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 526C08967F
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Sep 2021 09:12:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10098"; a="207149153"
X-IronPort-AV: E=Sophos;i="5.85,271,1624345200"; d="scan'208";a="207149153"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2021 02:12:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,271,1624345200"; d="scan'208";a="448532856"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP; 06 Sep 2021 02:12:16 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 6 Sep 2021 02:12:16 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 6 Sep 2021 02:12:16 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Mon, 6 Sep 2021 02:12:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dHPQVcZsfWTKRgxKnK+lxEk7Jmotzm1oXonC042cI7zIWIhoAhq/rpkr5iRu75yqWRmJksgaWkELkq+4tTMd6Q9ZDhd9rFPanUfdTvYQLRRHWpsoLF+9X3AugjwQEXiPvQJvFxdvgUZaHkFNIRPOhKDDyGGMnVSxObm4H2OCLJdw42qpEgYThAG0TQYvzZoiuxCt+qqlIcc9YXWC/NG8cDnCKTrP1lv/WGdNFkHaSqblqRuvpk7raM8YDJncs28jmZECSVRpfDRS18GXUP8lin6CQmydVKEGw2NMlFUkzM4BNMo6hLBJPUKgBjBk4B56lyXXnYB4AZ78QSYqGECg9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=pWwTq5ypyN/fNWhdL5HrmfB5RKw9l818gDMLCgEYVkI=;
 b=ABOMyfCoqjKrPOoH5oSBP1XXo9io42EsESkh5wgb6eQCHxuyeXsMBcBnQQj8FlxQ+m7ciYtD3qoyRHyDtX1LgmYjor130ean1loJCKfN8R7cQPn8fLwtvEk8fvnptHY5yaxBL9n9SU84VtOc0CRmF5T4t2UzCz1mXmtx9MkTyvT8okp9MiKQG7QsLr2JN+ynfpNX8h4JcquWpRwi5cPTogsxMl/Mr5sRuKlVdctHUYLuPEZDNd6Z97wBs28aZ7ekq+SeqGxYahIO6vuCxQg5v28nkSJKf+SUTlBFaiZVqWNh9aiSre0i0qrVWsSuySSEGUpKyhUhWU3sDOXzLn0Phg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pWwTq5ypyN/fNWhdL5HrmfB5RKw9l818gDMLCgEYVkI=;
 b=fgX4qKdraRAaPXvUAICvUH9o5zcbUyfSSqujxjfDotgjfK+uABHb5zeJPqxBTy8RiuNq6worJ++R9ZLRmK5n2ksSqOsdYfQeDt0y43FpnVVZYwOm7Th9tgqlLZwAdYZtV/x4ulk+mn/ulTWRmuZtdKSWyDpKepFVntFSaKSUXNA=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5409.namprd11.prod.outlook.com (2603:10b6:610:d0::7)
 by CH0PR11MB5521.namprd11.prod.outlook.com (2603:10b6:610:d4::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.24; Mon, 6 Sep
 2021 09:12:12 +0000
Received: from CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::a4f1:2e1e:ff82:5f4c]) by CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::a4f1:2e1e:ff82:5f4c%5]) with mapi id 15.20.4478.025; Mon, 6 Sep 2021
 09:12:12 +0000
To: =?UTF-8?Q?Jos=c3=a9_Roberto_de_Souza?= <jose.souza@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20210903221036.34770-1-jose.souza@intel.com>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <ed85a19d-388a-022b-0179-d7d36d93bfa6@intel.com>
Date: Mon, 6 Sep 2021 12:12:03 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
In-Reply-To: <20210903221036.34770-1-jose.souza@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DB8PR06CA0066.eurprd06.prod.outlook.com
 (2603:10a6:10:120::40) To CH0PR11MB5409.namprd11.prod.outlook.com
 (2603:10b6:610:d0::7)
MIME-Version: 1.0
Received: from [10.237.72.185] (134.134.137.82) by
 DB8PR06CA0066.eurprd06.prod.outlook.com (2603:10a6:10:120::40) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4478.17 via Frontend Transport; Mon, 6 Sep 2021 09:12:10 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a28a9144-de41-42ff-f1d4-08d9711669a6
X-MS-TrafficTypeDiagnostic: CH0PR11MB5521:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CH0PR11MB55217CE825B2125396753705B8D29@CH0PR11MB5521.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IbFamy/i4YynfKCsf7QN1/IsJG9xhOkbJovjYnUC6ro/V/rbVTzRwxcF4pILvKlx4SGNCD7asr0FIMUmuD+1UVc9GhuR3L1SCK0Fq9HwkqHzDaAmJX7AxobLzf3eoqwHOZs4ebFSH+eeWHadkopkdvUZpyPxe3kWkcoat4e90C5wotYbHvaumOwMqtfj5a7V3iNLrAzS80DPBP6KXQrhZu2+HQKVPmfZyUMYIQW4Pt4xN/ld2asJSA4CNfgNTa44UGmKgi8G1ThnVRVrgYaV6PzA6+RaOMTWNwBkO3RxGmk6Ntq1R8aEjAe6dZgUVUp2mts29usrTNKiOqKP9iHutqx39wfJrHyDklQgfkKgGZbpq7rSqgloI+EAKktejqvWicUkI3YtIr1jdVmDcaQRaJab0rakeH57gU1j6BLylfZVGkIW3622/WqY51CJeqZaNgnOVn7ROdjZ8OyeTynnNenY5g/8zKRGktJQAIgK4kj61gkIhW/W/TLr/CLXeQqIX9A7RlGGnRwMeZO4eLE1sbdEb8V0SOCbldNatAgp5nu8SdlR4JLucxGa1UdIu20dsjDS7kHaFKMG1kJ8cGmC4f2IPJQW4OTZYinsPmxNBfuasgZgCfk3JW8bsLrTCdx3xjZL6Q1DRXs3J/QBgnPKIzGAho8m5fkLj+IuQmu+muxKDRQMh1mPhhJERIGCkNQRT+MppJnQ1B08dTTBHThsJI3C+Tx0+gl+RluUGzLTxoc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(366004)(376002)(39860400002)(396003)(136003)(66476007)(36756003)(956004)(186003)(66946007)(2906002)(16576012)(6486002)(66556008)(83380400001)(31696002)(5660300002)(316002)(31686004)(86362001)(53546011)(478600001)(2616005)(38100700002)(6666004)(8936002)(8676002)(26005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SVJVcGQwU1ZaTW5wU0pkeHZKTGFCUEpHZ2hiSFZCc0FQekZ5eVpvQzNodnJ3?=
 =?utf-8?B?Z3hxNkszdWlHYStqUHdYVDM2QkFvZjFmSWx2UTA2U0YvZ1ZQL3AvOHllSVpX?=
 =?utf-8?B?ZGZ6Y2hqY0N1QldFMTY3Rjh0SWJXeTYrMnU2WTlKa053SEFEVjBldnpMUzlU?=
 =?utf-8?B?MmNpUW0vaVplcjJlRzVIenI4QmFwTmQ2anE4c3RMMkMxcVN1NWZtUlZsQ3Yw?=
 =?utf-8?B?UHlIL0lPRCttT0FvSWpKZWlxTFY4eW5Yb1pQNXF4T2lwazVUUlJtaEdKY3Z4?=
 =?utf-8?B?Q1Y5cHF4WWpqL0orOHRZSTFBMXFlY0I0cjBEUlJ3Z0U3bnZMWmNKVnl1V296?=
 =?utf-8?B?cEJMZFFudEhheUN6dDIrMVNwVnI3dmY5MFBDc2MvczV1d3pwUS9CRmJzQ0JD?=
 =?utf-8?B?eWRJUUxNc0srcDRCMVROYmVCUTFjd1dZVTVwaW1iQVdVdGZmSlRkTktTN1hR?=
 =?utf-8?B?amJlZ1B4K2pnNFlFNE14Sjd2S1c4a2J4MWl6M0JneXVVZE44b2FRMDY1MUk5?=
 =?utf-8?B?N2FySGduVkp1eDdvT0t3c1lTN1QrQjBSbmJMK0hHR3pwSTVUV0VRNDdCdk5P?=
 =?utf-8?B?S3VvSXMrR1cyTC85SUtkZjl6bmxrOVlWZVI5NU1Fd3NnRGhQTFZneWd4a2Ew?=
 =?utf-8?B?Z2Mwa2loZEQydnc0ZHIyRHpvZ3BiVGx3SWtUNm5nYXpNb3FBQ1BpOVRkMElz?=
 =?utf-8?B?QjY5clBmQkxRUitvNGFBbWVzS0NMTGZwMTMxZjdiVGd5VTRxaFVRbjlMeXNp?=
 =?utf-8?B?MmZuQkJ6dmlUb3NLWklOb3JpcUV5bGc0QWkzMmhmRy9mdi9WN2RieW9vcUp3?=
 =?utf-8?B?WjZTcXFFdU1lWHhJeXNYbGpCcXU4eFYxWnY4R2w4TVZGcXFCL0k2bTl1ZGxG?=
 =?utf-8?B?TlE3b1UrdmtwV29ya0Fkc21zempHSjcwUUMrMFIxS3BJcHd1QXJVUTR0T0VH?=
 =?utf-8?B?RkhiNzdpWWwzMy9TU0wyTkZhdDBvSE5VSVJCVmY5M2xncWpGR3QxNE1qcWt6?=
 =?utf-8?B?TWc1SFZpa0Fya1NjZEgxM05Dc01GRnRRT3lQb2Foem5ldG5DNStxam1teDQ3?=
 =?utf-8?B?S1BGL1FxdVN1NFRKczkvc3RZamhIQ0VsNnNBZEg5WXZ3UkcwUis1M2N3N3pq?=
 =?utf-8?B?S3B3aXU1Z2dqa3dISUVIZ2g4SWJ3bHU3WGFtVDFyV1dCWFFYSUU4MXBaWG5N?=
 =?utf-8?B?dXZhOE5lemlrN1U0MkpmZkFHblROZ2wyTFFWWkVFNEU5NXB5Ulc1Y2RUblBr?=
 =?utf-8?B?dlZldVFjM0VzN1BNOThtbzZvMG1vWDNpcHRQZXhpSEtvVUNOM2NDU1pHaS81?=
 =?utf-8?B?bDB6bjJHcTdBdGJ4WU5uZEd5d0NqVFY3T0w2cHY3Y0RTblRnZExrMXc2Mk1D?=
 =?utf-8?B?UXBFaGpCek5jaHBJOC9JM3FFczVtYzNCaFhKT1N2c3k2cmR5NGFRV3BBcFRy?=
 =?utf-8?B?R2JXQW9LYjUyZ0t4SjNXN0Q2MHh0UCtRNGxES0UrTzJWYmpwdk5qSzU3Z2ZB?=
 =?utf-8?B?UE1BUWUrNFUvYThxT2x5dlR4b0x6Yy9MVWN6a1l2Q01LcTNyMmhzV1pYMjR1?=
 =?utf-8?B?WVY1eC9SR2daWE85Y3VyUTRVaVVCUWs3YXM0T1Y3UUFHeVBjWHhBN2xmcEJY?=
 =?utf-8?B?OEp0TWorRnlpRzA0TDRjRmJkdWNEZGNYM3Q2ckE4ZTN3ODlhZXlSSjR3ejU2?=
 =?utf-8?B?MFFhRU05VDFieGd0czNrMFljYk8wV09BVGozZ2JmbzE4c1N5ZERnWElOWkhW?=
 =?utf-8?Q?QO97vkAqxYJ22qPABgKIzU3TPDdiNLQF/jBSWX8?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a28a9144-de41-42ff-f1d4-08d9711669a6
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Sep 2021 09:12:12.7623 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0KcaX6rafv4aAR3jL4Oc/nzNLwSEBgNV8vxttkurPuV2Ze8MoS6TmD7GN2XNceMHHBUr6T8QnrF/zcMIORCM0Z/w3EWoq+EJHR71SZwym4M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5521
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 1/3] drm/i915/display: Some code
 improvements and code style fixes for DRRS
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

Looks good to me.
Reviewed-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>

On 9/4/21 1:10 AM, José Roberto de Souza wrote:
> It started as a code style fix for the lines above 100 col but it
> turned out to simplifications to intel_drrs_set_state().
> Now it receives the desired refresh rate type, high or low.
> 
> v3:
> - Fixed the mode refesh rate debug message
> 
> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_drrs.c | 58 ++++++++---------------
>   1 file changed, 20 insertions(+), 38 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
> index a2b65eca14418..fa0411341a0da 100644
> --- a/drivers/gpu/drm/i915/display/intel_drrs.c
> +++ b/drivers/gpu/drm/i915/display/intel_drrs.c
> @@ -89,19 +89,13 @@ intel_drrs_compute_config(struct intel_dp *intel_dp,
>   
>   static void intel_drrs_set_state(struct drm_i915_private *dev_priv,
>   				 const struct intel_crtc_state *crtc_state,
> -				 int refresh_rate)
> +				 enum drrs_refresh_rate_type refresh_type)
>   {
>   	struct intel_dp *intel_dp = dev_priv->drrs.dp;
>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> -	enum drrs_refresh_rate_type index = DRRS_HIGH_RR;
> +	struct drm_display_mode *mode;
>   
> -	if (refresh_rate <= 0) {
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "Refresh rate should be positive non-zero.\n");
> -		return;
> -	}
> -
> -	if (intel_dp == NULL) {
> +	if (!intel_dp) {
>   		drm_dbg_kms(&dev_priv->drm, "DRRS not supported.\n");
>   		return;
>   	}
> @@ -117,15 +111,8 @@ static void intel_drrs_set_state(struct drm_i915_private *dev_priv,
>   		return;
>   	}
>   
> -	if (drm_mode_vrefresh(intel_dp->attached_connector->panel.downclock_mode) ==
> -			refresh_rate)
> -		index = DRRS_LOW_RR;
> -
> -	if (index == dev_priv->drrs.refresh_rate_type) {
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "DRRS requested for previously set RR...ignoring\n");
> +	if (refresh_type == dev_priv->drrs.refresh_rate_type)
>   		return;
> -	}
>   
>   	if (!crtc_state->hw.active) {
>   		drm_dbg_kms(&dev_priv->drm,
> @@ -134,7 +121,7 @@ static void intel_drrs_set_state(struct drm_i915_private *dev_priv,
>   	}
>   
>   	if (DISPLAY_VER(dev_priv) >= 8 && !IS_CHERRYVIEW(dev_priv)) {
> -		switch (index) {
> +		switch (refresh_type) {
>   		case DRRS_HIGH_RR:
>   			intel_dp_set_m_n(crtc_state, M1_N1);
>   			break;
> @@ -151,7 +138,7 @@ static void intel_drrs_set_state(struct drm_i915_private *dev_priv,
>   		u32 val;
>   
>   		val = intel_de_read(dev_priv, reg);
> -		if (index > DRRS_HIGH_RR) {
> +		if (refresh_type == DRRS_LOW_RR) {
>   			if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
>   				val |= PIPECONF_EDP_RR_MODE_SWITCH_VLV;
>   			else
> @@ -165,10 +152,14 @@ static void intel_drrs_set_state(struct drm_i915_private *dev_priv,
>   		intel_de_write(dev_priv, reg, val);
>   	}
>   
> -	dev_priv->drrs.refresh_rate_type = index;
> +	dev_priv->drrs.refresh_rate_type = refresh_type;
>   
> +	if (refresh_type == DRRS_LOW_RR)
> +		mode = intel_dp->attached_connector->panel.downclock_mode;
> +	else
> +		mode = intel_dp->attached_connector->panel.fixed_mode;
>   	drm_dbg_kms(&dev_priv->drm, "eDP Refresh Rate set to : %dHz\n",
> -		    refresh_rate);
> +		    drm_mode_vrefresh(mode));
>   }
>   
>   static void
> @@ -216,13 +207,7 @@ intel_drrs_disable_locked(struct intel_dp *intel_dp,
>   {
>   	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>   
> -	if (dev_priv->drrs.refresh_rate_type == DRRS_LOW_RR) {
> -		int refresh;
> -
> -		refresh = drm_mode_vrefresh(intel_dp->attached_connector->panel.fixed_mode);
> -		intel_drrs_set_state(dev_priv, crtc_state, refresh);
> -	}
> -
> +	intel_drrs_set_state(dev_priv, crtc_state, DRRS_HIGH_RR);
>   	dev_priv->drrs.dp = NULL;
>   }
>   
> @@ -290,6 +275,7 @@ static void intel_drrs_downclock_work(struct work_struct *work)
>   	struct drm_i915_private *dev_priv =
>   		container_of(work, typeof(*dev_priv), drrs.work.work);
>   	struct intel_dp *intel_dp;
> +	struct drm_crtc *crtc;
>   
>   	mutex_lock(&dev_priv->drrs.mutex);
>   
> @@ -306,12 +292,8 @@ static void intel_drrs_downclock_work(struct work_struct *work)
>   	if (dev_priv->drrs.busy_frontbuffer_bits)
>   		goto unlock;
>   
> -	if (dev_priv->drrs.refresh_rate_type != DRRS_LOW_RR) {
> -		struct drm_crtc *crtc = dp_to_dig_port(intel_dp)->base.base.crtc;
> -
> -		intel_drrs_set_state(dev_priv, to_intel_crtc(crtc)->config,
> -				     drm_mode_vrefresh(intel_dp->attached_connector->panel.downclock_mode));
> -	}
> +	crtc = dp_to_dig_port(intel_dp)->base.base.crtc;
> +	intel_drrs_set_state(dev_priv, to_intel_crtc(crtc)->config, DRRS_LOW_RR);
>   
>   unlock:
>   	mutex_unlock(&dev_priv->drrs.mutex);
> @@ -354,9 +336,9 @@ void intel_drrs_invalidate(struct drm_i915_private *dev_priv,
>   	dev_priv->drrs.busy_frontbuffer_bits |= frontbuffer_bits;
>   
>   	/* invalidate means busy screen hence upclock */
> -	if (frontbuffer_bits && dev_priv->drrs.refresh_rate_type == DRRS_LOW_RR)
> +	if (frontbuffer_bits)
>   		intel_drrs_set_state(dev_priv, to_intel_crtc(crtc)->config,
> -				     drm_mode_vrefresh(intel_dp->attached_connector->panel.fixed_mode));
> +				     DRRS_HIGH_RR);
>   
>   	mutex_unlock(&dev_priv->drrs.mutex);
>   }
> @@ -400,9 +382,9 @@ void intel_drrs_flush(struct drm_i915_private *dev_priv,
>   	dev_priv->drrs.busy_frontbuffer_bits &= ~frontbuffer_bits;
>   
>   	/* flush means busy screen hence upclock */
> -	if (frontbuffer_bits && dev_priv->drrs.refresh_rate_type == DRRS_LOW_RR)
> +	if (frontbuffer_bits)
>   		intel_drrs_set_state(dev_priv, to_intel_crtc(crtc)->config,
> -				     drm_mode_vrefresh(intel_dp->attached_connector->panel.fixed_mode));
> +				     DRRS_HIGH_RR);
>   
>   	/*
>   	 * flush also means no more activity hence schedule downclock, if all
> 
