Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E459A860521
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Feb 2024 22:50:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3895910E978;
	Thu, 22 Feb 2024 21:50:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="epThNi9q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33BF910E978
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Feb 2024 21:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708638622; x=1740174622;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=bHsIoe4yC1T1vqTk/u7LCkZphurjmxkrZR48Ac3XHdo=;
 b=epThNi9qPV0djQku/FN2YqwgdBzj2aRToEJi0I4MwwaIOhWy5XColVEQ
 ZA6ALzKcBoApGqs+91pkt/6+K+P/1Odv3o5WLHVUvZKc0I806AYCph032
 4xM0S1oOI9V3Hdziq9+3/Vwf7R+y2I7Rn0tKkW6jFNIRPYuzca9e9pmSp
 GPezBxNTrJsvtzix2LjzN7wS12SwptBxet6whxRBO6lB7YCuy9mOx/2pZ
 Kxx0VDTgosHVyfTQdUz1Msg15e5EzL5eLAAW6LykkiAueiYCJ6zMaJRBV
 tpzFeQZ+engAaRifFfgyUeGCgPMHZ5vudtatxyQzWt9zxplWbjv3N7M3s A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10992"; a="13525086"
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; d="scan'208";a="13525086"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 13:50:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; 
   d="scan'208";a="5939775"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Feb 2024 13:50:22 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 22 Feb 2024 13:50:20 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 22 Feb 2024 13:50:20 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 22 Feb 2024 13:50:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bWRRCsClDvk3d+u+hBp5YhbnA3TFEuwT1xRgnZRVNQ99zLpDp5ngUfIzFJhF1A/YAe+29ePeTP2uDaqSy3QB2bXuJcRlecbJ3DnEpmuuOG+sLda46sA1nXWMB+9SSO26iCLHIqLyV/V+FIGn2JWy3mD4EmF3PAUby5q7EBekhSIMQajVTU/tH2gQsfGJnccohv9feLSVCLGd3ZEGhnBK/kBmc9H8Xgyqsw4+Ny1jsyfAxMsHpNuq498LevgRWIRRYLTrsLZ8OezLDZ+whqWp0O9ZibowIFIzK1qro9REbmsU+oYcM7kBEG104wRKJU2oBkxhk5Do1VzfTXPtQk9NHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rzYt3p34V6sn48MVXwO3Vi8qW7EfqhrRh8j9qPJPAUo=;
 b=bz2Ofgr/mLs2PNePxTZJSiDFvphFvPM9nJNr7GoEM0Uq2vdmhpgYVUIrqpp7YxGOcr6FBSfSG92rCc2zy5tQqWIcJDzY8Fs98PQxRiyS/ThZ1Zd4BqW9UpL+7DJZ9iQ+KzR/JvjcjGBE86crpvUJzrPDocYcERgM5Z46rCPt6kiFLHxomWC+qYew4g+kz/XybpeP2Xa6o9enStk1d1QjoHdvSSiwx0gPYtJz5TgoxcwbHjt4LKcITPoxvdJpIK915NPEQZfChYN7a9bY3+DcbDNug+5BkfbNJL/o93SqZuhsaGwQe0G2bWL9z7s+u4OiGmpjz2yog5D1qcaKYgPYRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by BN9PR11MB5371.namprd11.prod.outlook.com (2603:10b6:408:11c::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7316.22; Thu, 22 Feb
 2024 21:50:17 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d%4]) with mapi id 15.20.7339.009; Thu, 22 Feb 2024
 21:50:17 +0000
Date: Thu, 22 Feb 2024 16:50:13 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 04/12] drm/i915: Convert pipe_config_infoframe_mismatch()
 to drm_printer
Message-ID: <ZdfBlSQFmevoVikn@intel.com>
References: <20240215164055.30585-1-ville.syrjala@linux.intel.com>
 <20240215164055.30585-5-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240215164055.30585-5-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: BYAPR01CA0048.prod.exchangelabs.com (2603:10b6:a03:94::25)
 To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|BN9PR11MB5371:EE_
