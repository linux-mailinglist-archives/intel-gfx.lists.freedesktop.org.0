Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F8BA3FFC24
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Sep 2021 10:38:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D7B96E860;
	Fri,  3 Sep 2021 08:38:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AF296E85E
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Sep 2021 08:38:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10095"; a="206588649"
X-IronPort-AV: E=Sophos;i="5.85,264,1624345200"; d="scan'208";a="206588649"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2021 01:38:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,264,1624345200"; d="scan'208";a="543417077"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga002.fm.intel.com with ESMTP; 03 Sep 2021 01:38:23 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 3 Sep 2021 01:38:22 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 3 Sep 2021 01:38:22 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Fri, 3 Sep 2021 01:38:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M+9N3hKLuRWie0Y8ra1WwC7wcs7m1zXtZ7qVkE5f2Ozmttsg6+mYAu17htooSp/rJUTyJeTnHYoIXQYvA5Q7esS46cKl7oMoVo77BUcsHkMoZio0rIedGZIwjcff9CobzFvEgYFC2A4LcGgIuzj/SLCQZSujrpX6+utRlPVh2svw3Dt0jXD139PWcw1jFSyXZeO7hreEYagpg84Z3rccOYP4I4IKvroz6rihs5Rv7TF1so3Nz6pfSGLjKvXhfhRzGr0xPsrxjwsWC36DV3ETd2Ismw2wJxOLMLq6FQ4h9yCYOZONcu3Wkt4aaFFD9HLeSM873Kh4mN3tWPobntEnhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=oy4fQVzFoR3G5hIinnA4jNTBZoCl+dSpqNYQIORYYSc=;
 b=OJqoJrV85JpJlHhtzUmK7cnusNnLrsIXUclWxQ86V/zgvYB3SiNpUUUg4MmuVrGPVmpFshi+GH4WB7pZtnT0FwI65OCR07arW89I29KV6JRXPb5FOwPoBcPwyppY14Dll0FSboaFgOAJAzynUF4D0g1Y4CQEUmdI26ikSVV8v7YSWKlguHk+FQEAbPXExde87CfE76MNJ50m0WS5gLGgeUGIkx1MgyqMnL4aiYMqlpOVUlXsoYHep7WiO90j5cZlI5Di5P/6tQ8Os/r2yPgbD4MsFIWbwldmv6xdQ5Z84EReReYSg17l0Qnz7DVJ5p//Jk9EOp8/tZ8dlxV/VQS8Wg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oy4fQVzFoR3G5hIinnA4jNTBZoCl+dSpqNYQIORYYSc=;
 b=Ja/1+GzgVEBDGb2yez0s4J6feOA2ID+dTlzxhP2Yjmj+Re4M4KnFeJgWdSmzWJsbYlH1JRUhGDxYh4sp4XbdOIGgLgwAxpYl+j6nUl5f7fbqdLxr7/PZySzIxdWvlqQcVEy4PWOF2SLdl2CQ1l0Qll/nab91qEffSvFuK0VAgQs=
Authentication-Results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5501.namprd11.prod.outlook.com (2603:10b6:5:39d::23)
 by DM6PR11MB4676.namprd11.prod.outlook.com (2603:10b6:5:2a7::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.22; Fri, 3 Sep
 2021 08:38:21 +0000
Received: from DM4PR11MB5501.namprd11.prod.outlook.com
 ([fe80::389d:c727:c71d:d869]) by DM4PR11MB5501.namprd11.prod.outlook.com
 ([fe80::389d:c727:c71d:d869%3]) with mapi id 15.20.4457.024; Fri, 3 Sep 2021
 08:38:21 +0000
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <jose.souza@intel.com>
References: <cover.1630512523.git.jani.nikula@intel.com>
 <451082780a8befb2b27919439c901a2159ce173f.1630512523.git.jani.nikula@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <409a89ca-2959-3bde-4943-14bc93834dd4@intel.com>
Date: Fri, 3 Sep 2021 14:08:13 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.13.0
In-Reply-To: <451082780a8befb2b27919439c901a2159ce173f.1630512523.git.jani.nikula@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
X-ClientProxiedBy: BMXPR01CA0053.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:2c::17) To DM4PR11MB5501.namprd11.prod.outlook.com
 (2603:10b6:5:39d::23)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.0.113] (49.207.223.26) by
 BMXPR01CA0053.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00:2c::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4478.19 via Frontend Transport; Fri, 3 Sep 2021 08:38:19 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 69bba9ec-ae27-4699-35b9-08d96eb62f8e
