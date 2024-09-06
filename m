Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2602D96F7E5
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2024 17:11:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B64A10EA90;
	Fri,  6 Sep 2024 15:11:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Dl16od/p";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DAFF10EA8F;
 Fri,  6 Sep 2024 15:11:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725635466; x=1757171466;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=LO12qZ62SA5QrtFe6iNo8c7wrEfsIdQve5qFeKhzEuk=;
 b=Dl16od/p1ldB4t5Mr34Ewt0lrf6T6AmmxO7XJQ5Y3am88DXrMvBYmOwc
 ps6dXLESAehcBJ44GQ6h+7A1F4m/kQvf70QtW9z9dxIfski/wMzgJyEE8
 a8fOqhZF3pTSh2qB7dL4+78OnQJdyUa8c6yTUK06t6oXDwFprnCPBsAgH
 eGSfg2Yn1WEmExBdQfpxZMIu3LjeVn4d9QkJdIhAy0DFUYYwqA1SZTPj2
 fMSnrrs/ymjkmQaQiywAmgcZl6Ky1jdvxvM5hJdzKcw5iiRNJuJkneNmx
 TvO0x+miqfbwQ6yeCx/HnPHTM7jJYUipfuk0vT1i8oUQCEYMlYZ9uT/ZD A==;
X-CSE-ConnectionGUID: 3SDaN7+ERMyli+h264pBqQ==
X-CSE-MsgGUID: TLBa9kGBSdyDSAXZNlrZSw==
X-IronPort-AV: E=McAfee;i="6700,10204,11187"; a="13411885"
X-IronPort-AV: E=Sophos;i="6.10,208,1719903600"; d="scan'208";a="13411885"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 08:11:06 -0700
X-CSE-ConnectionGUID: vWhA+uLQTs+8PhoZIM4zCw==
X-CSE-MsgGUID: Mol8+icmSD+8CQLXsEImWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,208,1719903600"; d="scan'208";a="65968032"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Sep 2024 08:11:04 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 6 Sep 2024 08:11:03 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 6 Sep 2024 08:11:03 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 6 Sep 2024 08:11:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Fxt1Af7mHT9sQQOgShPy+dmfvfZ3Epf/updf0wRmGzo3WFHeN3MNyNcFXuyPiFi/CGQs6l0aHAilkYtQ31lPg73dXyrg4my9SPVwLfyHdxWQ6ML1KUXMGLr3PGd0SUwauLzrz7/Q8n64HAh6vC8m8u3U4Vg2wn+b+qIJsMNa0teY1dUpGO2Xlz6aZJXR/OL5IqpDYKkDVCA9RUeLWTaGqYgpv0wcdZdb1AL1m56BnLcoOz6tP0UaYHDyN6dPI0/Ch1ywqQTB9l87uWpUTjAcZXMkdYqXhegcmaKAgBEnz0U6JuLEXneAfemFtibnHW5LIFnBjaKTk89VWYW+k6ztpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wvPXTqJNZqFQ1PpCu3K4wbKMLcAT/RSIx5nQMEYE2OQ=;
 b=EmYDVffICaCWK0lrFESzitKTRcTHNAA1sgomjDQMeT1OPMGGB/xTKNsB+nLdg2ho8qGHioCb6S7+V81gwx1cBHy7BiS3+aGBye0ET1a8X25WpQZp8cYoM5XT4V5A/uNzz8FcXuxjFys3mOpzmkQyrqMXw8vqwQQUZZxBBZ6sdy2vA0+Ecysjp1eJxrGvApwNywE+9DZprkrJ5kN/ZxTEIkJ5bfXlxEyYt/2Ln8tqyBbkrijM5yG3Top6QjMNcqtnWIoIoPXxDe3oT9MitdcJCZ6T5aca7peqMDyM56DcINj5SQ4mr7aS50VFhpG3BbU12I6jXMqxUDHVtJ4JHp9Vrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SJ2PR11MB7502.namprd11.prod.outlook.com (2603:10b6:a03:4d3::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.25; Fri, 6 Sep
 2024 15:10:58 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7918.024; Fri, 6 Sep 2024
 15:10:58 +0000
Date: Fri, 6 Sep 2024 11:10:55 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 3/6] drm/i915/power: Convert low level DC state code to
 intel_display
Message-ID: <Ztsbf26w1AMEs3eo@intel.com>
References: <20240906143306.15937-1-ville.syrjala@linux.intel.com>
 <20240906143306.15937-4-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240906143306.15937-4-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: MW4PR03CA0041.namprd03.prod.outlook.com
 (2603:10b6:303:8e::16) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SJ2PR11MB7502:EE_
