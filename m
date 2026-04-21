Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0A/xJBh752mZ9QEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2026 15:26:48 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F395E43B51B
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2026 15:26:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 036C110E8B7;
	Tue, 21 Apr 2026 13:26:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=suse.de header.i=@suse.de header.b="zMn3xHkT";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="+Y8jJxtR";
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="zMn3xHkT";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="+Y8jJxtR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.223.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 804D510ECBC
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2026 13:26:44 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org
 [IPv6:2a07:de40:b281:104:10:150:64:97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 37DAE5BCFE;
 Tue, 21 Apr 2026 13:26:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1776778003; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=bVScSwUrGnIVekGCSHLwpiUzJNp/3hvv5MEleBhpfME=;
 b=zMn3xHkTydQSGZCp3+W1Yqby93781eStkcxOqfwQcA9rqj7B+8UWS1AGoY9vRbqgD/I/62
 6u9c7JdlFoe09Rnyc6HpIt1YrY75yNLWoIoO5rHaJXbUVtWHDou5gEpJTQcdJS5gqgStY1
 IoXaqEoQdrv/EbvNlkKuEOPbQR9ptpo=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1776778003;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=bVScSwUrGnIVekGCSHLwpiUzJNp/3hvv5MEleBhpfME=;
 b=+Y8jJxtRsnXBARsIxmCDrgXNNn0odAwW4Y3ZK2Lk4RQ1eeRtMKPxtJdelibvikCHDFArox
 hs7pRLnqzyfhfbCQ==
Authentication-Results: smtp-out2.suse.de;
 dkim=pass header.d=suse.de header.s=susede2_rsa header.b=zMn3xHkT;
 dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=+Y8jJxtR
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1776778003; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=bVScSwUrGnIVekGCSHLwpiUzJNp/3hvv5MEleBhpfME=;
 b=zMn3xHkTydQSGZCp3+W1Yqby93781eStkcxOqfwQcA9rqj7B+8UWS1AGoY9vRbqgD/I/62
 6u9c7JdlFoe09Rnyc6HpIt1YrY75yNLWoIoO5rHaJXbUVtWHDou5gEpJTQcdJS5gqgStY1
 IoXaqEoQdrv/EbvNlkKuEOPbQR9ptpo=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1776778003;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=bVScSwUrGnIVekGCSHLwpiUzJNp/3hvv5MEleBhpfME=;
 b=+Y8jJxtRsnXBARsIxmCDrgXNNn0odAwW4Y3ZK2Lk4RQ1eeRtMKPxtJdelibvikCHDFArox
 hs7pRLnqzyfhfbCQ==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 58C31593AF;
 Tue, 21 Apr 2026 13:26:42 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id xzA8FBJ752laDQAAD6G6ig
 (envelope-from <tzimmermann@suse.de>); Tue, 21 Apr 2026 13:26:42 +0000
Message-ID: <3913a707-c512-4c7d-a080-a0e11098745a@suse.de>
Date: Tue, 21 Apr 2026 15:26:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 12/20] drm/hdmi: Rename
 __drm_atomic_helper_connector_hdmi_reset()
To: Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Jyri Sarha <jyri.sarha@iki.fi>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Simon Ser <contact@emersion.fr>, Harry Wentland <harry.wentland@amd.com>,
 Melissa Wen <mwen@igalia.com>, Sebastian Wick <sebastian.wick@redhat.com>,
 Alex Hung <alex.hung@amd.com>, Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Chen-Yu Tsai <wens@kernel.org>,
 Samuel Holland <samuel@sholland.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 =?UTF-8?Q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>,
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>
Cc: dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Daniel Stone <daniels@collabora.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev
References: <20260320-drm-mode-config-init-v2-0-c63f1134e76c@kernel.org>
 <20260320-drm-mode-config-init-v2-12-c63f1134e76c@kernel.org>
