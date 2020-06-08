Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F31E91F1DD5
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jun 2020 18:52:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77D346E96B;
	Mon,  8 Jun 2020 16:52:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 321586E98F
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jun 2020 16:52:19 +0000 (UTC)
IronPort-SDR: lg3Sq8sbfWohmHAoJ8QscJwCvbU2O1H8SEA0/qKt6yDwqhYRufsuwSIm9zcD6aC5zDN9SO00TA
 WDsnlLkfuCVA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2020 09:52:18 -0700
IronPort-SDR: hF9wbi7Iry51AG13OcA7TbDBZ6w4/Kk4igUrwzx6+AIWM2Pl17h/G0GWUYWB5KHqsMujz2o3u2
 KQ01GklKu4EQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,487,1583222400"; d="scan'208";a="259504906"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by orsmga007.jf.intel.com with ESMTP; 08 Jun 2020 09:52:18 -0700
Received: from fmsmsx162.amr.corp.intel.com (10.18.125.71) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 8 Jun 2020 09:52:17 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.171]) by
 fmsmsx162.amr.corp.intel.com ([169.254.5.51]) with mapi id 14.03.0439.000;
 Mon, 8 Jun 2020 09:52:16 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Le, Jason V" <jason.v.le@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: Avoid PSR and FBC
 features concurently.
Thread-Index: AQHWPWJjQA4dKOzvhEGx1keTP0CKtajPZUuA
Date: Mon, 8 Jun 2020 16:52:15 +0000
Message-ID: <50226b9506d36031402fa3ba73e90ec9f5a5ad38.camel@intel.com>
References: <20200608065635.11652-1-jason.v.le@intel.com>
In-Reply-To: <20200608065635.11652-1-jason.v.le@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.255.72.168]
Content-ID: <0E3FE62F4D4F9F4EACD676F6C746404E@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Avoid PSR and FBC
 features concurently.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, 2020-06-07 at 23:56 -0700, Jason Le wrote:
> Issue: Enble both PSR and FBC caused some fickers on some eDP panels (eg. Panel GIS
> 13.5" QHD Glare NE135FBM-N41/NC135GFL02).  Disbling either PSR or FBC
> will solve this flicker issue.
> 
> Both PSR and FBC features save power when render is not busy. When PSR is
> active, saving power achieved  by source turning off source transmitter and main link,
> putting memory on self-refresh mode. Therefore with PSR enabled,
> FBC role is minimized since PSR power saving already covers most what
> FBC does.  Disabling FBC in case to avoid conflict between PSR and FBC
> which causes display anomaly in some scenarios.

The combination of both saves even more power so no to this, we should fix the issue not disable features because of a single panel having issues.

A PSR2 fix was merged yesterday "drm/i915/psr: Program default IO buffer Wake and Fast Wake" try with that, if just that don't fix try set psr_safest_params=1.
If this do not helps, please file a bug, add debug information and then we proceed from that.

> 
> Tests:
> Booted system with PSR enabled, verified FBC disabled.
> Disabled PSR with disabled (i915.enable_psr=0), verified FBC enabled.
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 6 ++++++
>  drivers/gpu/drm/i915/display/intel_psr.c | 4 +++-
>  2 files changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index 1c26673acb2d..52bc7483adb5 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -1419,6 +1419,12 @@ void intel_fbc_init(struct drm_i915_private *dev_priv)
>  	drm_dbg_kms(&dev_priv->drm, "Sanitized enable_fbc value: %d\n",
>  		    i915_modparams.enable_fbc);
>  
> +	if (i915_modparams.enable_psr) {
> +               i915_modparams.enable_fbc = 0;
> +                DRM_DEBUG_KMS("PSR enabled. FBC no longer needed.  Disable FBC. \n");
> +	}
> +
> +
>  	if (!HAS_FBC(dev_priv)) {
>  		fbc->no_fbc_reason = "unsupported by this chipset";
>  		return;
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index b7a2c102648a..25accfdd5ad3 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1439,8 +1439,10 @@ void intel_psr_init(struct drm_i915_private *dev_priv)
>  	if (!HAS_PSR(dev_priv))
>  		return;
>  
> -	if (!dev_priv->psr.sink_support)
> +	if (!dev_priv->psr.sink_support) {
> +		i915_modparams.enable_psr = 0;
>  		return;
> +	}
>  
>  	if (IS_HASWELL(dev_priv))
>  		/*
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
