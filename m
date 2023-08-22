Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC8807838C1
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Aug 2023 06:18:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC7F710E00C;
	Tue, 22 Aug 2023 04:18:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83C1C10E00C
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Aug 2023 04:18:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692677907; x=1724213907;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1nPd1l2kUZzR4XsRNDoYTn78uzjO0fBrxVG3HKhD/Iw=;
 b=Lv/WaurXT1hcAzxGWW9rLX9YDVhY/FL4Xay/y6pET5GT0HNyVus677Sj
 s9HeEj7shC+1GjwVLBz6MibI4b/Y6qeXzkN3rPSTNhHKSdS2RKvPs+r4l
 uq1Yq7X3jJpUu5ZnsfbtjgujCuC0AXLWwB4iRWEZHp+X8BxeGsgNXEvs8
 sOb2tUUgNgJeOMCfuCfue1ojGDWUyoUiVigcqiTuMwmbYHZnivwe3ExtM
 RgHRFb25pUOz6pVoPFGorkmHm2+L2QkQSvyPG47GXU4eJy3fbMEwTp0Hc
 ebw0qeyjs22lFnmp7NLsn0zN9U1e/YJeZkrWoIPBj/WRj0fxK9BDUPSxB g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="373744406"
X-IronPort-AV: E=Sophos;i="6.01,192,1684825200"; d="scan'208";a="373744406"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 21:18:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="879783159"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP; 21 Aug 2023 21:18:31 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 21 Aug 2023 21:18:26 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 21 Aug 2023 21:18:26 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.103)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 21 Aug 2023 21:18:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jS9Rq0RblHmyMpzwOgS+v8jFJD6LpVL2pccLZbc04sL5BY1RN8sdswlrX4JV4LxXXJL2ZUEEhndLjrpdGmTcK0KlD9SIKS+R89KSDwUyAovxqopDc4sQXmjd6JghgX20xPtpCOR8kPw7T0uBy6W5l8JlcrzI7nci+3ZuOH/7kQQ/vT5u8GxE+wgsLgR2rkijkamGIBdt+qIVVLgwgxJ+VE30m65hvsMA1Qh2Npf429FovPoZzW/DD9ANAoh3zF4ZUKpOtQK9bi/UjsYA4qNYmiEQ3sxaZ8FWE1DJKHzjYgTXs/5gBQSr0MtK8HunowVnpnfHnR4S1Lkej2SDdhBk0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kIC6TOUaYmvjCb+LtMDvSNUAyEoqnR2Mib/BpXzow58=;
 b=CKEYtT7p39qv+RItT36WZYfyjVjkvt3lY4JuOgoto5ca/+UNZdDWfV7gdHdviVbXqbDz2B+nSgS0CDgXAHGlD8B5dF+dHGmMzUkL7Q/2uxHz0WC3LxgGHabWL/MCLtNk1lGG2CnP7gOwViw0mMrSXJnEvkbv4XV1Q2gOiGWAy/f3ekKXUW+jJi7tJm43q7t7EgIWRHItbXiLQxhXJtAQ7aJ1ItTdDaO03zNsJJmNCrVE5YX3vR85aNsS3QLMZIe580oayAA0kpegPL1ZYIM8luM1slnviZvmQtOMtD9yLOTOydY4QRk6dC4HNFPhj5UlbUivDl2J2gb2Q4uZvMfl4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB7075.namprd11.prod.outlook.com (2603:10b6:510:20e::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.24; Tue, 22 Aug
 2023 04:18:23 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::1e8d:5942:e23b:c08d]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::1e8d:5942:e23b:c08d%6]) with mapi id 15.20.6699.022; Tue, 22 Aug 2023
 04:18:23 +0000
Message-ID: <bd850163-f7dd-0213-e257-ee1737422910@intel.com>
Date: Tue, 22 Aug 2023 09:48:12 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Content-Language: en-US
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20230817083524.296571-1-suraj.kandpal@intel.com>
 <20230817083524.296571-8-suraj.kandpal@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20230817083524.296571-8-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0132.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:6::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB7075:EE_
