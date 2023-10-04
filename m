Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 941EC7B85F1
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Oct 2023 18:57:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64A3210E395;
	Wed,  4 Oct 2023 16:57:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 253F110E395
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Oct 2023 16:57:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696438638; x=1727974638;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=bKky8Fk7Z2YY/TDqBsFL+1V/uQTNUvSoe8LoTvAzqeY=;
 b=R6L3WSD2Htph6nKIL8KGeGFqv+Payf72AuADisq7nBmzjiZ7QjbrZKaU
 vvCnpuO3i5ENbC2WXjru4cC3rsQnsjeLNjuL+s0OtqIQtVVh5UITpW0si
 cS2p7xzEJbAV0/BLbBgU4wn6rT+7G2Haq6gIoRKZ83+f5TpacNnUdzbEX
 1N3lc2tyyrA92CZ2+T0NFtQWYOBCBFGHQGa2odiQ1k6MQkOAT/iBN7bbj
 oIlbGJ3OMglC9GeSIjvAveOXlhknYhOh+lefGKE6j3vu1MLIXkgWLFOct
 Um8STnFVNP6LGDq5fxVA/xjRlL68XPnbwqCXlz0zMDa6yT8ZdzP3XpjHs Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="469505302"
X-IronPort-AV: E=Sophos;i="6.03,200,1694761200"; d="scan'208";a="469505302"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 09:57:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="817190180"
X-IronPort-AV: E=Sophos;i="6.03,200,1694761200"; d="scan'208";a="817190180"
Received: from msterni-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.56.48])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 09:57:11 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231004155607.7719-7-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231004155607.7719-1-ville.syrjala@linux.intel.com>
 <20231004155607.7719-7-ville.syrjala@linux.intel.com>
Date: Wed, 04 Oct 2023 19:57:08 +0300
Message-ID: <877co2e36j.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 06/12] drm/i915: Simplify watermark state
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

On Wed, 04 Oct 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> There is never any reason to pass in both the crtc and its state
> as one can always dig out the crtc from its state.

I'm wondering whether we shouldn't just always pass=20

struct intel_atomic_state *state, struct intel_crtc *crtc

to the checker, everywhere, even if that's excessive in some cases. I
think some of the confusion you're fixing in this series comes from
people cargo culting the conventions, and then adding some new
parameters as needed, deviating from the state, crtc pair.

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_modeset_verify.c | 2 +-
>  drivers/gpu/drm/i915/display/skl_watermark.c        | 4 ++--
>  drivers/gpu/drm/i915/display/skl_watermark.h        | 3 +--
>  3 files changed, 4 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c b/driver=
s/gpu/drm/i915/display/intel_modeset_verify.c
> index 47d45ba1e707..bbee79aad0cd 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> @@ -233,7 +233,7 @@ void intel_modeset_verify_crtc(struct intel_crtc *crt=
c,
>  	    !intel_crtc_needs_fastset(new_crtc_state))
>  		return;
>=20=20
> -	intel_wm_state_verify(crtc, new_crtc_state);
> +	intel_wm_state_verify(new_crtc_state);
>  	verify_connector_state(state, crtc);
>  	verify_crtc_state(state, crtc);
>  	intel_shared_dpll_state_verify(state, crtc);
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/d=
rm/i915/display/skl_watermark.c
> index d51cf92c96ae..e7a9fb4b1f6b 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -3134,9 +3134,9 @@ static void skl_wm_get_hw_state_and_sanitize(struct=
 drm_i915_private *i915)
>  	skl_wm_sanitize(i915);
>  }
>=20=20
> -void intel_wm_state_verify(struct intel_crtc *crtc,
> -			   const struct intel_crtc_state *new_crtc_state)
> +void intel_wm_state_verify(const struct intel_crtc_state *new_crtc_state)
>  {
> +	struct intel_crtc *crtc =3D to_intel_crtc(new_crtc_state->uapi.crtc);
>  	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
>  	struct skl_hw_state {
>  		struct skl_ddb_entry ddb[I915_MAX_PLANES];
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/d=
rm/i915/display/skl_watermark.h
> index 18e4b0661cbb..ca4312bf7012 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.h
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.h
> @@ -38,8 +38,7 @@ bool skl_ddb_allocation_overlaps(const struct skl_ddb_e=
ntry *ddb,
>  				 const struct skl_ddb_entry *entries,
>  				 int num_entries, int ignore_idx);
>=20=20
> -void intel_wm_state_verify(struct intel_crtc *crtc,
> -			   const struct intel_crtc_state *new_crtc_state);
> +void intel_wm_state_verify(const struct intel_crtc_state *new_crtc_state=
);
>=20=20
>  void skl_watermark_ipc_init(struct drm_i915_private *i915);
>  void skl_watermark_ipc_update(struct drm_i915_private *i915);

--=20
Jani Nikula, Intel
