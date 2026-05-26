Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QHLzLJBpFWqyUwcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 11:36:16 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D5E95D36BE
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 11:36:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7043010E05E;
	Tue, 26 May 2026 09:36:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=suse.de header.i=@suse.de header.b="W//chOT9";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="J/ZM3I/F";
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="W0lr0wQ2";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="Mu8lSDY/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.223.130])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A8D910E2A8
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 May 2026 09:36:13 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org
 [IPv6:2a07:de40:b281:104:10:150:64:97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id E1A296B158;
 Tue, 26 May 2026 09:36:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1779788172; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=0TYzxBo6YYni/YvihchIYDS6WS2my53hnhjsZy7G6kk=;
 b=W//chOT96fM5Q6mOKy+1WnsKLMKs29ilrazvg7PGpWKNkpNT3Jj1eHvEZJVyo3JB7mZZbj
 A8TYogk0gmoDzQzfqlIXr55ai6Lj+sC159D6UIdAJ9/CjEzVByUpD5zHJ+kprJ3QUb1iTC
 Rv/n7RKaZRzjS7Pwy9eZTM7S2Wqmyu8=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1779788172;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=0TYzxBo6YYni/YvihchIYDS6WS2my53hnhjsZy7G6kk=;
 b=J/ZM3I/FVYIPO50Q+ou1D0SQ1LGqbHaPUevd0R/XYnuXrP2Aw6neXmLQw72o7qpJuX2D4q
 PxD6+tF9uOpfHjBw==
Authentication-Results: smtp-out1.suse.de;
 dkim=pass header.d=suse.de header.s=susede2_rsa header.b=W0lr0wQ2;
 dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b="Mu8lSDY/"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1779788171; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=0TYzxBo6YYni/YvihchIYDS6WS2my53hnhjsZy7G6kk=;
 b=W0lr0wQ2Hj6RzqkTrAK41Sd6ZphAOFDgnkszUMT0Dff29O1+nQYwy3h/7jxm3r8/jBU49q
 N3faH1TERDqjgDijgQChC2NHEfEOUuxgvkHyV/OSIL6KLVMxNRYO1cRnH4fN0Ca/G3p/Io
 jFTg4i+eRQfJ0fuhmQ1YCeAGyXxWyT8=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1779788171;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=0TYzxBo6YYni/YvihchIYDS6WS2my53hnhjsZy7G6kk=;
 b=Mu8lSDY/aNRFbojgtuwTNbIjctkPIXvP2shk5GJ6efj4VMDZhedfSulzGFRCgFWbabxG87
 bilWMX+wfBnN/0DQ==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 02D285A132;
 Tue, 26 May 2026 09:36:10 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id ONarOoppFWo8CQAAD6G6ig
 (envelope-from <tzimmermann@suse.de>); Tue, 26 May 2026 09:36:10 +0000
Message-ID: <7af4b63e-027c-4be3-8ded-6bd770037d3c@suse.de>
Date: Tue, 26 May 2026 11:36:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 00/19] drm/atomic: Rework initial state allocation
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
In-Reply-To: <20260519-drm-mode-config-init-v5-0-388b03321e38@kernel.org>
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
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[intel-gfx,renesas];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,suse.com:url,suse.de:mid,suse.de:dkim]
X-Rspamd-Queue-Id: 1D5E95D36BE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

I only had comments on the writing. Looks good otherwise.

Best regards
Thomas

