Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 252DE843623
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jan 2024 06:41:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A3DD113801;
	Wed, 31 Jan 2024 05:41:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FA7C113801
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jan 2024 05:41:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706679703; x=1738215703;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=VAO4B65KDB8FQDCrGxaqDZFNJ9YVBddJrXc1uOzkRgY=;
 b=cIKvVESt947OyI2O+XNQjK+5+7/1XyQymh1wMmo0ArEj+B+FcPZAIerw
 ZAnAATraNYteY2NZ+s846ZvWEdtXWsRXYDXW8c680on41EjTjBjf77X/+
 XKwQbhtKBSKQNUUcKhLj+TQiP7Zeev4NErinINscTrcVp3+rRVIbZJfCT
 WBYAPRJpXsssvoHRt0CJfqMTPYeziraHH/qwRPXLyk2iFFm8wQsShKYJn
 YXv/c+wz6dhPJIDa4rKpuRnSl5J8q1frWeSJtfTaE++MAUO+fGxguSTOH
 LflzPzcjdgnNnLWf0eAgvM69HXRzu3SEpcNzSoDwh0PMqUKarJ+cRARL4 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="24971905"
X-IronPort-AV: E=Sophos;i="6.05,231,1701158400"; d="scan'208";a="24971905"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2024 21:41:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="911678049"
X-IronPort-AV: E=Sophos;i="6.05,231,1701158400"; d="scan'208";a="911678049"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jan 2024 21:41:42 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Jan 2024 21:41:41 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 30 Jan 2024 21:41:41 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 30 Jan 2024 21:41:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y6F0JNpQ2rM1zyW5SQzp7XQ7OqcAxVcoTwMPO/X+94BO2YqjzNqHHjDJxgK3JDCDwKeyKj/2OhXCYitZ91VoKtW9VYkZHjVe/yZ4xYhPfQbAy3lv3GiGePe2D2aaC4qA4qKLdzfe8YTkVrxf3MCt/NX58rj27Rk9105pSeNt6Q1APVVY8mxoWXv6W1mM3qNiMPUZRfooK92Z6fdU0MNf4O9czL09JWNH5YO0eDe6aF3xqwJADi88dsBfOlEZDC5PxS3y4GG1aW+VCnV7e2H0jYeLAHNc2XWKvbcFyHaq/1nDGSGvr/FyTQLWjiOlPSCzjTtvlPFKbJIONJ7yR52ElA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/FaC6QiwnsKbkpmUwLja76S5WKplZ3uVdCaR5KDrVYg=;
 b=TMAzMzqfuvFK2MK6f9G2LIig0y+2lyhRQrIPXMdRvylyxGNlVC8RHYKj90MJA/zXHoxYIiWQxmvC2GsssLsT/HagExh1jAlavIjBEGLv6z2TM+L2unRxYvojPHQseOHurITB/Lh5NVIU9O7rUlO4Z6igcAPWwewZ2vYpmSbEkMYNOQcV6EeLjx7F9/2zyeyXP17PzdEcz5YbiSBKCs6gd37Y/vUWLTZ9cxns5Q1i+keqGMf/OlD0cMbhBH7OKuj3wAdsfCwPJlpyefLdsFPezBKiQfVGbq06sms6dWq0c5nfIubg1FXOGEnAdz1rhEH/WXw74LD1bkkbzEWp5tJ/1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CH0PR11MB8190.namprd11.prod.outlook.com (2603:10b6:610:188::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.34; Wed, 31 Jan
 2024 05:41:34 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::ee74:40f:fb96:34f5]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::ee74:40f:fb96:34f5%4]) with mapi id 15.20.7249.017; Wed, 31 Jan 2024
 05:41:34 +0000
Message-ID: <b2e9e82c-994a-4a47-aa53-c3eaef78e4d4@intel.com>
Date: Wed, 31 Jan 2024 11:11:29 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/6] drm/i915/adlp+: Add DSC early pixel count scaling WA
 (Wa_1409098942)
Content-Language: en-US
To: Imre Deak <imre.deak@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20240129175533.904590-1-imre.deak@intel.com>
 <20240129175533.904590-5-imre.deak@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240129175533.904590-5-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0131.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:6::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CH0PR11MB8190:EE_
