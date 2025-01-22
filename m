Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29777A1900F
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2025 11:42:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD08410E2FB;
	Wed, 22 Jan 2025 10:42:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LLAXtj5C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BD8610E6B2;
 Wed, 22 Jan 2025 10:42:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737542567; x=1769078567;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=ERcN6r2tS6AQncP5oZ/LvWKA9Tj/B0TFyMGyqBan7w8=;
 b=LLAXtj5CDb7IC4OTVIhSczknkrXGVb34xhN5FeWmBQrk3jEnYODmE2Ub
 A9C+LYEl9G88dWkSiAZ11gE/yBiVz/hBUBA7gIXET1C+wxaw/ogfLsQzx
 J1NoXimo8mzjUKK3E70f24p3YPa4YQIrnXK55Kwjje4uK2vuDAZqzBdIb
 wq15z/xgWspx1o+qzx8DOvj3SZzJrFfJLPYR3bVZyJHcmQYv64/lb2EUV
 kutUB/YGrG0PwWG7sTrGNWCskCoPjK5fzsk88Ach8veNAISZHLlx4k0SW
 sUIEpSSe60qJnsD7zd0diUkaOwjAwUEJBI5x1RxE6f8h7j/ybkRva8IFN Q==;
X-CSE-ConnectionGUID: IoPSYxwXSISr0bV2C1vwGQ==
X-CSE-MsgGUID: tadpDTvlRCOxrY7aSmDbjg==
X-IronPort-AV: E=McAfee;i="6700,10204,11322"; a="48487606"
X-IronPort-AV: E=Sophos;i="6.13,225,1732608000"; d="scan'208";a="48487606"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2025 02:42:43 -0800
X-CSE-ConnectionGUID: eWRakCarS6uy7oo8PRtidw==
X-CSE-MsgGUID: N12AC80tSim5TxhIJLj/AA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="111733237"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.30])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2025 02:42:39 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 santhosh.reddy.guddati@intel.com, jani.saarinen@intel.com
Subject: Re: [PATCH v4 6/6] drm/i915/xe3: introduce a dirty rectangle state
 variable
In-Reply-To: <20250122093006.405711-7-vinod.govindapillai@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250122093006.405711-1-vinod.govindapillai@intel.com>
 <20250122093006.405711-7-vinod.govindapillai@intel.com>
Date: Wed, 22 Jan 2025 12:42:36 +0200
Message-ID: <875xm7p1sz.fsf@intel.com>
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

On Wed, 22 Jan 2025, Vinod Govindapillai <vinod.govindapillai@intel.com> wrote:
> To avoid programming garbage to dirty rectangle registers,
> introduce a state variable to track the validity of the
> dirty rectangle update scenarios. Program the dirty rectangle
> coordinate only if this state variable is valid.
>
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index 033eb4a3eab0..ab8acb1cc090 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -91,6 +91,7 @@ struct intel_fbc_state {
>  	u16 interval;
>  	s8 fence_id;
>  	struct drm_rect dirty_rect;
> +	bool dr_valid;

Please let's try to avoid inventing new acronyms for every little
thing. I don't think we want to be guessing what "dr_valid" means.

Adding context would help:

	struct {
		struct drm_rect rect;
		bool valid;
	} dirty_rect;

Or similar.


>  };
>  
>  struct intel_fbc {
> @@ -1227,6 +1228,9 @@ __intel_fbc_program_dirty_rect(struct intel_dsb *dsb, struct intel_plane *plane)
>  	if (fbc_state->plane != plane)
>  		return;
>  
> +	if (!fbc_state->dr_valid)
> +		return;
> +
>  	intel_de_write_dsb(display, dsb, XE3_FBC_DIRTY_RECT(fbc->id),
>  			   FBC_DIRTY_RECT_START_LINE(fbc_state->dirty_rect.y1) |
>  			   FBC_DIRTY_RECT_END_LINE(fbc_state->dirty_rect.y2));
> @@ -1314,6 +1318,8 @@ intel_fbc_compute_dirty_rect(struct intel_atomic_state *state,
>  		if (!fbc || plane->pipe != crtc->pipe)
>  			continue;
>  
> +		fbc->state.dr_valid = false;
> +
>  		/* If plane not visible, dirty rect might have invalid coordinates */
>  		if (!new_plane_state->uapi.visible)
>  			continue;
> @@ -1323,6 +1329,8 @@ intel_fbc_compute_dirty_rect(struct intel_atomic_state *state,
>  			continue;
>  
>  		__intel_fbc_compute_dirty_rect(plane, old_plane_state, new_plane_state);
> +
> +		fbc->state.dr_valid = true;
>  	}
>  }

-- 
Jani Nikula, Intel
