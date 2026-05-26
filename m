Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oFwCARZhFWo9UwcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 11:00:06 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BCBB5D2DAC
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 11:00:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25B5410E458;
	Tue, 26 May 2026 09:00:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=suse.de header.i=@suse.de header.b="baaPyYMv";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="CFOTXZ/J";
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="Osk3/v8m";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="o3oEKfPy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.223.130])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7F9C10E1A5
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 May 2026 09:00:00 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 363006B3E6;
 Tue, 26 May 2026 08:59:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1779785999; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=ejy15HLRULv/iHzJLGVQCrLp/AiLuLDwUgWtV4C2EU0=;
 b=baaPyYMv4yGoQHFimAxytqQjn6ho5Zd1wa0FMTwsSYl4HfumaHInOXtFRCQanNqprT5hFp
 auTBrgDJ8tUVkwo6MaC9M+qFT+nZxC/H4fWaDNQArID5i810CzAF4F5PbEZZtaZC05Nhrn
 bHaoQ2UTzpstuC6Fr9OqknOV9u9dO9o=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1779785999;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=ejy15HLRULv/iHzJLGVQCrLp/AiLuLDwUgWtV4C2EU0=;
 b=CFOTXZ/Jc28jW6gUmHAzNdWyt0f6zPZG+4PWGuwLGJUl0oh2nsUA9GcdS6AVEZhA2OrMKV
 WtkbZVOIvCyH3+BA==
Authentication-Results: smtp-out1.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1779785998; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=ejy15HLRULv/iHzJLGVQCrLp/AiLuLDwUgWtV4C2EU0=;
 b=Osk3/v8mo9hxyPDuoXN6f41EsFVPQmCgg+ElT42l3CUUFnP0mQEO8Tf4arcKpUWI3bpw5N
 32aTrm9kBeHRV4iUfnJ1+9hZL4oCsIj1+zudrX0f+JoDcETLgzINRl2Igclt+cV9fFFw7P
 GpQad7BUfcrYFlgjt5c27wIFwuvWm2Q=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1779785998;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=ejy15HLRULv/iHzJLGVQCrLp/AiLuLDwUgWtV4C2EU0=;
 b=o3oEKfPyVr5jbUeUmexTQStzMVEUG9KNlGA+0hMIrGHnx4fp31jKEhtkVwom+QxhKRCnN1
 ZM2Wuy20DjfNrKBA==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 5162C5A10E;
 Tue, 26 May 2026 08:59:57 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id 01R4Eg1hFWqZZAAAD6G6ig
 (envelope-from <tzimmermann@suse.de>); Tue, 26 May 2026 08:59:57 +0000
