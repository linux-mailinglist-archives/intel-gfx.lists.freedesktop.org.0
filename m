Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wCaPAhLL+Gma0wIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 04 May 2026 18:36:34 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89DB44C17E8
	for <lists+intel-gfx@lfdr.de>; Mon, 04 May 2026 18:36:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8650B10E783;
	Mon,  4 May 2026 16:36:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="t5xVo43W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
 [213.167.242.64])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FCC610E76B;
 Mon,  4 May 2026 16:36:28 +0000 (UTC)
Received: from killaraus.ideasonboard.com
 (2001-14ba-703d-e500--2a1.rev.dnainternet.fi [IPv6:2001:14ba:703d:e500::2a1])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id AAC319C;
 Mon,  4 May 2026 18:36:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1777912584;
 bh=1EJqZzRZKr0O2+ZK+UwE6c4ahhtTRCZZ2gf3ylP/+Hg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=t5xVo43WK/DZuGnNw5dwo2Lb5Ceoc2zGDTrfDDiBBbAntPEsGW1ttAXPCZHUUJmW8
 8D44iUJbBQQvexGBda7xP7p80qwhLjJG8zNYyZknz2g0VlltE3y41+HDutUtNu6Z+A
 tZHRnbLPfIAmXBPDZiDWQt444WwCofNaunY7oFv8=
Date: Mon, 4 May 2026 19:36:25 +0300
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
Subject: Re: [PATCH v3 06/20] drm/colorop: Rename __drm_colorop_state_reset()
Message-ID: <20260504163625.GJ1344263@killaraus.ideasonboard.com>
References: <20260424-drm-mode-config-init-v3-0-8b68d9db0d8b@kernel.org>
 <20260424-drm-mode-config-init-v3-6-8b68d9db0d8b@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260424-drm-mode-config-init-v3-6-8b68d9db0d8b@kernel.org>
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
X-Rspamd-Queue-Id: 89DB44C17E8
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,killaraus.ideasonboard.com:mid,ideasonboard.com:dkim,ideasonboard.com:email,suse.de:email]

Hi Maxime,

Thank you for the patch.

On Fri, Apr 24, 2026 at 12:18:46PM +0200, Maxime Ripard wrote:
> __drm_colorop_state_reset() is used to initialize a newly allocated
> drm_colorop_state, and is being typically called by drm_colorop_reset().
> 
> Since we want to consolidate DRM objects state allocation around the
> atomic_create_state callback that will only allocate and initialize a
> new drm_colorop_state instance, we will need to call
> __drm_colorop_state_reset() from both the reset and atomic_create paths.
> 
> To avoid any confusion, we can thus rename __drm_colorop_state_reset()
> to __drm_colorop_state_init().
> 
> Reviewed-by: Thomas Zimmermann <tzimmermann@suse.de>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>

Reviewed-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>

> ---
>  drivers/gpu/drm/drm_colorop.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_colorop.c b/drivers/gpu/drm/drm_colorop.c
> index 48d0b7ae3fc9..4c4d0a953e35 100644
> --- a/drivers/gpu/drm/drm_colorop.c
> +++ b/drivers/gpu/drm/drm_colorop.c
> @@ -498,19 +498,19 @@ void drm_colorop_atomic_destroy_state(struct drm_colorop *colorop,
>  	__drm_atomic_helper_colorop_destroy_state(state);
>  	kfree(state);
>  }
>  
>  /**
> - * __drm_colorop_state_reset - resets colorop state to default values
> + * __drm_colorop_state_init - Initializes colorop state to default values
>   * @colorop_state: atomic colorop state, must not be NULL
>   * @colorop: colorop object, must not be NULL
>   *
>   * Initializes the newly allocated @colorop_state with default
>   * values. This is useful for drivers that subclass the colorop state.
>   */
> -static void __drm_colorop_state_reset(struct drm_colorop_state *colorop_state,
> -				      struct drm_colorop *colorop)
> +static void __drm_colorop_state_init(struct drm_colorop_state *colorop_state,
> +				     struct drm_colorop *colorop)
>  {
>  	u64 val;
>  
>  	colorop_state->colorop = colorop;
>  	colorop_state->bypass = true;
> @@ -537,11 +537,11 @@ static void __drm_colorop_state_reset(struct drm_colorop_state *colorop_state,
>   */
>  static void __drm_colorop_reset(struct drm_colorop *colorop,
>  				struct drm_colorop_state *colorop_state)
>  {
>  	if (colorop_state)
> -		__drm_colorop_state_reset(colorop_state, colorop);
> +		__drm_colorop_state_init(colorop_state, colorop);
>  
>  	colorop->state = colorop_state;
>  }
>  
>  void drm_colorop_reset(struct drm_colorop *colorop)

-- 
Regards,

Laurent Pinchart