X-MS-Office365-Filtering-Correlation-Id: e5bf1f1e-cb95-4abb-89f2-08dba2c6d33d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: p6nZCP+MDF5p3nUfux4yr4mnMFLcXD2ZJO5fk3XfziHxL4vbFj71sPo0rjYRbA2q6AyWT4IcYispgjNo1cWpqOHXlMh/58o8cbKDKjuSi5bzDdS1yuFJT6sgbW1+tM2pNoVRIEuKckmXg44HfqItYVoldksr1pyzbCXHLUzUUYT30pXFi15tMgPqhTExQ2GYp73ruVGPuNqcGPCnjcfPyYdU4hUMMF0zqHYzAVQO6RA5bB+khubN0KTaxExRR3NqA2VuNIOhLfCuzLhuLuXYK+PjDFHleZQbdb+OLmglqY63oQ6WUcaQJiCr3+TckLywh4AfrnkLt9OzNdihi2J4/XEFuSJrStPegWjvZyPwmYFwawBVxDOttCmg2wt3bspn/MJ8pOWH6KlAy2kgkJNc1oKH4ydna0DLwQjG11P1DC3/3PAR8ptBHf3BJajV2ddpskC1F+wQ7mKF6R5chBS+yKdvqoqkQBP8fOzZjdHTj12kUGhv/TpsLd0t6pXvLolFYRHQ13MLl2zYJNc341VajzRzsdpaDhzl5InOXRfRlyWM68kr88bnrKwdCkEZIgsZiGTD+U7WuWLHMmoEdEyA5j5jKBZ+THNuxjCeaWEGjiimIr5Jka2mSyK/+ww34aWSMogvcZ3gy5/HQhc08cwCEA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(366004)(346002)(136003)(39860400002)(396003)(1800799009)(451199024)(186009)(6666004)(8676002)(8936002)(4326008)(316002)(478600001)(31686004)(66556008)(66946007)(66476007)(41300700001)(6486002)(6506007)(6512007)(38100700002)(82960400001)(36756003)(26005)(53546011)(5660300002)(2616005)(31696002)(86362001)(2906002)(83380400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cHpaeVFkS0RpWWxkKzZPZEJZTW4xUGswSSttbFhKZHlqQUs3Mm9YeG5qbUlu?=
 =?utf-8?B?MVhjdEd5Tjl0RTZZUS9MZzBvUWFMWGRWNjZlenlkZ3pkTWdtRGNRR20zYWpH?=
 =?utf-8?B?czBsQ2dQREcrUCtXN0l5YXVNcGpCSUlhckJQakxHMmpXRXdMYlZ4aDNLRU9h?=
 =?utf-8?B?QkJUaDhqWDN6anZIZ213MDE4czJkdmkyTWcrZXRSU1NpNnRzQ3pzQlhTQit1?=
 =?utf-8?B?TjNKWGlMckVuQm5Hazc5bVdDTXNodi9WTFNVNkQyU3VZb0tKYThtZCtWbmRu?=
 =?utf-8?B?MXVkaklnQ3JqSjVuZTU2TUlNNEZDdEFwK0hyalNpdlUxWE9ZMkllaFZ5aFpa?=
 =?utf-8?B?Y3RyUEFHMFp4bEZ3Q0htanhsSkJicGhWR2FEZUgweS9WaGtDMjFFdVJOTkd6?=
 =?utf-8?B?bzc2cEhub1lsQ3pOM0ZMakVia1FzdWVkcU5LT1hXNXpUTlJyNDV4SElBYm9L?=
 =?utf-8?B?QngycXpwZlVPSDdPSmlHZzcxRitkcjRWOFRoVnQyeHR6cElLb3plcE53R3Fy?=
 =?utf-8?B?YThUc2FmQmJiMmM0ZjR6cTJ2VmlYZEpzNUVleEQwMFBmZ1A0UFZiVDR1UXFG?=
 =?utf-8?B?OU9GMWJQTXdycmhDaE10T1hscXhHbFRQK3dNUVVGUG9GSDg2ajU0MmFLcDVE?=
 =?utf-8?B?QUxtdFFxbXZJNDNUWW9NNjI2Z2kvb1AvSkNGYkhUeVVVR2RDbTlpZEpjRzJz?=
 =?utf-8?B?djVoM3h0cTRIZDBjd1Z4Y0UrcU80a3FnQUhvdkdmN3NReGtlbzRGM21sc0xD?=
 =?utf-8?B?OFMyWHdTc09waHlsU1dmUmh2V2h4TVVzQlBLTUowcGMwZU1KZXc3QVRmRnRU?=
 =?utf-8?B?cVhBNG9RazdCUVk1K2hhZkkyeVpIaHhvNzd5cEc2ZFBLYm1kbEVEeWpMT2d6?=
 =?utf-8?B?V2hndWU2R00xT0hJQ0ljenFabEljbHdnRkRTeGJsTDUyU0VRWXFRRE5mRTFr?=
 =?utf-8?B?V0FjTTU1NUJxUWdTb2lWZmd0b0dTMXBpWkZUQ1VqaHdGbExKbkhMT3VvMGx6?=
 =?utf-8?B?alJ1TmhqL2FvSkRSa3FlSmp3eC9UMmV2TFoyRWZnY3ZSa2N4TGdmUjdhVy9J?=
 =?utf-8?B?N0NnRTNvTTNLekc1Z1BhcDIweHhGakN0V3VlVjFEVG00UnBMcXNnYjEwVFp5?=
 =?utf-8?B?MHkwdlNNeEdmaWEyMjJCUFpMVFA0Znd5ZGpneHcrVmk2cGNsdzMrUkp2WVp1?=
 =?utf-8?B?TmJUZ1dDamVKa0lMbTY3Vkk4UzRhc0orY0dnbVZxNzJ4MXpkaXdZU1ZlakZ1?=
 =?utf-8?B?UmEzS3VmVUpqREIwc3VJYjc3RklCLzVJUFRVRFBBNzVuZlh4am5RV1hNOVo0?=
 =?utf-8?B?SHh2Mm1IbDZkUWJJWHAwQWVmMjloaXB0c3RSUDVwWUtaRVVzV3N1OUttZ2hD?=
 =?utf-8?B?TEdYNVhlaWMvMDUvcURBMkk3RG42c2RPZjF5MWZ5T0RmdFdkbHVKak83bk1U?=
 =?utf-8?B?L0lkdXBwYWFCNzhpYXgvbG9HVloxaTFmQUxhZGw0dWpDOHUyZ2lsMG85eUp2?=
 =?utf-8?B?RlFJRVVjQUNzVFlhcGF5S3hqWGsyK29RdlRobkIvRm4zNFg1QVNEK01ldVJp?=
 =?utf-8?B?bHVDQjlMc3ZKZXZjaitDUmgzMW52b2pVdENEVTdpZXNtcTJhS0NDS1FLUGdY?=
 =?utf-8?B?NWJZajBITXhQellLQjZIZ3FZaStrNEVnbjZUNElnWFlyd2FKeVdQM1Z6MXlX?=
 =?utf-8?B?Qy9hdHdxc2tCV1BPRTl2OEc1dURtVnA2SUdVbTc1OFE3R0tkQ2VBcjZmUzZG?=
 =?utf-8?B?T2tmdWlCSGszakc0OHJWdXJVczZ6dE10UTVYSVR6cm90RHBHMEluSW5lWDNE?=
 =?utf-8?B?S0dlR2xlMDFBRjJON2x3T0NjQmwvVndBNW0wbzdMc1FxVnErcFQ3V2E1bmEy?=
 =?utf-8?B?bkFIbHpUZThrMFI0T3A5ZG5yODliWWFPdElSWlFqTWtFWDUwWEhNWWJMUjFS?=
 =?utf-8?B?S1ZLUmlScEdJT2pIL3JRWmh4WllMRWJMYXFDdStiUzhYN3hmVHRySHZ1NXUv?=
 =?utf-8?B?S3lXRHZnMDRkNlhkWm5FcXdZL0tFOUdYRWRBQjJEUTBpSm1ibndnSGY2VDF6?=
 =?utf-8?B?R0lYMFUrakhlYTBYc01UMG8rN1pXd09vanc4cTZOY1RBSkM3M2VvOTlpRVAy?=
 =?utf-8?B?ektmeTErMnZnR1hWN2I1Mnp0dkNnWE1hYTZzN2lvVS9CY0hseTJibXhOUVFI?=
 =?utf-8?B?elE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e5bf1f1e-cb95-4abb-89f2-08dba2c6d33d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Aug 2023 04:18:23.8296 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WJKMtrGlecwXczAX9MUYBvBjCRPVgCVph28W0WpqLzNO3G5uuKp8p5Ylxf5MoMg4JPi3Y97q451f2AZnGkT6aanMwFatCkT9OZrEHc/2enE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7075
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v8 7/8] drm/i915/vdsc: Fill the
 intel_dsc_get_pps_config function
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


