Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4E021C0B72
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 03:03:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 926296EA58;
	Fri,  1 May 2020 01:03:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C35646EA58
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 May 2020 01:03:11 +0000 (UTC)
IronPort-SDR: TPiSYbMQbgbGsoy3++ZSmqvleQg1MzsJcgbwvDFFj3nLSLFHFMu69/hAIe1oqTZqCv8KWphRLl
 bmuT/tIgv6DA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2020 18:03:11 -0700
IronPort-SDR: YP7GDLdLWRztZaG2sG7rPv4/+bP5t47e86OPU2+AtriAWuwgf+Lx8sqn9wYaIS3YjyDF4PSPIx
 byeUSQ50goPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,337,1583222400"; d="scan'208";a="433176039"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga005.jf.intel.com with ESMTP; 30 Apr 2020 18:03:10 -0700
Date: Thu, 30 Apr 2020 18:03:10 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200501010310.GG188376@mdroper-desk1.amr.corp.intel.com>
References: <20200429101034.8208-1-ville.syrjala@linux.intel.com>
 <20200429101034.8208-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429101034.8208-2-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 01/12] drm/i915/fbc: Require linear fb
 stride to be multiple of 512 bytes on gen9/glk
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

On Wed, Apr 29, 2020 at 01:10:23PM +0300, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Display WA #1105 says that FBC requires PLANE_STRIDE to be a multiple
> of 512 bytes on gen9 and glk.
> =

> This is definitely true for glk as certain tests (such as
> igt/kms_big_fb/linear-16bpp-rotate-0) are now failing when the
> display resolution results in a plane stride which is not a
> multiple of 512 bytes.
> =

> Curiously I was not able to reproduce this on a KBL. First I
> suspected that our use of the FBC override stride explain this,
> but after trying to use the override stride on glk the test
> still failed. I did try both the old CHICKEN_MISC_4 way and
> the new FBC_CHICKEN way, neither had any effect on the result.
> =

> Anyways, we need this at least on glk. But let's trust the spec
> and apply the w/a for all gen9 as well, despite being unable to
> reproduce the problem.
> =

> Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> Fixes: 691f7ba58d52 ("drm/i915/display/fbc: Make fences a nice-to-have fo=
r GEN9+")
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i=
915/display/intel_fbc.c
> index c6afa10e814c..7194f9bc62c5 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -564,7 +564,7 @@ void intel_fbc_cleanup_cfb(struct drm_i915_private *d=
ev_priv)
>  }
>  =

>  static bool stride_is_valid(struct drm_i915_private *dev_priv,
> -			    unsigned int stride)
> +			    u64 modifier, unsigned int stride)
>  {
>  	/* This should have been caught earlier. */
>  	if (drm_WARN_ON_ONCE(&dev_priv->drm, (stride & (64 - 1)) !=3D 0))
> @@ -580,6 +580,11 @@ static bool stride_is_valid(struct drm_i915_private =
*dev_priv,
>  	if (IS_GEN(dev_priv, 4) && !IS_G4X(dev_priv) && stride < 2048)
>  		return false;
>  =

> +	/* Display WA #1105: skl,bxt,kbl,cfl,glk */
> +	if (IS_GEN(dev_priv, 9) &&
> +	    modifier =3D=3D DRM_FORMAT_MOD_LINEAR && stride & 511)

Might be slightly more readable to use !IS_ALIGNED(stride, 512), but
either way,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> +		return false;
> +
>  	if (stride > 16384)
>  		return false;
>  =

> @@ -810,7 +815,7 @@ static bool intel_fbc_can_activate(struct intel_crtc =
*crtc)
>  		return false;
>  	}
>  =

> -	if (!stride_is_valid(dev_priv, cache->fb.stride)) {
> +	if (!stride_is_valid(dev_priv, cache->fb.modifier, cache->fb.stride)) {
>  		fbc->no_fbc_reason =3D "framebuffer stride not supported";
>  		return false;
>  	}
> -- =

> 2.24.1
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
