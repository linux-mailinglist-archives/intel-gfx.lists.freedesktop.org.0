Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CICkFLtnFWqyUwcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 11:28:27 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9CE15D3511
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 11:28:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E765E10E481;
	Tue, 26 May 2026 09:28:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=suse.de header.i=@suse.de header.b="PUVYor5z";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="ze1+YUzq";
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="PUVYor5z";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="ze1+YUzq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.223.130])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D40C410E179
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 May 2026 09:28:20 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org
 [IPv6:2a07:de40:b281:104:10:150:64:97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 0BE4E6B11C;
 Tue, 26 May 2026 09:28:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1779787699; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=e1ycFbTDM1H/MkSqi8mEXcvsJDNC+SpL10p5P+mjlCM=;
 b=PUVYor5zx7Jt+ICxWfd9bLJwBsE+2vq9/K+2zVitrvTgxyjLcKFtGv5SvhmQHFhyWNopRu
 6S0GBXIxSI0LovcCDAENVq0FVqKHhceyWVQ5VPW8q4BvJ3Tws5efEvtPnRNrlkaW0FOUIT
 kyrTbKZQVbIZ+Oncm+SBKvK18yZf8lE=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1779787699;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=e1ycFbTDM1H/MkSqi8mEXcvsJDNC+SpL10p5P+mjlCM=;
 b=ze1+YUzqyKtBg14ZF61vCY6plLvB0Uc0m8BFw1rrj3ZtfBmAlXNYJ9kIjPoq9gdPHp4i+x
 OGTnbbxjY+5aoCBA==
Authentication-Results: smtp-out1.suse.de;
 dkim=pass header.d=suse.de header.s=susede2_rsa header.b=PUVYor5z;
 dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=ze1+YUzq
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1779787699; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=e1ycFbTDM1H/MkSqi8mEXcvsJDNC+SpL10p5P+mjlCM=;
 b=PUVYor5zx7Jt+ICxWfd9bLJwBsE+2vq9/K+2zVitrvTgxyjLcKFtGv5SvhmQHFhyWNopRu
 6S0GBXIxSI0LovcCDAENVq0FVqKHhceyWVQ5VPW8q4BvJ3Tws5efEvtPnRNrlkaW0FOUIT
 kyrTbKZQVbIZ+Oncm+SBKvK18yZf8lE=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1779787699;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=e1ycFbTDM1H/MkSqi8mEXcvsJDNC+SpL10p5P+mjlCM=;
 b=ze1+YUzqyKtBg14ZF61vCY6plLvB0Uc0m8BFw1rrj3ZtfBmAlXNYJ9kIjPoq9gdPHp4i+x
 OGTnbbxjY+5aoCBA==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 17D095A12A;
 Tue, 26 May 2026 09:28:18 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id /hxgBLJnFWpwAQAAD6G6ig
 (envelope-from <tzimmermann@suse.de>); Tue, 26 May 2026 09:28:18 +0000
Message-ID: <12542083-04b9-4e49-98f6-4715df6b4764@suse.de>
Date: Tue, 26 May 2026 11:28:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 15/19] drm/connector: Add new atomic_create_state
 callback
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
 <20260519-drm-mode-config-init-v5-15-388b03321e38@kernel.org>
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
In-Reply-To: <20260519-drm-mode-config-init-v5-15-388b03321e38@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Score: -3.01
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,ideasonboard.com:email,suse.de:email,suse.de:mid,suse.de:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,suse.com:url]
X-Rspamd-Queue-Id: E9CE15D3511
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



Am 19.05.26 um 11:01 schrieb Maxime Ripard:
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
> Reviewed-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>

Reviewed-by: Thomas Zimmermann <tzimmermann@suse.de>