X-MS-Office365-Filtering-Correlation-Id: 99f49864-e48d-4611-933c-08dc33f041d8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dDR0URuezp716XQ6ULdG4EQTrABchUF9DmU2yzQGhaTsNVzx26uUWJXtwbBK+pvuTzGAe+ZhTM88SCaz9lwzahN1NMqpl4OC34+/xTgAnFi6hrHkoJSUGZH2H+CD5fRF9jE4gj7H5dA02+yJ6pQSdTHpT5GnVqgxtqgJu0T8mEFPR/WOUwvakVp4HPj7YLynuMtYHyCB0vKEhEWe1HqsoYZ/WUJaOvxMtqVKrfaR04e/MroRFoQ1xg+tf73VG2P2Mm+pCb+OYma2sQXf4CKjrnJRsUByU0TRVCd1vM6WsaCL76KXClmWzsRsDTYkWy1lFndSTFbmZ9l3TOqpCdpCPLR0nEw/D+9uC8Me+YuY3c59aqpgi2BhTWR16RDG4naZ8C6RMHCfpK4kticgvddBv7URBBR2QHHv/IPLQaaxZ3ctXJZ7Dg5SLBw1AmoQLphO71YwLs33ZSRBOz7+ckFpdZLu7WdsQDgLXX+UhO0WBsgbMWyH/Y7DJrTliYEs09pWrgADAQgb0L4VyTDw/dk0QvjY5+pKfygNjCRxENHz/e8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?i6slRYHKMMDqdDo9zo66QMtSsLV4Hhfc/CgeXMCTLIlTRC/7GA2DLOYf7+?=
 =?iso-8859-1?Q?52uGTzQki/IqsbiSBo5MivEPV2jgV39hASUOBJWaRkV5LiP/welAvAbXYO?=
 =?iso-8859-1?Q?NnEEFaxic5zksu2WuCLwAFt1RsWGNFvBQMTwEmRuSzdn4JsxEjkh2jpsrs?=
 =?iso-8859-1?Q?AikXWE9sluWBxAeoZn2y0dQgkcAyysCCzpItUndkRGFxGu6Ni+Oq/XCZnW?=
 =?iso-8859-1?Q?lylKvg2laaAHLY7ZU0WJQs/M+rdV40WbtY2BF+kUoe7sfWBQn4Bmd7yRBM?=
 =?iso-8859-1?Q?VoWupUZwjE0tMwCn/sDIt0UlPmk4usi1BdonnnT80La6uTI1JS3oKVX9iE?=
 =?iso-8859-1?Q?TGxjeuqnLecJzPpGqk6bc581qnqEj1U/qj0dWulDV52x1DS3OZjtUTrAbA?=
 =?iso-8859-1?Q?zOEWlOXaswuUjiTzdigzHhg0WEeG/IkF0ILO660Vhix9E1Xmw2cVqg50GH?=
 =?iso-8859-1?Q?WJt77cyQe9PkNNNnLZvzqAls7V1xzlqW/4R6+KH9wErWm32tLxNMucLNq6?=
 =?iso-8859-1?Q?gXYXZ40lKxFDyjJIvWhIZfdM0iV6eLy2p9pePo22d88WXvJ0ZgDqtrXGG8?=
 =?iso-8859-1?Q?YjdLbZKAVWmHI1FyVmpaZNL0abmiqGYkRytY7gE2GCmYofPHobFQCZR/Ew?=
 =?iso-8859-1?Q?to3AIL3pecjSivKpCcgBRILcuhMPyjLg4XA3irFHrm/Bim7FY2/eyQPKKI?=
 =?iso-8859-1?Q?eVrrBQxiOw1Xs1048ieqo8DNhzyAAnoSi95eGs469OedWBXJsaqbvNtvvt?=
 =?iso-8859-1?Q?9AHPFlAuMAvULkVJlutykdrOWVqZ+51BhDcMlL6hx4C9M6N7wAvsW0zZRX?=
 =?iso-8859-1?Q?118j/NwJ6lm93puIreyYtcuKt9NAMomywI7LXM+IEUYyhwgmh2efezXvP0?=
 =?iso-8859-1?Q?9icm78nPqnW7GSSe9xt7RWxSTvoZ0v9WiZIHVQlLdvzoQpnWhZ8N6+N6hj?=
 =?iso-8859-1?Q?cqV1QdQ3BzNOAER5sNRt8HyHUFuOzmNLpCNS8Lw5wTLzc87cLqRhZxAuaa?=
 =?iso-8859-1?Q?OIcpcjygQoHiwrDSywlDY857/ErfmUiEcwnykhIDO7nYmfV1MUzEcZFgrd?=
 =?iso-8859-1?Q?rlOrcsM3iZNm1aE+eZHOuoKSC09T3mrF7MZ9lk6jHeVN24e6/nht2GYmH7?=
 =?iso-8859-1?Q?l0oyIKyTStVibNGWvFD7TyFk4bIYZ98C+9p/OIQgduJhjmT0SGOuQsIWZe?=
 =?iso-8859-1?Q?3VKHB16kP2B1gq2E1/K2bxnsbQwX7oJiNeE25dFSEujtpu6SugYRbd6+cs?=
 =?iso-8859-1?Q?EbU6qe2YpYYkBQdZIIDx6abn1MWNyw/5OECdpTQG4sW/KPIq6ITLUbwSN/?=
 =?iso-8859-1?Q?gfC6Afc6x1HfGEA9DL9YgMsd5ekvZZHIU6SfaLXZDZRoSXwYdkMV5Mykc+?=
 =?iso-8859-1?Q?20HA9HUhbxfGWP9vED10WvmiotVWK8xqrq+5MX1rJP0Dbs1QdlKUEHHUUD?=
 =?iso-8859-1?Q?6424diN6UDOOoi6VjoI2yheHL5oBs60tlto6TKKFB6kRmaK3Z15Y+YXCz5?=
 =?iso-8859-1?Q?q3HIRIvtnfJNWDyHBJwu+Hld6W3RUeDfx7qivKyTbmj58gT4FYPI/DVIC8?=
 =?iso-8859-1?Q?HU7Pk/HQfrXCeOAKU/cL6v812Q4sCMZM8sGTs0jmHYYhqwCXhYGOlekJ3L?=
 =?iso-8859-1?Q?ZbCdcTbuQ39LeXkTdf/r9U5uiUdUFB/unK9O3xmm42h8YF24R0yYmxTA?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 99f49864-e48d-4611-933c-08dc33f041d8
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Feb 2024 21:50:17.2508 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tisSeKAZ0X744tYeFt5xTlXncrtcOUD/MC3Kkrywrtmmrq5tC7YdoAD4VjnVGo2rpBlc9EBFp7qetgXXu9NcMw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5371
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

