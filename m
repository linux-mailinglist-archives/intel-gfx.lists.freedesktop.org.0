Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6L3gFB4nDGrvXQUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 11:02:22 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA19F57ABEC
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 11:02:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43F0510EB7B;
	Tue, 19 May 2026 09:02:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="RCdZ6qWg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C46710EB8A;
 Tue, 19 May 2026 09:02:16 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 7703660221;
 Tue, 19 May 2026 09:02:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9D2BBC2BCF5;
 Tue, 19 May 2026 09:02:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1779181335;
 bh=8gKR8nH9fdwkklOxC1orkJLxbt3pf9ySjt3LJ0StlRk=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=RCdZ6qWgczr9dtq+2SjsDchNxEuvhhSfHUYAWOl/VQZeUnZiuHMV//qLrp2iCS6Fx
 X82N74LJqGTZ6QMlK9Et4b2MSMcl+1BuxoAQyI8Ns8iujfQlJ+w6FVyrU+IQpAloG0
 3o0oda4ixqW8X+PchhhqBakBq5m4CPOUR73ooMSIaxP8mfAMBDoN/gTbw3pLaqntFu
 9bRcRCN8q3DXLwUlLwkBDOclaslXcODv7obK/Ij/TnduCkAM6uNOd2V68saM6OJ5DP
 wrcaTqB3L9/e2PRHwRNLgRH1usJWwDNmIfNRwE98f7VfCxMkROYtscsIiBJArMQsTn
 jhlh42DHf/8Rw==
From: Maxime Ripard <mripard@kernel.org>
Date: Tue, 19 May 2026 11:01:45 +0200
Subject: [PATCH v5 03/19] drm/atomic: Drop drm_private_obj.state assignment
 from create_state
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260519-drm-mode-config-init-v5-3-388b03321e38@kernel.org>
References: <20260519-drm-mode-config-init-v5-0-388b03321e38@kernel.org>
In-Reply-To: <20260519-drm-mode-config-init-v5-0-388b03321e38@kernel.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, 
 Shuah Khan <skhan@linuxfoundation.org>, 
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
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>, 
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>
Cc: dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Daniel Stone <daniels@collabora.com>, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 Maxime Ripard <mripard@kernel.org>, 
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1621; i=mripard@kernel.org;
 h=from:subject:message-id; bh=8gKR8nH9fdwkklOxC1orkJLxbt3pf9ySjt3LJ0StlRk=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDFk8ar/i5iW5bI8RdJHYE79ik8CcL5mW7etsg/9Ps/p6Y
 cO1EpaojqksDMKcDLJiiixPZMJOL29fXOVgv/IHzBxWJpAhDFycAjARzSuMDfvCS7I3FVbu8j7l
 n5F+1MJl8cqiRx0HZgY8WOH58CDPxBmLmybc4HYRiY07zdkee1plDmPDskS/ukKVTjZ9njRB9im
 KTrUh9it/3EzJWGp7SuIS4+Kc+vNiNkwfnln/f7dkfs62SycA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
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
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[linux.intel.com,suse.de,gmail.com,ffwll.ch,lwn.net,linuxfoundation.org,oss.qualcomm.com,iki.fi,ideasonboard.com,intel.com,linaro.org,kernel.org,kwiboo.se,emersion.fr,amd.com,igalia.com,redhat.com,ursulin.net,sholland.org,raspberrypi.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[39];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mripard@kernel.org,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx,renesas];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,ideasonboard.com:email]
X-Rspamd-Queue-Id: BA19F57ABEC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The initial intent of the atomic_create_state hook was to simply
allocate a proper drm_private_state and return it, without any side
effect.

However, __drm_atomic_helper_private_obj_create_state(), which most
atomic_create_state implementations call, introduces a side effect by
setting drm_private_obj.state to the newly allocated state.

This assignment defeats the purpose, but is also redundant since
drm_atomic_private_obj_init(), the only call site for the
atomic_create_state hook, will also set this pointer to the newly
allocated state.

Drop the assignment in __drm_atomic_helper_private_obj_create_state().

Fixes: e7be39ed1716 ("drm/atomic-helper: Add private_obj atomic_create_state helper")
Reviewed-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/drm_atomic_state_helper.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/drm_atomic_state_helper.c b/drivers/gpu/drm/drm_atomic_state_helper.c
index cc70508d4fdb..a82568d87e4f 100644
--- a/drivers/gpu/drm/drm_atomic_state_helper.c
+++ b/drivers/gpu/drm/drm_atomic_state_helper.c
@@ -729,12 +729,10 @@ EXPORT_SYMBOL(drm_atomic_helper_connector_destroy_state);
 void __drm_atomic_helper_private_obj_create_state(struct drm_private_obj *obj,
 						  struct drm_private_state *state)
 {
 	if (state)
 		state->obj = obj;
-
-	obj->state = state;
 }
 EXPORT_SYMBOL(__drm_atomic_helper_private_obj_create_state);
 
 /**
  * __drm_atomic_helper_private_obj_duplicate_state - copy atomic private state

-- 
2.54.0