X-MS-Office365-Filtering-Correlation-Id: f95ba368-915e-414c-0b5c-08dc221f48f4
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wabQiqPdLcGrHVHXxWmIgEjnvbrt0K77J5CfFvS+xH3FzQyXpYLiOLaD4p5tEcyXde8pjI7BtjKkbOu8BlrkjonFtQQb0murxx+M8U5bX+rkSWH/58U7C5ESEdDvlXm6R4cYEfONtaBBGvpoFFqX4G3Yjm/5dFZHi7+TQtf7v8UJIXFgYhlAYMqfugDRbXZkpWAvfi5y4SUlUezMhpZ9SjGh71pw0awD119aBHwevXCHVlC5mxXQrQz7Y4zk9YSbLkarxTPIVe7SvRCCsXr9eBXdp3PH8jv8yjcZxamUI40b7XDgi9cc4xoG++2OcwUZQzoE2hYmkmRES5JSm88KBxk4114HKWi6DXhT6f0GepsPeCKQE4x//gmAsNfXoaLtvKAfjGgEu64Ha/87MmilB3jgamS3RwTFZy/VTyabozTOUE4L4duTT7EapQ9ADpShiGbMTaXJ+T2MXLbO060BofpJVaTvR0ilAvqSHg1BOV9qnq1ot64JzA9KKZvKK3+tjXRfHb5yrT/O5JpqDvLXc8zdjNMjT1VG3IGfEGsQOpV+14wxu359RG/YhREieXPH53248LU32tdIoSpPAw8kN2c8TGzgJiSFMlY65vhp+b1IoVGZFoR7wYKpVppD5MVX0g4S7qHBbNv0L+tDYz/smw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(376002)(346002)(366004)(39860400002)(230922051799003)(451199024)(64100799003)(1800799012)(186009)(41300700001)(31686004)(2906002)(26005)(2616005)(53546011)(8676002)(8936002)(66476007)(6486002)(66556008)(316002)(66946007)(6666004)(6512007)(6506007)(5660300002)(38100700002)(478600001)(82960400001)(86362001)(31696002)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZENzM3VDR3hDK3MzRGhTaHMzMEt4WmUrNUtFa3pSS3NoaUtRUXcwb2hFcXJQ?=
 =?utf-8?B?YTIyQjJJTHJwWGMyalh0MGM2eWFVNEtWZnZJU3pjMHBrYWY5dFNBaU55aXkr?=
 =?utf-8?B?ZmRaL0o2WktEUW9LNVAvcjhVSldUaXBDcHVWVm1RVldGZVZjRWFBWTg3OXB3?=
 =?utf-8?B?NkVYQ3laY005SUpLWnpIYXBPTVFyZFBESWJTNVdLK1VQaW55T2E0WmdSZEE3?=
 =?utf-8?B?bmNTaDY0ZHIzalAyRjZXTFdncnllT1VFczhHek1CcDJKNmo0bjVmdm1HWGI5?=
 =?utf-8?B?eGRaMlRBOVR5OCtXV054T0xJUnRVSGFMblc0eWhpQStZdjg4M0grcHI1MVpG?=
 =?utf-8?B?UGl4N09JMStWaE9kK2dvWlZlSU1oTzJFZXZyTkhMU3QxMVM5Q3ZHeVhDUE1D?=
 =?utf-8?B?RFdlUm05SUwxb1dBUVY1bnoxUTVyNXNEQytrMjZPbDhURzljRDhiMUVLc21H?=
 =?utf-8?B?UlVxSHIzQ1JOcVhFMi9JWXl5VXVTN2wwbWdjTERRcDFKVnovaGJGL1pTblN5?=
 =?utf-8?B?eGV6bmNOdmd6cU9XbTVPVkxaSnZEU2RkRlVOU2llRm0weFdSYTNucFRHN3NO?=
 =?utf-8?B?cnpqZEJ4Q1V0eVMrb2UrWVM4c0JpQTNqTnlOcE95SW1sbEF6c3V6RkVMQ05Y?=
 =?utf-8?B?WTVqUVpDSEpVc0NaYlZYdEY4VjlKNEtnZG02cFVqbzJtVFlRdjZMWm1XNDIv?=
 =?utf-8?B?cmRRZkpFaUNrcm9LUzgzR2J1RC81ZGJHOHVmMWFpSkQrNC9FN1R6VllKZDk3?=
 =?utf-8?B?UVdFNnpwT1JZeDlGazRkenU3MWFialJyY3hLYWtMNHBCUEMvUE0vdklMdS8x?=
 =?utf-8?B?S3pKS3NjVHNQL0tMTU5raklBbU9qNTNaMStPTm41d1FHQ01GeE4vZDhFdW5J?=
 =?utf-8?B?MEVUYU9NQUpIb0FJRVRQRUIwb2cxNTFoTXllS3hsNUh5ZTZ4d3VoOFdTV0J5?=
 =?utf-8?B?QUIvOGl4NWVUVVByVHl2OG52ZFVSak5pa1ROa1NJOXZzeUZzTUxPS1Bad3gx?=
 =?utf-8?B?dWdsSWlUbWlSalhydmpiR1NRSVk5cjcrUHlxek5EcDlMMTVrR05ZOXdlSWhS?=
 =?utf-8?B?cG9DN0k3cGVYWnRmbmc2MklqcmhJb0Y0Zm16Vi9xaVhPREliN0plelM2bGNE?=
 =?utf-8?B?cnZMSDVHQWpCNTNjVys2UCtPbEFqaC9wbDhQU29jdmtKUU1vTzFObTArMXRW?=
 =?utf-8?B?L0F3Y1FWTlRqTml6TGsrSXZFOXNuMjVRNG1zQVlxZ1ZzM3hzT3BnUituRStO?=
 =?utf-8?B?RTRGZ3BEb2JEa0dDOXoyZjRWYkVJTXp5eEliV25EZFpSU3VlZE42NSt2VWRt?=
 =?utf-8?B?am40Y2FPcXRCdGM4ZDA0d0wxWTZmaXhJNWN6VHFtRFdzYVRCTlJRUFdST1NC?=
 =?utf-8?B?VU5FVlRPbk5ZVnRaQk5jWUpWcWNDV3d6cUFFZjNyTXU4QW02eDVjcmRHdHdV?=
 =?utf-8?B?RHlzOVNQbm1zRVc4cXBBUENFU09uYU41Vkd6THg5OVduUGFwOGhXdHUrSzNP?=
 =?utf-8?B?elF0U05XVTNHaGdoQTVtamRKQzhoMU4vZjlSWDdoTWtmT0lwRDNYakRNRUFw?=
 =?utf-8?B?REpud3ViakFwbXQwbEVwcWo3YmdiUWRvZ3VvOWswWlNnVlBZc0JFUW03Z3g2?=
 =?utf-8?B?S29XZXZpQTA3ZzltbXZrOVJGQlRsQ0EyaE5nbktTN1FWdy9EMkJETU5hSVhD?=
 =?utf-8?B?QjM0d29sZTBtamRKTU9vLzBaMWtjRElVVk02L1pQZW9HWUl2QWVYQW1jMDRO?=
 =?utf-8?B?Z3ZmSWN5MHBpMFNJK2RLa2t2bXJGYXhLR2tQT1Ixc3RFblhqV2lvbDJSN200?=
 =?utf-8?B?U21VQ2wycDg2dG5yUWVkRWNFQ0UyOE1mY2I5d0VzKzFVVlFISUtvODhXdzZ0?=
 =?utf-8?B?dGlMRFV4Zm5RWnBVZSt6RENlTDRic3UwRGZJV056RlVqWU1VK2JTcTMyU3RX?=
 =?utf-8?B?UnhWRXR5QzVBWDBMc2lyYk0yUHNMVDg4T29QczdOT0szV2VyT0FwN1UySUdx?=
 =?utf-8?B?UUZ4N2ZrZlFqYTltbTd2eFVDc1UyVC9zWko4blNvWk5nUnF4L2pHaWJwOE9S?=
 =?utf-8?B?dFIxeDVtd0dzYmdiUk0yUmhmRmNhdWthWTNtRUZleDMydlVsZm9ZUG1MK0Ny?=
 =?utf-8?B?Zmlpa1hpZ0dPNFcvRSsvTGlIOGsvdXlpNXVTSFUwZG1SSUhkYyt3a0pKcndO?=
 =?utf-8?B?Rmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f95ba368-915e-414c-0b5c-08dc221f48f4
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jan 2024 05:41:34.6091 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8ROJ2aHJQrwWGY1Gw0Mck5mjtVbGPu03JmgZ4+TKB/LLFCuFrNE1uJ/VeMwCNAEhiUz1pnV+dOt4ADrA7dqilPQLr+g8bsBENWIaT595pNw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8190
X-OriginatorOrg: intel.com
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


