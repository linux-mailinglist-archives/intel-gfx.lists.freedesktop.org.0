Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qJY5NxLP+Glr1AIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 04 May 2026 18:53:38 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F5144C1A0C
	for <lists+intel-gfx@lfdr.de>; Mon, 04 May 2026 18:53:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB86E10E796;
	Mon,  4 May 2026 16:53:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="CvpwrU2Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
 [213.167.242.64])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B85010E3EB;
 Mon,  4 May 2026 16:53:34 +0000 (UTC)
Received: from killaraus.ideasonboard.com
 (2001-14ba-703d-e500--2a1.rev.dnainternet.fi [IPv6:2001:14ba:703d:e500::2a1])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 4904D9C;
 Mon,  4 May 2026 18:53:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1777913611;
 bh=+EZl9qZ81AdPzkkEwOpCoiOGzDn6NE5XspISBAQ0FQQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CvpwrU2ZVuvJEMaGn/PmoNDMHJ4B3SbUdj8uAZYFJFB4/dGDtzcjF75/LvVQ5YzAC
 RIfuJ0A5tkqa40FdmOa+pVb3ieNpgSDKRNch8yvbU7lZ/WZeC7JAT/BYdlOHosaoI3
 2uLpdybBMGCQTjbhn81cN5aCxRU9TN2Zq1AFa1Oo=
Date: Mon, 4 May 2026 19:53:32 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Maxime Ripard <mripard@kernel.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Jyri Sarha <jyri.sarha@iki.fi>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Robert Foss <rfoss@kernel.org>, Jonas Karlman <jonas@kwiboo.se>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, Simon Ser <contact@emersion.fr>,
 Harry Wentland <harry.wentland@amd.com>, Melissa Wen <mwen@igalia.com>,
 Sebastian Wick <sebastian.wick@redhat.com>, Alex Hung <alex.hung@amd.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Chen-Yu Tsai <wens@kernel.org>,
 Samuel Holland <samuel@sholland.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 =?utf-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>,
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>,
 dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Daniel Stone <daniels@collabora.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev
Subject: Re: [PATCH v3 11/20] drm/atomic-state-helper: Rename
 __drm_atomic_helper_crtc_state_reset()
Message-ID: <20260504165332.GN1344263@killaraus.ideasonboard.com>
References: <20260424-drm-mode-config-init-v3-0-8b68d9db0d8b@kernel.org>
 <20260424-drm-mode-config-init-v3-11-8b68d9db0d8b@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260424-drm-mode-config-init-v3-11-8b68d9db0d8b@kernel.org>
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
X-Rspamd-Queue-Id: 8F5144C1A0C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ideasonboard.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[ideasonboard.com:s=mail];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[37];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[linux.intel.com,suse.de,gmail.com,ffwll.ch,lwn.net,linuxfoundation.org,oss.qualcomm.com,iki.fi,ideasonboard.com,intel.com,linaro.org,kernel.org,kwiboo.se,emersion.fr,amd.com,igalia.com,redhat.com,ursulin.net,sholland.org,raspberrypi.com,lists.freedesktop.org,vger.kernel.org,collabora.com,lists.infradead.org,lists.linux.dev];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[laurent.pinchart@ideasonboard.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ideasonboard.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:email,killaraus.ideasonboard.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,ideasonboard.com:dkim,ideasonboard.com:email]

