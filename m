Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36BF19FE6F3
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Dec 2024 15:18:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D029410E339;
	Mon, 30 Dec 2024 14:17:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NrNl7RIx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F4A310E339;
 Mon, 30 Dec 2024 14:17:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735568278; x=1767104278;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=svEBRzbgtRY736sPatYVgUj/JGW7+8og519QKgEjyvQ=;
 b=NrNl7RIxeGoTNZuUX6hxZ0H359VSL1rqhBn9TZCZudSZm5VPmd0mREZM
 ayy2ULv5xBYC9bcqlid/brMmiorrQ8WLinWzXu1B/huqjahIzByioCess
 7tMSn0THzYiuzRPDLiuAIjwxPqjmA7WZUU0cmTZAw1UjJjjUlw05vy7tO
 yraXZwLXPnVOZ14Nh1JPwgKWbfr+1bRabMbcuVYrK3d+HuqU8K9cGC12D
 Si6mai1QK5D3qgoR9VTUIP13iZlO/6IrFBgGWU1M4KD7sobGqh0yHlOXw
 qHytkdjLzIQmbgBmBNtEDE5kXtysrYRGZT9rntJYZbOow+Kg42ndG5Cl7 w==;
X-CSE-ConnectionGUID: PFt/CZ1RTw6lh+1Th7OGJg==
X-CSE-MsgGUID: JibEWqhXTuyZXjaiOB3ocA==
X-IronPort-AV: E=McAfee;i="6700,10204,11301"; a="39538707"
X-IronPort-AV: E=Sophos;i="6.12,276,1728975600"; d="scan'208";a="39538707"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2024 06:17:58 -0800
X-CSE-ConnectionGUID: wFuuGGsOSRaMBuT9UtqF7Q==
X-CSE-MsgGUID: Rk4Y3jnxSTO/Q5YSc3T9IA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="131754624"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.167])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2024 06:17:56 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com
Subject: Re: [RFC v2 5/6] drm/i915/scaler: Check if vblank is sufficient for
 scaler
In-Reply-To: <20241217180710.1048355-6-mitulkumar.ajitkumar.golani@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241217180710.1048355-1-mitulkumar.ajitkumar.golani@intel.com>
 <20241217180710.1048355-6-mitulkumar.ajitkumar.golani@intel.com>
Date: Mon, 30 Dec 2024 16:17:53 +0200
Message-ID: <874j2lp84u.fsf@intel.com>
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

On Tue, 17 Dec 2024, Mitul Golani <mitulkumar.ajitkumar.golani@intel.com> wrote:
> Check if vblank is too short for scaler prefill latency.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 22 ++++++++++++++++++++
>  1 file changed, 22 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index d3506e8ccd9b..a538e2b82c12 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2292,6 +2292,27 @@ static int icl_build_plane_wm(struct intel_crtc_state *crtc_state,
>  	return 0;
>  }
>  
> +static int
> +scaler_prefill_time(const struct intel_crtc_state *crtc_state)
> +{
> +	const struct intel_crtc_scaler_state *scaler_state =
> +					&crtc_state->scaler_state;
> +	int scaler_users = scaler_state->scaler_users;
> +	int count = 0;
> +	int hscale = scaler_state->scalers[0].hscale;
> +	int vscale = scaler_state->scalers[0].vscale;
> +
> +	while (scaler_users) {
> +		count += scaler_users & 1;
> +		scaler_users >>= 1;
> +	}

See the hweight* family of functions for counting bits.

BR,
Jani.

> +
> +	if (count > 1)
> +		return (4 * crtc_state->linetime * hscale * vscale);
> +	else
> +		return (4 * crtc_state->linetime);
> +}
> +
>  static bool
>  skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
>  			int wm0_lines, int latency)
> @@ -2302,6 +2323,7 @@ skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
>  	/* FIXME missing scaler and DSC pre-fill time */
>  	return crtc_state->framestart_delay +
>  		intel_usecs_to_scanlines(adjusted_mode, latency) +
> +		scaler_prefill_time(crtc_state) +
>  		wm0_lines >
>  		adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vblank_start;
>  }

-- 
Jani Nikula, Intel
