Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C999D65DEF9
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Jan 2023 22:19:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FAF910E60E;
	Wed,  4 Jan 2023 21:19:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A474210E60E
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Jan 2023 21:19:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672867156; x=1704403156;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=Mf03wWaPfF3d5oNin2/zrmnzd+Zdhy+silEELMKP6gM=;
 b=Nnoz9jmL0eWKVYgXMFzHVisPkYJo24N6KT6JQiN6OUcioJ2a9xTGT6Ld
 atyZcFCN3/92ObAUWStoKZ7/ZUozgRLXBAkDuMVYkFzKv2SZHWPWiTFnX
 jj+HH2Mz+h5LDm/6oXmbFAdkKEgsCclQu0d8egZN1/biEjlT8g4gQ56Dp
 7vHwo8rpVWUFIAzuUFWLiqyHTvgbVKILC09mA4Fn49fsaBZjl4ER+7syU
 SQp65UUG1uR5UDe85JnuhngTcEtfQIOrZj8O+KAyJ0Xc7UnD6lCnMQNe3
 ad2oJJMR76KkSoWEzH0oyyz5GJJNRTr/uLfxLuKmEK6OO0D7SwIDIn+Gd A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="349268815"
X-IronPort-AV: E=Sophos;i="5.96,301,1665471600"; d="scan'208";a="349268815"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2023 13:19:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="829289273"
X-IronPort-AV: E=Sophos;i="5.96,301,1665471600"; d="scan'208";a="829289273"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga005.jf.intel.com with ESMTP; 04 Jan 2023 13:19:15 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 4 Jan 2023 13:19:15 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 4 Jan 2023 13:19:15 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 4 Jan 2023 13:19:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dnQ0HkSdMNB6ffSb1KvMEQFnHnxn9Elkq/SsJEDMTwl/umGcJUtcuqnfKOzK9XMbyh3IpSD/279kKaKPLk5k+JtY/t8uVGQg6geStqkLlCO1GlKxstkSD/4yUmVh8m3DYy7bUqqaPLc43VxM+xL/JUpSrgDmV96tCEc275EwXQ+PgRBgDBjNExIvOavKa9MA/v+0zPN/iN+LqmZZy4NfdXOjFUuSbyis2K39aK05AxbecprSM303CeTL7o9T88RgDTYYPHQDQ7UxBtsWNROk2TbvH7ZqDw25ED8ZzZT5ESoUgNncc/XLtnPuB4jXjTppcyuPdCdloWLAHD6LyLmshQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XzEWleT9I4lLRB1nygf0IYFvJV2iv6zYn7zSGiyW8Ck=;
 b=VrMT1uZaaor6m19R/ZEB/b58rwfbhwjBv0VfnXdG+hBlnrUQA5jBxtSFs19rL3fb+tt8avxIyO65MzZPsqv3vl2jiYz5kpXHHVOlD5/8FmrmgDxIx1JCD0HYo+Qlfe0k+664uwDXApeMPU8sky3D8cxlvH5T2LYeL7yAdFtSu6WGS0O2wNwxq4t/BGzwEckvqy5bWr5yIjmzmaHk1xrjExe8G1sHpNczS5WMfcsKJX1k0ylMIihlIxtkWi1FKdiKwh/oggN8PVMOhGIrTjwDZBa7ENWU/537Sp4jrzMm6fNWImd0WicWD1nRwgNJ1XSPee63zu/sDTdRoObvBufgjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 SJ0PR11MB4862.namprd11.prod.outlook.com (2603:10b6:a03:2de::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Wed, 4 Jan
 2023 21:19:12 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::68d0:f8e0:eaf3:982e]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::68d0:f8e0:eaf3:982e%8]) with mapi id 15.20.5944.019; Wed, 4 Jan 2023
 21:19:12 +0000
