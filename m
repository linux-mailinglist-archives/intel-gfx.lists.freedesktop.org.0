Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1642B17416A
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 22:25:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F9006F4D4;
	Fri, 28 Feb 2020 21:25:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26A1C6F4D4
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 21:25:12 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Feb 2020 13:25:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,497,1574150400"; d="scan'208";a="227668571"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga007.jf.intel.com with ESMTP; 28 Feb 2020 13:25:11 -0800
Date: Fri, 28 Feb 2020 13:25:11 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200228212511.GD174531@mdroper-desk1.amr.corp.intel.com>
References: <20200227220101.321671-1-jose.souza@intel.com>
 <20200227220101.321671-9-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200227220101.321671-9-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 09/11] drm/i915/tgl: Restrict
 Wa_1408615072 to A0 stepping
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 27, 2020 at 02:00:59PM -0800, Jos=E9 Roberto de Souza wrote:
> It is fixed in B0 stepping.
> =

> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pm.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index 22aa205793e5..a101d8072b5b 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -6838,8 +6838,9 @@ static void tgl_init_clock_gating(struct drm_i915_p=
rivate *dev_priv)
>  	unsigned int i;
>  =

>  	/* Wa_1408615072:tgl */
> -	intel_uncore_rmw(&dev_priv->uncore, UNSLICE_UNIT_LEVEL_CLKGATE2,
> -			 0, VSUNIT_CLKGATE_DIS_TGL);
> +	if (IS_TGL_REVID(dev_priv, TGL_REVID_A0, TGL_REVID_A0))
> +		intel_uncore_rmw(&dev_priv->uncore, UNSLICE_UNIT_LEVEL_CLKGATE2,
> +				 0, VSUNIT_CLKGATE_DIS_TGL);

I think this workaround is also implemented in the wrong location.  This
is a render engine register (part of the 94D0-951C render forcewake
range on bspec 52078) and part of the MCR range (bspec 52079), so we
should program this in the engine_wa_init rather than the clock gating
function.

The ICL/EHL version (which we based the TGL WA on) is also in the wrong
place for the same reasons.

At some point we should probably audit all the other GT/engine/MCR
registers we're dealing with in the init_clock_gating functions and move
them out to more appropriate places.


Matt

>  =

>  	/* This is not a WA. Enable VD HCP & MFX_ENC powergate */
>  	for (i =3D 0; i < I915_MAX_VCS; i++) {
> -- =

> 2.25.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
