Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aM9QDtLY+GlR2AIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 04 May 2026 19:35:14 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ED074C1F9B
	for <lists+intel-gfx@lfdr.de>; Mon, 04 May 2026 19:35:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14BDA10E0ED;
	Mon,  4 May 2026 17:35:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="mOlOY/Ju";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
 [213.167.242.64])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0F8B10E0ED;
 Mon,  4 May 2026 17:35:10 +0000 (UTC)
Received: from killaraus.ideasonboard.com
 (2001-14ba-703d-e500--2a1.rev.dnainternet.fi [IPv6:2001:14ba:703d:e500::2a1])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 7354B175;
 Mon,  4 May 2026 19:35:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1777916107;
 bh=4uWECAxcPn2j8lm2dquwqliQA6WLP4/GhTLEzPXj/7I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mOlOY/JuCqXc1CY83W9gUwHSKOC0b68roGTUEFpHdsIAlm0S/ijzOs51FJpFuoboF
 4wFZWCq0UJk0+jHcJHMtWrecpl115pIZDK+9ULWJkAGGkQuk3Y4JSYorXRe6W5lmk3
 RjqqdiOIAdx8ZEyfU6gM46NRoVnZyGfdhBZXYbyY=
Date: Mon, 4 May 2026 20:35:08 +0300
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
Subject: Re: [PATCH v3 15/20] drm/connector: Add new atomic_create_state
 callback
Message-ID: <20260504173508.GR1344263@killaraus.ideasonboard.com>
References: <20260424-drm-mode-config-init-v3-0-8b68d9db0d8b@kernel.org>
 <20260424-drm-mode-config-init-v3-15-8b68d9db0d8b@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260424-drm-mode-config-init-v3-15-8b68d9db0d8b@kernel.org>
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
X-Rspamd-Queue-Id: 8ED074C1F9B
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,qualcomm.com:email,killaraus.ideasonboard.com:mid,ideasonboard.com:dkim,ideasonboard.com:email]

Hi Maxime,

Thank you for the patch.