Date: Wed, 4 Jan 2023 13:19:09 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Message-ID: <Y7XtTerTry1GNA+M@mdroper-desk1.amr.corp.intel.com>
References: <20230104090229.1402628-1-jouni.hogander@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230104090229.1402628-1-jouni.hogander@intel.com>
X-ClientProxiedBy: SJ0PR13CA0205.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::30) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|SJ0PR11MB4862:EE_
X-MS-Office365-Filtering-Correlation-Id: 02fbafc8-571a-43e5-0f05-08daee995368
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: zp3/S5/CyhqS65IwIPMWhGHBQL3qBM5xVATOXF0NBqH+iWwfAOIEJEPqfFrtZmM4DO8ZrSiF2W3t89SlBQi2tGOHMvghqIR/5og/tNxnf41qq2ZNHNaXCfdM/xf9Q+FEXoEQCS3pUj8wZ5o04eM79ojmw2Wou1gTc60XKkJPWqFr4g46lxkPwy93f1GQ34XwayIb0XKmXWYoznLrCcyxmHhj2Re0OdppNvAA9/Ue+Dckv/FgiCZtZCjPeFxGeX7jvQ8isDrl39YaMUXbFZlwOkNLD49CaFJ+BbrsrAtE6NK5A1tIPQQU3i01LtrPl5oCn4hj5Yvb+rEnG2b1Uo2jA3f4hMv+C9Uyvwz6pU0vtld3b8My+4akpad2LOk0WFTVINHoLTdODfSC95wSQ0BZh11ROQVisfCWGjd5kCs7QiYhrkcjZJqlXshmLddRURgcyThxCixhsowZTLaPuzs1oMAABm9W1jGWvzyZ0h3noqdYNPgvRpS+mZOJAMRwZyJ2u5IB35i/Kyu8O04wgDds3RCJ45BIf+/EcZCDRgniMKXfePaWxWF2sdUMRGTUUts3Qz9vpsXUyyObXczjC1QcO5iPZ9iVlfVS9/ns9Pn0DZ9sS4bxFqWX1pbeB4kWdNlmaenGppV+KV/GAahxevAGK2yobCgvxjXzNGKisrTsdeTiXOzrRIEDAOcb42eDLFWX
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(346002)(376002)(136003)(396003)(366004)(451199015)(66574015)(83380400001)(6512007)(26005)(6666004)(107886003)(6506007)(86362001)(82960400001)(38100700002)(186003)(316002)(4326008)(41300700001)(478600001)(6862004)(8676002)(2906002)(5660300002)(8936002)(66556008)(6486002)(66476007)(54906003)(66946007)(6636002)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?EM6uwH+OkNMnWxUCiXuKkZZA9Xxm5gK906bINPvO9yKqXzJMh/Mc6g8h1d?=
 =?iso-8859-1?Q?9+1NgACv9slfVnoBuY5o02sYuTCkFHyif3BNB5uq8aD0v/FsZust7FhZU6?=
 =?iso-8859-1?Q?v0+eOJVqomzGfvozA6Bi2UHK0nLAHSxr7Gie3qR4Tn23XKFR1Fa8Jstwly?=
 =?iso-8859-1?Q?EwfX6qP0IwmKyv8QZoAgY17TXBgq05LlJGwZnHDDZCFaI4U4CL7FJ3H5AT?=
 =?iso-8859-1?Q?Z50Uu/ziK2oQudSQtfgP0kzjTOoAHkwdJOCqDftMfZesGEXgEnHTWsHiC0?=
 =?iso-8859-1?Q?d2BYLMzq0fOhaymSopVg8pAL3mygrHgskDke7F+So6RZ+LY3jn3tUzpmlH?=
 =?iso-8859-1?Q?8COncRjkOv1B+Kijvux0ADFNpMY+BqcxMNhUei/Z3/1rcI66wcIR0+e6Oa?=
 =?iso-8859-1?Q?8/aozfBKfeq2jwkF5C3hwOeXCZEZBYL1TuiZX7bvKSIDs44bjBD4MUPFWe?=
 =?iso-8859-1?Q?7HXw2ttL8twpj4Ao2WhJ6bqi6Xkrs+wqlyYx/w5HUxvNo3WYs/3yYyp59i?=
 =?iso-8859-1?Q?DA+jJQvP5o2qNQSvdF1D/LMUxyGlI4xJlHYJMoI4oJMCWqeTstIjEHzn6g?=
 =?iso-8859-1?Q?5MX2Yq9B/OkVBQCFU9w0Chg8cpWP4wk0QswD+xoSKUV7iVGiSgHAvCHUiM?=
 =?iso-8859-1?Q?3z9a+p1JUk/t4DPKHWEWD91QOJ6kJdNwYrNKpgpi7wp/A95tX2V7/c8n+u?=
 =?iso-8859-1?Q?jHd9yoxLTfQtiWmfR8hXU6VBM5/P/GtAPNAQ5N9h1C2W8WUK4mRk+0oGrp?=
 =?iso-8859-1?Q?okBPP7xY3B6huW9MlDb1KS/pwLBbuIPAggbWb2sGOmzec15STkCXsJg4zc?=
 =?iso-8859-1?Q?nyyXOK+WQNMVAy6Lqpcmq9kbwsktQhjdK1Nf1/kwDSdwgLOyddxDHqHqQM?=
 =?iso-8859-1?Q?FgRfMCJt9y6y9SMMpbe5zAYVwWZRTUl4TcPm/RKeUC6gOKzF8/rDcif3Ng?=
 =?iso-8859-1?Q?rN+BafyiOBWfbYryyP+K42RrA2E3cxqCSeeTqi7Fx1r9J11nDM9GesyZuv?=
 =?iso-8859-1?Q?rdM2ebNd4aSywe+6A7ujE4rewl5I93ES5jpu6ilrBYDbee0Am3OHBG31Tx?=
 =?iso-8859-1?Q?OLwDlNbjkPpKDE1E3UEAOugfEpxkU18cJbuzxO3BEIOAI4oFr2iL6YkoQm?=
 =?iso-8859-1?Q?Lqg9B8wyhPdQvKCEXLQVw6Yh/7hGRuR+YhYAxdJVZv+uHvgD2aFgmjxAUQ?=
 =?iso-8859-1?Q?AKyOkvuc0YEdM5yWO5duutEw9dkmP2tdV0jUNKBymGhBBfrOhGY3Kxt2KE?=
 =?iso-8859-1?Q?9oQN7P0zSX+TX4urfoFUg5ABN3pVRV/wGiwC1ys5HqVjHUs2d67ic7w85H?=
 =?iso-8859-1?Q?HUglSOBrMwnYROkTZh3dph/xJwxNCWRFw5kI05qajXIx9bFGsAoBZHFpqz?=
 =?iso-8859-1?Q?r3w9AL1T/II1GQXQ+c8FTs8mdLWI1My2l57ktEr/dnsQPAIqVXHjPaWZUO?=
 =?iso-8859-1?Q?VAYKNVlwCOXF9JjsR27z5m5GuI64wZRvKHr2nGbhvcVxlj3OxToMJ26G4U?=
 =?iso-8859-1?Q?HY7fLZ4su4lbbnRnlxuUXJ9gSrPFKbCZD8P/oto9bvyqg28/YA/XDegkbx?=
 =?iso-8859-1?Q?n43GL4fqZb0meVTvFtmOFhHaNlkzeZufNPO3vxHzLQkWBThuv4wAvIj8Il?=
 =?iso-8859-1?Q?9G/il99Xg+/0GhNDKiRlA0v0UguhCAYrNH/zKdoIk2vQHppKcpn4owkg?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 02fbafc8-571a-43e5-0f05-08daee995368
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jan 2023 21:19:12.4332 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DLJC/7lstFAzBXcPytENu2SemYCNeUTHBj7pkF/zzSaoyPV04ysMiVRPtNlxbpXTvbowB5zHZao86CjMk6oQimRm87iRNH88idr9RGmNTio=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4862
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Implement
 Wa_14015648006
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 04, 2023 at 11:02:29AM +0200, Jouni Högander wrote:
> Add 4th pipe and extend TGL Wa_16013835468 to support ADLP, MTL and
> DG2 and all TGL steppings.
> 
> BSpec: 54369, 55378, 66624
> 
> v2:
>  - apply for PSR1 as well
>  - remove stepping information from comments
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: José Roberto de Souza <jose.souza@intel.com>
> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> 
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 48 ++++++++++++++----------
>  drivers/gpu/drm/i915/i915_reg.h          |  1 +
>  2 files changed, 29 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index d0d774219cc5..507f810d4a4a 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1112,6 +1112,8 @@ static u32 wa_16013835468_bit_get(struct intel_dp *intel_dp)
>  		return LATENCY_REPORTING_REMOVED_PIPE_B;
>  	case PIPE_C:
>  		return LATENCY_REPORTING_REMOVED_PIPE_C;
> +	case PIPE_D:
> +		return LATENCY_REPORTING_REMOVED_PIPE_D;
>  	default:
>  		MISSING_CASE(intel_dp->psr.pipe);
>  		return 0;
> @@ -1163,6 +1165,23 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
>  			     intel_dp->psr.psr2_sel_fetch_enabled ?
>  			     IGNORE_PSR2_HW_TRACKING : 0);
>  
> +	/*
> +	 * Wa_16013835468
> +	 * Wa_14015648006
> +	 */
> +	if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
> +	    IS_DISPLAY_VER(dev_priv, 12, 13)) {
> +		u16 vtotal, vblank;
> +
> +		vtotal = crtc_state->uapi.adjusted_mode.crtc_vtotal -
> +			crtc_state->uapi.adjusted_mode.crtc_vdisplay;
> +		vblank = crtc_state->uapi.adjusted_mode.crtc_vblank_end -
> +			crtc_state->uapi.adjusted_mode.crtc_vblank_start;
> +		if (vblank > vtotal)
> +			intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1, 0,
> +				     wa_16013835468_bit_get(intel_dp));
> +	}
> +
>  	if (intel_dp->psr.psr2_enabled) {
>  		if (DISPLAY_VER(dev_priv) == 9)
>  			intel_de_rmw(dev_priv, CHICKEN_TRANS(cpu_transcoder), 0,
> @@ -1196,20 +1215,6 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
>  		else if (IS_ALDERLAKE_P(dev_priv))
>  			intel_de_rmw(dev_priv, CLKGATE_DIS_MISC, 0,
>  				     CLKGATE_DIS_MISC_DMASC_GATING_DIS);
> -
> -		/* Wa_16013835468:tgl[b0+], dg1 */
> -		if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_B0, STEP_FOREVER) ||
> -		    IS_DG1(dev_priv)) {
> -			u16 vtotal, vblank;
> -
> -			vtotal = crtc_state->uapi.adjusted_mode.crtc_vtotal -
> -				 crtc_state->uapi.adjusted_mode.crtc_vdisplay;
> -			vblank = crtc_state->uapi.adjusted_mode.crtc_vblank_end -
> -				 crtc_state->uapi.adjusted_mode.crtc_vblank_start;
> -			if (vblank > vtotal)
> -				intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1, 0,
> -					     wa_16013835468_bit_get(intel_dp));
> -		}
>  	}
>  }
>  
> @@ -1362,6 +1367,15 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
>  		intel_de_rmw(dev_priv, CHICKEN_PAR1_1,
>  			     DIS_RAM_BYPASS_PSR2_MAN_TRACK, 0);
>  
> +	/*
> +	 * Wa_16013835468
> +	 * Wa_14015648006
> +	 */
> +	if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
> +	    IS_DISPLAY_VER(dev_priv, 12, 13))
> +		intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1,
> +			     wa_16013835468_bit_get(intel_dp), 0);
> +
>  	if (intel_dp->psr.psr2_enabled) {
>  		/* Wa_16011168373:adl-p */
>  		if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> @@ -1377,12 +1391,6 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
>  		else if (IS_ALDERLAKE_P(dev_priv))
>  			intel_de_rmw(dev_priv, CLKGATE_DIS_MISC,
>  				     CLKGATE_DIS_MISC_DMASC_GATING_DIS, 0);
> -
> -		/* Wa_16013835468:tgl[b0+], dg1 */
> -		if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_B0, STEP_FOREVER) ||
> -		    IS_DG1(dev_priv))
> -			intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1,
> -				     wa_16013835468_bit_get(intel_dp), 0);
>  	}
>  
>  	intel_snps_phy_update_psr_power_state(dev_priv, phy, false);
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 8b2cf980f323..b0b3b511e19f 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -5737,6 +5737,7 @@
>  #define  RESET_PCH_HANDSHAKE_ENABLE	REG_BIT(4)
>  
>  #define GEN8_CHICKEN_DCPR_1			_MMIO(0x46430)
> +#define   LATENCY_REPORTING_REMOVED_PIPE_D	REG_BIT(31)
>  #define   SKL_SELECT_ALTERNATE_DC_EXIT		REG_BIT(30)
>  #define   LATENCY_REPORTING_REMOVED_PIPE_C	REG_BIT(25)
>  #define   LATENCY_REPORTING_REMOVED_PIPE_B	REG_BIT(24)
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
