Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YKe0EWLa+GnJ2QIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 04 May 2026 19:41:54 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ABAF4C2061
	for <lists+intel-gfx@lfdr.de>; Mon, 04 May 2026 19:41:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C59210E170;
	Mon,  4 May 2026 17:41:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="B7U08/8y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
 [213.167.242.64])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C287A10E170;
 Mon,  4 May 2026 17:41:50 +0000 (UTC)
Received: from killaraus.ideasonboard.com
 (2001-14ba-703d-e500--2a1.rev.dnainternet.fi [IPv6:2001:14ba:703d:e500::2a1])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 5F5E0175;
 Mon,  4 May 2026 19:41:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1777916507;
 bh=6pq6bjfZyGoRsdQnszcih275UmRsgM0CIIy0h8hCQUA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=B7U08/8yeNPtScPJQF+WdcZLHgn8xM54qa69zHz6Oad8R0BiSSc2Dm7FKavh4hwwT
 aY2T4JFV+f6KjmcjlaxY7QhdjwpvasWORe5iutSd249tXlfjZyp/z2BDnyQVGaBHfd
 1I8ynU/XVZhy9at98yXSTbVBN0DYLXR3L0fpBVh0=
Date: Mon, 4 May 2026 20:41:48 +0300
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
Subject: Re: [PATCH v3 16/20] drm/mode-config: Create
 drm_mode_config_create_initial_state()
Message-ID: <20260504174148.GS1344263@killaraus.ideasonboard.com>
References: <20260424-drm-mode-config-init-v3-0-8b68d9db0d8b@kernel.org>
 <20260424-drm-mode-config-init-v3-16-8b68d9db0d8b@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260424-drm-mode-config-init-v3-16-8b68d9db0d8b@kernel.org>
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
X-Rspamd-Queue-Id: 9ABAF4C2061
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,qualcomm.com:email,ideasonboard.com:dkim,ideasonboard.com:email,killaraus.ideasonboard.com:mid]

On Fri, Apr 24, 2026 at 12:18:56PM +0200, Maxime Ripard wrote:
> drm_mode_config_reset() can be used to create the initial state, but
> also to return to the initial state, when doing a suspend/resume cycle
> for example.
> 
> It also affects both the software and the hardware, and drivers can
> choose to reset the hardware as well. Most will just create an empty
> state and the synchronisation between hardware and software states will
> effectively be done when the first commit is done.
> 
> That dual role can be harmful, since some objects do need to be
> initialized but also need to be preserved across a suspend/resume cycle.
> drm_private_obj are such objects for example.
> 
> Thus, create another helper for drivers to call to initialize their
> state when the driver is loaded, so we can make
> drm_mode_config_reset() only about handling suspend/resume and similar.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  drivers/gpu/drm/drm_atomic.c      | 12 +++++-
>  drivers/gpu/drm/drm_mode_config.c | 87 +++++++++++++++++++++++++++++++++++++++
>  include/drm/drm_mode_config.h     |  1 +
>  3 files changed, 98 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_atomic.c b/drivers/gpu/drm/drm_atomic.c
> index 253a00f450b0..f31b6147e682 100644
> --- a/drivers/gpu/drm/drm_atomic.c
> +++ b/drivers/gpu/drm/drm_atomic.c
> @@ -59,12 +59,20 @@
>   * when preparing the update and kept alive as long as they are active
>   * in the device.
>   *
>   * Their respective lifetimes are:
>   *
> - * - at reset time, the object reset implementation will allocate a new
> - *   default state and will store it in the object state pointer.
> + * - at driver initialization time, the driver will allocate an initial,
> + *   pristine, state and will store it using
> + *   drm_mode_config_create_initial_state().

I think it's useful to keep documented where the state is stored.

 * - at driver initialization time, the driver will call
 *   drm_mode_config_create_initial_state() to allocate an initial, pristine,
 *   state and store in the object state pointer.

> Historically, this was one
> + *   of drm_mode_config_reset() job, so one might still encounter it in
> + *   a driver.
> + *
> + * - at reset time, for example during suspend/resume,
> + *   drm_mode_config_reset() will reset the software and hardware state
> + *   to a known default and will store it in the object's state pointer.
> + *   Not all objects are affected by drm_mode_config_reset() though.

Does the reset implementation store a new state in the object's state
pointer, or does it reset the contents of the already allocated state ?
I read the documentation here as meaning the former, if it's actually
the latter it should be reworded.

Reviewed-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>

