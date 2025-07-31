Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BFB1B16E70
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Jul 2025 11:21:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C553510E743;
	Thu, 31 Jul 2025 09:21:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CvGoMDRb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03F7F10E72E
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Jul 2025 09:21:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753953695; x=1785489695;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=NthGVBUusAysEWEBAc2S54YhSg5IqSMo8DjpLjuWl28=;
 b=CvGoMDRb3G21xPaJsBa0WVt/wcE3gUu+gaa5RaYWerrOEnjCVK0Mz7ey
 Fk/4SKgxZIOlozLQPA/17QLsN79gkC9p7lqTbcXWnTMK40fXmHFjbNS3P
 ARe9NqwVncH9yxsVbPCHh8yX68bzfPfqGEblN2QTKNYYrmweY8YhGJQAb
 H70sw5AeZ//yNGXYjlsluD13YOYYjycCiobpkIc4qm0KPMKMTAF3FkvBp
 b4b9TUz1roKZsUONPyeHTOaAKhGQFDAzqreQxLLtU9hdkIQfrsxRyrKJg
 kte5ZeLUcbmNHRKT74hNge+hP97EuPc3tlvc4cFHsM6E4LbvxrZbXwvgW A==;
X-CSE-ConnectionGUID: 1T9N8PwXRDiMg9D6AU6nlw==
X-CSE-MsgGUID: t/bAqPprTumB/9ce/QyZWw==
X-IronPort-AV: E=McAfee;i="6800,10657,11507"; a="55338962"
X-IronPort-AV: E=Sophos;i="6.16,353,1744095600"; d="scan'208";a="55338962"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 02:21:35 -0700
X-CSE-ConnectionGUID: 3azaZ9o+SpW2eKLkKgi60A==
X-CSE-MsgGUID: d6QnBNcrS0iRZDMh6UvcnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,353,1744095600"; d="scan'208";a="163577909"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.108])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 02:21:34 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Nemesa Garg <nemesa.garg@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: Re: [PATCH] drm/i915/display: WA_14011503117
In-Reply-To: <20250731084900.1684276-1-nemesa.garg@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250731084900.1684276-1-nemesa.garg@intel.com>
Date: Thu, 31 Jul 2025 12:21:29 +0300
Message-ID: <db4873fb3468cf079ec8fd4fea14a668a1b554ad@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Thu, 31 Jul 2025, Nemesa Garg <nemesa.garg@intel.com> wrote:
> Before enabling the scaler mask the bit and after
> enabling the scaler, in the later stage after
> waiting for a frame unmask the PS_ECC bit and
> ERR_FATAL_MASK bit.
> Unmasking of DISPLAY_ERR_FATAL_MASK bit is use
> for validation purpose. There is no functional
> imapct.
>
> v2: Remove intel_display_need_wa [Jani]

Ugh, this is not what I meant.

Do use intel_display_wa(display, 14011503117).

Do not add static bool intel_display_needs_wa_14011503117() inside
intel_display_wa.c.

BR,
Jani.


>     Optimise the ecc_unmask call[Animesh]
>
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c |  5 ++++
>  drivers/gpu/drm/i915/display/skl_scaler.c    | 28 ++++++++++++++++++++
>  drivers/gpu/drm/i915/display/skl_scaler.h    |  4 +++
>  3 files changed, 37 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 7035c1fc9033..08cc747638ca 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1081,6 +1081,11 @@ static void intel_post_plane_update(struct intel_atomic_state *state,
>  	if (audio_enabling(old_crtc_state, new_crtc_state))
>  		intel_encoders_audio_enable(state, crtc);
>  
> +	if (DISPLAY_VER(display) == 13) {
> +		if (old_crtc_state->pch_pfit.enabled != new_crtc_state->pch_pfit.enabled)
> +			adl_scaler_ecc_unmask(new_crtc_state);
> +	}
> +
>  	intel_alpm_post_plane_update(state, crtc);
>  
>  	intel_psr_post_plane_update(state, crtc);
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
> index 4cc55f4e1f9f..cadfcb549ae8 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -762,6 +762,9 @@ void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
>  			crtc_state->scaler_state.scaler_id < 0))
>  		return;
>  
> +	if (DISPLAY_VER(display) == 13)
> +		adl_scaler_ecc_mask(crtc_state);
> +
>  	drm_rect_init(&src, 0, 0,
>  		      drm_rect_width(&crtc_state->pipe_src) << 16,
>  		      drm_rect_height(&crtc_state->pipe_src) << 16);
> @@ -938,3 +941,28 @@ void skl_scaler_get_config(struct intel_crtc_state *crtc_state)
>  	else
>  		scaler_state->scaler_users &= ~(1 << SKL_CRTC_INDEX);
>  }
> +
> +void adl_scaler_ecc_mask(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +
> +	if (!crtc_state->pch_pfit.enabled)
> +		return;
> +
> +	intel_de_write(display, XELPD_DISPLAY_ERR_FATAL_MASK, ~0);
> +}
> +
> +void adl_scaler_ecc_unmask(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	const struct intel_crtc_scaler_state *scaler_state =
> +		&crtc_state->scaler_state;
> +	int id;
> +
> +	if (!scaler_state && scaler_state->scaler_id == -1)
> +		return;
> +
> +	intel_de_write_fw(display, SKL_PS_ECC_STAT(crtc->pipe, id), 1);
> +	intel_de_write(display, XELPD_DISPLAY_ERR_FATAL_MASK, 0);
> +}
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.h b/drivers/gpu/drm/i915/display/skl_scaler.h
> index 692716dd7616..79183d9ecc3b 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.h
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.h
> @@ -44,4 +44,8 @@ skl_scaler_mode_valid(struct intel_display *display,
>  		      enum intel_output_format output_format,
>  		      int num_joined_pipes);
>  
> +void adl_scaler_ecc_mask(const struct intel_crtc_state *crtc_state);
> +
> +void adl_scaler_ecc_unmask(const struct intel_crtc_state *crtc_state);
> +
>  #endif

-- 
Jani Nikula, Intel
