Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4FySFynY+GlR2AIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 04 May 2026 19:32:25 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EC7F4C1F4B
	for <lists+intel-gfx@lfdr.de>; Mon, 04 May 2026 19:32:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75F9610E7C1;
	Mon,  4 May 2026 17:32:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="aP/WZDgf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
 [213.167.242.64])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 313E610E0ED;
 Mon,  4 May 2026 17:32:19 +0000 (UTC)
Received: from killaraus.ideasonboard.com
 (2001-14ba-703d-e500--2a1.rev.dnainternet.fi [IPv6:2001:14ba:703d:e500::2a1])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id BAF3E175;
 Mon,  4 May 2026 19:32:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1777915936;
 bh=7ljuuXQlUYJhdWaPoHxPjcLlFuHa7ulDVfCd/SUITVY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aP/WZDgfTDBDrE0IqDx6WrI818l9IYpUNNwWhi+xBU4xsyyPSDjS2hPBdl4Zxwf4m
 SntUmpS75lSvNtsAQhUpLyGp7KTG77HmE41lhhQfwzJ3A8kFq+8Rt536Zo6tuxC5sm
 6f7ERSBbXKz7j7h48xBMORS9ON/CtCMvVtLSl37s=
Date: Mon, 4 May 2026 20:32:16 +0300
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
Subject: Re: [PATCH v3 14/20] drm/hdmi: Rename
 __drm_atomic_helper_connector_hdmi_reset()
Message-ID: <20260504173216.GQ1344263@killaraus.ideasonboard.com>
References: <20260424-drm-mode-config-init-v3-0-8b68d9db0d8b@kernel.org>
 <20260424-drm-mode-config-init-v3-14-8b68d9db0d8b@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260424-drm-mode-config-init-v3-14-8b68d9db0d8b@kernel.org>
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
X-Rspamd-Queue-Id: 0EC7F4C1F4B
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,ideasonboard.com:dkim,ideasonboard.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,killaraus.ideasonboard.com:mid,suse.de:email]

