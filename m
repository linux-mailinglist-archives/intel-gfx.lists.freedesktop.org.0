Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93F3A3FFC22
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Sep 2021 10:37:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC5826E85E;
	Fri,  3 Sep 2021 08:37:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05B386E85E
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Sep 2021 08:37:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10095"; a="219426850"
X-IronPort-AV: E=Sophos;i="5.85,264,1624345200"; d="scan'208";a="219426850"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2021 01:37:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,264,1624345200"; d="scan'208";a="521599261"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga004.fm.intel.com with ESMTP; 03 Sep 2021 01:37:20 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 3 Sep 2021 01:37:19 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 3 Sep 2021 01:37:19 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.177)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Fri, 3 Sep 2021 01:37:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eKsX+8gvx9neRQ92gkQXJWBD+xQ61+RaS1gEmr/SlCwU9i5IJVYAz2VxHSr9x67YRmSXTHtQQJSBQbUp2IiqopivNstvcp8rBmSNGR5SzeZMMZNikIFG6wesrbPR49ZaKkPXwyaAldGRdxKr3ikisUPBB+Q5SQOol7urX1Tde48Jl43iPTW+SasiRv0aIgArj1IQIa+8eJteJ5eTwt5B2xIoewGXm79VkxY7cdRzxGrXxjgxjWejm7/JgPQNTbi7eBDvfT4Z8T4YmdTXQcAS+iUK0raZfilrBNeBzjqJ1kfrFOqRm2Ah8qEiSGicQAG4yQ7HBF/o6evBS4REBOWbEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=gfPUs+V+t1/FXDxMwiIQwXgFNlc5Z1Lu2Oo+yUsxmFI=;
 b=LUtXpbZ2gSp9rhDqavyKBQwdPKEes6yhNq8HsGHfDm7AMafcj1mD5h0isCTcsiAXSIw0qmmthWyrwMy0prtG9Yyn2NDreG+MaZiseZ3g96ci1RDT6+m+tqJ0ignAy0ij6+qLTcI1C8A5Ae73OOHWaDbepNb9iJ0NB2Lx0wp1d7BUgn+sAk8gnoZEsOjcEOANOU4t2rlVfRlgwkZbQqjeoBGqCJQMYiWXkWUFLhI7jnS8Dtthvxu+6gl0Sw2t0c8bEnY6m7+Q3FUBX6Kz8Zq3J1t4vZ1IAKcFBfz1CWDz43mAserrTDSu4kcUwNhSvcOLdG+UGeUnVJabW5ruLEKIRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gfPUs+V+t1/FXDxMwiIQwXgFNlc5Z1Lu2Oo+yUsxmFI=;
 b=WhuLCQMo/YeCyUWCVRdcAANPSR1bX6uorDjSLAC3TsdW4Hn7OEB1UbE+5h2eKjS3MntD/EBLFyoBjm0xWm+m05jux5qkJnLC0bksykKd9jBLHBRs3fL4Xz2NFHCuabWMoPTXvmxhE8oIhv3B4JoMYhzLWampsZbM5FNq0+x10r0=
Authentication-Results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5501.namprd11.prod.outlook.com (2603:10b6:5:39d::23)
 by DM5PR1101MB2363.namprd11.prod.outlook.com (2603:10b6:3:a7::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.22; Fri, 3 Sep
 2021 08:37:17 +0000
Received: from DM4PR11MB5501.namprd11.prod.outlook.com
 ([fe80::389d:c727:c71d:d869]) by DM4PR11MB5501.namprd11.prod.outlook.com
 ([fe80::389d:c727:c71d:d869%3]) with mapi id 15.20.4457.024; Fri, 3 Sep 2021
 08:37:17 +0000
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <jose.souza@intel.com>
References: <cover.1630512523.git.jani.nikula@intel.com>
 <ef22e40b01eab571ff0dc2bfffabb906d0151fb4.1630512523.git.jani.nikula@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <7002fa19-4846-672a-4790-a7368980efb6@intel.com>
Date: Fri, 3 Sep 2021 14:07:08 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.13.0
In-Reply-To: <ef22e40b01eab571ff0dc2bfffabb906d0151fb4.1630512523.git.jani.nikula@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
X-ClientProxiedBy: BM1PR0101CA0064.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:19::26) To DM4PR11MB5501.namprd11.prod.outlook.com
 (2603:10b6:5:39d::23)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.0.113] (49.207.223.26) by
 BM1PR0101CA0064.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00:19::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.19 via Frontend
 Transport; Fri, 3 Sep 2021 08:37:16 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d06d6fc0-1d49-42ac-7c32-08d96eb609a9