Am 19.05.26 um 11:01 schrieb Maxime Ripard:
> Hi,
>
> This series started from my work on the hardware state readout[1], and
> more specifically a discussion with Thomas[2].
>
> This series expands the work that has been merged recently to make
> drm_private_obj and drm_private_state allocation a bit more consistent
> and ended up creating a new atomic_create_state callback to allocate a
> new state with no side effect.
>
> The first patches document the existing behaviour and fix a few
> cleanups and typos.
>
> Then, __drm_*_state_reset() helpers are renamed to
> __drm_*_state_init() to clarify that they initialize rather than
> reset state, and we add the new atomic_create_state callback to
> every other DRM object (planes, CRTCs, connectors, colorops).
>
> Next, we leverage those new callbacks to create a new helper,
> drm_mode_config_create_initial_state(), to create the initial state
> for all the objects of a driver, and update the driver skeleton to
> recommend it.
>
> Finally, we convert the tidss driver and the bridge_connector to the
> new pattern.
>
> This was tested on a TI SK-AM62, with the tidss driver.
>
> Let me know what you think,
> Maxime
>
> 1: https://lore.kernel.org/dri-devel/20250902-drm-state-readout-v1-0-14ad5315da3f@kernel.org/
> 2: https://lore.kernel.org/dri-devel/5920ffe5-b6b1-484b-b320-332b9eb9db82@suse.de/
>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
> Changes in v5:
> - Address sashiko reviews
> - Improve the docs
> - Fix drmm_connector_hdmi_init
> - Drop drm/tidss: Switch to drm_mode_config_create_initial_state since
>    not all possible bridges would have been converted to create_state
> - Link to v4: https://lore.kernel.org/r/20260512-drm-mode-config-init-v4-0-591dfdcc1bf9@kernel.org
>
> Changes in v4:
> - Rebased on current drm-misc-next
> - Update drm_atomic_state to drm_atomic_commit
> - Various doc impromvements
> - Don't call drm_crtc_vblank_reset in create_state
> - Prevent mem leak if states already have a state when
>    drm_mode_config_reset or _create_initial_state are called
> - Link to v3: https://lore.kernel.org/r/20260424-drm-mode-config-init-v3-0-8b68d9db0d8b@kernel.org
>
> Changes in v3:
> - Reintroduce state documentation that was dropped by accident
> - Change name to drm_mode_config_create_initial_state()
> - Don't call drm_mode_config_create_initial_state() in drm_dev_register
>    anymore
> - Drop __drm_atomic_helper_*_create_state
> - Improve documentation and commit messages where necessary
> - Collected tags
> - Link to v2: https://lore.kernel.org/r/20260320-drm-mode-config-init-v2-0-c63f1134e76c@kernel.org
>
> Changes in v2:
> - Change the _state_reset function names to _state_init
> - Change the colorop too
> - Various doc improvements
> - Link to v1: https://lore.kernel.org/r/20260310-drm-mode-config-init-v1-0-de7397c8e1cf@kernel.org
>
> ---
> Maxime Ripard (19):
>        drm/atomic: Document atomic commit lifetime
>        drm/colorop: Fix typos in the doc
>        drm/atomic: Drop drm_private_obj.state assignment from create_state
>        drm/atomic: Expand atomic_create_state expectations for drm_private_obj
>        drm/mode-config: Document drm_private_obj exclusion from drm_mode_config_reset()
>        drm/colorop: Rename __drm_colorop_state_reset()
>        drm/colorop: Create drm_atomic_helper_colorop_create_state()
>        drm/atomic-state-helper: Fix __drm_atomic_helper_plane_reset() doc typo
>        drm/atomic-state-helper: Rename __drm_atomic_helper_plane_state_reset()
>        drm/plane: Add new atomic_create_state callback
>        drm/atomic-state-helper: Rename __drm_atomic_helper_crtc_state_reset()
>        drm/crtc: Add new atomic_create_state callback
>        drm/atomic-state-helper: Rename __drm_atomic_helper_connector_state_reset()
>        drm/hdmi: Rename __drm_atomic_helper_connector_hdmi_reset()
>        drm/connector: Add new atomic_create_state callback
>        drm/mode-config: Create drm_mode_config_create_initial_state()
>        drm/drv: Switch skeleton to drm_mode_config_create_initial_state()
>        drm/tidss: Convert to atomic_create_state
>        drm/bridge_connector: Convert to atomic_create_state
>
>   Documentation/gpu/drm-kms.rst                      |   6 +
>   drivers/gpu/drm/display/drm_bridge_connector.c     |  17 +-
>   drivers/gpu/drm/display/drm_hdmi_state_helper.c    |  15 +-
>   drivers/gpu/drm/drm_atomic.c                       |  67 ++++++++
>   drivers/gpu/drm/drm_atomic_state_helper.c          | 114 ++++++++++---
>   drivers/gpu/drm/drm_colorop.c                      |  41 ++++-
>   drivers/gpu/drm/drm_connector.c                    |  10 +-
>   drivers/gpu/drm/drm_drv.c                          |   4 +-
>   drivers/gpu/drm/drm_mode_config.c                  | 189 ++++++++++++++++++++-
>   drivers/gpu/drm/i915/display/intel_crtc.c          |   2 +-
>   drivers/gpu/drm/i915/display/intel_plane.c         |   2 +-
>   drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c             |   2 +-
>   drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c |   2 +-
>   drivers/gpu/drm/tidss/tidss_crtc.c                 |  17 +-
>   drivers/gpu/drm/tidss/tidss_plane.c                |   2 +-
>   drivers/gpu/drm/vc4/vc4_hdmi.c                     |   2 +-
>   include/drm/display/drm_hdmi_state_helper.h        |   4 +-
>   include/drm/drm_atomic.h                           |   5 +-
>   include/drm/drm_atomic_state_helper.h              |  12 +-
>   include/drm/drm_colorop.h                          |   2 +
>   include/drm/drm_connector.h                        |  16 ++
>   include/drm/drm_crtc.h                             |  16 ++
>   include/drm/drm_mode_config.h                      |   1 +
>   include/drm/drm_plane.h                            |  16 ++
>   24 files changed, 496 insertions(+), 68 deletions(-)
> ---
> base-commit: 69c95e4c529297c25503e60acba757fba24fdc95
> change-id: 20260310-drm-mode-config-init-1e1f52b745d0
>
> Best regards,

-- 
--
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Frankenstr. 146, 90461 Nürnberg, Germany, www.suse.com
GF: Jochen Jaser, Andrew McDonald, Werner Knoblich, (HRB 36809, AG Nürnberg)