On Fri, Apr 24, 2026 at 12:18:54PM +0200, Maxime Ripard wrote:
> __drm_atomic_helper_connector_hdmi_reset() is typically used to
> initialize a newly allocated drm_connector_state when the connector is
> using the HDMI helpers, and is being called by the
> drm_connector_funcs.reset implementation.
> 
> Since we want to consolidate DRM objects state allocation around the
> atomic_create_state callback that will only allocate and initialize a
> new drm_connector_state instance, we will need to call
> __drm_atomic_helper_connector_hdmi_reset() from both the reset and
> atomic_create hooks.
> 
> To avoid any confusion, we can thus rename
> __drm_atomic_helper_connector_hdmi_reset() to
> __drm_atomic_helper_connector_hdmi_state_init().
> 
> Suggested-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Reviewed-by: Thomas Zimmermann <tzimmermann@suse.de>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  drivers/gpu/drm/display/drm_bridge_connector.c     |  4 ++--
>  drivers/gpu/drm/display/drm_hdmi_state_helper.c    | 13 +++++++------
>  drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c             |  2 +-
>  drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c |  2 +-
>  drivers/gpu/drm/vc4/vc4_hdmi.c                     |  2 +-
>  include/drm/display/drm_hdmi_state_helper.h        |  4 ++--
>  6 files changed, 14 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/display/drm_bridge_connector.c b/drivers/gpu/drm/display/drm_bridge_connector.c
> index 39cc18f78eda..d72f29b73be3 100644
> --- a/drivers/gpu/drm/display/drm_bridge_connector.c
> +++ b/drivers/gpu/drm/display/drm_bridge_connector.c
> @@ -270,12 +270,12 @@ static void drm_bridge_connector_reset(struct drm_connector *connector)
>  	struct drm_bridge_connector *bridge_connector =
>  		to_drm_bridge_connector(connector);
>  
>  	drm_atomic_helper_connector_reset(connector);
>  	if (bridge_connector->bridge_hdmi)
> -		__drm_atomic_helper_connector_hdmi_reset(connector,
> -							 connector->state);
> +		__drm_atomic_helper_connector_hdmi_state_init(connector,
> +							      connector->state);
>  }
>  
>  static const struct drm_connector_funcs drm_bridge_connector_funcs = {
>  	.reset = drm_bridge_connector_reset,
>  	.detect = drm_bridge_connector_detect,
> diff --git a/drivers/gpu/drm/display/drm_hdmi_state_helper.c b/drivers/gpu/drm/display/drm_hdmi_state_helper.c
> index 9f3b696aceeb..8bf7ad3c99fb 100644
> --- a/drivers/gpu/drm/display/drm_hdmi_state_helper.c
> +++ b/drivers/gpu/drm/display/drm_hdmi_state_helper.c
> @@ -304,29 +304,30 @@
>   *		--kunitconfig=drivers/gpu/drm/tests \
>   *		drm_atomic_helper_connector_hdmi_*
>   */
>  
>  /**
> - * __drm_atomic_helper_connector_hdmi_reset() - Initializes all HDMI @drm_connector_state resources
> + * __drm_atomic_helper_connector_hdmi_state_init() - Initializes all HDMI @drm_connector_state resources

While at it, s/Initializers/Initialize/

>   * @connector: DRM connector
>   * @new_conn_state: connector state to reset

s/to reset/to initialize/

Reviewed-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>

>   *
>   * Initializes all HDMI resources from a @drm_connector_state without
>   * actually allocating it. This is useful for HDMI drivers, in
> - * combination with __drm_atomic_helper_connector_reset() or
> - * drm_atomic_helper_connector_reset().
> + * combination with __drm_atomic_helper_connector_state_init(),
> + * drm_atomic_helper_connector_reset(), or
> + * drm_atomic_helper_connector_create_state() .
>   */
> -void __drm_atomic_helper_connector_hdmi_reset(struct drm_connector *connector,
> -					      struct drm_connector_state *new_conn_state)
> +void __drm_atomic_helper_connector_hdmi_state_init(struct drm_connector *connector,
> +						   struct drm_connector_state *new_conn_state)
>  {
>  	unsigned int max_bpc = connector->max_bpc;
>  
>  	new_conn_state->max_bpc = max_bpc;
>  	new_conn_state->max_requested_bpc = max_bpc;
>  	new_conn_state->hdmi.broadcast_rgb = DRM_HDMI_BROADCAST_RGB_AUTO;
>  }
> -EXPORT_SYMBOL(__drm_atomic_helper_connector_hdmi_reset);
> +EXPORT_SYMBOL(__drm_atomic_helper_connector_hdmi_state_init);
>  
>  static enum hdmi_colorspace
>  output_color_format_to_hdmi_colorspace(const struct drm_connector *connector,
>  				       enum drm_output_color_format fmt)
>  {
> diff --git a/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c b/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c
> index dd2a78defdb4..29dfff4f0055 100644
> --- a/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c
> +++ b/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c
> @@ -283,11 +283,11 @@ sun4i_hdmi_connector_detect(struct drm_connector *connector, bool force)
>  }
>  
>  static void sun4i_hdmi_connector_reset(struct drm_connector *connector)
>  {
>  	drm_atomic_helper_connector_reset(connector);
> -	__drm_atomic_helper_connector_hdmi_reset(connector, connector->state);
> +	__drm_atomic_helper_connector_hdmi_state_init(connector, connector->state);
>  }
>  
>  static const struct drm_connector_funcs sun4i_hdmi_connector_funcs = {
>  	.detect			= sun4i_hdmi_connector_detect,
>  	.fill_modes		= drm_helper_probe_single_connector_modes,
> diff --git a/drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c b/drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c
> index a4357efaa983..5d671b281f28 100644
> --- a/drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c
> +++ b/drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c
> @@ -166,11 +166,11 @@ static const struct drm_connector_helper_funcs dummy_connector_helper_funcs = {
>  };
>  
>  static void dummy_hdmi_connector_reset(struct drm_connector *connector)
>  {
>  	drm_atomic_helper_connector_reset(connector);
> -	__drm_atomic_helper_connector_hdmi_reset(connector, connector->state);
> +	__drm_atomic_helper_connector_hdmi_state_init(connector, connector->state);
>  }
>  
>  static const struct drm_connector_funcs dummy_connector_funcs = {
>  	.atomic_destroy_state	= drm_atomic_helper_connector_destroy_state,
>  	.atomic_duplicate_state	= drm_atomic_helper_connector_duplicate_state,
> diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
> index a99f53dadb28..14fcee05e133 100644
> --- a/drivers/gpu/drm/vc4/vc4_hdmi.c
> +++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
> @@ -506,11 +506,11 @@ static int vc4_hdmi_connector_atomic_check(struct drm_connector *connector,
>  }
>  
>  static void vc4_hdmi_connector_reset(struct drm_connector *connector)
>  {
>  	drm_atomic_helper_connector_reset(connector);
> -	__drm_atomic_helper_connector_hdmi_reset(connector, connector->state);
> +	__drm_atomic_helper_connector_hdmi_state_init(connector, connector->state);
>  	drm_atomic_helper_connector_tv_margins_reset(connector);
>  }
>  
>  static const struct drm_connector_funcs vc4_hdmi_connector_funcs = {
>  	.force = drm_atomic_helper_connector_hdmi_force,
> diff --git a/include/drm/display/drm_hdmi_state_helper.h b/include/drm/display/drm_hdmi_state_helper.h
> index 2349c0d0f00f..f7600aabdd5f 100644
> --- a/include/drm/display/drm_hdmi_state_helper.h
> +++ b/include/drm/display/drm_hdmi_state_helper.h
> @@ -9,12 +9,12 @@ struct drm_connector_state;
>  struct drm_display_mode;
>  struct hdmi_audio_infoframe;
>  
>  enum drm_connector_status;
>  
> -void __drm_atomic_helper_connector_hdmi_reset(struct drm_connector *connector,
> -					      struct drm_connector_state *new_conn_state);
> +void __drm_atomic_helper_connector_hdmi_state_init(struct drm_connector *connector,
> +						   struct drm_connector_state *new_conn_state);
>  
>  int drm_atomic_helper_connector_hdmi_check(struct drm_connector *connector,
>  					   struct drm_atomic_state *state);
>  
>  int drm_atomic_helper_connector_hdmi_update_audio_infoframe(struct drm_connector *connector,

-- 
Regards,

Laurent Pinchart