X-MS-Office365-Filtering-Correlation-Id: b8f48a24-7a1a-438a-f731-08dcce861c65
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?6Oz7+NSt3RXQI3kM73DjYOjnBt62nk1vB5NFPFYQJ/RY6Oml4Rz4pPHBK5?=
 =?iso-8859-1?Q?WoF66fQyc3lfikNHZz+w3Yt4ZwyDSptQ6xJ1S9JtncvZfvx5FuUmFBKdjD?=
 =?iso-8859-1?Q?knQ5zRZYUfJuasKnmBdpcJSqRj6JvjsyvEIhgOivKb4T5ojWc+guKHwvp5?=
 =?iso-8859-1?Q?7LQ8ng13I6X2tz/k6z2LvIn+fQGCNGSLn42x0Ru984/cfY5extD8cPQylA?=
 =?iso-8859-1?Q?taJnByxaNd43YoDAy9EjF34AWaQfH+X/RXOd1pGyp8hBaPE5+RvWpNdDkU?=
 =?iso-8859-1?Q?WXWAtrg4ahoQvpbdZGndEQuJ8vK4Q1hB0/nAih+oX+svX+GWiF6qdxHExE?=
 =?iso-8859-1?Q?ZPfBh7dhKzmkYoYW1IBMpN5uNYu2M7JHjQbIKEptfa3otvgkAu7mTA2XDU?=
 =?iso-8859-1?Q?43DziZ4jIoXCpVdDSaFZaROZ8GJ0rHtvDCHT8EUy08kmV7Ytfai1SuHG14?=
 =?iso-8859-1?Q?vLUhZkkALNrpRKh9HkYrYQiMSNybzkzJq16ugKL/pg46lZ4T6llXHi46L2?=
 =?iso-8859-1?Q?PShYGsIgV4cEtAGPYYPD+kt/tU+t67/87zHbcjlUbvmoilcWnSI6zohgFi?=
 =?iso-8859-1?Q?YzuxmkbMM29Fr01DR+Zf7GJ4zuByo0Bcug2+sAGCz3Aa2Qi7WQSBCZOUYG?=
 =?iso-8859-1?Q?svprKRRBl01fKv16TBieat25jBc5nu2gYF/lc9wjDiOiKnQCqbzPMmuvT2?=
 =?iso-8859-1?Q?gfC52nLIFq41+mF3F+nOsrv0tfjBRgzOkM1NHLrwGWhwEE2ZvMa2rUMzy/?=
 =?iso-8859-1?Q?xZAiSYMCutwOn6YYBpUch826R5VbtskkO2D+BKXKaagTINId7z4RN6MXHw?=
 =?iso-8859-1?Q?D/+Enm9lO9/ELHIa5XqnsVfUH48AL8iHJBPZbONnmaERgVzvGkJoPdEtSc?=
 =?iso-8859-1?Q?L5mzcktrbsHQU8ibY4g9L2BYBZgqVpLMS8nBobJpyHHzckwEwQ8eOwgjVX?=
 =?iso-8859-1?Q?cMqMwjDlZMq3VHCkrFiRQWAXLpF3D+YQ4dnPhUDZCJEdfmRIZyVd9TDQ5x?=
 =?iso-8859-1?Q?NtWZbDFHL2KaGX0k7ER46Umri5SZpApH6ZSr0cARj6Cla1sDbkbUMwQi//?=
 =?iso-8859-1?Q?mWAwjmJre2kk8QcWCkglwhfLxrgbg56gbf/RC6e8BjL5eEXWw+akcHUPGg?=
 =?iso-8859-1?Q?7dmHbgxNE28w9D/NzhILvNvvWrpbOOw/YLL7b3vnYI+yLeVkhhh0zc3yRq?=
 =?iso-8859-1?Q?FRWcc+SZWe36SrqEh63iJGDS7++nCT8qrtwHgoIDZb/lkpmUiDhhnhBDI1?=
 =?iso-8859-1?Q?weIMM3+I+wjplrnH+QeEV2wsoGUCTCot70pVf6aTi1V38JBC6qdCFSRfAe?=
 =?iso-8859-1?Q?SzLqpvpV3oA74fwekJMgMiaGnkkcuanMC7gDBTXKBBukiHPnCNvKAofUss?=
 =?iso-8859-1?Q?o/aTEO87pYjfFz8mznAIRiGaap3BTctg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?AHGNv6y4etjSjAtcb9OkHMoo9BRW/8GiPiYFTgs/ASN3X9pGQgXotic/+v?=
 =?iso-8859-1?Q?tF1OnaeqDePjdsUyLFLOq0Cfda3sLWsktK9NPguAkWR13dsHVw+69g+OKX?=
 =?iso-8859-1?Q?6uTzQ6jVT5Gboh3M51ORvSKnkCVKn9sGTl4xT5N3jrt/L4ccYXxucTtv1E?=
 =?iso-8859-1?Q?0rCKMWwCWZ00qjcXKzj2tacGs32TeGTDFzB30Hx+A6Mjm/bEsWKfOuIeLp?=
 =?iso-8859-1?Q?cKTAFMgERKxWzUnkvy5dyEVss0WKLtRawc2DFTR3CfqMEj+/XlscqrJ4Ra?=
 =?iso-8859-1?Q?YUArBpoUreUxBPyy43E8SnHSZCUbQ/exjuCCBTfpvQESRG5b8qbIV85G9+?=
 =?iso-8859-1?Q?hTvjk+Bz4SvC4T4bQUCLRv3WNCOElHEvqbiOBzRy1iBDfS47wNJda6clEk?=
 =?iso-8859-1?Q?uztXbz4ALYG19igq1ENEbY2avI1ZVB/OGqc1/5FM3gtutNnJhibU4Ohf7j?=
 =?iso-8859-1?Q?+6gHWltFoe3UPuht94qDk/TBbqZLufdMH+MAehsnlTq6X/d1flxSc6B4T5?=
 =?iso-8859-1?Q?DvY1EeeRZD8j7TcBauy4cPk7Iu1BQBnuR3GjDsL6ETg7LaKYeY9OQttqjI?=
 =?iso-8859-1?Q?6m9EQ3ko3R3kfupdEdTOihL6lL1UaUBG1DlfJbHNsmR1oj9PVhXq3WCeb1?=
 =?iso-8859-1?Q?m30xnlocAHKeil2mL6DGMzXA8IKDer5yfujU/zIXu2xOy6d/aVPT6Gciwa?=
 =?iso-8859-1?Q?CBUfqL1UDeCJmcJP5f9Jb74Fd5h0aIu0qt+PfXZCLR6/HaRF8yuSYjuNwi?=
 =?iso-8859-1?Q?e1lvmTZ+hSie/DiGNXkC1R8jzraLImkN6+hNERfkY6IwLB+HYQyDzWrtSO?=
 =?iso-8859-1?Q?eSma1Lbh6xEiM2uGYntJ9GbSzEhMqf97/1BlengUwQ2PiwWL+oQ8st6v8f?=
 =?iso-8859-1?Q?ec/BbX9ohEsHm1fxKI6p9gRBlXwlvXmnkA7PjTry0tYdA6r3uQ/sDqJ8r9?=
 =?iso-8859-1?Q?ERUHaB8BY+KX6XGMTlIKwi+3G6l/52wa3ClOkJSgbFyDymN7hAd2HrdlIz?=
 =?iso-8859-1?Q?04WxCg4T5WqRZGXoi/PgxalCCNbhqo8wVDlY7ehIfCctM4/tgS9NSTcWyW?=
 =?iso-8859-1?Q?YgNNuHnxqMPvfUMoJGpGOZFL5SsCesu2l/08Kw3MuZOHRWTHYz6wXlkO5d?=
 =?iso-8859-1?Q?lixN8zbyIDCBB6mU8OOrJAbCqFKICeh4HScsKdaJ1+0LUJ0JVS7Hr4WDWp?=
 =?iso-8859-1?Q?W/VWd0dXR7Xc1QUm7Vd8OoJwEifS2P8gyu0Re0mCsRZIPiGNZK4oqoSgp9?=
 =?iso-8859-1?Q?9RmIxFzPtGix6tXI/FBwH9hCCMIX45MFAo2QI1rsp2FXLKPLGspx+V1qVo?=
 =?iso-8859-1?Q?wF1/+dr5BMrphXZ9eT3bT//i9SppN8eyZgk9frUYJ+mkBika137iSL8/ul?=
 =?iso-8859-1?Q?jPeOm6/YeyqQqx6uPnlJBkVPq7tVIZaO8SEw/LOqv9RfeppmZ+aQhVZdZj?=
 =?iso-8859-1?Q?63f7wkJ7OMEFqev+9Acq6QTl4XZ0DlgKAlATI535qUd3xleDvRiGypfpJC?=
 =?iso-8859-1?Q?8dJLWWmyYsVTmlE56FkfQs2eQwt5jow+P0lwx8S1gy31kMpY/8hqQZILXB?=
 =?iso-8859-1?Q?wo+RpZUOPuJLike34kToOdTQZPmSGZoRhk9NAgkIEJvzdXoeYtUQsqTdYS?=
 =?iso-8859-1?Q?1iiR+dgzLIKv5WBeGbuS4xCog7acztLS6kMiY0k9jHWn0JN8cgzlgisw?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b8f48a24-7a1a-438a-f731-08dcce861c65
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Sep 2024 15:10:58.0772 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fQ+MNEes6cHFpllM+3z5eFNdtDs4GX7eUmXNIbskhzB7xRiHZi8w69nyluCtEZjIZkQF5vIpqVVUjSa19t38Nw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7502
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