On Fri, Apr 24, 2026 at 12:18:55PM +0200, Maxime Ripard wrote:
> Commit 47b5ac7daa46 ("drm/atomic: Add new atomic_create_state callback
> to drm_private_obj") introduced a new pattern for allocating drm object
> states.
> 
> Instead of relying on the reset() callback, it created a new
> atomic_create_state hook. This is helpful because reset is a bit
> overloaded: it's used to create the initial software state, reset it,
> but also reset the hardware.
> 
> It can also be used either at probe time, to create the initial state
> and possibly reset the hardware to an expected default, but also during
> suspend/resume.
> 
> Both these cases come with different expectations too: during the
> initialization, we want to initialize all states, but during
> suspend/resume, drm_private_states for example are expected to be kept
> around.
> 
> reset() also isn't fallible, which makes it harder to handle
> initialization errors properly. This is only really relevant for some
> drivers though, since all the helpers for reset only create a new
> state, and don't touch the hardware at all.
> 
> It was thus decided to create a new hook that would allocate and
> initialize a pristine state without any side effect:
> atomic_create_state to untangle a bit some of it, and to separate the
> initialization with the actual reset one might need during a
> suspend/resume.
> 
> Continue the transition to the new pattern with connectors.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  drivers/gpu/drm/drm_atomic_state_helper.c | 26 ++++++++++++++++++++++++++
>  drivers/gpu/drm/drm_mode_config.c         | 21 ++++++++++++++++++++-
>  include/drm/drm_atomic_state_helper.h     |  2 ++
>  include/drm/drm_connector.h               | 16 ++++++++++++++++
>  4 files changed, 64 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/drm_atomic_state_helper.c b/drivers/gpu/drm/drm_atomic_state_helper.c
> index f67aacaa3b6e..6140926f4605 100644
> --- a/drivers/gpu/drm/drm_atomic_state_helper.c
> +++ b/drivers/gpu/drm/drm_atomic_state_helper.c
> @@ -554,10 +554,36 @@ void drm_atomic_helper_connector_reset(struct drm_connector *connector)
>  	kfree(connector->state);
>  	__drm_atomic_helper_connector_reset(connector, conn_state);
>  }
>  EXPORT_SYMBOL(drm_atomic_helper_connector_reset);
>  
> +/**
> + * drm_atomic_helper_connector_create_state - default &drm_connector_funcs.atomic_create_state hook for connectors

Same comment as in 10/20.

> + * @connector: connector object
> + *
> + * Initializes a pristine @drm_connector_state.

"Allocate and initialize ..."

> + *
> + * This is useful for drivers that don't subclass @drm_connector_state.
> + *
> + * RETURNS:
> + * Pointer to new connector state, or ERR_PTR on failure.
> + */
> +struct drm_connector_state *
> +drm_atomic_helper_connector_create_state(struct drm_connector *connector)
> +{
> +	struct drm_connector_state *state;
> +
> +	state = kzalloc_obj(*state);
> +	if (!state)
> +		return ERR_PTR(-ENOMEM);
> +
> +	__drm_atomic_helper_connector_state_init(state, connector);
> +
> +	return state;
> +}
> +EXPORT_SYMBOL(drm_atomic_helper_connector_create_state);
> +
>  /**
>   * drm_atomic_helper_connector_tv_margins_reset - Resets TV connector properties
>   * @connector: DRM connector
>   *
>   * Resets the TV-related properties attached to a connector.
> diff --git a/drivers/gpu/drm/drm_mode_config.c b/drivers/gpu/drm/drm_mode_config.c
> index 182d9a8104e7..92ff907f2485 100644
> --- a/drivers/gpu/drm/drm_mode_config.c
> +++ b/drivers/gpu/drm/drm_mode_config.c
> @@ -212,10 +212,26 @@ static int drm_mode_config_crtc_create_state(struct drm_crtc *crtc)
>  	crtc->state = crtc_state;
>  
>  	return 0;
>  }
>  
> +static int drm_mode_config_connector_create_state(struct drm_connector *connector)
> +{
> +	struct drm_connector_state *conn_state;
> +
> +	if (!connector->funcs->atomic_create_state)
> +		return 0;
> +
> +	conn_state = connector->funcs->atomic_create_state(connector);
> +	if (IS_ERR(conn_state))
> +		return PTR_ERR(conn_state);
> +
> +	connector->state = conn_state;
> +
> +	return 0;
> +}
> +
>  /**
>   * drm_mode_config_reset - call ->reset callbacks
>   * @dev: drm device
>   *
>   * This functions calls all the crtc's, encoder's and connector's ->reset
> @@ -255,13 +271,16 @@ void drm_mode_config_reset(struct drm_device *dev)
>  	drm_for_each_encoder(encoder, dev)
>  		if (encoder->funcs && encoder->funcs->reset)
>  			encoder->funcs->reset(encoder);
>  
>  	drm_connector_list_iter_begin(dev, &conn_iter);
> -	drm_for_each_connector_iter(connector, &conn_iter)
> +	drm_for_each_connector_iter(connector, &conn_iter) {
>  		if (connector->funcs->reset)
>  			connector->funcs->reset(connector);
> +		else if (connector->funcs->atomic_create_state)
> +			drm_mode_config_connector_create_state(connector);
> +	}
>  	drm_connector_list_iter_end(&conn_iter);
>  }
>  EXPORT_SYMBOL(drm_mode_config_reset);
>  
>  /*
> diff --git a/include/drm/drm_atomic_state_helper.h b/include/drm/drm_atomic_state_helper.h
> index e7c097e6dfe3..8576cd256737 100644
> --- a/include/drm/drm_atomic_state_helper.h
> +++ b/include/drm/drm_atomic_state_helper.h
> @@ -75,10 +75,12 @@ void drm_atomic_helper_plane_destroy_state(struct drm_plane *plane,
>  void __drm_atomic_helper_connector_state_init(struct drm_connector_state *conn_state,
>  					       struct drm_connector *connector);
>  void __drm_atomic_helper_connector_reset(struct drm_connector *connector,
>  					 struct drm_connector_state *conn_state);
>  void drm_atomic_helper_connector_reset(struct drm_connector *connector);
> +struct drm_connector_state *
> +drm_atomic_helper_connector_create_state(struct drm_connector *connector);
>  void drm_atomic_helper_connector_tv_reset(struct drm_connector *connector);
>  int drm_atomic_helper_connector_tv_check(struct drm_connector *connector,
>  					 struct drm_atomic_state *state);
>  void drm_atomic_helper_connector_tv_margins_reset(struct drm_connector *connector);
>  void
> diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
> index 3e422a4f2e72..9fb794957d23 100644
> --- a/include/drm/drm_connector.h
> +++ b/include/drm/drm_connector.h
> @@ -1569,10 +1569,26 @@ struct drm_connector_funcs {
>  	 * when a connector is being hot-unplugged for drivers that support
>  	 * connector hotplugging (e.g. DisplayPort MST).
>  	 */
>  	void (*destroy)(struct drm_connector *connector);
>  
> +	/**
> +	 * @atomic_create_state:
> +	 *
> +	 * Allocates a pristine, initialized, state for the connector object

s/Allocates/Allocate/

> +	 * and returns it. This callback must have no side effects: in

s/returns/return/

Reviewed-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>

> +	 * particular, the returned state must not be assigned to the
> +	 * object's state pointer and it must not affect the hardware
> +	 * state.
> +	 *
> +	 * RETURNS:
> +	 *
> +	 * A new, pristine, connector state instance or an error pointer
> +	 * on failure.
> +	 */
> +	struct drm_connector_state *(*atomic_create_state)(struct drm_connector *connector);
> +
>  	/**
>  	 * @atomic_duplicate_state:
>  	 *
>  	 * Duplicate the current atomic state for this connector and return it.
>  	 * The core and helpers guarantee that any atomic state duplicated with

-- 
Regards,

Laurent Pinchart