X-MS-TrafficTypeDiagnostic: DM6PR11MB4676:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR11MB467636912F1DF36F1AAC74E4CECF9@DM6PR11MB4676.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2512;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DhhJCCxvMtTzFlQvSpAM9HU8kokBU+/NI8UD7nnX8rhdpyxe1MgaTlD+iOWHLnkU192JDshj2SSkkPg7XfdB6D+S9ITVA+b5rrjJBHZpJwO8z4kQi9fgMNRZRqv3zdXUI8gcdGiSsrMYu6saRYgappJ5hVRPn/TfX4m7ZwhrTNAVmbfDPO0g8IjEUZNO84jNZjCUY1NZ5pJPyD57So//bzIRKAUqaNfssqOwe8tGieOlqkYU0yhnCwZKTXwg2HtG2NJSJgxHbbM+bJCkEF+8tW44A7leI4xm66ziLNZ44MOnjmiTKiK8a+7L8hVMR62hB5XQENcrGSjqpd9eTBLorrGUvAwY72uOIK/ushEY1vh58EiwGafXSoVOWxJra+A6a4qb+WqWvtPp7IWLKSGmpvg6TJPvyIew2cJNxnmxT9awrxmrBwXV632+SCDVLsqWWBGFvIpnD082k+hZzSYXrplfUZ0QVPisPlUo+c9JKfG4z82dA4hHYCvW30O5Q08DpxU3hWUkyvaFCKddn7xuGppqJgB+oLQvq1kFK68Mrk5vgqh4z3MGwWRLRSrT7pu1aRabtnfCsp75Wvg769Pnfbc4K1ROA/8RD9F2f9qBgeiNLRIhiHC/nGYDj7ICQcylgzN+MgnH5s2vS/CK0gQdxuQwKyooIV7wT8JoU66rXVh4K4Xg7NrDWLRFD2VyCwSXANRKMRcYTFMQtXoI0nvqA5lk0LROYJm4yhEVu0sYuNopQ3+Pr+Cujhumj905K/aE
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5501.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(346002)(376002)(39860400002)(136003)(396003)(6486002)(31696002)(16576012)(5660300002)(186003)(107886003)(316002)(26005)(86362001)(36756003)(2616005)(66476007)(4326008)(956004)(31686004)(66556008)(55236004)(478600001)(66946007)(2906002)(1006002)(6666004)(8936002)(8676002)(53546011)(38100700002)(83380400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WkJraVJ4aEZYZkl0Q3ZEaUk0WTdib01TZXZRTDlpakhnSFEyeDB1endWVHZx?=
 =?utf-8?B?N0QvOWlMdHpSQ2l3VGhmNThJbU1YZVhSTmNKK0Y5QXdhazhaK0wvaHNOQ0w3?=
 =?utf-8?B?L2EwZG9KeXZ6VDU1RDN0RTRNQmZyTXdZV3NHdisyYzkvZ0Q4SytNK1J0dzZK?=
 =?utf-8?B?eXZDaWtYOEp2S2JjR1hCOWtabFFXa2dPMmVONGJuU3JVcGpkbVpVZnY3NVRJ?=
 =?utf-8?B?RjZPU1hwRUdzSnRNY3IvL2dkSGcrbE0vU3p0Tzl3WGpsVDFQNC96azNrbkNl?=
 =?utf-8?B?WEIvUGVZNzFBQ3I5VFpDWXBNMi9zYngrNnB1UmpoU2U4WEFpamwveFlRN29S?=
 =?utf-8?B?Mk9sRHJSL2lGd0xySVBxcG5RTXZiZW9uazBDM1h5QzZRMENoOEUvL3NFcy9h?=
 =?utf-8?B?WFdtSGhsdUJnZ1NQM2Q5T3hkSjRwL3ptaVYyQVJqWDRRU0RiNkhzR3ZubnFH?=
 =?utf-8?B?bEpoUlQySWdxOFJGcnZ2cDN5bjFSK3U5dTVhdmdwYjVhWSswZDQvdWVybGdM?=
 =?utf-8?B?K2VwUEVqeGdVK3JOcWQ4andONnI4anE2WFI4OHZISVRXNUVOVWx4UGIvOUls?=
 =?utf-8?B?WUZ0TkRadEVOYU5ucUtPWmlLMGpnbzhKaERxMTh1K1Z3TGdhQzFGNVN2NzRo?=
 =?utf-8?B?eWl0a3JxZEVNbFluOWFVNThGU0hmK2tEaWxwcVdkbS9HbU03RXFJQjdOWkFq?=
 =?utf-8?B?dnd6NWhFbm03MW0ySEJjcmM1aGFWTnJ0bXFQRHNtLzAxVTRNN1lMd2lYSHo2?=
 =?utf-8?B?QVZSTVVPYldMdlh3SnFZelM3UEpXMUJZQlNCcldRWitNQ0tkZkxSaGJpcVVa?=
 =?utf-8?B?QWs3VkJqbm9tazFpWGtWTXYreFV5MThkTWxVNjVkeExyaGg4eEJLNGRyUzBW?=
 =?utf-8?B?dVl1YS9INmY4TzVkcUY4R0lFNnduQzVLU0lsc1RRWEU2NzY5Rmx4YzdFVzhN?=
 =?utf-8?B?VFJ4R0twdGxXZEh5U1owSHB5NDlSVFhXVitDZUYxb3grMXRMK3JVYk1rK01t?=
 =?utf-8?B?T3BXWUozOWJyREkvczd0akpBeXZVcXZOWnJwbVR3ZEpSY01mVnA3WlBld2Fl?=
 =?utf-8?B?OGdBMU8xWGN5MnJadkc3RkNJSndteUJXT2g2R3QrTW5aT3BtaExOYUxva1p0?=
 =?utf-8?B?VmE0cTkwMHgvQjV0WVJwNjFSeExibDVTVHhGaDZmWU9YM1J4VVZlRnlOZkZj?=
 =?utf-8?B?K1dBUFdQcVFobEJOWWNNcmNCSTlhL0VoRE5MWlBNSitNRytXMW1XME5lMUdO?=
 =?utf-8?B?Nm5kZ0FGRDBGRmZFMm1wOTlMNTRRV0FSbFMzZTgxaHRWNlFjZHo3QWlEcVpk?=
 =?utf-8?B?T1RuUEtMRXdadzhOZGVhZVBKaHlHR0JZMHFwNU5sT0ZlQTlkMEZOVlhLVndz?=
 =?utf-8?B?ekM2ZDdXeElyci9tcnVSMHM4ZUlaZjk3NlFsdmsxeVp5R0ZDWTZBQzB4dTQ5?=
 =?utf-8?B?YWFnRlQzMlRXY1dRWGh1QlovdXc0RHhaa1BqZE13SzIwVEtxbmtzb1ZCcmty?=
 =?utf-8?B?RFRlaHY5SXIybE10L0N3NTJJNEtEQ1ZBVzQ5R0dMWkhzVHBiUE5pQVd4RllR?=
 =?utf-8?B?V2p2ZU5yVzNScjBSbUFtRkxhVUREbXk1dW9YQjliejJCcTBpVEs0WGR4dkRQ?=
 =?utf-8?B?TnhlK2hZMW44YllHSWxaYkw4OGJFWVNYT0hGbmtSUC9HYzJaOElqdGZQREpY?=
 =?utf-8?B?Qk9IR05oMndIWWVxQkxuOFQxMWJSUzl5YXdMeUExN3lJeGgrZVdqV3JzWmJ4?=
 =?utf-8?Q?T1nxNAaRXPL50TgO5BkhfqVEyh9p48Lk9Mw4GSS?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 69bba9ec-ae27-4699-35b9-08d96eb62f8e
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5501.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Sep 2021 08:38:21.1603 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZP1dQX6cUmWqgAgzedTikVCydIdxPUDoapHs/bRZvletwqcbqB5bXhXDu94G9kOp2UZC+20QLNTHQxgR0nXZVKDB1u2DB1nBademdkoBNZ0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4676
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 2/7] drm/i915/bios: use max tmds clock
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