On Fri, Sep 06, 2024 at 05:33:03PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> struct intel_display will replace struct drm_i915_private as
> the main thing for display code. Convert the lower level
> DC state code to use it (as much as possible at this stage).
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  .../drm/i915/display/intel_display_power.c    |  41 ++--
>  .../i915/display/intel_display_power_well.c   | 199 ++++++++++--------
>  .../i915/display/intel_display_power_well.h   |  15 +-
>  3 files changed, 139 insertions(+), 116 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index eb3e2a56af1d..86ac494ed33b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1421,7 +1421,7 @@ static void skl_display_core_init(struct drm_i915_private *dev_priv,
>  	struct i915_power_domains *power_domains = &display->power.domains;
>  	struct i915_power_well *well;
>  
> -	gen9_set_dc_state(dev_priv, DC_STATE_DISABLE);
> +	gen9_set_dc_state(display, DC_STATE_DISABLE);
>  
>  	/* enable PCH reset handshake */
>  	intel_pch_reset_handshake(dev_priv, !HAS_PCH_NOP(dev_priv));
> @@ -1457,7 +1457,7 @@ static void skl_display_core_uninit(struct drm_i915_private *dev_priv)
>  	if (!HAS_DISPLAY(dev_priv))
>  		return;
>  
> -	gen9_disable_dc_states(dev_priv);
> +	gen9_disable_dc_states(display);
>  	/* TODO: disable DMC program */
>  
>  	gen9_dbuf_disable(dev_priv);
> @@ -1489,7 +1489,7 @@ static void bxt_display_core_init(struct drm_i915_private *dev_priv, bool resume
>  	struct i915_power_domains *power_domains = &display->power.domains;
>  	struct i915_power_well *well;
>  
> -	gen9_set_dc_state(dev_priv, DC_STATE_DISABLE);
> +	gen9_set_dc_state(display, DC_STATE_DISABLE);
>  
>  	/*
>  	 * NDE_RSTWRN_OPT RST PCH Handshake En must always be 0b on BXT
> @@ -1527,7 +1527,7 @@ static void bxt_display_core_uninit(struct drm_i915_private *dev_priv)
>  	if (!HAS_DISPLAY(dev_priv))
>  		return;
>  
> -	gen9_disable_dc_states(dev_priv);
> +	gen9_disable_dc_states(display);
>  	/* TODO: disable DMC program */
>  
>  	gen9_dbuf_disable(dev_priv);
> @@ -1632,7 +1632,7 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
>  	struct i915_power_domains *power_domains = &display->power.domains;
>  	struct i915_power_well *well;
>  
> -	gen9_set_dc_state(dev_priv, DC_STATE_DISABLE);
> +	gen9_set_dc_state(display, DC_STATE_DISABLE);
>  
>  	/* Wa_14011294188:ehl,jsl,tgl,rkl,adl-s */
>  	if (INTEL_PCH_TYPE(dev_priv) >= PCH_TGP &&
> @@ -1717,7 +1717,7 @@ static void icl_display_core_uninit(struct drm_i915_private *dev_priv)
>  	if (!HAS_DISPLAY(dev_priv))
>  		return;
>  
> -	gen9_disable_dc_states(dev_priv);
> +	gen9_disable_dc_states(display);
>  	intel_dmc_disable_program(dev_priv);
>  
>  	/* 1. Disable all display engine functions -> aready done */
> @@ -2232,9 +2232,11 @@ static void intel_power_domains_verify_state(struct drm_i915_private *i915)
>  
>  void intel_display_power_suspend_late(struct drm_i915_private *i915)
>  {
> +	struct intel_display *display = &i915->display;
> +
>  	if (DISPLAY_VER(i915) >= 11 || IS_GEMINILAKE(i915) ||
>  	    IS_BROXTON(i915)) {
> -		bxt_enable_dc9(i915);
> +		bxt_enable_dc9(display);
>  	} else if (IS_HASWELL(i915) || IS_BROADWELL(i915)) {
>  		hsw_enable_pc8(i915);
>  	}
> @@ -2246,10 +2248,12 @@ void intel_display_power_suspend_late(struct drm_i915_private *i915)
>  
>  void intel_display_power_resume_early(struct drm_i915_private *i915)
>  {
> +	struct intel_display *display = &i915->display;
> +
>  	if (DISPLAY_VER(i915) >= 11 || IS_GEMINILAKE(i915) ||
>  	    IS_BROXTON(i915)) {
> -		gen9_sanitize_dc_state(i915);
> -		bxt_disable_dc9(i915);
> +		gen9_sanitize_dc_state(display);
> +		bxt_disable_dc9(display);
>  	} else if (IS_HASWELL(i915) || IS_BROADWELL(i915)) {
>  		hsw_disable_pc8(i915);
>  	}
> @@ -2261,12 +2265,14 @@ void intel_display_power_resume_early(struct drm_i915_private *i915)
>  
>  void intel_display_power_suspend(struct drm_i915_private *i915)
>  {
> +	struct intel_display *display = &i915->display;
> +
>  	if (DISPLAY_VER(i915) >= 11) {
>  		icl_display_core_uninit(i915);
> -		bxt_enable_dc9(i915);
> +		bxt_enable_dc9(display);
>  	} else if (IS_GEMINILAKE(i915) || IS_BROXTON(i915)) {
>  		bxt_display_core_uninit(i915);
> -		bxt_enable_dc9(i915);
> +		bxt_enable_dc9(display);
>  	} else if (IS_HASWELL(i915) || IS_BROADWELL(i915)) {
>  		hsw_enable_pc8(i915);
>  	}
> @@ -2274,23 +2280,24 @@ void intel_display_power_suspend(struct drm_i915_private *i915)
>  
>  void intel_display_power_resume(struct drm_i915_private *i915)
>  {
> -	struct i915_power_domains *power_domains = &i915->display.power.domains;
> +	struct intel_display *display = &i915->display;
> +	struct i915_power_domains *power_domains = &display->power.domains;
>  
>  	if (DISPLAY_VER(i915) >= 11) {
> -		bxt_disable_dc9(i915);
> +		bxt_disable_dc9(display);
>  		icl_display_core_init(i915, true);
>  		if (intel_dmc_has_payload(i915)) {
>  			if (power_domains->allowed_dc_mask & DC_STATE_EN_UPTO_DC6)
> -				skl_enable_dc6(i915);
> +				skl_enable_dc6(display);
>  			else if (power_domains->allowed_dc_mask & DC_STATE_EN_UPTO_DC5)
> -				gen9_enable_dc5(i915);
> +				gen9_enable_dc5(display);
>  		}
>  	} else if (IS_GEMINILAKE(i915) || IS_BROXTON(i915)) {
> -		bxt_disable_dc9(i915);
> +		bxt_disable_dc9(display);
>  		bxt_display_core_init(i915, true);
>  		if (intel_dmc_has_payload(i915) &&
>  		    (power_domains->allowed_dc_mask & DC_STATE_EN_UPTO_DC5))
> -			gen9_enable_dc5(i915);
> +			gen9_enable_dc5(display);
>  	} else if (IS_HASWELL(i915) || IS_BROADWELL(i915)) {
>  		hsw_disable_pc8(i915);
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 7b40a5b88214..1f0084ca6248 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -601,20 +601,22 @@ static bool hsw_power_well_enabled(struct drm_i915_private *dev_priv,
>  	return (val & mask) == mask;
>  }
>  
> -static void assert_can_enable_dc9(struct drm_i915_private *dev_priv)
> +static void assert_can_enable_dc9(struct intel_display *display)
>  {
> -	drm_WARN_ONCE(&dev_priv->drm,
> -		      (intel_de_read(dev_priv, DC_STATE_EN) & DC_STATE_EN_DC9),
> +	struct drm_i915_private *dev_priv = to_i915(display->drm);
> +
> +	drm_WARN_ONCE(display->drm,
> +		      (intel_de_read(display, DC_STATE_EN) & DC_STATE_EN_DC9),
>  		      "DC9 already programmed to be enabled.\n");
> -	drm_WARN_ONCE(&dev_priv->drm,
> -		      intel_de_read(dev_priv, DC_STATE_EN) &
> +	drm_WARN_ONCE(display->drm,
> +		      intel_de_read(display, DC_STATE_EN) &
>  		      DC_STATE_EN_UPTO_DC5,
>  		      "DC5 still not disabled to enable DC9.\n");
> -	drm_WARN_ONCE(&dev_priv->drm,
> -		      intel_de_read(dev_priv, HSW_PWR_WELL_CTL2) &
> +	drm_WARN_ONCE(display->drm,
> +		      intel_de_read(display, HSW_PWR_WELL_CTL2) &
>  		      HSW_PWR_WELL_CTL_REQ(SKL_PW_CTL_IDX_PW_2),
>  		      "Power well 2 on.\n");
> -	drm_WARN_ONCE(&dev_priv->drm, intel_irqs_enabled(dev_priv),
> +	drm_WARN_ONCE(display->drm, intel_irqs_enabled(dev_priv),
>  		      "Interrupts not disabled yet.\n");
>  
>  	 /*
> @@ -626,12 +628,14 @@ static void assert_can_enable_dc9(struct drm_i915_private *dev_priv)
>  	  */
>  }
>  
> -static void assert_can_disable_dc9(struct drm_i915_private *dev_priv)
> +static void assert_can_disable_dc9(struct intel_display *display)
>  {
> -	drm_WARN_ONCE(&dev_priv->drm, intel_irqs_enabled(dev_priv),
> +	struct drm_i915_private *dev_priv = to_i915(display->drm);
> +
> +	drm_WARN_ONCE(display->drm, intel_irqs_enabled(dev_priv),
>  		      "Interrupts not disabled yet.\n");
> -	drm_WARN_ONCE(&dev_priv->drm,
> -		      intel_de_read(dev_priv, DC_STATE_EN) &
> +	drm_WARN_ONCE(display->drm,
> +		      intel_de_read(display, DC_STATE_EN) &
>  		      DC_STATE_EN_UPTO_DC5,
>  		      "DC5 still not disabled.\n");
>  
> @@ -644,14 +648,14 @@ static void assert_can_disable_dc9(struct drm_i915_private *dev_priv)
>  	  */
>  }
>  
> -static void gen9_write_dc_state(struct drm_i915_private *dev_priv,
> +static void gen9_write_dc_state(struct intel_display *display,
>  				u32 state)
>  {
>  	int rewrites = 0;
>  	int rereads = 0;
>  	u32 v;
>  
> -	intel_de_write(dev_priv, DC_STATE_EN, state);
> +	intel_de_write(display, DC_STATE_EN, state);
>  
>  	/* It has been observed that disabling the dc6 state sometimes
>  	 * doesn't stick and dmc keeps returning old value. Make sure
> @@ -659,10 +663,10 @@ static void gen9_write_dc_state(struct drm_i915_private *dev_priv,
>  	 * we are confident that state is exactly what we want.
>  	 */
>  	do  {
> -		v = intel_de_read(dev_priv, DC_STATE_EN);
> +		v = intel_de_read(display, DC_STATE_EN);
>  
>  		if (v != state) {
> -			intel_de_write(dev_priv, DC_STATE_EN, state);
> +			intel_de_write(display, DC_STATE_EN, state);
>  			rewrites++;
>  			rereads = 0;
>  		} else if (rereads++ > 5) {
> @@ -672,27 +676,28 @@ static void gen9_write_dc_state(struct drm_i915_private *dev_priv,
>  	} while (rewrites < 100);
>  
>  	if (v != state)
> -		drm_err(&dev_priv->drm,
> +		drm_err(display->drm,
>  			"Writing dc state to 0x%x failed, now 0x%x\n",
>  			state, v);
>  
>  	/* Most of the times we need one retry, avoid spam */
>  	if (rewrites > 1)
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(display->drm,
>  			    "Rewrote dc state to 0x%x %d times\n",
>  			    state, rewrites);
>  }
>  
> -static u32 gen9_dc_mask(struct drm_i915_private *dev_priv)
> +static u32 gen9_dc_mask(struct intel_display *display)
>  {
> +	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  	u32 mask;
>  
>  	mask = DC_STATE_EN_UPTO_DC5;
>  
> -	if (DISPLAY_VER(dev_priv) >= 12)
> +	if (DISPLAY_VER(display) >= 12)
>  		mask |= DC_STATE_EN_DC3CO | DC_STATE_EN_UPTO_DC6
>  					  | DC_STATE_EN_DC9;
> -	else if (DISPLAY_VER(dev_priv) == 11)
> +	else if (DISPLAY_VER(display) == 11)
>  		mask |= DC_STATE_EN_UPTO_DC6 | DC_STATE_EN_DC9;
>  	else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
>  		mask |= DC_STATE_EN_DC9;
> @@ -702,17 +707,17 @@ static u32 gen9_dc_mask(struct drm_i915_private *dev_priv)
>  	return mask;
>  }
>  
> -void gen9_sanitize_dc_state(struct drm_i915_private *i915)
> +void gen9_sanitize_dc_state(struct intel_display *display)
>  {
> -	struct i915_power_domains *power_domains = &i915->display.power.domains;
> +	struct i915_power_domains *power_domains = &display->power.domains;
>  	u32 val;
>  
> -	if (!HAS_DISPLAY(i915))
> +	if (!HAS_DISPLAY(display))
>  		return;
>  
> -	val = intel_de_read(i915, DC_STATE_EN) & gen9_dc_mask(i915);
> +	val = intel_de_read(display, DC_STATE_EN) & gen9_dc_mask(display);
>  
> -	drm_dbg_kms(&i915->drm,
> +	drm_dbg_kms(display->drm,
>  		    "Resetting DC state tracking from %02x to %02x\n",
>  		    power_domains->dc_state, val);
>  	power_domains->dc_state = val;
> @@ -720,7 +725,7 @@ void gen9_sanitize_dc_state(struct drm_i915_private *i915)
>  
>  /**
>   * gen9_set_dc_state - set target display C power state
> - * @dev_priv: i915 device instance
> + * @display: display instance
>   * @state: target DC power state
>   * - DC_STATE_DISABLE
>   * - DC_STATE_EN_UPTO_DC5
> @@ -741,70 +746,71 @@ void gen9_sanitize_dc_state(struct drm_i915_private *i915)
>   * back on and register state is restored. This is guaranteed by the MMIO write
>   * to DC_STATE_EN blocking until the state is restored.
>   */
> -void gen9_set_dc_state(struct drm_i915_private *dev_priv, u32 state)
> +void gen9_set_dc_state(struct intel_display *display, u32 state)
>  {
> -	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
> +	struct i915_power_domains *power_domains = &display->power.domains;
>  	u32 val;
>  	u32 mask;
>  
> -	if (!HAS_DISPLAY(dev_priv))
> +	if (!HAS_DISPLAY(display))
>  		return;
>  
> -	if (drm_WARN_ON_ONCE(&dev_priv->drm,
> +	if (drm_WARN_ON_ONCE(display->drm,
>  			     state & ~power_domains->allowed_dc_mask))
>  		state &= power_domains->allowed_dc_mask;
>  
> -	val = intel_de_read(dev_priv, DC_STATE_EN);
> -	mask = gen9_dc_mask(dev_priv);
> -	drm_dbg_kms(&dev_priv->drm, "Setting DC state from %02x to %02x\n",
> +	val = intel_de_read(display, DC_STATE_EN);
> +	mask = gen9_dc_mask(display);
> +	drm_dbg_kms(display->drm, "Setting DC state from %02x to %02x\n",
>  		    val & mask, state);
>  
>  	/* Check if DMC is ignoring our DC state requests */
>  	if ((val & mask) != power_domains->dc_state)
> -		drm_err(&dev_priv->drm, "DC state mismatch (0x%x -> 0x%x)\n",
> +		drm_err(display->drm, "DC state mismatch (0x%x -> 0x%x)\n",
>  			power_domains->dc_state, val & mask);
>  
>  	val &= ~mask;
>  	val |= state;
>  
> -	gen9_write_dc_state(dev_priv, val);
> +	gen9_write_dc_state(display, val);
>  
>  	power_domains->dc_state = val & mask;
>  }
>  
> -static void tgl_enable_dc3co(struct drm_i915_private *dev_priv)
> +static void tgl_enable_dc3co(struct intel_display *display)
>  {
> -	drm_dbg_kms(&dev_priv->drm, "Enabling DC3CO\n");
> -	gen9_set_dc_state(dev_priv, DC_STATE_EN_DC3CO);
> +	drm_dbg_kms(display->drm, "Enabling DC3CO\n");
> +	gen9_set_dc_state(display, DC_STATE_EN_DC3CO);
>  }
>  
> -static void tgl_disable_dc3co(struct drm_i915_private *dev_priv)
> +static void tgl_disable_dc3co(struct intel_display *display)
>  {
> -	drm_dbg_kms(&dev_priv->drm, "Disabling DC3CO\n");
> -	intel_de_rmw(dev_priv, DC_STATE_EN, DC_STATE_DC3CO_STATUS, 0);
> -	gen9_set_dc_state(dev_priv, DC_STATE_DISABLE);
> +	drm_dbg_kms(display->drm, "Disabling DC3CO\n");
> +	intel_de_rmw(display, DC_STATE_EN, DC_STATE_DC3CO_STATUS, 0);
> +	gen9_set_dc_state(display, DC_STATE_DISABLE);
>  	/*
>  	 * Delay of 200us DC3CO Exit time B.Spec 49196
>  	 */
>  	usleep_range(200, 210);
>  }
>  
> -static void assert_can_enable_dc5(struct drm_i915_private *dev_priv)
> +static void assert_can_enable_dc5(struct intel_display *display)
>  {
> +	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  	enum i915_power_well_id high_pg;
>  
>  	/* Power wells at this level and above must be disabled for DC5 entry */
> -	if (DISPLAY_VER(dev_priv) == 12)
> +	if (DISPLAY_VER(display) == 12)
>  		high_pg = ICL_DISP_PW_3;
>  	else
>  		high_pg = SKL_DISP_PW_2;
>  
> -	drm_WARN_ONCE(&dev_priv->drm,
> +	drm_WARN_ONCE(display->drm,
>  		      intel_display_power_well_is_enabled(dev_priv, high_pg),
>  		      "Power wells above platform's DC5 limit still enabled.\n");
>  
> -	drm_WARN_ONCE(&dev_priv->drm,
> -		      (intel_de_read(dev_priv, DC_STATE_EN) &
> +	drm_WARN_ONCE(display->drm,
> +		      (intel_de_read(display, DC_STATE_EN) &
>  		       DC_STATE_EN_UPTO_DC5),
>  		      "DC5 already programmed to be enabled.\n");
>  	assert_rpm_wakelock_held(&dev_priv->runtime_pm);
> @@ -812,60 +818,66 @@ static void assert_can_enable_dc5(struct drm_i915_private *dev_priv)
>  	assert_dmc_loaded(dev_priv);
>  }
>  
> -void gen9_enable_dc5(struct drm_i915_private *dev_priv)
> +void gen9_enable_dc5(struct intel_display *display)
>  {
> -	assert_can_enable_dc5(dev_priv);
> +	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  
> -	drm_dbg_kms(&dev_priv->drm, "Enabling DC5\n");
> +	assert_can_enable_dc5(display);
> +
> +	drm_dbg_kms(display->drm, "Enabling DC5\n");
>  
>  	/* Wa Display #1183: skl,kbl,cfl */
> -	if (DISPLAY_VER(dev_priv) == 9 && !IS_BROXTON(dev_priv))
> -		intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1,
> +	if (DISPLAY_VER(display) == 9 && !IS_BROXTON(dev_priv))
> +		intel_de_rmw(display, GEN8_CHICKEN_DCPR_1,
>  			     0, SKL_SELECT_ALTERNATE_DC_EXIT);
>  
> -	intel_dmc_wl_enable(&dev_priv->display);
> +	intel_dmc_wl_enable(display);
>  
> -	gen9_set_dc_state(dev_priv, DC_STATE_EN_UPTO_DC5);
> +	gen9_set_dc_state(display, DC_STATE_EN_UPTO_DC5);
>  }
>  
> -static void assert_can_enable_dc6(struct drm_i915_private *dev_priv)
> +static void assert_can_enable_dc6(struct intel_display *display)
>  {
> -	drm_WARN_ONCE(&dev_priv->drm,
> -		      (intel_de_read(dev_priv, UTIL_PIN_CTL) &
> +	struct drm_i915_private *dev_priv = to_i915(display->drm);
> +
> +	drm_WARN_ONCE(display->drm,
> +		      (intel_de_read(display, UTIL_PIN_CTL) &
>  		       (UTIL_PIN_ENABLE | UTIL_PIN_MODE_MASK)) ==
>  		      (UTIL_PIN_ENABLE | UTIL_PIN_MODE_PWM),
>  		      "Utility pin enabled in PWM mode\n");
> -	drm_WARN_ONCE(&dev_priv->drm,
> -		      (intel_de_read(dev_priv, DC_STATE_EN) &
> +	drm_WARN_ONCE(display->drm,
> +		      (intel_de_read(display, DC_STATE_EN) &
>  		       DC_STATE_EN_UPTO_DC6),
>  		      "DC6 already programmed to be enabled.\n");
>  
>  	assert_dmc_loaded(dev_priv);
>  }
>  
> -void skl_enable_dc6(struct drm_i915_private *dev_priv)
> +void skl_enable_dc6(struct intel_display *display)
>  {
> -	assert_can_enable_dc6(dev_priv);
> +	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  
> -	drm_dbg_kms(&dev_priv->drm, "Enabling DC6\n");
> +	assert_can_enable_dc6(display);
> +
> +	drm_dbg_kms(display->drm, "Enabling DC6\n");
>  
>  	/* Wa Display #1183: skl,kbl,cfl */
> -	if (DISPLAY_VER(dev_priv) == 9 && !IS_BROXTON(dev_priv))
> -		intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1,
> +	if (DISPLAY_VER(display) == 9 && !IS_BROXTON(dev_priv))
> +		intel_de_rmw(display, GEN8_CHICKEN_DCPR_1,
>  			     0, SKL_SELECT_ALTERNATE_DC_EXIT);
>  
> -	intel_dmc_wl_enable(&dev_priv->display);
> +	intel_dmc_wl_enable(display);
>  
> -	gen9_set_dc_state(dev_priv, DC_STATE_EN_UPTO_DC6);
> +	gen9_set_dc_state(display, DC_STATE_EN_UPTO_DC6);
>  }
>  
> -void bxt_enable_dc9(struct drm_i915_private *dev_priv)
> +void bxt_enable_dc9(struct intel_display *display)
>  {
> -	struct intel_display *display = &dev_priv->display;
> +	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  
> -	assert_can_enable_dc9(dev_priv);
> +	assert_can_enable_dc9(display);
>  
> -	drm_dbg_kms(&dev_priv->drm, "Enabling DC9\n");
> +	drm_dbg_kms(display->drm, "Enabling DC9\n");
>  	/*
>  	 * Power sequencer reset is not needed on
>  	 * platforms with South Display Engine on PCH,
> @@ -873,18 +885,16 @@ void bxt_enable_dc9(struct drm_i915_private *dev_priv)
>  	 */
>  	if (!HAS_PCH_SPLIT(dev_priv))
>  		intel_pps_reset_all(display);
> -	gen9_set_dc_state(dev_priv, DC_STATE_EN_DC9);
> +	gen9_set_dc_state(display, DC_STATE_EN_DC9);
>  }
>  
> -void bxt_disable_dc9(struct drm_i915_private *dev_priv)
> +void bxt_disable_dc9(struct intel_display *display)
>  {
> -	struct intel_display *display = &dev_priv->display;
> +	assert_can_disable_dc9(display);
>  
> -	assert_can_disable_dc9(dev_priv);
> +	drm_dbg_kms(display->drm, "Disabling DC9\n");
>  
> -	drm_dbg_kms(&dev_priv->drm, "Disabling DC9\n");
> -
> -	gen9_set_dc_state(dev_priv, DC_STATE_DISABLE);
> +	gen9_set_dc_state(display, DC_STATE_DISABLE);
>  
>  	intel_pps_unlock_regs_wa(display);
>  }
> @@ -949,8 +959,10 @@ static void bxt_verify_dpio_phy_power_wells(struct drm_i915_private *dev_priv)
>  static bool gen9_dc_off_power_well_enabled(struct drm_i915_private *dev_priv,
>  					   struct i915_power_well *power_well)
>  {
> -	return ((intel_de_read(dev_priv, DC_STATE_EN) & DC_STATE_EN_DC3CO) == 0 &&
> -		(intel_de_read(dev_priv, DC_STATE_EN) & DC_STATE_EN_UPTO_DC5_DC6_MASK) == 0);
> +	struct intel_display *display = &dev_priv->display;
> +
> +	return ((intel_de_read(display, DC_STATE_EN) & DC_STATE_EN_DC3CO) == 0 &&
> +		(intel_de_read(display, DC_STATE_EN) & DC_STATE_EN_UPTO_DC5_DC6_MASK) == 0);
>  }
>  
>  static void gen9_assert_dbuf_enabled(struct drm_i915_private *dev_priv)
> @@ -965,23 +977,23 @@ static void gen9_assert_dbuf_enabled(struct drm_i915_private *dev_priv)
>  		 enabled_dbuf_slices);
>  }
>  
> -void gen9_disable_dc_states(struct drm_i915_private *dev_priv)
> +void gen9_disable_dc_states(struct intel_display *display)
>  {
> -	struct intel_display *display = &dev_priv->display;
> +	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  	struct i915_power_domains *power_domains = &display->power.domains;
>  	struct intel_cdclk_config cdclk_config = {};
>  
>  	if (power_domains->target_dc_state == DC_STATE_EN_DC3CO) {
> -		tgl_disable_dc3co(dev_priv);
> +		tgl_disable_dc3co(display);
>  		return;
>  	}
>  
> -	gen9_set_dc_state(dev_priv, DC_STATE_DISABLE);
> +	gen9_set_dc_state(display, DC_STATE_DISABLE);
>  
> -	if (!HAS_DISPLAY(dev_priv))
> +	if (!HAS_DISPLAY(display))
>  		return;
>  
> -	intel_dmc_wl_disable(&dev_priv->display);
> +	intel_dmc_wl_disable(display);
>  
>  	intel_cdclk_get_cdclk(display, &cdclk_config);
>  	/* Can't read out voltage_level so can't use intel_cdclk_changed() */
> @@ -994,7 +1006,7 @@ void gen9_disable_dc_states(struct drm_i915_private *dev_priv)
>  	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
>  		bxt_verify_dpio_phy_power_wells(dev_priv);
>  
> -	if (DISPLAY_VER(dev_priv) >= 11)
> +	if (DISPLAY_VER(display) >= 11)
>  		/*
>  		 * DMC retains HW context only for port A, the other combo
>  		 * PHY's HW context for port B is lost after DC transitions,
> @@ -1006,26 +1018,29 @@ void gen9_disable_dc_states(struct drm_i915_private *dev_priv)
>  static void gen9_dc_off_power_well_enable(struct drm_i915_private *dev_priv,
>  					  struct i915_power_well *power_well)
>  {
> -	gen9_disable_dc_states(dev_priv);
> +	struct intel_display *display = &dev_priv->display;
> +
> +	gen9_disable_dc_states(display);
>  }
>  
>  static void gen9_dc_off_power_well_disable(struct drm_i915_private *dev_priv,
>  					   struct i915_power_well *power_well)
>  {
> -	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
> +	struct intel_display *display = &dev_priv->display;
> +	struct i915_power_domains *power_domains = &display->power.domains;
>  
>  	if (!intel_dmc_has_payload(dev_priv))
>  		return;
>  
>  	switch (power_domains->target_dc_state) {
>  	case DC_STATE_EN_DC3CO:
> -		tgl_enable_dc3co(dev_priv);
> +		tgl_enable_dc3co(display);
>  		break;
>  	case DC_STATE_EN_UPTO_DC6:
> -		skl_enable_dc6(dev_priv);
> +		skl_enable_dc6(display);
>  		break;
>  	case DC_STATE_EN_UPTO_DC5:
> -		gen9_enable_dc5(dev_priv);
> +		gen9_enable_dc5(display);
>  		break;
>  	}
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.h b/drivers/gpu/drm/i915/display/intel_display_power_well.h
> index 9357a9a73c06..93559f7c6100 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.h
> @@ -12,6 +12,7 @@
>  
>  struct drm_i915_private;
>  struct i915_power_well_ops;
> +struct intel_display;
>  struct intel_encoder;
>  
>  #define for_each_power_well(__dev_priv, __power_well)				\
> @@ -154,13 +155,13 @@ void chv_phy_powergate_lanes(struct intel_encoder *encoder,
>  bool chv_phy_powergate_ch(struct drm_i915_private *dev_priv, enum dpio_phy phy,
>  			  enum dpio_channel ch, bool override);
>  
> -void gen9_enable_dc5(struct drm_i915_private *dev_priv);
> -void skl_enable_dc6(struct drm_i915_private *dev_priv);
> -void gen9_sanitize_dc_state(struct drm_i915_private *dev_priv);
> -void gen9_set_dc_state(struct drm_i915_private *dev_priv, u32 state);
> -void gen9_disable_dc_states(struct drm_i915_private *dev_priv);
> -void bxt_enable_dc9(struct drm_i915_private *dev_priv);
> -void bxt_disable_dc9(struct drm_i915_private *dev_priv);
> +void gen9_enable_dc5(struct intel_display *display);
> +void skl_enable_dc6(struct intel_display *display);
> +void gen9_sanitize_dc_state(struct intel_display *display);
> +void gen9_set_dc_state(struct intel_display *display, u32 state);
> +void gen9_disable_dc_states(struct intel_display *display);
> +void bxt_enable_dc9(struct intel_display *display);
> +void bxt_disable_dc9(struct intel_display *display);
>  
>  extern const struct i915_power_well_ops i9xx_always_on_power_well_ops;
>  extern const struct i915_power_well_ops chv_pipe_power_well_ops;
> -- 
> 2.44.2
> 