On 1/29/2024 11:25 PM, Imre Deak wrote:
> Add a workaround to fix timing issues on links with DSC enabled -
> presumedly related to the audio functionality.
>
> Bspec requires enabling this workaround if audio is enabled on ADLP,
> however Windows enables it whenever DSC is enabled ADLP onwards; follow
> Windows.
>
> Bspec: 50490, 55424
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display.c | 13 +++++++++++++
>   drivers/gpu/drm/i915/i915_reg.h              |  3 +++
>   2 files changed, 16 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index a92e959c8ac7b..0f4cd634d7dce 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -435,6 +435,14 @@ void intel_enable_transcoder(const struct intel_crtc_state *new_crtc_state)
>   		return;
>   	}
>   
> +	/* Wa_1409098942: adlp+ */
> +	if (DISPLAY_VER(dev_priv) >= 13 &&
> +	    new_crtc_state->dsc.compression_enable) {
> +		val &= ~TRANSCONF_PIXEL_COUNT_SCALING_MASK;
> +		val |= REG_FIELD_PREP(TRANSCONF_PIXEL_COUNT_SCALING_MASK,
> +				      TRANSCONF_PIXEL_COUNT_SCALING_X4);
> +	}
> +
>   	intel_de_write(dev_priv, TRANSCONF(cpu_transcoder),
>   		       val | TRANSCONF_ENABLE);
>   	intel_de_posting_read(dev_priv, TRANSCONF(cpu_transcoder));
> @@ -481,6 +489,11 @@ void intel_disable_transcoder(const struct intel_crtc_state *old_crtc_state)
>   	if (!IS_I830(dev_priv))
>   		val &= ~TRANSCONF_ENABLE;
>   
> +	/* Wa_1409098942: adlp+ */

