Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3973A7B9D34
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Oct 2023 15:08:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34B4310E3F3;
	Thu,  5 Oct 2023 13:08:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3402F10E3F3
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Oct 2023 13:08:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696511327; x=1728047327;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=drZhNZS55yrbyOnwyOCopjn/owR3oUc+hrdAkzxU0W4=;
 b=BCpf8BohkbkqefcPjzedGWHhL8k6iCMKPD0nwVkJoEZqAFyV0eps681g
 /+mXFtn1KFHj2l96Rd7JAryYrBUs00tasa/qySWLXbpwanSsXdtkrEMPs
 tYnkUcM/Jq8Xvw61s8qytPKuql4bThg5MIHKr6hRz0XGNjL7dTF/W9Vxg
 i76HGJlk1E2UQWt82w3wQf7Zn/PPbj3qU9H5C2ZO4NyIJ0idCZV657/fP
 +QIqhYSJPvrFUzyV90TmTdR24PoFsGte/OrWNMsRiL6SSa+4G8Dm/OYik
 qv3Ifh8epjLQ5Wp5p2MfeBFVzpM19t1MOojRJsj1xpO1IRUH5IJydhwIT g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="5051587"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; 
   d="scan'208";a="5051587"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 06:08:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="1083016037"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="1083016037"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.162])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 06:08:45 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231005122713.3531-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231004155607.7719-7-ville.syrjala@linux.intel.com>
 <20231005122713.3531-1-ville.syrjala@linux.intel.com>
Date: Thu, 05 Oct 2023 16:08:42 +0300
Message-ID: <87edi9cj39.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 06/12] drm/i915: Simplify watermark state
 checker calling convention
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

On Thu, 05 Oct 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> There is never any reason to pass in both the crtc and its state
> as one can always dig out the crtc from its state. But for more
> consistency across the whole state checker let's just pass the
> overall atomic state+crtc here as well.
>
> v2: Also pass state+crtc here (Jani)
>
> Reviewed-by: Jani Nikula <jani.nikula@intel.com> #v1

Yup.

> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_modeset_verify.c | 2 +-
>  drivers/gpu/drm/i915/display/skl_watermark.c        | 8 +++++---
>  drivers/gpu/drm/i915/display/skl_watermark.h        | 4 ++--
>  3 files changed, 8 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c b/driver=
s/gpu/drm/i915/display/intel_modeset_verify.c
> index 47d45ba1e707..e08c1aa25c4d 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> @@ -233,7 +233,7 @@ void intel_modeset_verify_crtc(struct intel_crtc *crt=
c,
>  	    !intel_crtc_needs_fastset(new_crtc_state))
>  		return;
>=20=20
> -	intel_wm_state_verify(crtc, new_crtc_state);
> +	intel_wm_state_verify(state, crtc);
>  	verify_connector_state(state, crtc);
>  	verify_crtc_state(state, crtc);
>  	intel_shared_dpll_state_verify(state, crtc);
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/d=
rm/i915/display/skl_watermark.c
> index d51cf92c96ae..99b8ccdc3dfa 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -3134,10 +3134,12 @@ static void skl_wm_get_hw_state_and_sanitize(stru=
ct drm_i915_private *i915)
>  	skl_wm_sanitize(i915);
>  }
>=20=20
> -void intel_wm_state_verify(struct intel_crtc *crtc,
> -			   const struct intel_crtc_state *new_crtc_state)
> +void intel_wm_state_verify(struct intel_atomic_state *state,
> +			   struct intel_crtc *crtc)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> +	struct drm_i915_private *i915 =3D to_i915(state->base.dev);
> +	const struct intel_crtc_state *new_crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
>  	struct skl_hw_state {
>  		struct skl_ddb_entry ddb[I915_MAX_PLANES];
>  		struct skl_ddb_entry ddb_y[I915_MAX_PLANES];
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/d=
rm/i915/display/skl_watermark.h
> index 18e4b0661cbb..fb0da36fd3ec 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.h
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.h
> @@ -38,8 +38,8 @@ bool skl_ddb_allocation_overlaps(const struct skl_ddb_e=
ntry *ddb,
>  				 const struct skl_ddb_entry *entries,
>  				 int num_entries, int ignore_idx);
>=20=20
> -void intel_wm_state_verify(struct intel_crtc *crtc,
> -			   const struct intel_crtc_state *new_crtc_state);
> +void intel_wm_state_verify(struct intel_atomic_state *state,
> +			   struct intel_crtc *crtc);
>=20=20
>  void skl_watermark_ipc_init(struct drm_i915_private *i915);
>  void skl_watermark_ipc_update(struct drm_i915_private *i915);

--=20
Jani Nikula, Intel
