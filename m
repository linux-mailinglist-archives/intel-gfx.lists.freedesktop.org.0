Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8PpSDfOwFmokogcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 10:53:07 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F82B5E15E5
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 10:53:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F55610E760;
	Wed, 27 May 2026 08:53:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=suse.de header.i=@suse.de header.b="wrTu4DF1";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="LjJ2spsM";
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="wrTu4DF1";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="LjJ2spsM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.223.130])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 209E110E1AD
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 May 2026 08:53:03 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id C12FD6A806;
 Wed, 27 May 2026 08:53:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1779871981; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=fHr5XrSud6pNgAeA10u5f9+hSZqjuGHLz/WCO58vfJs=;
 b=wrTu4DF1GXjglPhGleOwGYGEnxgqYF8TkJIOmSWNecFqF15B+8gaAZt5jF8vPmpacfGD8g
 5CzeQl4lSdNYeHIKXLHBWm+YA8SBx9zQsftG/OoNdsDNKRfP36cAcn3EQ3FHS9iYB0YWTW
 DbwSLUoCTGx1tiRl/sZCYjwl36caYls=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1779871981;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=fHr5XrSud6pNgAeA10u5f9+hSZqjuGHLz/WCO58vfJs=;
 b=LjJ2spsMrhtxXDiFCcdM23trVrGzubvJbyHSkmMVeRBlwZol82YzZnlRsea0XsOZaxgGyA
 jVQmCfyci6GeWyCg==
Authentication-Results: smtp-out1.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1779871981; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=fHr5XrSud6pNgAeA10u5f9+hSZqjuGHLz/WCO58vfJs=;
 b=wrTu4DF1GXjglPhGleOwGYGEnxgqYF8TkJIOmSWNecFqF15B+8gaAZt5jF8vPmpacfGD8g
 5CzeQl4lSdNYeHIKXLHBWm+YA8SBx9zQsftG/OoNdsDNKRfP36cAcn3EQ3FHS9iYB0YWTW
 DbwSLUoCTGx1tiRl/sZCYjwl36caYls=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1779871981;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=fHr5XrSud6pNgAeA10u5f9+hSZqjuGHLz/WCO58vfJs=;
 b=LjJ2spsMrhtxXDiFCcdM23trVrGzubvJbyHSkmMVeRBlwZol82YzZnlRsea0XsOZaxgGyA
 jVQmCfyci6GeWyCg==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id BC7065A747;
 Wed, 27 May 2026 08:53:00 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id xXhJLOywFmqMDAAAD6G6ig
 (envelope-from <tzimmermann@suse.de>); Wed, 27 May 2026 08:53:00 +0000
Message-ID: <ec0fcc2e-b767-4509-b9ae-174c9941796e@suse.de>
Date: Wed, 27 May 2026 10:53:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 01/19] drm/atomic: Document atomic commit lifetime
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
References: <20260526-drm-mode-config-init-v6-0-852346394200@kernel.org>
 <20260526-drm-mode-config-init-v6-1-852346394200@kernel.org>
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
In-Reply-To: <20260526-drm-mode-config-init-v6-1-852346394200@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Level: 
X-Spam-Score: -2.80
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[suse.com:url,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,suse.de:email,suse.de:mid,suse.de:dkim]
X-Rspamd-Queue-Id: 2F82B5E15E5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



Am 26.05.26 um 18:46 schrieb Maxime Ripard:
> How drm_atomic_commit and the various entity structures are allocated
> and freed isn't really trivial. Document it.
>
> Reviewed-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>

Reviewed-by: Thomas Zimmermann <tzimmermann@suse.de>

