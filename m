Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7231A32920
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 15:51:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EA0310E8D5;
	Wed, 12 Feb 2025 14:51:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RX3Jxqz6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1B1010E8D5;
 Wed, 12 Feb 2025 14:51:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739371879; x=1770907879;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=sMFkpaAKOaHDMOFmRIXZML9ICk8TXvGVmVVE7zUqaxU=;
 b=RX3Jxqz6ykid+M9DrYiw7a4rzVM/RfD8CLIA0Y+ZmHE95zrHootYj2V+
 QKERhHoCe2PY3Mf5ZbfI5Qc8hPckz2ukaTKsxRAMvLK2KLns+I0I/zU/V
 o6rFUOTFUwkd1ZkqcC1ebZo1v5peH5K2eOtZZnreP2OuY1qPPaP6YD0x/
 kGoxCaZ74WyICxlgAuL6KplU3sjgAaw6lOiCfdbw1WL02vrDhQVAqgdf+
 trdvMaIs3dLbO2A0WRzTRlquMfSDGW9Mq8h+M1BVAMgr/YxxkFrcO28Ov
 VeyQoKmXAjw9PV2RmEJWIE6/+D9QVi43a/nJPbr3iLnIuQaDj9ZJQ8QJ1 w==;
X-CSE-ConnectionGUID: 93/Bvp7fQVKGroiLMEqd+g==
X-CSE-MsgGUID: ufp7G8D1QoiDyBCyKe1l9A==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="39914055"
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="39914055"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 06:51:18 -0800
X-CSE-ConnectionGUID: O8XXs68lSq6P4MfXGd/g6Q==
X-CSE-MsgGUID: ctiQ/mecQwC9NfeYLNnahA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="113052258"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 12 Feb 2025 06:51:16 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 12 Feb 2025 16:51:15 +0200
Date: Wed, 12 Feb 2025 16:51:15 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v7 08/13] drm/i915/display: Warn on use_dsb in non-dsb
 pipe update functions
Message-ID: <Z6y1Y5eQ59PFqCzU@intel.com>
References: <20250212075742.995022-1-jouni.hogander@intel.com>
 <20250212075742.995022-10-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250212075742.995022-10-jouni.hogander@intel.com>
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

On Wed, Feb 12, 2025 at 09:57:37AM +0200, Jouni Högander wrote:
> Add drm_WARN_ON(use_dsb) into commit_pipe_{pre,post}_planes() and
> intel_pipe_update_{start,end}() as they are not supposed to get called on
> non-dsb updates.
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_crtc.c    | 4 ++++
>  drivers/gpu/drm/i915/display/intel_display.c | 6 +++++-
>  2 files changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
> index 89785da93603..eb089d76ba2a 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -522,6 +522,8 @@ void intel_pipe_update_start(struct intel_atomic_state *state,
>  	struct intel_vblank_evade_ctx evade;
>  	int scanline;
>  
> +	drm_WARN_ON(display->drm, new_crtc_state->use_dsb);
> +
>  	intel_psr_lock(new_crtc_state);
>  
>  	if (new_crtc_state->do_async_flip) {
> @@ -660,6 +662,8 @@ void intel_pipe_update_end(struct intel_atomic_state *state,
>  	ktime_t end_vbl_time = ktime_get();
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>  
> +	drm_WARN_ON(display->drm, new_crtc_state->use_dsb);
> +
>  	if (new_crtc_state->do_async_flip)
>  		goto out;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index cab6852dd9c2..79b8d2ad3b9c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7141,11 +7141,13 @@ static void commit_pipe_pre_planes(struct intel_atomic_state *state,
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	bool modeset = intel_crtc_needs_modeset(new_crtc_state);
>  
> +	drm_WARN_ON(&dev_priv->drm, new_crtc_state->use_dsb);
> +
>  	/*
>  	 * During modesets pipe configuration was programmed as the
>  	 * CRTC was enabled.
>  	 */
> -	if (!modeset && !new_crtc_state->use_dsb) {
> +	if (!modeset) {
>  		if (intel_crtc_needs_color_update(new_crtc_state))
>  			intel_color_commit_arm(NULL, new_crtc_state);
>  
> @@ -7168,6 +7170,8 @@ static void commit_pipe_post_planes(struct intel_atomic_state *state,
>  	const struct intel_crtc_state *new_crtc_state =
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  
> +	drm_WARN_ON(&dev_priv->drm, new_crtc_state->use_dsb);
> +
>  	/*
>  	 * Disable the scaler(s) after the plane(s) so that we don't
>  	 * get a catastrophic underrun even if the two operations
> -- 
> 2.43.0

-- 
Ville Syrjälä
Intel