Content-Language: en-US
From: Thomas Zimmermann <tzimmermann@suse.de>
Autocrypt: addr=tzimmermann@suse.de; keydata=
 xsBNBFs50uABCADEHPidWt974CaxBVbrIBwqcq/WURinJ3+2WlIrKWspiP83vfZKaXhFYsdg
 XH47fDVbPPj+d6tQrw5lPQCyqjwrCPYnq3WlIBnGPJ4/jreTL6V+qfKRDlGLWFjZcsrPJGE0
 BeB5BbqP5erN1qylK9i3gPoQjXGhpBpQYwRrEyQyjuvk+Ev0K1Jc5tVDeJAuau3TGNgah4Yc
 hdHm3bkPjz9EErV85RwvImQ1dptvx6s7xzwXTgGAsaYZsL8WCwDaTuqFa1d1jjlaxg6+tZsB
 9GluwvIhSezPgnEmimZDkGnZRRSFiGP8yjqTjjWuf0bSj5rUnTGiyLyRZRNGcXmu6hjlABEB
 AAHNJ1Rob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPsLAjgQTAQgAOAIb
 AwULCQgHAgYVCgkICwIEFgIDAQIeAQIXgBYhBHIX+6yM6c9jRKFo5WgNwR1TC3ojBQJftODH
 AAoJEGgNwR1TC3ojx1wH/0hKGWugiqDgLNXLRD/4TfHBEKmxIrmfu9Z5t7vwUKfwhFL6hqvo
 lXPJJKQpQ2z8+X2vZm/slsLn7J1yjrOsoJhKABDi+3QWWSGkaGwRJAdPVVyJMfJRNNNIKwVb
 U6B1BkX2XDKDGffF4TxlOpSQzdtNI/9gleOoUA8+jy8knnDYzjBNOZqLG2FuTdicBXblz0Mf
 vg41gd9kCwYXDnD91rJU8tzylXv03E75NCaTxTM+FBXPmsAVYQ4GYhhgFt8S2UWMoaaABLDe
 7l5FdnLdDEcbmd8uLU2CaG4W2cLrUaI4jz2XbkcPQkqTQ3EB67hYkjiEE6Zy3ggOitiQGcqp
 j//OwE0EWznS4AEIAMYmP4M/V+T5RY5at/g7rUdNsLhWv1APYrh9RQefODYHrNRHUE9eosYb
 T6XMryR9hT8XlGOYRwKWwiQBoWSDiTMo/Xi29jUnn4BXfI2px2DTXwc22LKtLAgTRjP+qbU6
 3Y0xnQN29UGDbYgyyK51DW3H0If2a3JNsheAAK+Xc9baj0LGIc8T9uiEWHBnCH+RdhgATnWW
 GKdDegUR5BkDfDg5O/FISymJBHx2Dyoklv5g4BzkgqTqwmaYzsl8UxZKvbaxq0zbehDda8lv
 hFXodNFMAgTLJlLuDYOGLK2AwbrS3Sp0AEbkpdJBb44qVlGm5bApZouHeJ/+n+7r12+lqdsA
 EQEAAcLAdgQYAQgAIAIbDBYhBHIX+6yM6c9jRKFo5WgNwR1TC3ojBQJftOH6AAoJEGgNwR1T
 C3ojVSkIALpAPkIJPQoURPb1VWjh34l0HlglmYHvZszJWTXYwavHR8+k6Baa6H7ufXNQtThR
 yIxJrQLW6rV5lm7TjhffEhxVCn37+cg0zZ3j7zIsSS0rx/aMwi6VhFJA5hfn3T0TtrijKP4A
 SAQO9xD1Zk9/61JWk8OysuIh7MXkl0fxbRKWE93XeQBhIJHQfnc+YBLprdnxR446Sh8Wn/2D
 Ya8cavuWf2zrB6cZurs048xe0UbSW5AOSo4V9M0jzYI4nZqTmPxYyXbm30Kvmz0rYVRaitYJ
 4kyYYMhuULvrJDMjZRvaNe52tkKAvMevcGdt38H4KSVXAylqyQOW5zvPc4/sq9c=