> ---
>   Documentation/gpu/drm-kms.rst |  6 ++++
>   drivers/gpu/drm/drm_atomic.c  | 72 +++++++++++++++++++++++++++++++++++++++++++
>   2 files changed, 78 insertions(+)
>
> diff --git a/Documentation/gpu/drm-kms.rst b/Documentation/gpu/drm-kms.rst
> index d22817fdf9aa..36d76e391074 100644
> --- a/Documentation/gpu/drm-kms.rst
> +++ b/Documentation/gpu/drm-kms.rst
> @@ -282,10 +282,16 @@ structure, ordering of committing state changes to hardware is sequenced using
>   :c:type:`struct drm_crtc_commit <drm_crtc_commit>`.
>   
>   Read on in this chapter, and also in :ref:`drm_atomic_helper` for more detailed
>   coverage of specific topics.
>   
> +Atomic State Lifetime
> +---------------------
> +
> +.. kernel-doc:: drivers/gpu/drm/drm_atomic.c
> +   :doc: state lifetime
> +
>   Handling Driver Private State
>   -----------------------------
>   
>   .. kernel-doc:: drivers/gpu/drm/drm_atomic.c
>      :doc: handling driver private state
> diff --git a/drivers/gpu/drm/drm_atomic.c b/drivers/gpu/drm/drm_atomic.c
> index 170de30c28ae..3c5714481ad2 100644
> --- a/drivers/gpu/drm/drm_atomic.c
> +++ b/drivers/gpu/drm/drm_atomic.c
> @@ -45,10 +45,82 @@
>   #include <drm/drm_colorop.h>
>   
>   #include "drm_crtc_internal.h"
>   #include "drm_internal.h"
>   
> +/**
> + * DOC: state lifetime
> + *
> + * &drm_atomic_commit represents an update to modeset pipeline state.
> + * It's a transient object that holds a state update as a collection of
> + * pointers to individual objects' states. &struct drm_atomic_commit has
> + * a much shorter lifetime than the objects' states, since it's only
> + * allocated while preparing, checking or committing the update, while
> + * object states are allocated when preparing the update and kept alive
> + * as long as they are active in the device.
> + *
> + * Their respective lifetimes are:
> + *
> + * - at reset time, the object reset implementation allocates a new
> + *   default state and stores it in the object state pointer.
> + *
> + * - whenever a new update is needed:
> + *
> + *   + drm_atomic_commit_alloc() allocates a new &drm_atomic_commit
> + *     instance.
> + *
> + *   + The code triggering the commit (ioctl, client modeset,
> + *     drm_atomic_helper_reset_crtc(), etc.) copies the current active
> + *     state of all entities affected by the update into this new
> + *     &drm_atomic_commit using drm_atomic_get_plane_state(),
> + *     drm_atomic_get_crtc_state(), drm_atomic_get_connector_state(), or
> + *     drm_atomic_get_private_obj_state(). This new state can then be
> + *     modified.
> + *
> + *     At that point, &drm_atomic_commit stores three state pointers for
> + *     any affected entity: the "old" and "new" states, and
> + *     state_to_destroy. The old state is the state currently active in
> + *     the hardware, which is either the one initialized by reset() or a
> + *     newer one if a commit has been made. The new state is the state
> + *     we just allocated and we might eventually commit to the hardware.
> + *     The state_to_destroy points to the state we'll eventually have to
> + *     free when the drm_atomic_commit will be destroyed, and points to
> + *     the new state for now since the old state is still the active
> + *     state.
> + *
> + *   + After the calling code populated the commit with the entities
> + *     states, it updates the new states with the new values we need to
> + *     commit. The new commit instance is now ready.
> + *
> + *   + Then we have two branches depending on the calling code intent:
> + *
> + *     - If the calling code only wants to check that the commit would
> + *       work (for example because of the DRM_MODE_ATOMIC_TEST_ONLY
> + *       flag). It calls drm_atomic_check_only(), which in turn checks
> + *       all these states by invoking atomic_check on all affected
> + *       pipeline stages.
> + *
> + *     - If the calling code actually wants to trigger a commit, it
> + *       calls drm_atomic_commit(). The first stage is the check
> + *       mentioned above, and if the check is successful, it performs
> + *       the commit. Part of the commit is a call to
> + *       drm_atomic_helper_swap_state() which turns the new states into
> + *       the active states. After swapping states, each object's state
> + *       pointer now refers to the formerly new state. The
> + *       state_to_destroy now refers to the formerly old state.
> + *
> + *   + Once done, and when the last refererence to our &struct
> + *     drm_atomic_commit is given up through drm_atomic_commit_put(), it
> + *     calls __drm_atomic_commit_free(). In turn,
> + *     __drm_atomic_commit_free() calls drm_atomic_commit_clear() that
> + *     will free all state_to_destroy (ie. old states), and it finally
> + *     frees &drm_atomic_commit instance.
> + *
> + *   + Now, we don't have any active &drm_atomic_commit anymore, and
> + *     only the entity active states remain allocated.
> + */
> +
>   void __drm_crtc_commit_free(struct kref *kref)
>   {
>   	struct drm_crtc_commit *commit =
>   		container_of(kref, struct drm_crtc_commit, ref);
>   
>

-- 
--
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Frankenstr. 146, 90461 Nürnberg, Germany, www.suse.com
GF: Jochen Jaser, Andrew McDonald, Werner Knoblich, (HRB 36809, AG Nürnberg)


