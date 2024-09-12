Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5FCD976662
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 12:07:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A24310EB42;
	Thu, 12 Sep 2024 10:07:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k6WF+w0U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FD3D10EB42
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2024 10:07:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726135655; x=1757671655;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=yGhOMkv0zdeobzUC/FEug8eRmHBPKQ0ajgg73qpuEKg=;
 b=k6WF+w0UklF1TB4InArgbwwMmll6Mf/OnnN57zWUe57ORVVEVZpbI18O
 UWv7mLmEkVKSburRGVJsfx5MDkt8TwCkE02vn7O6NobFHT2pplL5ZHs0D
 1SKYy+7gVs/qjGLiIIIIGJN/YpdYlHUDBl9VeXeptk3G9dOSLYsMjak6b
 J3DURvQR8m9INrm8kMRpvIU5uAkRAMexcYwPUNALlX8g+2hovsABm3f5W
 FSR5w2ZU9JdHTtNfi+RwUA3zodKl5T3HkLWgyPUnFe05wQiuZuoyyXgIx
 d3VCgLddJWiBtEV60FV/z/2EaVWjh5522bSzszs6qW1FmYoMF7XuoEdNM Q==;
X-CSE-ConnectionGUID: M9Nf0KARTCC1Zfuki26dRg==
X-CSE-MsgGUID: i7987BBCQ8CZb4mE6offcA==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="24851053"
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="24851053"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 03:07:35 -0700
X-CSE-ConnectionGUID: kYeUWKbpSJGLD+KK7xwCCg==
X-CSE-MsgGUID: IOZymK+TTHuda1fOkSNt9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="72027006"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.253])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 03:07:31 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 arun.r.murthy@intel.com, ankit.k.nautiyal@intel.com,
 mitulkumar.ajitkumar.golani@intel.com, Animesh Manna
 <animesh.manna@intel.com>
Subject: Re: [PATCH v10 1/4] drm/i915/lobf: No need to pass connector-state
 on lobf-compute-config.
In-Reply-To: <20240905051841.3012729-2-animesh.manna@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240905051841.3012729-1-animesh.manna@intel.com>
 <20240905051841.3012729-2-animesh.manna@intel.com>
Date: Thu, 12 Sep 2024 13:07:28 +0300
Message-ID: <87jzfhgp7j.fsf@intel.com>
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

On Thu, 05 Sep 2024, Animesh Manna <animesh.manna@intel.com> wrote:
> Connector state is not used in lobf compute config, so remove it.
>
> Fixes: 15438b325987 ("drm/i915/alpm: Add compute config for lobf")

This is refactoring, and not a fix. We don't need to have this
backported.

On the actual change, it's fine. But I do find myself thinking most of
the similar functions on the encoder->compute_config() path should 1) be
all named _compute_config, and 2) have the same parameter set as
encoder->compute_config(), needed or not. Because often you are going to
need something later, and then you end up having to plumb them all the
way the stack to the destination. It's just unnecessary to keep removing
and adding the parameters in the _compute_config() path. (And similarly
for many other encoder hooks.)

BR,
Jani.




> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_alpm.c | 3 +--
>  drivers/gpu/drm/i915/display/intel_alpm.h | 3 +--
>  drivers/gpu/drm/i915/display/intel_dp.c   | 2 +-
>  3 files changed, 3 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
> index 186cf4833f71..f2fea356d28a 100644
> --- a/drivers/gpu/drm/i915/display/intel_alpm.c
> +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
> @@ -266,8 +266,7 @@ bool intel_alpm_compute_params(struct intel_dp *intel_dp,
>  }
>  
>  void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
> -				    struct intel_crtc_state *crtc_state,
> -				    struct drm_connector_state *conn_state)
> +				    struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
>  	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.h b/drivers/gpu/drm/i915/display/intel_alpm.h
> index 8c409b10dce6..a17dfaa5248d 100644
> --- a/drivers/gpu/drm/i915/display/intel_alpm.h
> +++ b/drivers/gpu/drm/i915/display/intel_alpm.h
> @@ -17,8 +17,7 @@ void intel_alpm_init_dpcd(struct intel_dp *intel_dp);
>  bool intel_alpm_compute_params(struct intel_dp *intel_dp,
>  			       const struct intel_crtc_state *crtc_state);
>  void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
> -				    struct intel_crtc_state *crtc_state,
> -				    struct drm_connector_state *conn_state);
> +				    struct intel_crtc_state *crtc_state);
>  void intel_alpm_configure(struct intel_dp *intel_dp,
>  			  const struct intel_crtc_state *crtc_state);
>  void intel_alpm_lobf_debugfs_add(struct intel_connector *connector);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index a1fcedfd404b..86bc6d79279f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3107,7 +3107,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
>  	intel_vrr_compute_config(pipe_config, conn_state);
>  	intel_dp_compute_as_sdp(intel_dp, pipe_config);
>  	intel_psr_compute_config(intel_dp, pipe_config, conn_state);
> -	intel_alpm_lobf_compute_config(intel_dp, pipe_config, conn_state);
> +	intel_alpm_lobf_compute_config(intel_dp, pipe_config);
>  	intel_dp_drrs_compute_config(connector, pipe_config, link_bpp_x16);
>  	intel_dp_compute_vsc_sdp(intel_dp, pipe_config, conn_state);
>  	intel_dp_compute_hdr_metadata_infoframe_sdp(intel_dp, pipe_config, conn_state);

-- 
Jani Nikula, Intel
