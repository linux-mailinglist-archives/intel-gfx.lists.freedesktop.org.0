Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A53C2829AB0
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jan 2024 13:54:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D6C310E138;
	Wed, 10 Jan 2024 12:54:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8B9810E138
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jan 2024 12:54:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704891264; x=1736427264;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=NHDXtnN5b1SfDBFnm9k9514/al/NJwc7v47u8yTZh9k=;
 b=X9kRBTvB0KyZaRA69S9Grbpl8zxzyi4kW8Kk5XuO386x4OCHtrY7AhFD
 ToS4NmTkVHNBwFkmCe4kuMfyhHS2ASexoWuGvWqoGMqTXzcTBjkDyaJ4j
 4NNFJfOoOxPhEfw/u7upPBM/MRG3yOE4VQC7OSQ/MoHGfLZVjYcJ06Qcp
 jxx4zTM/6p+mDr61uLr7MrM/oL9bzP1IjTHFGDooW8IZEm0GcQrrTSYtw
 ltFm5ncJ3mr6IuSP/ogoj6OLoWj1fQV93wuHssJsjhXVeAB/drq77QKT7
 kw032/NMsLEd4HhHnqMOI7As4gbN8dwk3OHl6ROz2ZXWGyUsorR6xT0UN w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10948"; a="429690456"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="429690456"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 04:54:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10948"; a="925629565"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="925629565"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 04:54:23 -0800
Date: Wed, 10 Jan 2024 14:54:11 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Subject: Re: [PATCH 1/2] drm/i915/display: No need for full modeset due to psr
Message-ID: <ZZ6Tc94c9dV2g+vA@intel.com>
References: <20240109100517.1947414-1-jouni.hogander@intel.com>
 <20240109100517.1947414-2-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240109100517.1947414-2-jouni.hogander@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 09, 2024 at 12:05:16PM +0200, Jouni Högander wrote:
> There is no specific reason to force full modeset if psr is enabled.
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> Tested-by: Paz Zcharya <pazz@chromium.org>


Reviewed-by: Stanislav Lisovskiy <staniskav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 7 -------
>  drivers/gpu/drm/i915/display/intel_dp.c      | 7 -------
>  2 files changed, 14 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 31a6a82c1261..0cccf6df6718 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5202,13 +5202,6 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  
>  		PIPE_CONF_CHECK_CSC(csc);
>  		PIPE_CONF_CHECK_CSC(output_csc);
> -
> -		if (current_config->active_planes) {
> -			PIPE_CONF_CHECK_BOOL(has_psr);
> -			PIPE_CONF_CHECK_BOOL(has_psr2);
> -			PIPE_CONF_CHECK_BOOL(enable_psr2_sel_fetch);
> -			PIPE_CONF_CHECK_I(dc3co_exitline);
> -		}
>  	}
>  
>  	PIPE_CONF_CHECK_BOOL(double_wide);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 7e4b7d5606d4..ab415f41924d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3326,13 +3326,6 @@ bool intel_dp_initial_fastset_check(struct intel_encoder *encoder,
>  		fastset = false;
>  	}
>  
> -	if (CAN_PSR(intel_dp)) {
> -		drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s] Forcing full modeset to compute PSR state\n",
> -			    encoder->base.base.id, encoder->base.name);
> -		crtc_state->uapi.mode_changed = true;
> -		fastset = false;
> -	}
> -
>  	return fastset;
>  }
>  
> -- 
> 2.34.1
> 
