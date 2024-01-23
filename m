Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CAB508398C2
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jan 2024 19:54:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4133310E5C9;
	Tue, 23 Jan 2024 18:54:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 611BB10E5C9
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jan 2024 18:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706036062; x=1737572062;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=JvYxA8Jeks5h7NHC/yG8zL82VLF7RigyZ4eZSJwXPOE=;
 b=aELwg87QjdhJIhbrC9Vc0WGXM5piNC5mDZJacNcwSCIxLTpuXtlaO80M
 6oqktflWA9E4BcGb2xGd0+1DlGClIYZ0xG5ncj6XJrQZOMk8vyZJlKI06
 mzy8Smtyepg7Ikr3/6YorZXwWsPIJytM9J3/6DjyW3bsjy7LMbCgclmzX
 hOut1HwGzPm6bAndkptplvSPc4QCzT6Sx6eFPohzUkNoPpk6gkY4ORtO5
 wdMziglkzE12/q35Onjw6FQYudV7K4iwu/zBBQFGGGVJrz3ZB9L0y46mk
 bVVoaAN5BoghPS+q63opCVsJrF5xlqhM8mab0Vsz0Y5T5iHbkr687J/Ar w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="8733288"
X-IronPort-AV: E=Sophos;i="6.05,215,1701158400"; 
   d="scan'208";a="8733288"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2024 10:54:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="856420795"
X-IronPort-AV: E=Sophos;i="6.05,215,1701158400"; d="scan'208";a="856420795"
Received: from pzsolt-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.40.183])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2024 10:53:44 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v2 1/3] drm/i915: Include the PLL name in the debug
 messages
In-Reply-To: <20240123093137.9133-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240123093137.9133-1-ville.syrjala@linux.intel.com>
Date: Tue, 23 Jan 2024 20:53:42 +0200
Message-ID: <875xzjnao9.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Tue, 23 Jan 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Make the log easier to parse by including the name of the PLL
> in the debug prints regarding said PLL.

On the series,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 39 ++++++++++---------
>  1 file changed, 20 insertions(+), 19 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/=
drm/i915/display/intel_dpll_mgr.c
> index 7a6f777eb80f..ce97677d44f0 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -4475,25 +4475,25 @@ verify_single_dpll_state(struct drm_i915_private =
*i915,
>  	u8 pipe_mask;
>  	bool active;
>=20=20
> -	drm_dbg_kms(&i915->drm, "%s\n", pll->info->name);
> -
>  	active =3D intel_dpll_get_hw_state(i915, pll, &dpll_hw_state);
>=20=20
>  	if (!(pll->info->flags & INTEL_DPLL_ALWAYS_ON)) {
>  		I915_STATE_WARN(i915, !pll->on && pll->active_mask,
> -				"pll in active use but not on in sw tracking\n");
> +				"%s: pll in active use but not on in sw tracking\n",
> +				pll->info->name);
>  		I915_STATE_WARN(i915, pll->on && !pll->active_mask,
> -				"pll is on but not used by any active pipe\n");
> +				"%s: pll is on but not used by any active pipe\n",
> +				pll->info->name);
>  		I915_STATE_WARN(i915, pll->on !=3D active,
> -				"pll on state mismatch (expected %i, found %i)\n",
> -				pll->on, active);
> +				"%s: pll on state mismatch (expected %i, found %i)\n",
> +				pll->info->name, pll->on, active);
>  	}
>=20=20
>  	if (!crtc) {
>  		I915_STATE_WARN(i915,
>  				pll->active_mask & ~pll->state.pipe_mask,
> -				"more active pll users than references: 0x%x vs 0x%x\n",
> -				pll->active_mask, pll->state.pipe_mask);
> +				"%s: more active pll users than references: 0x%x vs 0x%x\n",
> +				pll->info->name, pll->active_mask, pll->state.pipe_mask);
>=20=20
>  		return;
>  	}
> @@ -4502,21 +4502,22 @@ verify_single_dpll_state(struct drm_i915_private =
*i915,
>=20=20
>  	if (new_crtc_state->hw.active)
>  		I915_STATE_WARN(i915, !(pll->active_mask & pipe_mask),
> -				"pll active mismatch (expected pipe %c in active mask 0x%x)\n",
> -				pipe_name(crtc->pipe), pll->active_mask);
> +				"%s: pll active mismatch (expected pipe %c in active mask 0x%x)\n",
> +				pll->info->name, pipe_name(crtc->pipe), pll->active_mask);
>  	else
>  		I915_STATE_WARN(i915, pll->active_mask & pipe_mask,
> -				"pll active mismatch (didn't expect pipe %c in active mask 0x%x)\n",
> -				pipe_name(crtc->pipe), pll->active_mask);
> +				"%s: pll active mismatch (didn't expect pipe %c in active mask 0x%x)=
\n",
> +				pll->info->name, pipe_name(crtc->pipe), pll->active_mask);
>=20=20
>  	I915_STATE_WARN(i915, !(pll->state.pipe_mask & pipe_mask),
> -			"pll enabled crtcs mismatch (expected 0x%x in 0x%x)\n",
> -			pipe_mask, pll->state.pipe_mask);
> +			"%s: pll enabled crtcs mismatch (expected 0x%x in 0x%x)\n",
> +			pll->info->name, pipe_mask, pll->state.pipe_mask);
>=20=20
>  	I915_STATE_WARN(i915,
>  			pll->on && memcmp(&pll->state.hw_state, &dpll_hw_state,
>  					  sizeof(dpll_hw_state)),
> -			"pll hw state mismatch\n");
> +			"%s: pll hw state mismatch\n",
> +			pll->info->name);
>  }
>=20=20
>  void intel_shared_dpll_state_verify(struct intel_atomic_state *state,
> @@ -4538,11 +4539,11 @@ void intel_shared_dpll_state_verify(struct intel_=
atomic_state *state,
>  		struct intel_shared_dpll *pll =3D old_crtc_state->shared_dpll;
>=20=20
>  		I915_STATE_WARN(i915, pll->active_mask & pipe_mask,
> -				"pll active mismatch (didn't expect pipe %c in active mask (0x%x))\n=
",
> -				pipe_name(crtc->pipe), pll->active_mask);
> +				"%s: pll active mismatch (didn't expect pipe %c in active mask (0x%x=
))\n",
> +				pll->info->name, pipe_name(crtc->pipe), pll->active_mask);
>  		I915_STATE_WARN(i915, pll->state.pipe_mask & pipe_mask,
> -				"pll enabled crtcs mismatch (found pipe %c in enabled mask (0x%x))\n=
",
> -				pipe_name(crtc->pipe), pll->state.pipe_mask);
> +				"%s: pll enabled crtcs mismatch (found pipe %c in enabled mask (0x%x=
))\n",
> +				pll->info->name, pipe_name(crtc->pipe), pll->state.pipe_mask);
>  	}
>  }

--=20
Jani Nikula, Intel
