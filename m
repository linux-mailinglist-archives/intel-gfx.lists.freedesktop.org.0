Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8463860512
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Feb 2024 22:47:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C22910EA8C;
	Thu, 22 Feb 2024 21:47:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Xxo3Us/S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA3AD10EA90
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Feb 2024 21:47:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708638473; x=1740174473;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=QK6FIxdfy5WE4+47jxyXse/IGI07+nDBb6IrYmv3Wfc=;
 b=Xxo3Us/SPHPXR7Aqn7q64Lb4pKsOYdWwivLDGyHgjoxurZnHG5gWxmxY
 z5viteWd/1xD5DIrF2ECyBY3C4qkcrzaEeIRNML1cdmvA07eprEy5gGfq
 Ggh74/xSjqWpiri+orqBLWWXHyWFpoCy8+NlCThDVuyINNXYxGScPJ/JX
 TiaMRu14HyRUCY43RkmAH+J1TMxU6fohGt5ppP/4FjzXceYvBdJBcv0Sm
 Q7rAOfZXas19e9E2PRZCM1RU5OZQxh4l5qrZPeM3KgIsjBZE5xbZwzCe2
 1+aA3Mpdco8o+9noA6DH1kBydvqb/oHzQr2ApKTCStxY204+zPSJSMZRY w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10992"; a="3009585"
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; 
   d="scan'208";a="3009585"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 13:47:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; d="scan'208";a="36446183"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Feb 2024 13:47:51 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 22 Feb 2024 13:47:50 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 22 Feb 2024 13:47:50 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 22 Feb 2024 13:47:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FQrNQinWVVMjSHsGdSwaZV5THpAVexhjh/QoY+GDsfVbBuPOrwGyxGMQwx1Bof0yraam9Y5m4Ag52IOA3/IVLamfe22cufkXxT6NcxX/iCrvSH1Js22sOa4bJoak5D2JLFcFXA9EGcHNvdz/dyMZ9NjJ0SX4C3Hp99QSfxEzjaLwoftrzuRNlZonF+xKlRlaY5rNBx6al5fhJqzXLJ9141iLxEcGIDXhb4jn6xQ+1AxkHJJgnNHS5Wmc7a0GZ/n3oF6snpTqJUA30iTPAT2NHMdjG3yxpKyVGGk3z3u+Hc/D3bcfPsMjLJxEul0T3+yE85MwEfbhgZ4EwwwxHvUAZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oMgo5xpfFBJHhLdukDgJZUpBB+tpfeY1nmgrilpGIcM=;
 b=LxkSexzihsYquxadCC+iBov5lMJ5/EhDPprBwpYkwkfHYwSaiP/pH2fdwfB7mWooV0FJf43MtlpoUk1ZHzcT+DZqPf4rVDJpZaK5SXzWLAyJh6fg/KAkt6Hht3bw+NX2f9aH8KjS/1UxGuEFAk2fvJXbSrSyjfhJNw+1Uo347udmTLvvIRjdvTDtk0nCFPxocSHrVs4pDQIDR/OUUHYJwt5rgwgqJNxbqAcViOV9vZBPSpsk7T4KkXJMvkeeSmoM1s7qmPgv0G6ckdKEynVEcDzfCL1njG9JtGjWgOdgLnw/RteLUZ1ifwirC0XiWkr8hJE8OxSgTu8Ypitr4/c+eA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DS0PR11MB7360.namprd11.prod.outlook.com (2603:10b6:8:136::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.10; Thu, 22 Feb
 2024 21:47:42 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d%4]) with mapi id 15.20.7339.009; Thu, 22 Feb 2024
 21:47:42 +0000
Date: Thu, 22 Feb 2024 16:47:39 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 02/12] drm/i915: Include CRTC info in infoframe mismatch
 prints
Message-ID: <ZdfA-8RD7AATzywS@intel.com>
References: <20240215164055.30585-1-ville.syrjala@linux.intel.com>
 <20240215164055.30585-3-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240215164055.30585-3-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: SJ0PR05CA0143.namprd05.prod.outlook.com
 (2603:10b6:a03:33d::28) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DS0PR11MB7360:EE_
