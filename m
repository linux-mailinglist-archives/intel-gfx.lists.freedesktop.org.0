Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39CC094BA3B
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2024 11:58:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC29810E6B4;
	Thu,  8 Aug 2024 09:58:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QdKfitLr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A666C10E6B3;
 Thu,  8 Aug 2024 09:58:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723111097; x=1754647097;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=F53GrtQ/mMCcCGLM28Cv+FjNrTERRTlmnZxoE9jJoDE=;
 b=QdKfitLr+Sz1ez+k7MfTVAF0bS0OJo2yCBhECqPUc6VdlTsDnHUEgpKF
 FBx8TjIXs3tschZqqf7a8OdPw9ukU28Mf1Kstv4XzA5S92i406CZ1BqtJ
 hkMPaNrPUH3w91HH9z7Zpjkok+GFP3GrHQ5XQCv8TeZI1O00PPJxMQFjs
 YnDSw6laSSJlZXEahZ+ObWwGxAyAso+9gDYnUF/GIJG26f5je1HzKrfEJ
 B/HPHYqPovWMrJ80DTunPqVrftx+TLrDL35Yh5rDyU6RPjSWH4E/KkOiX
 P1BXVG90KpCWwGkhF0j5X0hl1Axeb2RLHx7u4ChNs+n+9kWx6FZM5GL0v Q==;
X-CSE-ConnectionGUID: Pnjm7ayRSDe5TS/ZHgDwfQ==
X-CSE-MsgGUID: uURU7urOQRK/gSFwYpl9Fw==
X-IronPort-AV: E=McAfee;i="6700,10204,11157"; a="25097809"
X-IronPort-AV: E=Sophos;i="6.09,272,1716274800"; d="scan'208";a="25097809"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2024 02:58:17 -0700
X-CSE-ConnectionGUID: wV9gQ8Y7SYuUj0z6hAuG7w==
X-CSE-MsgGUID: l6txg6dkRYa0kXUpJXrrzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,272,1716274800"; d="scan'208";a="62010032"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.162])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2024 02:58:15 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, ankit.k.nautiyal@intel.com
Subject: Re: [RFC] Add AS_SDP to fastset
In-Reply-To: <20240808094849.1299028-1-mitulkumar.ajitkumar.golani@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240808094849.1299028-1-mitulkumar.ajitkumar.golani@intel.com>
Date: Thu, 08 Aug 2024 12:58:12 +0300
Message-ID: <877ccr49qj.fsf@intel.com>
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

On Thu, 08 Aug 2024, Mitul Golani <mitulkumar.ajitkumar.golani@intel.com> wrote:
> Add full modeset being triggered during VRR enable/disable, specially
> when panel has Adaptive sync SDP suypport.

I don't understand what that is trying to say.

BR,
Jani.

>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 2755ebbbb9d2..b41ea78d4c89 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5433,7 +5433,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  	PIPE_CONF_CHECK_INFOFRAME(hdmi);
>  	PIPE_CONF_CHECK_INFOFRAME(drm);
>  	PIPE_CONF_CHECK_DP_VSC_SDP(vsc);
> -	PIPE_CONF_CHECK_DP_AS_SDP(as_sdp);
> +	if(!fastset)
> +		PIPE_CONF_CHECK_DP_AS_SDP(as_sdp);
>  
>  	PIPE_CONF_CHECK_X(sync_mode_slaves_mask);
>  	PIPE_CONF_CHECK_I(master_transcoder);

-- 
Jani Nikula, Intel
