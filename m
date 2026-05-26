Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sCpTMfJoFWqyUwcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 11:33:38 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EFB95D3633
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 11:33:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E14E310E614;
	Tue, 26 May 2026 09:33:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=suse.de header.i=@suse.de header.b="sVA8J1Iy";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="q1I9JjAu";
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="oaoa9VTc";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="XlGyeje0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.223.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D14E10E612
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 May 2026 09:33:34 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id DB09A66E35;
 Tue, 26 May 2026 09:33:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1779788013; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=G4y+FdQyG4vd1UAt5SwUKmSBgkQyxPz42yMUqHZGQNM=;
 b=sVA8J1IyW/dMkuYzYOXaBYZfef5oQHILWrng/dE9C8ChaZjdvIA2q9czsB2J6ZDZB1yj29
 SLUcyEUUEIeepi4KBwwZ10sqCqpTIichnSvhvzXLL8/8c4Z+f9UwNKmOw/ZvKL6SZmUscV
 H2zzebzevMJ8wNTKNskH01JP7EcUdaU=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1779788013;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=G4y+FdQyG4vd1UAt5SwUKmSBgkQyxPz42yMUqHZGQNM=;
 b=q1I9JjAuktBn0t9TG8+GAobzMwhectwZouumUIcq47zTVMFOzIy9c7xdZx0IMd+PO+5Am3
 G9OyW03L6rcx9LCw==
Authentication-Results: smtp-out2.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1779788011; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=G4y+FdQyG4vd1UAt5SwUKmSBgkQyxPz42yMUqHZGQNM=;
 b=oaoa9VTczw+kf2SRk2uyqkOlw67iGDXAoW/ryHHuriJYO8XN5YrDr0vlA5INTTU+r8SqGV
 qX9o8In4V/ehyXkqtFxQ1R18YBWeHY4vcxgVrTbw5r5BaQnlJTbqUDD1+mZEhdp2h8HRPk
 yizq0jaDk0C4pfq4+jozFv84bFBfuEE=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1779788011;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=G4y+FdQyG4vd1UAt5SwUKmSBgkQyxPz42yMUqHZGQNM=;
 b=XlGyeje0JVhGhQc9qoNPFmtNqRt81/TFYmoNlood/zvH9LwhsKxPqtinJz9vjpMQlsdPdf
 ElKoLP+Nei3eQoBg==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id D7D615A12F;
 Tue, 26 May 2026 09:33:30 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id 1MYdM+poFWpwBgAAD6G6ig
 (envelope-from <tzimmermann@suse.de>); Tue, 26 May 2026 09:33:30 +0000
Message-ID: <1710fd7f-7bd5-4f87-a2a2-25b518881342@suse.de>
Date: Tue, 26 May 2026 11:33:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 16/19] drm/mode-config: Create
 drm_mode_config_create_initial_state()
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
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
References: <20260519-drm-mode-config-init-v5-0-388b03321e38@kernel.org>
 <20260519-drm-mode-config-init-v5-16-388b03321e38@kernel.org>
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
In-Reply-To: <20260519-drm-mode-config-init-v5-16-388b03321e38@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Score: -2.80
X-Spam-Level: 
X-Spam-Flag: NO
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
	FORGED_RECIPIENTS(0.00)[m:mripard@kernel.org,m:maarten.lankhorst@linux.intel.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:dmitry.baryshkov@oss.qualcomm.com,m:jyri.sarha@iki.fi,m:tomi.valkeinen@ideasonboard.com,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:contact@emersion.fr,m:harry.wentland@amd.com,m:mwen@igalia.com,m:sebastian.wick@redhat.com,m:alex.hung@amd.com,m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:wens@kernel.org,m:samuel@sholland.org,m:dave.stevenson@raspberrypi.com,m:mcanal@igalia.com,m:kernel-list@raspberrypi.com,m:dri-devel@lists.freedesktop.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:daniels@collabora.com,m:intel-xe@lists.freedesktop.org,m:linux-arm-kernel@lists.infradead.org,m:linux-sunxi@lists.linux.dev,m:laurent.pinchart+ren
 esas@ideasonboard.com,m:jernejskrabec@gmail.com,m:laurent.pinchart@ideasonboard.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[tzimmermann@suse.de,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[38];
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
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-gfx,renesas];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,suse.de:email,suse.de:mid,suse.de:dkim,ideasonboard.com:email,qualcomm.com:email]
X-Rspamd-Queue-Id: 1EFB95D3633
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