X-MS-TrafficTypeDiagnostic: DM5PR1101MB2363:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM5PR1101MB2363720DF338B82DB472FF0ECECF9@DM5PR1101MB2363.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +5bGaCxHVVCXfK6hKmeOSlwicXGG4FhOi3Giu28XEsUgrxalVh8WKuc86M47FzxC09gxrOw2FUZJcpIWFD0e5+Encq1HS7lRDm9Cpjl8JLZP8NEPrXvNvU4TdYrcRz6gbbUJhw5Gn3yEAV3oqXmQ+elQFDPydgCdWz4SbNITAAVc8cy8pCNn0Y15c+ixYT+NY6Maortd5eD9kIANicNgOWWjGcxCen0ySDKlDgrn+p6GxpgzqSKnHYKAyZ1jAp7FVGi3iWYOz3qeJ1g7f5yZG/dby25BBkVthY91zprBf6dkDhhAMvWYe57yDYkHxscYvV2/jGMPQj9WxICnN0O1BGuD9dKf6WgxLHv0NtzslTYfCBdPAWX3layqeiXnSWz0RfvIWiSlaS5ldGYzVBW2+cYuU3ypebl1wIReBE5JTq29lF+qptRMWZtqhSvoppC/1aebsIc+/kI+1aGp0s7pvpeylkqMsxz7fPIxylmQUcp1m9xKPc7k0bmmWitK5e9LhZ7ahUMXNR6NGL3UAL0EfRtd2JrlXygbKLUiUt/jUKYVOccPGTx4w5t8+vqKAiJjLfrTBtPZEWMSOhRtn1/B0/wlCq7Lgg/GXKYVz1E+s/zki15Fhl0xsCAxxx6uek3r1p/0xA1521J5YtcCv9onBxhyKD+lvhEJnRRKbHwxaL0Vk5sErRrqBcvGDOGec6GK6eDGZzw57wpFHUHIjyKNSaagMct6hHXubdj0NweGJ7c=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5501.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(346002)(376002)(366004)(396003)(39860400002)(2616005)(26005)(66476007)(478600001)(5660300002)(956004)(31686004)(66556008)(38100700002)(8676002)(8936002)(66946007)(55236004)(107886003)(6486002)(4326008)(6666004)(53546011)(1006002)(2906002)(186003)(36756003)(31696002)(86362001)(316002)(83380400001)(16576012)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VG9ublpUMHZBZnAxczlZem9tT2dndHU1VlVONnN6VE9kSmdoTXAxaFVRUE1M?=
 =?utf-8?B?ZnJDV3A4RVVQeWlGS1RQNkpEN1hxM1lycDYwZnByZkg1MTlmV0pzVGI2dHc3?=
 =?utf-8?B?dnRVeHl6VGpPTWpCazhwb1N5cGJGanNwNFo0cTlVTXQySVZTLzRFU0h2aUFs?=
 =?utf-8?B?dy9VSjNwSms1WlVSUm9LZjk3eWxyUDlhYVRoaUsrQy8zR3NDSmwwQ1V0M3U0?=
 =?utf-8?B?L2hDRDhFSWVEZW1BYm5zb1J1MEd1OXJueWJ2RitrRkhBVXR0MlJEM3hmclNk?=
 =?utf-8?B?dkVLNUxKR0xPQkNBNFRZZzBVU0U3bHptM1c1TlQ5T1grdUxLdndOa1FVbFZk?=
 =?utf-8?B?Ui80NmRNbGVxTEpZdUVTeW1VNDZFcUREUUZRSktXYjY4cVRPakxJRUdsVEUw?=
 =?utf-8?B?RUxHMWZNOWRlNG1lVWVHbWtSQjNaMCtjSVpJVXZKUmVRcU9kVVh2bWZ3Z0lU?=
 =?utf-8?B?T05zcE50M2dleUtXZ2Z6WHZ5UlFOYzFQWGJxb25BczdMMXdFNnZwcXpmUWJX?=
 =?utf-8?B?MmE1eVEyREtmWGJjYURFKzhLZ0VPOWJUQks1UXR2MWxlQjRZTDhjRmlCcFBL?=
 =?utf-8?B?Z2tiT1hLVjhQcUxEQUQwSWVBVW5wWDgydzlwZVkzdXpFZExqcEJneWptczAr?=
 =?utf-8?B?NEg5RlJRQ2lRWGh2amc5b0JLMU1mNGhINXpHRjk1SnE5N014c3BwYU9CNUg5?=
 =?utf-8?B?ZGp6Uk9ONStBV1cxVnFjd3BQUVk1clZBUE1Bc0M3ZGc2N1NPK3luR0ZHdTRs?=
 =?utf-8?B?MWlDQVRqZjIxenl4eU9xZU5ad0FzWWJNYWNKSmhEMVI2T2o3bTc0ZXUrRm0r?=
 =?utf-8?B?Q3lhRkdCK3FCcFhIMExrTWtsVTJ6ek5rUG1NUGlmL01YRHcwcW1ZQ0xWc3po?=
 =?utf-8?B?MSs1dFVkbzNXNmVsbkRJQmp5ei9ZL2RsdUtzNyttSWVQZFY5V0had3BSa1Ew?=
 =?utf-8?B?cVVTN2JJMEdzMCtpS2tVbm00cE9SbHUyS3k5cU12SEVPbkI3eG1CY21heTBD?=
 =?utf-8?B?RzNnZXRxQjJqWkhGUTZVOVVGcHVmQ20zTkRpWTlqWU9JMnJaYTRSa1g0cTBK?=
 =?utf-8?B?c1BQcEFxUGw1VjZXL040SkYrOGhkSnFmOTZvMU5IRVJUWXMxV2NFNDFrUm5Q?=
 =?utf-8?B?azB1c3hPcTN4MVpDTG9kY05nQlpQNnl4a1RyU0hqbVZCY09SMElMK3NSazFM?=
 =?utf-8?B?SVF5cWRJa0FGM21BbDRNY1dzaFhveXlFc2hpME9Cb3Vib1ZCbG9makprVXlu?=
 =?utf-8?B?UStreDdhRnRxZ3NNWDcyNlcyVmcxeVcwTy9zYXpubDJBSWN4MCtNQS9QMmZJ?=
 =?utf-8?B?Si8vUzAyQUVQeUlZNksxanhiNWVCTXBKV1VHK1JJUEpzN045UGVqSDlUTUs5?=
 =?utf-8?B?NFVmM2k1bkxOR2tDZDlKUnlpajE2K0E5WVR6YnU2MzFsYlU3SllyczFIT0R3?=
 =?utf-8?B?VWpaZFdPU0NPWWpOblgvcmxLM09RR0Uvcnh1T2ZXeGdGbFc1UjdpSmJla1FQ?=
 =?utf-8?B?Y3pVbGxvY2ROblJRWFdGSG96bk9laHQ5d3dlOGthWlZ2RXpzNFh6ZlQ3R0Y3?=
 =?utf-8?B?ajlFRjNueHJKVDRCTmpvK1NKUW4wdFNYelNOYm4xd0FqOVRsanR0MTBCNTh2?=
 =?utf-8?B?N3FoNEdDNlcwMmZwMzBLOTdpUldHNm5BNWNMWGVpdmF3REEzM0pZYVJ6RmFX?=
 =?utf-8?B?alJzakQ1VWQxMmVMM3NFWEgyV25jd1E1UVlkRkJaaHBmT2doUkUxblFMdWU2?=
 =?utf-8?Q?QUIXamuKhAOhhEBW7HuoduGJBiu1tmWytlNl1mK?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d06d6fc0-1d49-42ac-7c32-08d96eb609a9
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5501.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Sep 2021 08:37:17.5657 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: b2aHgwIwiRHO6vJzAE2qzdthAEfcbSSx6O+KTCeRcd6ZuLu79CQsYSfqf1INWwdUk5NIBaDBUGcMz41FekO4F9DKWIx+lz6EGAGEXdilfSI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2363
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 1/7] drm/i915/bios: use hdmi level shift
 directly from child data
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

LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

On 9/1/2021 9:39 PM, Jani Nikula wrote:
> Avoid extra caching of the data.
>
> Cc: José Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_bios.c | 26 +++++++++++++----------
>   drivers/gpu/drm/i915/i915_drv.h           |  4 ----
>   2 files changed, 15 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index e86e6ed2d3bf..afb5fcd9dd0c 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -1868,6 +1868,14 @@ intel_bios_encoder_supports_edp(const struct intel_bios_encoder_data *devdata)
>   		devdata->child.device_type & DEVICE_TYPE_INTERNAL_CONNECTOR;
>   }
>   
> +static int _intel_bios_hdmi_level_shift(const struct intel_bios_encoder_data *devdata)
> +{
> +	if (!devdata || devdata->i915->vbt.version < 158)
> +		return -1;
> +
> +	return devdata->child.hdmi_level_shifter_value;
> +}
> +
>   static bool is_port_valid(struct drm_i915_private *i915, enum port port)
>   {
>   	/*
> @@ -1887,7 +1895,7 @@ static void parse_ddi_port(struct drm_i915_private *i915,
>   	const struct child_device_config *child = &devdata->child;
>   	struct ddi_vbt_port_info *info;
>   	bool is_dvi, is_hdmi, is_dp, is_edp, is_crt, supports_typec_usb, supports_tbt;
> -	int dp_boost_level, hdmi_boost_level;
> +	int dp_boost_level, hdmi_boost_level, hdmi_level_shift;
>   	enum port port;
>   
>   	port = dvo_port_to_port(i915, child->dvo_port);
> @@ -1949,15 +1957,11 @@ static void parse_ddi_port(struct drm_i915_private *i915,
>   		sanitize_aux_ch(i915, port);
>   	}
>   
> -	if (i915->vbt.version >= 158) {
> -		/* The VBT HDMI level shift values match the table we have. */
> -		u8 hdmi_level_shift = child->hdmi_level_shifter_value;
> +	hdmi_level_shift = _intel_bios_hdmi_level_shift(devdata);
> +	if (hdmi_level_shift >= 0) {
>   		drm_dbg_kms(&i915->drm,
>   			    "Port %c VBT HDMI level shift: %d\n",
> -			    port_name(port),
> -			    hdmi_level_shift);
> -		info->hdmi_level_shift = hdmi_level_shift;
> -		info->hdmi_level_shift_set = true;
> +			    port_name(port), hdmi_level_shift);
>   	}
>   
>   	if (i915->vbt.version >= 204) {
> @@ -2950,13 +2954,13 @@ int intel_bios_max_tmds_clock(struct intel_encoder *encoder)
>   	return i915->vbt.ddi_port_info[encoder->port].max_tmds_clock;
>   }
>   
> +/* This is an index in the HDMI/DVI DDI buffer translation table, or -1 */
>   int intel_bios_hdmi_level_shift(struct intel_encoder *encoder)
>   {
>   	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> -	const struct ddi_vbt_port_info *info =
> -		&i915->vbt.ddi_port_info[encoder->port];
> +	const struct intel_bios_encoder_data *devdata = i915->vbt.ddi_port_info[encoder->port].devdata;
>   
> -	return info->hdmi_level_shift_set ? info->hdmi_level_shift : -1;
> +	return _intel_bios_hdmi_level_shift(devdata);
>   }
>   
>   int intel_bios_encoder_dp_boost_level(const struct intel_bios_encoder_data *devdata)
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index be2392bbcecc..67a9f07550d4 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -641,10 +641,6 @@ struct ddi_vbt_port_info {
>   
>   	int max_tmds_clock;
>   
> -	/* This is an index in the HDMI/DVI DDI buffer translation table. */
> -	u8 hdmi_level_shift;
> -	u8 hdmi_level_shift_set:1;
> -
>   	u8 alternate_aux_channel;
>   	u8 alternate_ddc_pin;
>   