>   *
>   * - whenever a new update is needed:
>   *
>   *   + A new &struct drm_atomic_state is allocated using
>   *     drm_atomic_state_alloc().
> diff --git a/drivers/gpu/drm/drm_mode_config.c b/drivers/gpu/drm/drm_mode_config.c
> index 92ff907f2485..a43eb825671b 100644
> --- a/drivers/gpu/drm/drm_mode_config.c
> +++ b/drivers/gpu/drm/drm_mode_config.c
> @@ -21,10 +21,11 @@
>   */
>  
>  #include <linux/export.h>
>  #include <linux/uaccess.h>
>  
> +#include <drm/drm_atomic.h>
>  #include <drm/drm_drv.h>
>  #include <drm/drm_encoder.h>
>  #include <drm/drm_file.h>
>  #include <drm/drm_framebuffer.h>
>  #include <drm/drm_managed.h>
> @@ -281,10 +282,96 @@ void drm_mode_config_reset(struct drm_device *dev)
>  	}
>  	drm_connector_list_iter_end(&conn_iter);
>  }
>  EXPORT_SYMBOL(drm_mode_config_reset);
>  
> +/**
> + * drm_mode_config_create_initial_state - Allocates the initial state

s/Allocates/Allocate/

> + * @dev: drm device
> + *
> + * This functions creates the initial state for all the objects. Drivers
> + * can use this in e.g. probe to initialize their software state.
> + *
> + * It has two main differences with drm_mode_config_reset(): the reset()
> + * hooks aren't called and thus the hardware will be left untouched, but
> + * also the &drm_private_obj structures will be initialized as opposed
> + * to drm_mode_config_reset() that skips them.
> + *
> + * Returns: 0 on success, negative error value on failure.
> + */
> +int drm_mode_config_create_initial_state(struct drm_device *dev)
> +{
> +	struct drm_crtc *crtc;
> +	struct drm_colorop *colorop;
> +	struct drm_plane *plane;
> +	struct drm_connector *connector;
> +	struct drm_connector_list_iter conn_iter;
> +	struct drm_private_obj *privobj;
> +	int ret;
> +
> +	drm_for_each_privobj(privobj, dev) {
> +		struct drm_private_state *privobj_state;
> +
> +		if (privobj->state)
> +			continue;
> +
> +		if (!privobj->funcs->atomic_create_state)
> +			continue;
> +
> +		privobj_state = privobj->funcs->atomic_create_state(privobj);
> +		if (IS_ERR(privobj_state))
> +			return PTR_ERR(privobj_state);
> +
> +		privobj->state = privobj_state;
> +	}
> +
> +	drm_for_each_colorop(colorop, dev) {
> +		struct drm_colorop_state *colorop_state;
> +
> +		if (colorop->state)
> +			continue;
> +
> +		colorop_state = drm_atomic_helper_colorop_create_state(colorop);
> +		if (IS_ERR(colorop_state))
> +			return PTR_ERR(colorop_state);
> +
> +		colorop->state = colorop_state;
> +	}
> +
> +	drm_for_each_plane(plane, dev) {
> +		if (plane->state)
> +			continue;
> +
> +		ret = drm_mode_config_plane_create_state(plane);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	drm_for_each_crtc(crtc, dev) {
> +		if (crtc->state)
> +			continue;
> +
> +		ret = drm_mode_config_crtc_create_state(crtc);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	drm_connector_list_iter_begin(dev, &conn_iter);
> +	drm_for_each_connector_iter(connector, &conn_iter) {
> +		if (connector->state)
> +			continue;
> +
> +		ret = drm_mode_config_connector_create_state(connector);
> +		if (ret)
> +			return ret;
> +	}
> +	drm_connector_list_iter_end(&conn_iter);
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL(drm_mode_config_create_initial_state);
> +
>  /*
>   * Global properties
>   */
>  static const struct drm_prop_enum_list drm_plane_type_enum_list[] = {
>  	{ DRM_PLANE_TYPE_OVERLAY, "Overlay" },
> diff --git a/include/drm/drm_mode_config.h b/include/drm/drm_mode_config.h
> index 687c0ee163d2..00009250fde4 100644
> --- a/include/drm/drm_mode_config.h
> +++ b/include/drm/drm_mode_config.h
> @@ -1005,9 +1005,10 @@ int __must_check drmm_mode_config_init(struct drm_device *dev);
>  static inline int drm_mode_config_init(struct drm_device *dev)
>  {
>  	return drmm_mode_config_init(dev);
>  }
>  
> +int drm_mode_config_create_initial_state(struct drm_device *dev);
>  void drm_mode_config_reset(struct drm_device *dev);
>  void drm_mode_config_cleanup(struct drm_device *dev);
>  
>  #endif
> 

-- 
Regards,

Laurent Pinchart
