Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 371E38AC608
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 09:54:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A6AE10F81D;
	Mon, 22 Apr 2024 07:54:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SmkUrrGt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D363F10F497
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Apr 2024 07:54:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713772479; x=1745308479;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=J2WvQatJoKsG7PdGjUiwnhu4YOznFaZSeILunrpNnBo=;
 b=SmkUrrGtutS6EI/ivFvpQWaEfd3HTWxr5SCk3Spe2lglyOZ5uI/uSkKY
 wYrqoMMDVBv0ctZj/a3aoNnlBCxTkuxJRX6ibtDuMIVmWfQv/Duq/lHea
 dpMToRjNT81+dj7Zhkyo/1PuvSkf/vKklurR48X7ev5viNlVEQtFb88da
 9v+dL+NKSYJgsT7+EbbkPGfh+ln82RjgM8dhV/Uv6ZpdMs195xBY7Xiss
 ivpgxqIhH9MTOAV3anJIFmkxFiXwIEbxIdlC3l55ccN7/xebv7w3wOYKA
 f+UI0z8yKlKzePVz1qt/Djl1rRQ7HSuikIkNQoIKrNOCwF9AeE1MvCWYF Q==;
X-CSE-ConnectionGUID: HG2PX8K3QKi3TBqwZ8oD2Q==
X-CSE-MsgGUID: Qk3RW6ctStSuoVTest0Gew==
X-IronPort-AV: E=McAfee;i="6600,9927,11051"; a="9162304"
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; 
   d="scan'208";a="9162304"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 00:54:38 -0700
X-CSE-ConnectionGUID: RZ4J32rlT4KRROffzZWctw==
X-CSE-MsgGUID: qxkF+716T4ukYXiB815mTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="23985693"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 00:54:36 -0700
Date: Mon, 22 Apr 2024 10:54:29 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
Cc: intel-gfx@lists.freedesktop.org, ville.syrjala@intel.com,
 jani.saarinen@intel.com
Subject: Re: [PATCH v10 6/6] drm/i915/display: force qgv check after the hw
 state readout
Message-ID: <ZiYXtYHSiEe4+i87@intel.com>
References: <20240405113533.338553-1-vinod.govindapillai@intel.com>
 <20240405113533.338553-7-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240405113533.338553-7-vinod.govindapillai@intel.com>
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

On Fri, Apr 05, 2024 at 02:35:33PM +0300, Vinod Govindapillai wrote:
> The current intel_bw_atomic_check do not check the possbility
> of a sagv configuration change after the hw state readout.
> Hence cannot update the sagv configuration until some other
> relevant changes like data rates, number of planes etc. happen.
> Introduce a flag to force qgv check in such cases.
> 
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>

Hmmm.. the whole point of that series is actually to put HW/SW
in sync, before we actually are able to calculate the real requirements.

When we initially for QGV/PSF GV to the highest point(thus disabling SAGV),
we exactly want to make sure that HW/SW are in sync(which wasn't the case
before that). Then later when the real plane bw requirements are calculated,
we can possibly relax the QGV point requirements, enabling more points.

I don't see why we need to force the recalculation here.

Or am I missing something?

Stan

> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 8 ++++++--
>  drivers/gpu/drm/i915/display/intel_bw.h | 6 ++++++
>  2 files changed, 12 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index 6fb228a1a28f..1b190be745a0 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -755,6 +755,7 @@ void intel_bw_crtc_update(struct intel_bw_state *bw_state,
>  		intel_bw_crtc_data_rate(crtc_state);
>  	bw_state->num_active_planes[crtc->pipe] =
>  		intel_bw_crtc_num_active_planes(crtc_state);
> +	bw_state->force_check_qgv = true;
>  
>  	drm_dbg_kms(&i915->drm, "pipe %c data rate %u num active planes %u\n",
>  		    pipe_name(crtc->pipe),
> @@ -1339,8 +1340,9 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
>  	new_bw_state = intel_atomic_get_new_bw_state(state);
>  
>  	if (new_bw_state &&
> -	    intel_can_enable_sagv(i915, old_bw_state) !=
> -	    intel_can_enable_sagv(i915, new_bw_state))
> +	    (intel_can_enable_sagv(i915, old_bw_state) !=
> +	     intel_can_enable_sagv(i915, new_bw_state) ||
> +	     new_bw_state->force_check_qgv))
>  		changed = true;
>  
>  	/*
> @@ -1354,6 +1356,8 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
>  	if (ret)
>  		return ret;
>  
> +	new_bw_state->force_check_qgv = false;
> +
>  	return 0;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i915/display/intel_bw.h
> index fa1e924ec961..161813cca473 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.h
> +++ b/drivers/gpu/drm/i915/display/intel_bw.h
> @@ -47,6 +47,12 @@ struct intel_bw_state {
>  	 */
>  	u16 qgv_points_mask;
>  
> +	/*
> +	 * Flag to force the QGV comparison in atomic check right after the
> +	 * hw state readout
> +	 */
> +	bool force_check_qgv;
> +
>  	int min_cdclk[I915_MAX_PIPES];
>  	unsigned int data_rate[I915_MAX_PIPES];
>  	u8 num_active_planes[I915_MAX_PIPES];
> -- 
> 2.34.1
> 