X-MS-Office365-Filtering-Correlation-Id: 6c47076e-8af7-4ba0-9481-08dc33efe5be
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: orh6kh8uAImthTmsuzfSYilb671taUiaI3ZZUe1En2RIDY7QORnJ34xLG4UsLzBD3Dcj4zBn7jrVGxpVjAN4lunFLI+WXr9v7n2FEq+cAEU4JVsdAK6M+uPZ/lCGEzNq0ZM8EkjRrJP2cxNwgxHv2qpHIq+ZZThZbj7WiJwTOMMJi5aaNSijGd51d+1+XQQIJKBq4GwM6gNr1zwoWGtHBm/6fxKiPP198SD8s9++PcilDH5lWPIHhKnY7ql2m1VBLjrq5S7xBOaKMZknt1jdpp9mvVfDNaHkZKBVRhIWcLsdp3yZ3Aq5Kz9bkaYPsTSbqUDqeTY7M/uFbYpx0mS4anTwbvymmE6tM6Nwf84yz8KPFqTJmskm4HAiz3dr8uP3EoLaAUhM1+wY+kHyix9M0pXDzkzqZS6A1g3D7BC7yKfyfY+hgjD6GNb05ZSqh1D2KDri7ZihGEvfhjgCFsu/AXikvOhhmPxR9XHSju73pQtcdHWuW5Aa63SUZHg5/gWvnKb9Si++8zKIszZbeGY8OI9stOHK5IKD856jEtzkzcw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?S1CD+r1IKbskoQEDoawUgJBt1/FFBD8ruvcwQtnevaIiSaSg+/nDu0oNDo?=
 =?iso-8859-1?Q?QP5+ujrr1YnmUsxauDfEc3mCfKTxZL17yYNugyz8wy+wNyiG06IEWAwLJL?=
 =?iso-8859-1?Q?NSxo41zc1Fji9H1Iq5FIqgZy8S99x3t+X8pZVLDCd0Lulll6Mqw4HQJgRq?=
 =?iso-8859-1?Q?JFgVRGR1ZBPHRZubhWnU0psYYFsylVDOD9/h+DtJivIbK9T5pvXXVWiIVt?=
 =?iso-8859-1?Q?9m5FlEOvKhC8M1Bog5bNtiU1DOJ1+EkHaW+dvINSbKTtyXhq6fCHfFKXQt?=
 =?iso-8859-1?Q?6g1WzBshjRT6qn4s/11UVK3oawlWnNyk123+cu8RAq1xxXhmuETPRnQHD/?=
 =?iso-8859-1?Q?60B02j7jzFSwW4C6yFZneVuJkgDa49cZvPp9BHp3VayWKic1mXnDBrDPKN?=
 =?iso-8859-1?Q?iV02PULdv9acUDwq9dJYgd6NEYd2kkU2WSjwRaB/bglJmbby/6hegSB0Fb?=
 =?iso-8859-1?Q?shwiKUbXCpNGKQztX386qMbd6rhx8lzOhcSE387O7yD/I4OTUr5iCp3Pxi?=
 =?iso-8859-1?Q?VRWqFXXDjiKQJCeM7aKyf0r2R0L662gkeQ9svdZ80/MuRrKQJ9Jkzvs+hB?=
 =?iso-8859-1?Q?QoPZPywzG6gkR2oNDsBR0QQ/mhtzb8VczdeUaHOnQ8CW4Ev0O+h7gl2Ii3?=
 =?iso-8859-1?Q?mVoGWB459K19NlO4TTkwL+9qn4XkoNQjS4uTaHuo9c9PR/PKiCldlFRi0Y?=
 =?iso-8859-1?Q?BVtNvnOKgne9JxBnAH/1d0dbDuKvegy+nMOTupeOqt5bmOuzHzYOSx7lCs?=
 =?iso-8859-1?Q?ckxErDsBzSgaW00g5nQES10EQIH6qCb/v7v/Q1vYqS4S2YmFEdXyZlILEr?=
 =?iso-8859-1?Q?dYkxQP0iJ5bEw6gE/Sly1NbAW2DK433+z6L8uEm3yfVWCDrwnFKyjEJMsE?=
 =?iso-8859-1?Q?ypSHsu5UcU13wleyRcJv+/Bs02IlEgEJgXPYLggY3/fy3kCVxYJexdzurY?=
 =?iso-8859-1?Q?RvYhtJl+kWhF5qmCBKawwuc9/0AVUvRpI86g1MCQAiDmDOSmAt7s+IZEdG?=
 =?iso-8859-1?Q?BpvN+OusSpKY++D7XICqdWMTAKspAGuTw+Ohc+HTirF3FC1wvVMWKW/8rd?=
 =?iso-8859-1?Q?uM7ZlgBYOS29+bLogsAL7BQLxQo8HR5dmVL2FLIua02h8K+/ubamsweigh?=
 =?iso-8859-1?Q?QaNoMCtCNOzVzOOcRQvfHGuySrHMZnrihHeBO6Iqa/i6V7xJddnTcOPN8l?=
 =?iso-8859-1?Q?3tpoKefT6It88GK3d7EnE8Tt11+A54f1ETTK6HA5tlldaj217Dp7iZeWJA?=
 =?iso-8859-1?Q?Ns2EIfkd5IpjGQWC5XwktucQZp3x5Nrk1TGoEVkBSeo/GO638xng+3yuKI?=
 =?iso-8859-1?Q?wVC0+EtiJyL1OR+NCVqueUI4Tt0yTWleqbmizX8fT5klf3Rb9imOkOSNKP?=
 =?iso-8859-1?Q?VuW89CCNL9928gU8/WmXAKUe1V2tF0ha7SiSWpbkV17VyIxjLXcHrtOmRx?=
 =?iso-8859-1?Q?Kuioo5e9HLwLOxaGNdnAoBhH5fuyDp11Hm3c5QspV+QeAbyUBxh96ghA6N?=
 =?iso-8859-1?Q?f5sgoQtSsz54ED7MkJHlap69C0v/0d9KjY3ENMJMNhQWRB74wbHo8jxJEk?=
 =?iso-8859-1?Q?iUDFE4MWQx0u9lngI3U5vm2+p4TvpkvQPndHSqC96FU9/utgqgur1+Ii1b?=
 =?iso-8859-1?Q?n4YDJTSVISs6Vc2x2dgXgm3E08Hjixl5IXC+UnvC146lA+e+6BTR+nBw?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c47076e-8af7-4ba0-9481-08dc33efe5be
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Feb 2024 21:47:42.6230 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jJIP0V5MiTJhJjb3GsXruaWaR8FDutdbR7Ua9oBTg0hjROUl2Ru+2U3HL9djK3ZB6zMpA7Mi0ixW8Kq8XfRaCg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7360
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