On Fri, Apr 24, 2026 at 12:18:51PM +0200, Maxime Ripard wrote:
> __drm_atomic_helper_crtc_state_reset() is used to initialize a newly
> allocated drm_crtc_state, and is being typically called by the
> drm_crtc_funcs.reset implementation.
> 
> Since we want to consolidate DRM objects state allocation around the
> atomic_create_state callback that will only allocate and initialize a
> new drm_crtc_state instance, we will need to call
> __drm_atomic_helper_crtc_state_reset() from both the reset and
> atomic_create hooks.
> 
> To avoid any confusion, we can thus rename
> __drm_atomic_helper_crtc_state_reset() to
> __drm_atomic_helper_crtc_state_init().
> 
> Suggested-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Reviewed-by: Thomas Zimmermann <tzimmermann@suse.de>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  drivers/gpu/drm/drm_atomic_state_helper.c | 10 +++++-----
>  drivers/gpu/drm/i915/display/intel_crtc.c |  2 +-
>  include/drm/drm_atomic_state_helper.h     |  2 +-
>  3 files changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_atomic_state_helper.c b/drivers/gpu/drm/drm_atomic_state_helper.c
> index 50fe4eec41a8..9cd8550cabb7 100644
> --- a/drivers/gpu/drm/drm_atomic_state_helper.c
> +++ b/drivers/gpu/drm/drm_atomic_state_helper.c
> @@ -61,25 +61,25 @@
>   * For other drivers the building blocks are split out, see the documentation
>   * for these functions.
>   */
>  
>  /**
> - * __drm_atomic_helper_crtc_state_reset - reset the CRTC state
> + * __drm_atomic_helper_crtc_state_init - Initializes the CRTC state

"Initialize"

Reviewed-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>

>   * @crtc_state: atomic CRTC state, must not be NULL
>   * @crtc: CRTC object, must not be NULL
>   *
>   * Initializes the newly allocated @crtc_state with default
>   * values. This is useful for drivers that subclass the CRTC state.
>   */
>  void
> -__drm_atomic_helper_crtc_state_reset(struct drm_crtc_state *crtc_state,
> -				     struct drm_crtc *crtc)
> +__drm_atomic_helper_crtc_state_init(struct drm_crtc_state *crtc_state,
> +				    struct drm_crtc *crtc)
>  {
>  	crtc_state->crtc = crtc;
>  	crtc_state->background_color = DRM_ARGB64_PREP(0xffff, 0, 0, 0);
>  }
> -EXPORT_SYMBOL(__drm_atomic_helper_crtc_state_reset);
> +EXPORT_SYMBOL(__drm_atomic_helper_crtc_state_init);
>  
>  /**
>   * __drm_atomic_helper_crtc_reset - reset state on CRTC
>   * @crtc: drm CRTC
>   * @crtc_state: CRTC state to assign
> @@ -94,11 +94,11 @@ EXPORT_SYMBOL(__drm_atomic_helper_crtc_state_reset);
>  void
>  __drm_atomic_helper_crtc_reset(struct drm_crtc *crtc,
>  			       struct drm_crtc_state *crtc_state)
>  {
>  	if (crtc_state)
> -		__drm_atomic_helper_crtc_state_reset(crtc_state, crtc);
> +		__drm_atomic_helper_crtc_state_init(crtc_state, crtc);
>  
>  	if (drm_dev_has_vblank(crtc->dev))
>  		drm_crtc_vblank_reset(crtc);
>  
>  	crtc->state = crtc_state;
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
> index b8189cd5d864..a2ed4a76e061 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -179,11 +179,11 @@ struct intel_crtc_state *intel_crtc_state_alloc(struct intel_crtc *crtc)
>  void intel_crtc_state_reset(struct intel_crtc_state *crtc_state,
>  			    struct intel_crtc *crtc)
>  {
>  	memset(crtc_state, 0, sizeof(*crtc_state));
>  
> -	__drm_atomic_helper_crtc_state_reset(&crtc_state->uapi, &crtc->base);
> +	__drm_atomic_helper_crtc_state_init(&crtc_state->uapi, &crtc->base);
>  
>  	crtc_state->cpu_transcoder = INVALID_TRANSCODER;
>  	crtc_state->master_transcoder = INVALID_TRANSCODER;
>  	crtc_state->hsw_workaround_pipe = INVALID_PIPE;
>  	crtc_state->scaler_state.scaler_id = -1;
> diff --git a/include/drm/drm_atomic_state_helper.h b/include/drm/drm_atomic_state_helper.h
> index df371b2eef3e..e7fbbfdc5d69 100644
> --- a/include/drm/drm_atomic_state_helper.h
> +++ b/include/drm/drm_atomic_state_helper.h
> @@ -38,11 +38,11 @@ struct drm_connector_state;
>  struct drm_private_obj;
>  struct drm_private_state;
>  struct drm_modeset_acquire_ctx;
>  struct drm_device;
>  
> -void __drm_atomic_helper_crtc_state_reset(struct drm_crtc_state *state,
> +void __drm_atomic_helper_crtc_state_init(struct drm_crtc_state *state,
>  					  struct drm_crtc *crtc);
>  void __drm_atomic_helper_crtc_reset(struct drm_crtc *crtc,
>  				    struct drm_crtc_state *state);
>  void drm_atomic_helper_crtc_reset(struct drm_crtc *crtc);
>  void __drm_atomic_helper_crtc_duplicate_state(struct drm_crtc *crtc,

-- 
Regards,

Laurent Pinchart
