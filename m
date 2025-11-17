Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3B8CC64D31
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 16:15:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48B5310E384;
	Mon, 17 Nov 2025 15:15:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KApSYJfr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86C9710E384;
 Mon, 17 Nov 2025 15:15:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763392527; x=1794928527;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=miwKi4m/DAXcWBubuRjiRxHTIaxLyxhv72Zxv/NI7qs=;
 b=KApSYJfrnnsuA3hNPp+YpR1LePC80GW1V7bRsNMoQ8ZaaZROp97etGFB
 5vaJZuwIy+FapZrgZviIa6zfdGmA3xyyRuqhNBiJLtvIyNvzgYx2im+6u
 u21FEwAkLpteR3GppGYNw7T+GYNMZ5PB8/OnYz+13subC8tGSW+P3wszg
 rxIrW9u5TUpIDWDHQFn8MoFq270jvZ/ugF2cFOhduATA1Fq2Car0SpzsI
 oh30qhFWfPAUPqo+aL3prD4slPY7B5mwRu2rEgyqgAlMNC3NPJib/4GQS
 FS+VhFxUI9AaDrZ7RH3bEB2DlsIE0zdL2p0q6JSPN9FcIl1kxPkeRM+2b Q==;
X-CSE-ConnectionGUID: gc7fBcg3R1S8jJYMdLBeVQ==
X-CSE-MsgGUID: 1KCj7kvQSC6TmP8av5FLxw==
X-IronPort-AV: E=McAfee;i="6800,10657,11616"; a="82785420"
X-IronPort-AV: E=Sophos;i="6.19,312,1754982000"; d="scan'208";a="82785420"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 07:15:26 -0800
X-CSE-ConnectionGUID: lE/zpQgRTvW7WmhfDE6P9g==
X-CSE-MsgGUID: LmV2OzrBT6y1NVBX+BOPow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,312,1754982000"; d="scan'208";a="194796403"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.42])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 07:15:24 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Animesh Manna <animesh.manna@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>
Subject: Re: [RFC 1/8] drm/i915/cmtg: enable cmtg LNL onwards
In-Reply-To: <20251117114216.1522615-2-animesh.manna@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251117114216.1522615-1-animesh.manna@intel.com>
 <20251117114216.1522615-2-animesh.manna@intel.com>
Date: Mon, 17 Nov 2025 17:15:20 +0200
Message-ID: <233b0f125ed2caa3f8c06de970636c0d92ca79af@intel.com>
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

On Mon, 17 Nov 2025, Animesh Manna <animesh.manna@intel.com> wrote:
> Introduce a flag for cmtg. LNL onwards CMTG support will be added.
> Set the flag as per DISPLAY_VER() check.
>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_types.h | 3 +++
>  drivers/gpu/drm/i915/display/intel_dp.c            | 5 +++++
>  2 files changed, 8 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 38702a9e0f50..7b8343755c90 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1351,6 +1351,9 @@ struct intel_crtc_state {
>  
>  	struct drm_rect psr2_su_area;
>  
> +	/* CMTG Enable */

The comment is useless, it's literally the same as the member name.

> +	bool enable_cmtg;

Please let's add this stuff in sub-structs, we should do it more in
general:

	struct {
		bool enable;
        } cmtg;

> +
>  	/* Variable Refresh Rate state */
>  	struct {
>  		bool enable, in_range;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 0ec82fcbcf48..3f7da4c08665 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3421,6 +3421,11 @@ intel_dp_compute_config(struct intel_encoder *encoder,
>  	intel_dp_compute_vsc_sdp(intel_dp, pipe_config, conn_state);
>  	intel_dp_compute_hdr_metadata_infoframe_sdp(intel_dp, pipe_config, conn_state);
>  
> +	if(DISPLAY_VER(display) >= 15 && intel_dp_is_edp(intel_dp)) {
> +		pipe_config->enable_cmtg = true;
> +		drm_dbg_kms(display->drm,"ANI-DBG: intel_dp_compute_config\n");

Please don't leave personal debug stuff even in RFC code.

> +	}
> +
>  	return intel_dp_tunnel_atomic_compute_stream_bw(state, intel_dp, connector,
>  							pipe_config);
>  }

-- 
Jani Nikula, Intel
