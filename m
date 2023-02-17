Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6417069A5E2
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Feb 2023 08:03:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 540B510E434;
	Fri, 17 Feb 2023 07:03:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC08E10E426
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Feb 2023 07:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676617433; x=1708153433;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=gMfOnPHf2pM8ziCusCOA8cnBaZaXlk3XYgNplMG7Nrs=;
 b=HFQYjJ6CHX4gI0jTp7CEMbpuY3ZCHeleX5pCcRWhu+7xWSdrfFxwbSsz
 pVX3IgxkfIMfpluPGmAUXzoafPPNPnbWL5V5oBZoUofP4b8bmbs0qhp8a
 uO89pL34VBz4/dRcZgjCPsMEEcA6CEXI/YqYgyWQ7RTyJvEhvnZ5zt0Y+
 X7hyqjHYF0pD+eeEQJxYWNm0fOwz8c81We6Zpr5WP7Tl0MpUC+XuCEooA
 k81mqkh9J4LeXPyoRdHQrfbAU1gHnSReElk/X1YTwGwvsSCn7WG7RLiIg
 gmWMB9de0Fd8y/lyXZKqCSheUclQYbopiIDKZIDS75sKneFo/PXgFgtnj g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="396600651"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="396600651"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 23:03:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="739169585"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="739169585"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga004.fm.intel.com with ESMTP; 16 Feb 2023 23:03:53 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 16 Feb 2023 23:03:52 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 16 Feb 2023 23:03:52 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 16 Feb 2023 23:03:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HdEyjGdwCmMUQ9cvwRYqkwF+SifdZBD8cRHuZ0qMWH3VqTdhbCIOHctPrNs6jWiVjNO7dymTN+DgiCT7cUy6SkGfvWExMN+ZicbUlrkgiN/EtoH9eUxnOn7A4xQsS2DchipzU84PSGQoT5yhOR982GZXhlWASlDsQnnu8LETf42ZV4A92swiej8ty2kemm2sngpRvi1PjilOUWU+a/bS2CUZl4n/tsCqy9rwjaqyiK/m4vUBz9yVMTBhhcxw9AIHiCAlWJbXupSi1mRe8So5Zc3qAI2UVfzlpIsSE5ui/rX6wzMjZuN+9AKMB2V7XaF13vinOMobk9jBn0oDsQjnNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V2TU/sPBdVngRG95jXunYZbVFqGHGN4HK8R6P1URCOs=;
 b=HZLtipIMYiUZUa6wkD5eorcb/DjRcp6LbFYdJfu/+pd2idWVvergFdIMsNwYfsgqX9bARwWwiL8HLLC5vMEx0MFWtueP1qOjzPbay2uZajiqYiDoKDb1HwiNybF5Qgi//nZpWnTZud4W0HB+4JC5oOHUDxny9bs3DGEQTWJpX0+omQq2kpCuFj3834r1SHlbmXYJrZWu7xJLzqnSPdbVxJv7ayvYLL/ZEBOW4BfLZ4/MuJyXLPjPjhny8uaINFSo+TfYkfq3WtBJo5mnhWIoAgKPpmFzw/l1805xN/iamYsIO/QxYRQolt2nOnNLN2dzt7DWO+5PjWBIW2zzheNvYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA1PR11MB6968.namprd11.prod.outlook.com (2603:10b6:806:2be::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6086.26; Fri, 17 Feb
 2023 07:03:50 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::a4d:71cf:e6bb:6942]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::a4d:71cf:e6bb:6942%7]) with mapi id 15.20.6111.013; Fri, 17 Feb 2023
 07:03:50 +0000
Message-ID: <728aebaa-9bdf-7832-27b5-0f7f7275443b@intel.com>
Date: Fri, 17 Feb 2023 12:33:40 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20230216231312.32664-1-ville.syrjala@linux.intel.com>
 <20230216231312.32664-2-ville.syrjala@linux.intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20230216231312.32664-2-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0037.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:22::12) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA1PR11MB6968:EE_