In-Reply-To: <20260320-drm-mode-config-init-v2-12-c63f1134e76c@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Flag: NO
X-Spam-Score: -3.01
X-Spam-Level: 
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
X-Spamd-Result: default: False [0.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[suse.de,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:mripard@kernel.org,m:maarten.lankhorst@linux.intel.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:dmitry.baryshkov@oss.qualcomm.com,m:jyri.sarha@iki.fi,m:tomi.valkeinen@ideasonboard.com,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:contact@emersion.fr,m:harry.wentland@amd.com,m:mwen@igalia.com,m:sebastian.wick@redhat.com,m:alex.hung@amd.com,m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:wens@kernel.org,m:samuel@sholland.org,m:dave.stevenson@raspberrypi.com,m:mcanal@igalia.com,m:kernel-list@raspberrypi.com,m:dri-devel@lists.freedesktop.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:daniels@collabora.com,m:intel-xe@lists.freedesktop.org,m:linux-arm-kernel@lists.infradead.org,m:linux-sunxi@lists.linux.dev,m:jernejskrabec@gmail.
 com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[tzimmermann@suse.de,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[37];
	FREEMAIL_TO(0.00)[kernel.org,linux.intel.com,gmail.com,ffwll.ch,lwn.net,linuxfoundation.org,oss.qualcomm.com,iki.fi,ideasonboard.com,intel.com,linaro.org,kwiboo.se,emersion.fr,amd.com,igalia.com,redhat.com,ursulin.net,sholland.org,raspberrypi.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	DKIM_TRACE(0.00)[suse.de:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[tzimmermann@suse.de,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,ideasonboard.com:email,suse.de:email,suse.de:dkim,suse.de:mid,suse.com:url]
X-Rspamd-Queue-Id: F395E43B51B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



Am 20.03.26 um 17:27 schrieb Maxime Ripard:
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
> Signed-off-by: Maxime Ripard <mripard@kernel.org>

Reviewed-by: Thomas Zimmermann <tzimmermann@suse.de>

> ---
>   drivers/gpu/drm/display/drm_bridge_connector.c     |  4 ++--
>   drivers/gpu/drm/display/drm_hdmi_state_helper.c    | 14 ++++++++------
>   drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c             |  2 +-
>   drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c |  2 +-
>   drivers/gpu/drm/vc4/vc4_hdmi.c                     |  2 +-
>   include/drm/display/drm_hdmi_state_helper.h        |  4 ++--
>   6 files changed, 15 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/gpu/drm/display/drm_bridge_connector.c b/drivers/gpu/drm/display/drm_bridge_connector.c
> index f686aa5c0ed9b84dbe5e0957df22d08aff2f1945..929f06b290626d2091418a6377a5230e3c264b60 100644
> --- a/drivers/gpu/drm/display/drm_bridge_connector.c
> +++ b/drivers/gpu/drm/display/drm_bridge_connector.c
> @@ -270,12 +270,12 @@ static void drm_bridge_connector_reset(struct drm_connector *connector)
>   	struct drm_bridge_connector *bridge_connector =
>   		to_drm_bridge_connector(connector);
>   
>   	drm_atomic_helper_connector_reset(connector);
>   	if (bridge_connector->bridge_hdmi)
> -		__drm_atomic_helper_connector_hdmi_reset(connector,
> -							 connector->state);
> +		__drm_atomic_helper_connector_hdmi_state_init(connector,
> +							      connector->state);
>   }
>   
>   static const struct drm_connector_funcs drm_bridge_connector_funcs = {
>   	.reset = drm_bridge_connector_reset,
>   	.detect = drm_bridge_connector_detect,
> diff --git a/drivers/gpu/drm/display/drm_hdmi_state_helper.c b/drivers/gpu/drm/display/drm_hdmi_state_helper.c
> index a1d16762ac7a9ebdc48f081c5d2f5e200d406099..cdd6df37c04a4b2073004ea08a3f5283a56692df 100644
> --- a/drivers/gpu/drm/display/drm_hdmi_state_helper.c
> +++ b/drivers/gpu/drm/display/drm_hdmi_state_helper.c
> @@ -304,29 +304,31 @@
>    *		--kunitconfig=drivers/gpu/drm/tests \
>    *		drm_atomic_helper_connector_hdmi_*
>    */
>   
>   /**
> - * __drm_atomic_helper_connector_hdmi_reset() - Initializes all HDMI @drm_connector_state resources
> + * __drm_atomic_helper_connector_hdmi_state_init() - Initializes all HDMI @drm_connector_state resources
>    * @connector: DRM connector
>    * @new_conn_state: connector state to reset
>    *
>    * Initializes all HDMI resources from a @drm_connector_state without
>    * actually allocating it. This is useful for HDMI drivers, in
> - * combination with __drm_atomic_helper_connector_reset() or
> - * drm_atomic_helper_connector_reset().
> + * combination with __drm_atomic_helper_connector_reset(),
> + * drm_atomic_helper_connector_reset(),
> + * __drm_atomic_helper_connector_create_state() or
> + * drm_atomic_helper_connector_create_state() .
>    */
> -void __drm_atomic_helper_connector_hdmi_reset(struct drm_connector *connector,
> -					      struct drm_connector_state *new_conn_state)
> +void __drm_atomic_helper_connector_hdmi_state_init(struct drm_connector *connector,
> +						   struct drm_connector_state *new_conn_state)
>   {
>   	unsigned int max_bpc = connector->max_bpc;
>   
>   	new_conn_state->max_bpc = max_bpc;
>   	new_conn_state->max_requested_bpc = max_bpc;
>   	new_conn_state->hdmi.broadcast_rgb = DRM_HDMI_BROADCAST_RGB_AUTO;
>   }
> -EXPORT_SYMBOL(__drm_atomic_helper_connector_hdmi_reset);
> +EXPORT_SYMBOL(__drm_atomic_helper_connector_hdmi_state_init);
>   
>   static const struct drm_display_mode *
>   connector_state_get_mode(const struct drm_connector_state *conn_state)
>   {
>   	struct drm_atomic_state *state;
> diff --git a/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c b/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c
> index a50f260c73e41493528e545591aaad0e3f138be2..0ebebb04e68fab5b7938a604f85ad9b756fe33f6 100644
> --- a/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c
> +++ b/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c
> @@ -283,11 +283,11 @@ sun4i_hdmi_connector_detect(struct drm_connector *connector, bool force)
>   }
>   
>   static void sun4i_hdmi_connector_reset(struct drm_connector *connector)
>   {
>   	drm_atomic_helper_connector_reset(connector);
> -	__drm_atomic_helper_connector_hdmi_reset(connector, connector->state);
> +	__drm_atomic_helper_connector_hdmi_state_init(connector, connector->state);
>   }
>   
>   static const struct drm_connector_funcs sun4i_hdmi_connector_funcs = {
>   	.detect			= sun4i_hdmi_connector_detect,
>   	.fill_modes		= drm_helper_probe_single_connector_modes,
> diff --git a/drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c b/drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c
> index 4bdcea3c7435146aebb1716f38d7302ddb7c6296..aaa73b75f3ce5010147f48afc365d074bb2ec7a7 100644
> --- a/drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c
> +++ b/drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c
> @@ -166,11 +166,11 @@ static const struct drm_connector_helper_funcs dummy_connector_helper_funcs = {
>   };
>   
>   static void dummy_hdmi_connector_reset(struct drm_connector *connector)
>   {
>   	drm_atomic_helper_connector_reset(connector);
> -	__drm_atomic_helper_connector_hdmi_reset(connector, connector->state);
> +	__drm_atomic_helper_connector_hdmi_state_init(connector, connector->state);
>   }
>   
>   static const struct drm_connector_funcs dummy_connector_funcs = {
>   	.atomic_destroy_state	= drm_atomic_helper_connector_destroy_state,
>   	.atomic_duplicate_state	= drm_atomic_helper_connector_duplicate_state,
> diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
> index 9898e5451a07a1dca809fb6db3fec59d07485b95..f59d0877a5f48bed6b421775da7ddd008d68f9d9 100644
> --- a/drivers/gpu/drm/vc4/vc4_hdmi.c
> +++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
> @@ -506,11 +506,11 @@ static int vc4_hdmi_connector_atomic_check(struct drm_connector *connector,
>   }
>   
>   static void vc4_hdmi_connector_reset(struct drm_connector *connector)
>   {
>   	drm_atomic_helper_connector_reset(connector);
> -	__drm_atomic_helper_connector_hdmi_reset(connector, connector->state);
> +	__drm_atomic_helper_connector_hdmi_state_init(connector, connector->state);
>   	drm_atomic_helper_connector_tv_margins_reset(connector);
>   }
>   
>   static const struct drm_connector_funcs vc4_hdmi_connector_funcs = {
>   	.force = drm_atomic_helper_connector_hdmi_force,
> diff --git a/include/drm/display/drm_hdmi_state_helper.h b/include/drm/display/drm_hdmi_state_helper.h
> index 2349c0d0f00fb468167023d4db2055c70e603bcd..f7600aabdd5f066772a9a82a1fa8a00be7a48396 100644
> --- a/include/drm/display/drm_hdmi_state_helper.h
> +++ b/include/drm/display/drm_hdmi_state_helper.h
> @@ -9,12 +9,12 @@ struct drm_connector_state;
>   struct drm_display_mode;
>   struct hdmi_audio_infoframe;
>   
>   enum drm_connector_status;
>   
> -void __drm_atomic_helper_connector_hdmi_reset(struct drm_connector *connector,
> -					      struct drm_connector_state *new_conn_state);
> +void __drm_atomic_helper_connector_hdmi_state_init(struct drm_connector *connector,
> +						   struct drm_connector_state *new_conn_state);
>   
>   int drm_atomic_helper_connector_hdmi_check(struct drm_connector *connector,
>   					   struct drm_atomic_state *state);
>   
>   int drm_atomic_helper_connector_hdmi_update_audio_infoframe(struct drm_connector *connector,
>

-- 
--
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Frankenstr. 146, 90461 Nürnberg, Germany, www.suse.com
GF: Jochen Jaser, Andrew McDonald, Werner Knoblich, (HRB 36809, AG Nürnberg)


