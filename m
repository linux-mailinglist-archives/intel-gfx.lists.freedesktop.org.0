Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCDEE5AE844
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Sep 2022 14:34:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD27C10E65F;
	Tue,  6 Sep 2022 12:33:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp.domeneshop.no (smtp.domeneshop.no
 [IPv6:2a01:5b40:0:3005::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF26E10E0B5;
 Tue, 30 Aug 2022 19:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=tronnes.org
 ; s=ds202112;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Jw/BMXkk2bSHu/Tn+I+6WJ+P0/BJrbEZIqETssOewfE=; b=FepPHpMH52mF3S0z0Dm1b4Eacx
 9+AXytqqf2FpuKYbi23zay3TpsN1Qa5Q9ZkzqxJjCttzr9TbuU3Y1j/0qcm5VAs+WPWFBSs8c7qjs
 Ow5sr31xj7N3A3bvEX668fQGtcUvcKdM7cSj52sWE9TkD0gMAMWjUAfsp32+l7lCQ85m/Me1gusc1
 Bijp7ApUsaRAyASgzl0JpYLAKf134opQ/OVT9w+laZNSwPdSYEqPkUXnZ6oc+o6ps0anvP72eR/Hi
 lxMQf2MbxPx9Kg5GtUca4Efma7JwlR1CB4y7YhlP5O2HKvik27Ie2kJPKAzIuX4xEJIwxTGRSCnOv
 X+uONqhA==;
Received: from [2a01:799:961:d200:cca0:57ac:c55d:a485] (port=64134)
 by smtp.domeneshop.no with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <noralf@tronnes.org>)
 id 1oT6tW-0001t3-6u; Tue, 30 Aug 2022 21:27:30 +0200
Message-ID: <8d99b275-d0c2-c7be-5abc-8db17f8792ad@tronnes.org>
Date: Tue, 30 Aug 2022 21:27:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
To: Maxime Ripard <maxime@cerno.tech>, Maxime Ripard <mripard@kernel.org>,
 Ben Skeggs <bskeggs@redhat.com>, David Airlie <airlied@linux.ie>,
 Chen-Yu Tsai <wens@csie.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Jani Nikula <jani.nikula@linux.intel.com>, Lyude Paul <lyude@redhat.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>, Karol Herbst <kherbst@redhat.com>,
 Emma Anholt <emma@anholt.net>, Daniel Vetter <daniel@ffwll.ch>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
References: <20220728-rpi-analog-tv-properties-v2-0-459522d653a7@cerno.tech>
 <20220728-rpi-analog-tv-properties-v2-6-459522d653a7@cerno.tech>
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
In-Reply-To: <20220728-rpi-analog-tv-properties-v2-6-459522d653a7@cerno.tech>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Tue, 06 Sep 2022 12:33:46 +0000
Subject: Re: [Intel-gfx] [PATCH v2 06/41] drm/connector: Rename legacy TV
 property
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
Cc: Dom Cobley <dom@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>, nouveau@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-sunxi@lists.linux.dev,
 =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Mateusz Kwiatkowski <kfyatek+publicgit@gmail.com>,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



Den 29.08.2022 15.11, skrev Maxime Ripard:
> The current tv_mode has driver-specific values that don't allow to
> 
> easily share code using it, either at the userspace or kernel level.
> 
> 
> 
> Since we're going to introduce a new, generic, property that fit the
> 
> same purpose, let's rename this one to legacy_tv_mode to make it
> 
> obvious we should move away from it.
> 
> 
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> 

> diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
> 
> index 1d5e3cccb9e3..5cfad8b6ad83 100644
> 
> --- a/include/drm/drm_connector.h
> 
> +++ b/include/drm/drm_connector.h
> 
> @@ -695,7 +695,7 @@ struct drm_connector_tv_margins {
> 
>   * @select_subconnector: selected subconnector
> 
>   * @subconnector: detected subconnector
> 
>   * @margins: TV margins
> 
> - * @mode: TV mode
> 
> + * @legacy_mode: Legacy TV mode, driver specific value
> 
>   * @brightness: brightness in percent
> 
>   * @contrast: contrast in percent
> 
>   * @flicker_reduction: flicker reduction in percent
> 
> @@ -707,7 +707,7 @@ struct drm_tv_connector_state {
> 
>  	enum drm_mode_subconnector select_subconnector;
> 
>  	enum drm_mode_subconnector subconnector;
> 
>  	struct drm_connector_tv_margins margins;
> 
> -	unsigned int mode;
> 
> +	unsigned int legacy_mode;

I suggest you do a build of the affected drivers after adding this patch
to make sure you have changed all mode -> legacy_mode occurrences
_before_ adding back mode in a later patch.

A simple grep gave me these:

drivers/gpu/drm/vc4/vc4_vec.c:
vc4_vec_tv_modes[state->tv.mode].mode);
drivers/gpu/drm/vc4/vc4_vec.c:  vec->tv_mode =
&vc4_vec_tv_modes[conn_state->tv.mode];
drivers/gpu/drm/vc4/vc4_vec.c:  vec_mode =
&vc4_vec_tv_modes[conn_state->tv.mode];
drivers/gpu/drm/i915/display/intel_tv.c:        int format =
conn_state->tv.mode;
drivers/gpu/drm/i915/display/intel_tv.c:
connector->state->tv.mode = i;
drivers/gpu/drm/i915/display/intel_tv.c:        if (old_state->tv.mode
!= new_state->tv.mode ||
drivers/gpu/drm/i915/display/intel_tv.c:        state->tv.mode =
initial_mode;
drivers/gpu/drm/i915/display/intel_tv.c:
   state->tv.mode);
drivers/gpu/drm/i915/display/intel_sdvo.c:      format_map = 1 <<
conn_state->tv.mode;
drivers/gpu/drm/i915/display/intel_sdvo.c:      format_map = 1 <<
conn_state->tv.mode;
drivers/gpu/drm/i915/display/intel_sdvo.c:                      if
(state->tv.mode == intel_sdvo_connector->tv_format_supported[i]) {
drivers/gpu/drm/i915/display/intel_sdvo.c:              state->tv.mode =
intel_sdvo_connector->tv_format_supported[val];
drivers/gpu/drm/i915/display/intel_sdvo.c:
intel_sdvo_connector->base.base.state->tv.mode =
intel_sdvo_connector->tv_format_supported[0];

Not so easy to grep for is this in gud:

static unsigned int *gud_connector_tv_state_val(u16 prop, struct
drm_tv_connector_state *state)
{
	switch (prop) {
...
	case GUD_PROPERTY_TV_MODE:
		return &state->mode;

Noralf.

> 
>  	unsigned int brightness;
> 
>  	unsigned int contrast;
> 
>  	unsigned int flicker_reduction;
> 
> diff --git a/include/drm/drm_mode_config.h b/include/drm/drm_mode_config.h
> 
> index 6b5e01295348..35a827175c24 100644
> 
> --- a/include/drm/drm_mode_config.h
> 
> +++ b/include/drm/drm_mode_config.h
> 
> @@ -714,11 +714,13 @@ struct drm_mode_config {
> 
>  	 * between different TV connector types.
> 
>  	 */
> 
>  	struct drm_property *tv_select_subconnector_property;
> 
> +
> 
>  	/**
> 
> -	 * @tv_mode_property: Optional TV property to select
> 
> +	 * @legacy_tv_mode_property: Optional TV property to select
> 
>  	 * the output TV mode.
> 
>  	 */
> 
> -	struct drm_property *tv_mode_property;
> 
> +	struct drm_property *legacy_tv_mode_property;
> 
> +
> 
>  	/**
> 
>  	 * @tv_left_margin_property: Optional TV property to set the left
> 
>  	 * margin (expressed in pixels).
> 
> 
> 