On 8/17/2023 2:05 PM, Suraj Kandpal wrote:
> We have setup both the read and write functions so we can
> move ahead and fill in all the readout state from PPS register
> into the crtc_state so we can send it for comparision.
>
> --v2
> -Shorten comment to just PPSX rather than having the whole
> "Readout PPSX register" [Jani]
> -Remove pps_temp reinitialization as its being initialized in
> the read function [Jani]
> -Use REG_FIELD_GET to readout certain fields of dsc registers
> [Jani]
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vdsc.c     | 99 +++++++++++++++++--
>   .../gpu/drm/i915/display/intel_vdsc_regs.h    |  3 +
>   2 files changed, 95 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index e6c2d3ae60aa..5381976153f8 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -852,20 +852,105 @@ static void intel_dsc_read_and_verify_pps_reg(struct intel_crtc_state *crtc_stat
>   static void intel_dsc_get_pps_config(struct intel_crtc_state *crtc_state)
>   {
>   	struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
> -	u32 pps_temp1, pps_temp2;
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> +	u32 pps_temp;
>   
> -	/* FIXME: add more state readout as needed */
> +	/* PPS_0 */
> +	intel_dsc_read_and_verify_pps_reg(crtc_state, 0, &pps_temp);
>   
> -	/* Readout PPS_0 and PPS_1 registers */
> -	intel_dsc_read_and_verify_pps_reg(crtc_state, 0, &pps_temp1);
> -	intel_dsc_read_and_verify_pps_reg(crtc_state, 1, &pps_temp2);
> +	vdsc_cfg->bits_per_component = (pps_temp & DSC_BPC_MASK) >> DSC_BPC_SHIFT;
> +	vdsc_cfg->line_buf_depth =
> +		(pps_temp & DSC_LINE_BUF_DEPTH_MASK) >> DSC_LINE_BUF_DEPTH_SHIFT;
> +	vdsc_cfg->block_pred_enable = pps_temp & DSC_BLOCK_PREDICTION;
> +	vdsc_cfg->convert_rgb = pps_temp & DSC_COLOR_SPACE_CONVERSION;
> +	vdsc_cfg->simple_422 = pps_temp & DSC_422_ENABLE;
> +	vdsc_cfg->native_422 = pps_temp & DSC_NATIVE_422_ENABLE;
> +	vdsc_cfg->native_420 = pps_temp & DSC_NATIVE_420_ENABLE;
> +	vdsc_cfg->vbr_enable = pps_temp & DSC_VBR_ENABLE;
>   
> -	vdsc_cfg->bits_per_pixel = pps_temp2;
> +	/* PPS_1 */
> +	intel_dsc_read_and_verify_pps_reg(crtc_state, 1, &pps_temp);
>   
> -	if (pps_temp1 & DSC_NATIVE_420_ENABLE)
> +	vdsc_cfg->bits_per_pixel = pps_temp;
> +
> +	if (vdsc_cfg->native_420)
>   		vdsc_cfg->bits_per_pixel >>= 1;
>   
>   	crtc_state->dsc.compressed_bpp = vdsc_cfg->bits_per_pixel >> 4;
> +
> +	/* PPS_2 */
> +	intel_dsc_read_and_verify_pps_reg(crtc_state, 2, &pps_temp);
> +
> +	vdsc_cfg->pic_width = REG_FIELD_GET(DSC_PIC_WIDTH_MASK, pps_temp);
> +	vdsc_cfg->pic_height = REG_FIELD_GET(DSC_PIC_HEIGHT_MASK, pps_temp);
> +
> +	/* PPS_3 */
> +	intel_dsc_read_and_verify_pps_reg(crtc_state, 3, &pps_temp);
> +
> +	vdsc_cfg->slice_width = REG_FIELD_GET(DSC_SLICE_WIDTH_MASK, pps_temp);
> +	vdsc_cfg->slice_height = REG_FIELD_GET(DSC_SLICE_HEIGHT_MASK, pps_temp);
> +
> +	/* PPS_4 */
> +	intel_dsc_read_and_verify_pps_reg(crtc_state, 4, &pps_temp);
> +
> +	vdsc_cfg->initial_dec_delay = REG_FIELD_GET(DSC_INITIAL_DEC_DELAY_MASK, pps_temp);
> +	vdsc_cfg->initial_xmit_delay = REG_FIELD_GET(DSC_INITIAL_XMIT_DELAY_MASK, pps_temp);
> +
> +	/* PPS_5 */
> +	intel_dsc_read_and_verify_pps_reg(crtc_state, 5, &pps_temp);
> +
> +	vdsc_cfg->scale_decrement_interval = REG_FIELD_GET(DSC_SCALE_DEC_INT_MASK, pps_temp);
> +	vdsc_cfg->scale_increment_interval = REG_FIELD_GET(DSC_SCALE_INC_INT_MASK, pps_temp);
> +
> +	/* PPS_6 */
> +	intel_dsc_read_and_verify_pps_reg(crtc_state, 6, &pps_temp);
> +
> +	vdsc_cfg->initial_scale_value = REG_FIELD_GET(DSC_INITIAL_SCALE_VALUE_MASK, pps_temp);
> +	vdsc_cfg->first_line_bpg_offset = REG_FIELD_GET(DSC_FIRST_LINE_BPG_OFFSET_MASK, pps_temp);
> +	vdsc_cfg->flatness_min_qp = REG_FIELD_GET(DSC_FLATNESS_MIN_QP_MASK, pps_temp);
> +	vdsc_cfg->flatness_max_qp = REG_FIELD_GET(DSC_FLATNESS_MAX_QP_MASK, pps_temp);
> +
> +	/* PPS_7 */
> +	intel_dsc_read_and_verify_pps_reg(crtc_state, 7, &pps_temp);
> +
> +	vdsc_cfg->nfl_bpg_offset = REG_FIELD_GET(DSC_NFL_BPG_OFFSET_MASK, pps_temp);
> +	vdsc_cfg->slice_bpg_offset = REG_FIELD_GET(DSC_SLICE_BPG_OFFSET_MASK, pps_temp);
> +
> +	/* PPS_8 */
> +	intel_dsc_read_and_verify_pps_reg(crtc_state, 8, &pps_temp);
> +
> +	vdsc_cfg->initial_offset = REG_FIELD_GET(DSC_INITIAL_OFFSET_MASK, pps_temp);
> +	vdsc_cfg->final_offset = REG_FIELD_GET(DSC_FINAL_OFFSET_MASK, pps_temp);
> +
> +	/* PPS_9 */
> +	intel_dsc_read_and_verify_pps_reg(crtc_state, 9, &pps_temp);
> +
> +	vdsc_cfg->rc_model_size = REG_FIELD_GET(DSC_RC_MODEL_SIZE_MASK, pps_temp);
> +
> +	/* PPS_10 */
> +	intel_dsc_read_and_verify_pps_reg(crtc_state, 10, &pps_temp);
> +
> +	vdsc_cfg->rc_quant_incr_limit0 = REG_FIELD_GET(DSC_RC_QUANT_INC_LIMIT0_MASK, pps_temp);
> +	vdsc_cfg->rc_quant_incr_limit1 = REG_FIELD_GET(DSC_RC_QUANT_INC_LIMIT1_MASK, pps_temp);
> +
> +	/* PPS_16 */
> +	intel_dsc_read_and_verify_pps_reg(crtc_state, 16, &pps_temp);
> +
> +	vdsc_cfg->slice_chunk_size = REG_FIELD_GET(DSC_SLICE_CHUNK_SIZE_MASK, pps_temp);
> +
> +	if (DISPLAY_VER(i915) >= 14) {
> +		/* PPS_17 */
> +		intel_dsc_read_and_verify_pps_reg(crtc_state, 17, &pps_temp);
> +
> +		vdsc_cfg->second_line_bpg_offset = REG_FIELD_GET(DSC_SL_BPG_OFFSET_MASK, pps_temp);
> +
> +		/* PPS_18 */
> +		intel_dsc_read_and_verify_pps_reg(crtc_state, 18, &pps_temp);
> +
> +		vdsc_cfg->nsl_bpg_offset = REG_FIELD_GET(DSC_NSL_BPG_OFFSET_MASK, pps_temp);
> +		vdsc_cfg->second_line_offset_adj = REG_FIELD_GET(DSC_SL_OFFSET_ADJ_MASK, pps_temp);
> +	}
>   }
>   
>   void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> index 7afc487223fb..8d4fcacd1229 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> @@ -76,6 +76,9 @@
>   #define  DSC_BPC_SHIFT			8
>   #define  DSC_VER_MIN_SHIFT		4
>   #define  DSC_VER_MAJ			(0x1 << 0)
> +#define  DSC_LINE_BUF_DEPTH_MASK	REG_GENMASK(15, 12)
> +#define  DSC_BPC_MASK			REG_GENMASK(11, 8)


Perhaps move these near the DSC_LINE_BUF_DEPTH_SHIFT and DSC_BPC_SHIFT.

In any case, the patch looks good to me.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

> +
>   
>   /* PPS1 */
>   #define  DSC_BPP(bpp)				((bpp) << 0)