On Thu, Feb 15, 2024 at 06:40:47PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Utilize drm_printer in pipe_config_infoframe_mismatch() to avoid
> a bit of code duplication.
> 
> hdmi_infoframe_log() can't use the printer of course, but for that
> we can just figure out which loglevel to use. And we do need to keep
> the explicit drm_debug_enabled(DRM_UT_KMS) since hdmi_infoframe_log()
> won't do it for us.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 32 +++++++++++---------
>  1 file changed, 18 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 2aabfa154d8a..0292c49e0dad 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4793,27 +4793,31 @@ pipe_config_infoframe_mismatch(bool fastset, const struct intel_crtc *crtc,
>  			       const union hdmi_infoframe *a,
>  			       const union hdmi_infoframe *b)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> +	struct drm_printer p;
> +	const char *loglevel;
>  
>  	if (fastset) {
>  		if (!drm_debug_enabled(DRM_UT_KMS))
>  			return;
>  
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "[CRTC:%d:%s] fastset requirement not met in %s infoframe\n",
> -			    crtc->base.base.id, crtc->base.name, name);
> -		drm_dbg_kms(&dev_priv->drm, "expected:\n");
> -		hdmi_infoframe_log(KERN_DEBUG, dev_priv->drm.dev, a);
> -		drm_dbg_kms(&dev_priv->drm, "found:\n");
> -		hdmi_infoframe_log(KERN_DEBUG, dev_priv->drm.dev, b);
> +		p = drm_dbg_printer(&i915->drm, DRM_UT_KMS, NULL);
> +		loglevel = KERN_DEBUG;
> +
> +		drm_printf(&p, "[CRTC:%d:%s] fastset requirement not met in %s infoframe\n",
> +			   crtc->base.base.id, crtc->base.name, name);
>  	} else {
> -		drm_err(&dev_priv->drm, "[CRTC:%d:%s] mismatch in %s infoframe\n",
> -			crtc->base.base.id, crtc->base.name, name);
> -		drm_err(&dev_priv->drm, "expected:\n");
> -		hdmi_infoframe_log(KERN_ERR, dev_priv->drm.dev, a);
> -		drm_err(&dev_priv->drm, "found:\n");
> -		hdmi_infoframe_log(KERN_ERR, dev_priv->drm.dev, b);
> +		p = drm_err_printer(&i915->drm, NULL);
> +		loglevel = KERN_ERR;
> +
> +		drm_printf(&p, "[CRTC:%d:%s] mismatch in %s infoframe\n",
> +			   crtc->base.base.id, crtc->base.name, name);
>  	}
> +
> +	drm_printf(&p, "expected:\n");
> +	hdmi_infoframe_log(loglevel, i915->drm.dev, a);
> +	drm_printf(&p, "found:\n");
> +	hdmi_infoframe_log(loglevel, i915->drm.dev, b);
>  }
>  
>  static void
> -- 
> 2.43.0
> 