Am 19.05.26 um 11:01 schrieb Maxime Ripard:
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
> Reviewed-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>

Reviewed-by: Thomas Zimmermann <tzimmermann@suse.de>

There are some notes on the style of writing below.

> ---
>   drivers/gpu/drm/drm_atomic.c      | 13 +++++-
>   drivers/gpu/drm/drm_mode_config.c | 89 +++++++++++++++++++++++++++++++++++++++
>   include/drm/drm_mode_config.h     |  1 +
>   3 files changed, 101 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/drm_atomic.c b/drivers/gpu/drm/drm_atomic.c
> index d98586d89bbe..ea021250925c 100644
> --- a/drivers/gpu/drm/drm_atomic.c
> +++ b/drivers/gpu/drm/drm_atomic.c
> @@ -59,12 +59,21 @@
>    * preparing the update and kept alive as long as they are active in the
>    * device.
>    *
>    * Their respective lifetimes are:
>    *
> - * - at reset time, the object reset implementation will allocate a new
> - *   default state and will store it in the object state pointer.
> + * - at driver initialization time, the driver will call
> + *   drm_mode_config_create_initial_state() to allocate an initial,
> + *   pristine, state for each object and will store it in the objects

Present form: 'the driver calls', 'and stores it'.

> + *   state pointer. Historically, this was one of
> + *   drm_mode_config_reset() job, so one might still encounter it in a
> + *   driver.
> + *
> + * - at reset time, for example during suspend/resume,

Are there other reset times?  If not, then rather say

"- when resuming from suspend, drm_mode_config_reset() resets..."

> + *   drm_mode_config_reset() will reset the software and hardware state
> + *   to a known default and will store it in the object's state pointer.

Present form.

Best regards
Thomas

> + *   Not all objects are affected by drm_mode_config_reset() though.
>    *
>    * - whenever a new update is needed:
>    *
>    *   + A new &struct drm_atomic_commit is allocated using
>    *     drm_atomic_commit_alloc().
> diff --git a/drivers/gpu/drm/drm_mode_config.c b/drivers/gpu/drm/drm_mode_config.c
> index 9d240817f8b6..f432f485a914 100644
> --- a/drivers/gpu/drm/drm_mode_config.c
> +++ b/drivers/gpu/drm/drm_mode_config.c
> @@ -21,10 +21,11 @@
>    */
>   
>   #include <linux/export.h>
>   #include <linux/uaccess.h>
>   
> +#include <drm/drm_atomic.h>
>   #include <drm/drm_drv.h>
>   #include <drm/drm_encoder.h>
>   #include <drm/drm_file.h>
>   #include <drm/drm_framebuffer.h>
>   #include <drm/drm_managed.h>
> @@ -314,10 +315,98 @@ void drm_mode_config_reset(struct drm_device *dev)
>   	}
>   	drm_connector_list_iter_end(&conn_iter);
>   }
>   EXPORT_SYMBOL(drm_mode_config_reset);
>   
> +/**
> + * drm_mode_config_create_initial_state - Allocates the initial state
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
> +		if (ret) {
> +			drm_connector_list_iter_end(&conn_iter);
> +			return ret;
> +		}
> +	}
> +	drm_connector_list_iter_end(&conn_iter);
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL(drm_mode_config_create_initial_state);
> +
>   /*
>    * Global properties
>    */
>   static const struct drm_prop_enum_list drm_plane_type_enum_list[] = {
>   	{ DRM_PLANE_TYPE_OVERLAY, "Overlay" },
> diff --git a/include/drm/drm_mode_config.h b/include/drm/drm_mode_config.h
> index e584652ddf67..d8f5b7e9673e 100644
> --- a/include/drm/drm_mode_config.h
> +++ b/include/drm/drm_mode_config.h
> @@ -1005,9 +1005,10 @@ int __must_check drmm_mode_config_init(struct drm_device *dev);
>   static inline int drm_mode_config_init(struct drm_device *dev)
>   {
>   	return drmm_mode_config_init(dev);
>   }
>   
> +int drm_mode_config_create_initial_state(struct drm_device *dev);
>   void drm_mode_config_reset(struct drm_device *dev);
>   void drm_mode_config_cleanup(struct drm_device *dev);
>   
>   #endif
>

-- 
--
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Frankenstr. 146, 90461 Nürnberg, Germany, www.suse.com
GF: Jochen Jaser, Andrew McDonald, Werner Knoblich, (HRB 36809, AG Nürnberg)


