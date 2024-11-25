Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CE5B9D89BF
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Nov 2024 16:54:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B35E310E05B;
	Mon, 25 Nov 2024 15:54:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DY3lxBHm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B215510E05B;
 Mon, 25 Nov 2024 15:54:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732550066; x=1764086066;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=Xjr8pGHvrvTCOC+wK+qdvL4MGNtI8jHS9CcjM3i3F8g=;
 b=DY3lxBHmvFzAz3fljEogwxEnnvj2mZTEbwHePPMCRYB6hfJiIgysxQJ/
 Es8CWvvDgzZz3PcfzfAOkuBh/q7IVSLIS5aY0LqD8uEgvDmaq4IzV1DjZ
 9Vv5FjSZE/rCZ6ro+kf44wK9FVWeazq8SZ5VgIWTXAnH0cm+ahpp0r+gB
 WJrZASy0K45ZWWelqkbHkOAYnQiVElagZOseMoqf1FxJfwmgrEufx0RQm
 Wm7BKLOhR9yjJD3SMRGIDPXynK8zUQjpBUbFkbfGECj/u8W8EZT2X2Q84
 aHIx+cRsTSM/XtvSZuqDdufiEN/5jOsYbK7ZMZVNjY/FNgfkCzdYQVOpY w==;
X-CSE-ConnectionGUID: 9EylLNS7TwOqmElQ4/Gmog==
X-CSE-MsgGUID: oe4QocsHQzume4QIVZpKGA==
X-IronPort-AV: E=McAfee;i="6700,10204,11267"; a="32818408"
X-IronPort-AV: E=Sophos;i="6.12,183,1728975600"; d="scan'208";a="32818408"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2024 07:54:26 -0800
X-CSE-ConnectionGUID: n9NnUBsTQgeVYOmGCz2XKQ==
X-CSE-MsgGUID: yRtLnwQcR+aufNxObHDJWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,183,1728975600"; d="scan'208";a="91268244"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2024 07:54:24 -0800
Date: Mon, 25 Nov 2024 17:55:00 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/ddi: clarify intel_ddi_connector_get_hw_state()
 for DP MST
Message-ID: <Z0Sd1EbzyqEw7smW@ideak-desk.fi.intel.com>
References: <20241125120959.2366419-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241125120959.2366419-1-jani.nikula@intel.com>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 25, 2024 at 02:09:59PM +0200, Jani Nikula wrote:
> encoder->get_hw_state() returns false for DP MST, and currently always
> interprets 128b/132b as MST. Therefore the DDI MST mode checks in
> intel_ddi_connector_get_hw_state() are redundant.
> 
> Prepare for future, and handle 128b/132b SST and warn on 8b/10b MST.
> 
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Looks ok to me:
Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 11 +++++++----
>  1 file changed, 7 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index e25b712bf03b..7d37ddd9ad12 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -731,6 +731,7 @@ bool intel_ddi_connector_get_hw_state(struct intel_connector *intel_connector)
>  	if (!wakeref)
>  		return false;
>  
> +	/* Note: This returns false for DP MST primary encoders. */
>  	if (!encoder->get_hw_state(encoder, &pipe)) {
>  		ret = false;
>  		goto out;
> @@ -752,12 +753,14 @@ bool intel_ddi_connector_get_hw_state(struct intel_connector *intel_connector)
>  	} else if (ddi_mode == TRANS_DDI_MODE_SELECT_DP_SST) {
>  		ret = type == DRM_MODE_CONNECTOR_eDP ||
>  			type == DRM_MODE_CONNECTOR_DisplayPort;
> -	} else if (ddi_mode == TRANS_DDI_MODE_SELECT_DP_MST ||
> -		   (ddi_mode == TRANS_DDI_MODE_SELECT_FDI_OR_128B132B && HAS_DP20(display))) {
> +	} else if (ddi_mode == TRANS_DDI_MODE_SELECT_FDI_OR_128B132B && HAS_DP20(display)) {
>  		/*
> -		 * If the transcoder is in MST state then connector isn't
> -		 * connected.
> +		 * encoder->get_hw_state() should have bailed out on MST. This
> +		 * must be SST and non-eDP.
>  		 */
> +		ret = type == DRM_MODE_CONNECTOR_DisplayPort;
> +	} else if (drm_WARN_ON(display->drm, ddi_mode == TRANS_DDI_MODE_SELECT_DP_MST)) {
> +		/* encoder->get_hw_state() should have bailed out on MST. */
>  		ret = false;
>  	} else {
>  		ret = false;
> -- 
> 2.39.5
> 
