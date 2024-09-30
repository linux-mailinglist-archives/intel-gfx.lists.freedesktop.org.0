Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D7D398AAAE
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2024 19:10:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DE2F10E109;
	Mon, 30 Sep 2024 17:10:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lfOkZODo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9DFC10E109;
 Mon, 30 Sep 2024 17:10:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727716236; x=1759252236;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=KVzRFTicoMDaPfdNi47cwQtlQtHB9Y0wqcvkmMk3sWk=;
 b=lfOkZODo5aXg4WoRlyA16uMgOXKkGGlSpGE5CBhC47dO8XgsG7hfEYIG
 Psb0d3agrHxhOiIAB1FgqOZgBfVgOIFIljAFIFEMG2srBxMiNWOZSqdTL
 tvT1J1L3vKJlzcxRBWBXuqQs4bjVv0FkxAkzEo/d7u5bDpgUFJrBApO3N
 EZHRRghlNxAK2lYBH4vAxloTC475ZlAUv4ykLVLaBrLIKxc3zEL/tsB1g
 VBEJfzN4sfqjWpZGvlXDLlQq2dzw9LneRuHewGaQoV2OpSRl92HXI4ZA/
 DWETxbCEcXGZwJnvtGYwHX/L2JDwMoFu0h/J5pUt+TFBXXbTzwFpWREmR Q==;
X-CSE-ConnectionGUID: ApmGnZfyTFCgh8Q3nmsi4g==
X-CSE-MsgGUID: YaZhJ54uSHSv0Pf5xFBiXA==
X-IronPort-AV: E=McAfee;i="6700,10204,11211"; a="44277473"
X-IronPort-AV: E=Sophos;i="6.11,166,1725346800"; d="scan'208";a="44277473"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 10:10:35 -0700
X-CSE-ConnectionGUID: iV3ox8J1QR62HfcXEfbrRg==
X-CSE-MsgGUID: YzFQZZD9Qtuu+/9wVL8a2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,166,1725346800"; d="scan'208";a="73491841"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 30 Sep 2024 10:10:33 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 30 Sep 2024 20:10:32 +0300
Date: Mon, 30 Sep 2024 20:10:32 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 ankit.k.nautiyal@intel.com
Subject: Re: [RFC] Add AS_SDP to fastset
Message-ID: <ZvrbiJtnY1YqFXRs@intel.com>
References: <20240808094849.1299028-1-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240808094849.1299028-1-mitulkumar.ajitkumar.golani@intel.com>
X-Patchwork-Hint: comment
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

On Thu, Aug 08, 2024 at 03:18:49PM +0530, Mitul Golani wrote:
> Add full modeset being triggered during VRR enable/disable, specially
> when panel has Adaptive sync SDP suypport.
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

What is needed is:
step 1: Fix vrr.vsync_{start,end} computation, and add them to
        the state checker + state dump. currently those depend on
	crtc_state->vrr.enable which is wrong
step 2: figure out what kind of sequencing requirements there
        for enabling/disabling the SDP vs. enabling/disabling 
	VRR, and then probably rewrite the hacky code that
	tries to updated infoframes during fastset to actually
	work properly

>  
>  	PIPE_CONF_CHECK_X(sync_mode_slaves_mask);
>  	PIPE_CONF_CHECK_I(master_transcoder);
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