Nit pick: extra space before platform,  (not sure if it matters, tbh).

Patch looks good to me.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

> +	if (DISPLAY_VER(dev_priv) >= 13 &&
> +	    old_crtc_state->dsc.compression_enable)
> +		val &= ~TRANSCONF_PIXEL_COUNT_SCALING_MASK;
> +
>   	intel_de_write(dev_priv, TRANSCONF(cpu_transcoder), val);
>   
>   	if (DISPLAY_VER(dev_priv) >= 12)
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index eecbdecb8ed40..b43d1145fa22f 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2588,6 +2588,9 @@
>   #define   TRANSCONF_DITHER_TYPE_ST1		REG_FIELD_PREP(TRANSCONF_DITHER_TYPE_MASK, 1)
>   #define   TRANSCONF_DITHER_TYPE_ST2		REG_FIELD_PREP(TRANSCONF_DITHER_TYPE_MASK, 2)
>   #define   TRANSCONF_DITHER_TYPE_TEMP		REG_FIELD_PREP(TRANSCONF_DITHER_TYPE_MASK, 3)
> +#define   TRANSCONF_PIXEL_COUNT_SCALING_MASK	REG_GENMASK(1, 0)
> +#define   TRANSCONF_PIXEL_COUNT_SCALING_X4	1
> +
>   #define _PIPEASTAT		0x70024
>   #define   PIPE_FIFO_UNDERRUN_STATUS		(1UL << 31)
>   #define   SPRITE1_FLIP_DONE_INT_EN_VLV		(1UL << 30)