Message-ID: <0057f209-c8a6-48bc-9194-36e3b19bec67@suse.de>
Date: Tue, 26 May 2026 10:59:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 01/19] drm/atomic: Document atomic commit lifetime
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
 <20260519-drm-mode-config-init-v5-1-388b03321e38@kernel.org>
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
In-Reply-To: <20260519-drm-mode-config-init-v5-1-388b03321e38@kernel.org>
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
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mripard@kernel.org,m:maarten.lankhorst@linux.intel.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:dmitry.baryshkov@oss.qualcomm.com,m:jyri.sarha@iki.fi,m:tomi.valkeinen@ideasonboard.com,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:contact@emersion.fr,m:harry.wentland@amd.com,m:mwen@igalia.com,m:sebastian.wick@redhat.com,m:alex.hung@amd.com,m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:wens@kernel.org,m:samuel@sholland.org,m:dave.stevenson@raspberrypi.com,m:mcanal@igalia.com,m:kernel-list@raspberrypi.com,m:dri-devel@lists.freedesktop.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:daniels@collabora.com,m:intel-xe@lists.freedesktop.org,m:linux-arm-kernel@lists.infradead.org,m:linux-sunxi@lists.linux.dev,m:laurent.pinchart+ren
 esas@ideasonboard.com,m:jernejskrabec@gmail.com,m:laurent.pinchart@ideasonboard.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[tzimmermann@suse.de,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,linux.intel.com,gmail.com,ffwll.ch,lwn.net,linuxfoundation.org,oss.qualcomm.com,iki.fi,ideasonboard.com,intel.com,linaro.org,kwiboo.se,emersion.fr,amd.com,igalia.com,redhat.com,ursulin.net,sholland.org,raspberrypi.com];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[suse.de:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_TWELVE(0.00)[38];
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
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 5BCBB5D2DAC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi,

I left a number of comments on the style of writing. Apart from that, 
it's great to have the lifetime documented.

Am 19.05.26 um 11:01 schrieb Maxime Ripard:
> How drm_atomic_commit and the various entity structures are allocated
> and freed isn't really trivial. Document it.
>
> Reviewed-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>   Documentation/gpu/drm-kms.rst |  6 +++++
>   drivers/gpu/drm/drm_atomic.c  | 58 +++++++++++++++++++++++++++++++++++++++++++
>   2 files changed, 64 insertions(+)
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
> index 170de30c28ae..d98586d89bbe 100644
> --- a/drivers/gpu/drm/drm_atomic.c
> +++ b/drivers/gpu/drm/drm_atomic.c
> @@ -45,10 +45,68 @@
>   #include <drm/drm_colorop.h>
>   
>   #include "drm_crtc_internal.h"
>   #include "drm_internal.h"
>   
> +/**
> + * DOC: state lifetime
> + *
> + * &struct drm_atomic_commit represents an update to video pipeline

I'd say 'modeset pipeline'. Video sounds too much like V4L.

> + * state. It's a transient object that holds a state update as a
> + * collection of pointers to individual objects' states. &struct
> + * drm_atomic_commit has a much shorter lifetime than the objects'
> + * states, since it's only allocated while preparing, checking or
> + * committing the update, while object states are allocated when
> + * preparing the update and kept alive as long as they are active in the
> + * device.
> + *
> + * Their respective lifetimes are:
> + *
> + * - at reset time, the object reset implementation will allocate a new
> + *   default state and will store it in the object state pointer.

Using present seems more natural, e.g., 'allocates' and 'stores'

> + *
> + * - whenever a new update is needed:
> + *
> + *   + A new &struct drm_atomic_commit is allocated using
> + *     drm_atomic_commit_alloc().

Active form: "drm_atomic_commit_alloc() allocates a new instance of 
struct drm_atomic_commit."

IIRC the '&' needs to go before drm_atomic_commit.

> + *
> + *   + The current active state of all entities affected by the update
> + *     is copied into this new &struct drm_atomic_commit using
> + *     drm_atomic_get_plane_state(), drm_atomic_get_crtc_state(),
> + *     drm_atomic_get_connector_state(), or
> + *     drm_atomic_get_private_obj_state(). This new state can then be
> + *     modified.

Again use active form.  Mention which helper invokes the copying. I 
assume it's drm_atomic_commit_alloc() or the UAPI entry points.

> + *
> + *     At that point, &struct drm_atomic_commit stores three state
> + *     pointers for any affected entity: the "old" and "new" states, and
> + *     state_to_destroy. The old state is the state currently active in
> + *     the hardware, which is either the one initialized by reset() or a
> + *     newer one if a commit has been made. The new state is the state
> + *     we just allocated and we might eventually commit to the hardware.
> + *     The state_to_destroy points to the state we'll eventually have to
> + *     free when the drm_atomic_commit will be destroyed, and points to
> + *     the new state for now since the old state is still the active
> + *     state.

Ok, sounds good.

> + *
> + *   + After the state is populated, it is checked. If the check is

You mean, it populated the new commit with the updated states?

Where does the check happen?

Again, use active form. Like: 'After ... populated the new commit with 
the updated states, it checks by invoking atomic_check of all involved 
pipeline stages."

> + *     successful, the update is committed. Part of the commit is a call

Active form: "successful, ... commits the update."

> + *     to drm_atomic_helper_swap_state() which will turn the new states
> + *     into the active states. Doing so involves updating the object's
> + *     state pointer (&drm_crtc.state or similar) to point to the new
> + *     state, and state_to_destroy will now point to the old states,
> + *     that used to be active but aren't anymore.

The final sentence ""Doing so..." is serviceable. For splendid writing, 
you could write somethink like "After swapping states, each object's 
state pointer refers to the formerly new state. The state_to_destroy 
pointer refers to the formerly old state."

> + *
> + *   + When the commit is done, and when all references to our &struct
> + *     drm_atomic_commit are put, __drm_atomic_commit_free() is called.

Active form: "After commiting the new state to hardware, ... puts all 
references to strut drm_atomic_commit and calls __drm_atomic_commit_free()".

> + *     It will, in turn, call drm_atomic_commit_clear() that will free

Present form: "It calls ... the frees ... and ...."

Best regards
Thomas

> + *     all state_to_destroy (ie. old states), and finally free &struct
> + *     drm_atomic_commit instance.
> + *
> + *   + Now, we don't have any active &struct drm_atomic_commit anymore,
> + *     and only the entity active states remain allocated.
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