X-MS-Office365-Filtering-Correlation-Id: 9f465b08-43d6-415b-756d-08db10b51edc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KLfxSv5jYtzloUZAwJC0WIQwBR8kvsSmBvwpTiLZc4bqryQ5xJUHw/NCrE1XbAml9dnMoIGuIMYP82Y09bpVUsl0i2JKA1Oi9PnNdYdWO0Pda8mY6Mtc4Zv9qaCRbUNYYm3LCQhq9zn0P4aV7VMSSd0x5QD57f7oN9WMOTW6JLtZA/008BbUybX6vI8L3Bn6y2rFVRsgXz4yOlRY3IMAFfwmnTY5BJ4dxpU5U7U40YSiB0iKGITo6+wi8v7vtmTrBV5qEJAI+07Cx9OgrfiXLilqe9UajHp2rE4l/jplvavmJVlIbhgKE5x2oVVk3n5yh8vGjrPmrC7dy9AaLXJrPJ0j595QhO9vmkh0bSRcgF/cGZLNBoqQggoQY2qTyamcD7sUmrnlR2M6aErrD08mfR6ejucquN+7kxmjpI11wEQtq9eWETtJm90A3UG+tz+ETitA8zUM4YzA3L4efIR8Hp8JgEDAPYFqcxpiX6CaZcvXKlAWhWG83MZqt87LFkh1HfPOQUntU3bUvG1/OUGeR+n23b3Im75ixuFVg3Tclu7NUy00dGkHZIZftnJKx5rtK/3zA2LGPJs7lZWu35lNLjTLPB5RRfFjjUhbYg5aNH4ax0QEW6aNezC3119SfH7e4x5/xVmU1oX1rxPwf4LwatsKR3zLL6Yh1cZKBGJJ9hamDI2N/z17p9SguuALzxbYCOUeQB42I9PcfIG4LjIhFwKeIUJIKtoucsQoOf9s+te9hAdj/yPEHtvu+rN0pH9zFFo/JxhpquYlLpd4wDzWKA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(396003)(346002)(376002)(39860400002)(366004)(451199018)(86362001)(2906002)(36756003)(31696002)(2616005)(478600001)(6486002)(83380400001)(6512007)(26005)(6666004)(53546011)(8936002)(316002)(186003)(6506007)(82960400001)(55236004)(5660300002)(15650500001)(66476007)(38100700002)(41300700001)(8676002)(66556008)(66946007)(31686004)(18123001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UHh5aXAySyt2dmVzTHN0N2hxeTc2bDhnWEgxSnJVWVkvTEMrZU10S0FydG04?=
 =?utf-8?B?aDQ2OEJva2FQODZmWVUxdVhYN1h4UDJmdFhvRTIzMjJsSVMzSzExWEFJM2ZV?=
 =?utf-8?B?a3ZqRnpaZC9VNTJFWkpIcEc1a0pNUEV3Sk92Z2dJdmp2S3BPRS8wcWhBVlBB?=
 =?utf-8?B?TnBvK3p2UzhUY0srakVra3d5NFRTaDhONVhGNW5nQ3FTSFdnNStkZkd4SStr?=
 =?utf-8?B?KzZtK252SXVTejlEVWpIN3FVVUJVWEY2RDhEN0RsWWRYMkN6MU1CWmNyaHF1?=
 =?utf-8?B?cnRheW9sMGo2ZHpQSVBsTS96UnhpVmF0T2EwWFR0M1hqcFJqMUJXWmtHUnE5?=
 =?utf-8?B?QXd3Y3B4RU9mSUJodzZCakllWmhXWkZMM1AwazljSVRETEh1aVpLTHhiUUtU?=
 =?utf-8?B?U2dtQ3J0K0I4UUR3bGwrRllnUWttcmJrdTFHdjRrdVBXb2p4WGI1WERWUnlP?=
 =?utf-8?B?R3RGdTZNaHFwcXJ6VXdkaE0ySnVBQjRFMnQ3R0t4cUsxRjB4ZG1NUEdCd1pZ?=
 =?utf-8?B?TXN6SDdKU0RldEhvUHFwUEJrRkZIbWJwYkYrR012UzE1U0RiaGNoOUt1V1hO?=
 =?utf-8?B?YlZEOWdHQ3JvS1orWHdoZzhrT3JYYXU5alc5TzdiY25nUzAwd1RBSkQxcTFp?=
 =?utf-8?B?SGtwcWg1bVd3dWU0ZE9TVzdkd3FDU1JQelowWkh1VWxXVG9wRERTZC85TE9O?=
 =?utf-8?B?UDlPbSttbXora2dXQkl3Zjc5bFVwRlhlSnF5UzY5YTI1Sy9CY3YzUWJnYk5t?=
 =?utf-8?B?bjZ0dmExZkUzSml6Y0dadm1qRk1HSVhXSnV0ekE5a2oyT1ZTNzREM3hMQ2FD?=
 =?utf-8?B?dWo5d2ZzZDgzUkR2dEpWWDhCbzVDYzU2TDY0MDJkVVRGYkI3bWpjN2h0WUpB?=
 =?utf-8?B?NUY1OElic2o2YTBwTmtqbWV5aGgxeHV5N0NLMUVKdG9UOGJ4dVpNR3pnQnVr?=
 =?utf-8?B?T1V5NFdzdzA5VEpQUmZPT0Y0eWREU1IyV2lPMmk1TGdFejVqNEJ2UldRMVI1?=
 =?utf-8?B?QzJUQmJqek1QSDkvN0tPdDE3d0t4cmNlRHBGbmtwSUxmQW12Nk9xbmh1cHJQ?=
 =?utf-8?B?RkFxWTQ3OXhwK0dXVXRLY1JjZWFoRWJDQXhmTHc0b3hvdkJCK1I0S3FjRGtj?=
 =?utf-8?B?YnpHeFI1TEEzSzNvelF4NHl0SkxiL2ZTclIzMm52VjYwd0pCSWxDSWJpbjdL?=
 =?utf-8?B?MUJTdG92MzJGaElKNU1VZEg0UFpHTzN2c2lHcm1oVGplbE03Z2JZVUVZRjEy?=
 =?utf-8?B?SlVSSGQrc1o2NmRTOGdYU3R6ZHowSVRVdnZDRlByTGZyeWthMWdGdkZ6cGRM?=
 =?utf-8?B?M0taWkZ1Q1p2VERiK2FrZXViY3VhSzlQbHZ4WGRNTEkrSHZZM2pIcGs2NzRj?=
 =?utf-8?B?cGVTRjU0NXVVT3hpcEx1TGlyeFdHYVY0bjQvTUg0dElZeEF0SS8zZnl0eHVt?=
 =?utf-8?B?K1FDUEl1azhCSnNaUEc2NWRrVVJHZE43YzNTeVQxOWF3RHFzSU0waUNXRkQ2?=
 =?utf-8?B?K3h3U2d5SSt2dktvWFdpc1NndTBLWkZ5L1lxVlJDUlAzcGJTNjJJbTBJNTl1?=
 =?utf-8?B?YXpGYWErdHNtdzUrNS9ucWxwOEoya3ZXNGQrNEtaWHZhNm9oWXBCbmdSYjIx?=
 =?utf-8?B?UCtTdFZNdU51cVhoNVVCYzBRRGNSUFRIM3c5NUtacE43aGNacks1UldiaGg2?=
 =?utf-8?B?ZDNOS2NieU5EemZUMU1RT0tYVHJKT2hvV3I4R3I0NDU1TE5wZFVVeHZ4SlhY?=
 =?utf-8?B?di9GQncwZmZ5ak8rcldTQXFJejlJUTB6WHVqNUx1QUFmV3lQRkhvZjc1MGFl?=
 =?utf-8?B?ditmWmZ0NTh2ajNZVWduaFR5SE1ucjhvSWxFajcrRVNIcGVubjg0U2xKalBq?=
 =?utf-8?B?aDBpNFpyQmxjL25iWldaRTJGaHhuejZMb2tEKzNsME4vdHJVYzd1a25uenZz?=
 =?utf-8?B?MjNuT1dIK2h6Sk50MUoySmIxdzU5TUtSTlZGMW9oUVdzZHhPcFBlNnU1bXla?=
 =?utf-8?B?SnZBaG5pa0N3TkNYbnRtNlk2dlM1dEJMK010eTAvWjdMMXR0SUd4ZFpuNVE0?=
 =?utf-8?B?TzFXclVPRTI5WW4wc0ZHdDJDOXNwNXRDZWFxWEZFMG9temRLZk9RWUQyQTlS?=
 =?utf-8?B?U2tXZEhQZzQyd2t2N01JeVF1cm9GMW5RSmUzVnJpaERoQnYrRGk3cEtobWNQ?=
 =?utf-8?B?dXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f465b08-43d6-415b-756d-08db10b51edc
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2023 07:03:50.2519 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uLhAD8v5vGdtYh/eOv6Jz7130fWq1oNgsmOjUUlVNl62pW4l8p6+P7c1mCmlx5vzaRILooLUT1Q0j5zfpQsKpcCfXoC8RAfCOGZYo4Kb054=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6968
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: Pimp encoder ddc_pin/aux_ch
 debug messages
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


On 2/17/2023 4:43 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Use encoer->name rather than port_name() in the debug messages

typo : encoder

LGTM. encoder->name has sufficient information.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

> so that they actually make more sense.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp_aux.c | 10 ++++++----
>   drivers/gpu/drm/i915/display/intel_hdmi.c   | 10 ++++++----
>   2 files changed, 12 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> index c4e72c17e06a..57eb3ff187fa 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> @@ -747,16 +747,18 @@ enum aux_ch intel_dp_aux_ch(struct intel_encoder *encoder)
>   
>   	aux_ch = intel_bios_dp_aux_ch(encoder->devdata);
>   	if (aux_ch != AUX_CH_NONE) {
> -		drm_dbg_kms(&i915->drm, "using AUX %c for port %c (VBT)\n",
> -			    aux_ch_name(aux_ch), port_name(port));
> +		drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s] using AUX %c (VBT)\n",
> +			    encoder->base.base.id, encoder->base.name,
> +			    aux_ch_name(aux_ch));
>   		return aux_ch;
>   	}
>   
>   	aux_ch = (enum aux_ch)port;
>   
>   	drm_dbg_kms(&i915->drm,
> -		    "using AUX %c for port %c (platform default)\n",
> -		    aux_ch_name(aux_ch), port_name(port));
> +		    "[ENCODER:%d:%s] using AUX %c (platform default)\n",
> +		    encoder->base.base.id, encoder->base.name,
> +		    aux_ch_name(aux_ch));
>   
>   	return aux_ch;
>   }
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index e32452ab2647..239c0fb916f0 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2858,8 +2858,9 @@ static u8 intel_hdmi_ddc_pin(struct intel_encoder *encoder)
>   	ddc_pin = intel_bios_hdmi_ddc_pin(encoder->devdata);
>   	if (ddc_pin) {
>   		drm_dbg_kms(&dev_priv->drm,
> -			    "Using DDC pin 0x%x for port %c (VBT)\n",
> -			    ddc_pin, port_name(port));
> +			    "[ENCODER:%d:%s] Using DDC pin 0x%x (VBT)\n",
> +			    encoder->base.base.id, encoder->base.name,
> +			    ddc_pin);
>   		return ddc_pin;
>   	}
>   
> @@ -2885,8 +2886,9 @@ static u8 intel_hdmi_ddc_pin(struct intel_encoder *encoder)
>   		ddc_pin = g4x_port_to_ddc_pin(dev_priv, port);
>   
>   	drm_dbg_kms(&dev_priv->drm,
> -		    "Using DDC pin 0x%x for port %c (platform default)\n",
> -		    ddc_pin, port_name(port));
> +		    "[ENCODER:%d:%s] Using DDC pin 0x%x (platform default)\n",
> +		    encoder->base.base.id, encoder->base.name,
> +		    ddc_pin);
>   
>   	return ddc_pin;
>   }