> ---
>   drivers/gpu/drm/drm_atomic_state_helper.c | 26 ++++++++++++++++++++++++++
>   drivers/gpu/drm/drm_connector.c           | 10 +++++++++-
>   drivers/gpu/drm/drm_mode_config.c         | 31 ++++++++++++++++++++++++++++++-
>   include/drm/drm_atomic_state_helper.h     |  2 ++
>   include/drm/drm_connector.h               | 16 ++++++++++++++++
>   5 files changed, 83 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/drm_atomic_state_helper.c b/drivers/gpu/drm/drm_atomic_state_helper.c
> index e2e5a1b8a820..07686e94aae0 100644
> --- a/drivers/gpu/drm/drm_atomic_state_helper.c
> +++ b/drivers/gpu/drm/drm_atomic_state_helper.c
> @@ -532,10 +532,36 @@ void drm_atomic_helper_connector_reset(struct drm_connector *connector)
>   	kfree(connector->state);
>   	__drm_atomic_helper_connector_reset(connector, conn_state);
>   }
>   EXPORT_SYMBOL(drm_atomic_helper_connector_reset);
>   
> +/**
> + * drm_atomic_helper_connector_create_state - default &drm_connector_funcs.atomic_create_state hook for connectors
> + * @connector: connector object
> + *
> + * Allocates and  initializes pristine @drm_connector_state.
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
>   /**
>    * drm_atomic_helper_connector_tv_margins_reset - Resets TV connector properties
>    * @connector: DRM connector
>    *
>    * Resets the TV-related properties attached to a connector.
> diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
> index 3fa4d2082cd7..a0b132c658a1 100644
> --- a/drivers/gpu/drm/drm_connector.c
> +++ b/drivers/gpu/drm/drm_connector.c
> @@ -616,11 +616,19 @@ int drmm_connector_hdmi_init(struct drm_device *dev,
>   
>   	/*
>   	 * drm_connector_attach_max_bpc_property() requires the
>   	 * connector to have a state.
>   	 */
> -	if (connector->funcs->reset)
> +	if (connector->funcs->atomic_create_state) {
> +		struct drm_connector_state *state;
> +
> +		state = connector->funcs->atomic_create_state(connector);
> +		if (IS_ERR(state))
> +			return PTR_ERR(state);
> +
> +		connector->state = state;
> +	} else if (connector->funcs->reset)
>   		connector->funcs->reset(connector);
>   
>   	drm_connector_attach_max_bpc_property(connector, 8, max_bpc);
>   	connector->max_bpc = max_bpc;
>   
> diff --git a/drivers/gpu/drm/drm_mode_config.c b/drivers/gpu/drm/drm_mode_config.c
> index 2e2cd18a14b4..9d240817f8b6 100644
> --- a/drivers/gpu/drm/drm_mode_config.c
> +++ b/drivers/gpu/drm/drm_mode_config.c
> @@ -235,10 +235,36 @@ static int drm_mode_config_crtc_reset_with_create_state(struct drm_crtc *crtc)
>   	}
>   
>   	return drm_mode_config_crtc_create_state(crtc);
>   }
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
> +static int drm_mode_config_connector_reset_with_create_state(struct drm_connector *connector)
> +{
> +	if (connector->state) {
> +		connector->funcs->atomic_destroy_state(connector, connector->state);
> +		connector->state = NULL;
> +	}
> +
> +	return drm_mode_config_connector_create_state(connector);
> +}
> +
>   /**
>    * drm_mode_config_reset - call ->reset callbacks
>    * @dev: drm device
>    *
>    * This functions calls all the crtc's, encoder's and connector's ->reset
> @@ -278,13 +304,16 @@ void drm_mode_config_reset(struct drm_device *dev)
>   	drm_for_each_encoder(encoder, dev)
>   		if (encoder->funcs && encoder->funcs->reset)
>   			encoder->funcs->reset(encoder);
>   
>   	drm_connector_list_iter_begin(dev, &conn_iter);
> -	drm_for_each_connector_iter(connector, &conn_iter)
> +	drm_for_each_connector_iter(connector, &conn_iter) {
>   		if (connector->funcs->reset)
>   			connector->funcs->reset(connector);
> +		else if (connector->funcs->atomic_create_state)
> +			drm_mode_config_connector_reset_with_create_state(connector);
> +	}
>   	drm_connector_list_iter_end(&conn_iter);
>   }
>   EXPORT_SYMBOL(drm_mode_config_reset);
>   
>   /*
> diff --git a/include/drm/drm_atomic_state_helper.h b/include/drm/drm_atomic_state_helper.h
> index 9634a70e0401..f4b6d8833bc2 100644
> --- a/include/drm/drm_atomic_state_helper.h
> +++ b/include/drm/drm_atomic_state_helper.h
> @@ -73,10 +73,12 @@ void drm_atomic_helper_plane_destroy_state(struct drm_plane *plane,
>   void __drm_atomic_helper_connector_state_init(struct drm_connector_state *conn_state,
>   					       struct drm_connector *connector);
>   void __drm_atomic_helper_connector_reset(struct drm_connector *connector,
>   					 struct drm_connector_state *conn_state);
>   void drm_atomic_helper_connector_reset(struct drm_connector *connector);
> +struct drm_connector_state *
> +drm_atomic_helper_connector_create_state(struct drm_connector *connector);
>   void drm_atomic_helper_connector_tv_reset(struct drm_connector *connector);
>   int drm_atomic_helper_connector_tv_check(struct drm_connector *connector,
>   					 struct drm_atomic_commit *state);
>   void drm_atomic_helper_connector_tv_margins_reset(struct drm_connector *connector);
>   void
> diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
> index 5ad62c207d00..529755c2e862 100644
> --- a/include/drm/drm_connector.h
> +++ b/include/drm/drm_connector.h
> @@ -1569,10 +1569,26 @@ struct drm_connector_funcs {
>   	 * when a connector is being hot-unplugged for drivers that support
>   	 * connector hotplugging (e.g. DisplayPort MST).
>   	 */
>   	void (*destroy)(struct drm_connector *connector);
>   
> +	/**
> +	 * @atomic_create_state:
> +	 *
> +	 * Allocate a pristine, initialized, state for the connector
> +	 * object and return it. This callback must have no side
> +	 * effects: in particular, the returned state must not be
> +	 * assigned to the object's state pointer and it must not affect
> +	 * the hardware state.
> +	 *
> +	 * RETURNS:
> +	 *
> +	 * A new, pristine, connector state instance or an error pointer
> +	 * on failure.
> +	 */
> +	struct drm_connector_state *(*atomic_create_state)(struct drm_connector *connector);
> +
>   	/**
>   	 * @atomic_duplicate_state:
>   	 *
>   	 * Duplicate the current atomic state for this connector and return it.
>   	 * The core and helpers guarantee that any atomic state duplicated with
>

-- 
--
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Frankenstr. 146, 90461 Nürnberg, Germany, www.suse.com
GF: Jochen Jaser, Andrew McDonald, Werner Knoblich, (HRB 36809, AG Nürnberg)