On 9/1/2021 9:40 PM, Jani Nikula wrote:
> Avoid extra caching of the data.
>
> Cc: José Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_bios.c | 52 +++++++++++------------
>   drivers/gpu/drm/i915/i915_drv.h           |  2 -
>   2 files changed, 26 insertions(+), 28 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index afb5fcd9dd0c..253a528ba61a 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -1876,6 +1876,24 @@ static int _intel_bios_hdmi_level_shift(const struct intel_bios_encoder_data *de
>   	return devdata->child.hdmi_level_shifter_value;
>   }
>   
> +static int _intel_bios_max_tmds_clock(const struct intel_bios_encoder_data *devdata)
> +{
> +	if (!devdata || devdata->i915->vbt.version < 204)
> +		return 0;
> +
> +	switch (devdata->child.hdmi_max_data_rate) {
> +	default:
> +		MISSING_CASE(devdata->child.hdmi_max_data_rate);
> +		fallthrough;
> +	case HDMI_MAX_DATA_RATE_PLATFORM:
> +		return 0;
> +	case HDMI_MAX_DATA_RATE_297:
> +		return 297000;
> +	case HDMI_MAX_DATA_RATE_165:
> +		return 165000;
> +	}
> +}
> +
>   static bool is_port_valid(struct drm_i915_private *i915, enum port port)
>   {
>   	/*
> @@ -1895,7 +1913,7 @@ static void parse_ddi_port(struct drm_i915_private *i915,
>   	const struct child_device_config *child = &devdata->child;
>   	struct ddi_vbt_port_info *info;
>   	bool is_dvi, is_hdmi, is_dp, is_edp, is_crt, supports_typec_usb, supports_tbt;
> -	int dp_boost_level, hdmi_boost_level, hdmi_level_shift;
> +	int dp_boost_level, hdmi_boost_level, hdmi_level_shift, max_tmds_clock;
>   	enum port port;
>   
>   	port = dvo_port_to_port(i915, child->dvo_port);
> @@ -1964,30 +1982,11 @@ static void parse_ddi_port(struct drm_i915_private *i915,
>   			    port_name(port), hdmi_level_shift);
>   	}
>   
> -	if (i915->vbt.version >= 204) {
> -		int max_tmds_clock;
> -
> -		switch (child->hdmi_max_data_rate) {
> -		default:
> -			MISSING_CASE(child->hdmi_max_data_rate);
> -			fallthrough;
> -		case HDMI_MAX_DATA_RATE_PLATFORM:
> -			max_tmds_clock = 0;
> -			break;
> -		case HDMI_MAX_DATA_RATE_297:
> -			max_tmds_clock = 297000;
> -			break;
> -		case HDMI_MAX_DATA_RATE_165:
> -			max_tmds_clock = 165000;
> -			break;
> -		}
> -
> -		if (max_tmds_clock)
> -			drm_dbg_kms(&i915->drm,
> -				    "Port %c VBT HDMI max TMDS clock: %d kHz\n",
> -				    port_name(port), max_tmds_clock);
> -		info->max_tmds_clock = max_tmds_clock;
> -	}
> +	max_tmds_clock = _intel_bios_max_tmds_clock(devdata);
> +	if (max_tmds_clock)
> +		drm_dbg_kms(&i915->drm,
> +			    "Port %c VBT HDMI max TMDS clock: %d kHz\n",
> +			    port_name(port), max_tmds_clock);
>   
>   	/* I_boost config for SKL and above */
>   	dp_boost_level = intel_bios_encoder_dp_boost_level(devdata);
> @@ -2950,8 +2949,9 @@ enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *i915,
>   int intel_bios_max_tmds_clock(struct intel_encoder *encoder)
>   {
>   	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	const struct intel_bios_encoder_data *devdata = i915->vbt.ddi_port_info[encoder->port].devdata;
>   
> -	return i915->vbt.ddi_port_info[encoder->port].max_tmds_clock;
> +	return _intel_bios_max_tmds_clock(devdata);
>   }
>   
>   /* This is an index in the HDMI/DVI DDI buffer translation table, or -1 */
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 67a9f07550d4..8b4a31265978 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -639,8 +639,6 @@ struct ddi_vbt_port_info {
>   	/* Non-NULL if port present. */
>   	struct intel_bios_encoder_data *devdata;
>   
> -	int max_tmds_clock;
> -
>   	u8 alternate_aux_channel;
>   	u8 alternate_ddc_pin;
>   
