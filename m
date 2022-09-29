Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 540DF5EF4C7
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Sep 2022 13:54:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 330E710EA49;
	Thu, 29 Sep 2022 11:54:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B11AD10E5E0
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Sep 2022 11:54:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664452470; x=1695988470;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=xMjTRmD2UEktD80/0qCPPATL4EELTqoaYPRO2irhLEg=;
 b=mqEbIVGj7E2obtq37YHjPmqmzeATdVyGraVNtM+QYgtv+koHXCibr2PP
 IgkwDX1lHaYV1mRcTQi/7+9b/8VqclnmR8+uosWVN1F/0bWJZE5I91aWr
 rjsC/6pp/pvr1oZeW1jac3S1ZMyWSKimbtML3KiWupxT2yTIvq9fmPT7r
 ru3Trn6EDOUeUeSMq0uUKiMar2FujobMvOWzisvWHdCmg0zzOzQVG29IJ
 +eKT+5KBfsl5nCv3YZpMtW6NYCKaBmtkDfVp5GGZOERs479dERlggS0K3
 BNYJ5M8kBABpWKdyKf4TUNHJ8qEF1aH08FVmVEQ4x0Y3IabjjC02pcjgQ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="289034376"
X-IronPort-AV: E=Sophos;i="5.93,355,1654585200"; d="scan'208";a="289034376"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2022 04:54:30 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="573424882"
X-IronPort-AV: E=Sophos;i="5.93,355,1654585200"; d="scan'208";a="573424882"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.153])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2022 04:54:28 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220929071521.26612-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220929071521.26612-1-ville.syrjala@linux.intel.com>
 <20220929071521.26612-2-ville.syrjala@linux.intel.com>
Date: Thu, 29 Sep 2022 14:54:25 +0300
Message-ID: <87h70qxuoe.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 01/10] drm/i915: Remove PLL asserts from
 .load_luts()
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

On Thu, 29 Sep 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> .load_luts() potentially runs from the vblank worker, and is
> under a deadline to complete within the vblank. Thus we can't
> do expesive stuff like talk to the Punit, etc.
>
> To that end get rid of the assert_dsi_pll_enabled() call for
> vlv/chv. We'll just have to trust that the PLL is already enabled
> here.
>
> And I don't think the normal assert_pll_enabled() really buys us
> anything useful on gmch platforms either, so nuke that one too.
> We don't have corresponding asserts in the ilk+ codepaths anyway
> despite the hardware (IIRC) still requiring the clock to be
> enabled when we access the LUT.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Acked-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_color.c | 11 -----------
>  1 file changed, 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm=
/i915/display/intel_color.c
> index 6bda4274eae9..bbc56affb3ec 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -25,9 +25,7 @@
>  #include "intel_color.h"
>  #include "intel_de.h"
>  #include "intel_display_types.h"
> -#include "intel_dpll.h"
>  #include "intel_dsb.h"
> -#include "vlv_dsi_pll.h"
>=20=20
>  struct intel_color_funcs {
>  	int (*color_check)(struct intel_crtc_state *crtc_state);
> @@ -580,11 +578,8 @@ static void i9xx_load_lut_8(struct intel_crtc *crtc,
>  static void i9xx_load_luts(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	const struct drm_property_blob *gamma_lut =3D crtc_state->hw.gamma_lut;
>=20=20
> -	assert_pll_enabled(dev_priv, crtc->pipe);
> -
>  	i9xx_load_lut_8(crtc, gamma_lut);
>  }
>=20=20
> @@ -611,14 +606,8 @@ static void i965_load_lut_10p6(struct intel_crtc *cr=
tc,
>  static void i965_load_luts(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	const struct drm_property_blob *gamma_lut =3D crtc_state->hw.gamma_lut;
>=20=20
> -	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
> -		assert_dsi_pll_enabled(dev_priv);
> -	else
> -		assert_pll_enabled(dev_priv, crtc->pipe);
> -
>  	if (crtc_state->gamma_mode =3D=3D GAMMA_MODE_MODE_8BIT)
>  		i9xx_load_lut_8(crtc, gamma_lut);
>  	else

--=20
Jani Nikula, Intel Open Source Graphics Center