On Thu, Feb 15, 2024 at 06:40:45PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Most crtc state mismatches include the CRTC id+name in the
> prints. Also include it in the infoframe mismatches.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 14 +++++++++-----
>  1 file changed, 9 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index a7f487f5c2b2..e3520a3da468 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4788,23 +4788,27 @@ intel_compare_buffer(const u8 *a, const u8 *b, size_t len)
>  }
>  
>  static void
> -pipe_config_infoframe_mismatch(struct drm_i915_private *dev_priv,
> -			       bool fastset, const char *name,
> +pipe_config_infoframe_mismatch(bool fastset, const struct intel_crtc *crtc,

why not crtc, fastset? having the main struct as the first
argument seems more natural imho

anyway,

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> +			       const char *name,
>  			       const union hdmi_infoframe *a,
>  			       const union hdmi_infoframe *b)
>  {
> +	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> +
>  	if (fastset) {
>  		if (!drm_debug_enabled(DRM_UT_KMS))
>  			return;
>  
>  		drm_dbg_kms(&dev_priv->drm,
> -			    "fastset requirement not met in %s infoframe\n", name);
> +			    "[CRTC:%d:%s] fastset requirement not met in %s infoframe\n",
> +			    crtc->base.base.id, crtc->base.name, name);
>  		drm_dbg_kms(&dev_priv->drm, "expected:\n");
>  		hdmi_infoframe_log(KERN_DEBUG, dev_priv->drm.dev, a);
>  		drm_dbg_kms(&dev_priv->drm, "found:\n");
>  		hdmi_infoframe_log(KERN_DEBUG, dev_priv->drm.dev, b);
>  	} else {
> -		drm_err(&dev_priv->drm, "mismatch in %s infoframe\n", name);
> +		drm_err(&dev_priv->drm, "[CRTC:%d:%s] mismatch in %s infoframe\n",
> +			crtc->base.base.id, crtc->base.name, name);
>  		drm_err(&dev_priv->drm, "expected:\n");
>  		hdmi_infoframe_log(KERN_ERR, dev_priv->drm.dev, a);
>  		drm_err(&dev_priv->drm, "found:\n");
> @@ -5072,7 +5076,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  #define PIPE_CONF_CHECK_INFOFRAME(name) do { \
>  	if (!intel_compare_infoframe(&current_config->infoframes.name, \
>  				     &pipe_config->infoframes.name)) { \
> -		pipe_config_infoframe_mismatch(dev_priv, fastset, __stringify(name), \
> +		pipe_config_infoframe_mismatch(fastset, crtc, __stringify(name), \
>  					       &current_config->infoframes.name, \
>  					       &pipe_config->infoframes.name); \
>  		ret = false; \
> -- 
> 2.43.0
> 
