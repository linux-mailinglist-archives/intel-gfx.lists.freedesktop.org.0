Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aBHrMWvOFWrkcAcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 18:46:35 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7917E5D9F4B
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 18:46:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D11410E6CB;
	Tue, 26 May 2026 16:46:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="Y0xJqOSd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A30710E6CB;
 Tue, 26 May 2026 16:46:30 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by tor.source.kernel.org (Postfix) with ESMTP id 5D86F60018;
 Tue, 26 May 2026 16:46:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5CD7E1F00A3A;
 Tue, 26 May 2026 16:46:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
 s=k20260515; t=1779813989;
 bh=vrkT9lXcF3FiMxlu63fDavQGKudZshNhcSnlhc4BSRs=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc;
 b=Y0xJqOSdNhLKozjgn+5wR+2iQnhz9Ifkvm6ipv3ZoVSxXBw5WwNykuAqHZbpWR8Vn
 cZqY73d2va0ojAAD5NoiVKRkytnGYmlSMJ/i8ycjgMxCsaocTyZ7dy1/7Rfc8k0eL4
 UUaNtJ/Y4+/gKH3dgIKjjLqykiy0ZtG31fZJK+BwIfZZnm+CoBq2Pd+vVsVwNv11ne
 giDe/qHFK6zUFLlbgjpgw509jhLaf2eXBRJq0fFdJFojdhFPO3EtQ2aKNVvwOznCAo
 Ip94NskDV4u75nmWvKgUg0AAUyi/K0MDr2i+4uQ0xvg8xIyE8lW+o1cItliE4Xg3AI
 qdH7ASHd5KVzg==
From: Maxime Ripard <mripard@kernel.org>
Date: Tue, 26 May 2026 18:46:13 +0200
Subject: [PATCH v6 01/19] drm/atomic: Document atomic commit lifetime
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260526-drm-mode-config-init-v6-1-852346394200@kernel.org>
References: <20260526-drm-mode-config-init-v6-0-852346394200@kernel.org>
In-Reply-To: <20260526-drm-mode-config-init-v6-0-852346394200@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=5255; i=mripard@kernel.org;
 h=from:subject:message-id; bh=n7jZEFPj01CGIbSO3Dr/2XkC28R6mm+lF9pW2o8pSbA=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDFmi58IZ+a6+2aYUrNKjt49ddOFWc//guZq9ksXsD667H
 L8/Q1yhYyoLgzAng6yYIssTmbDTy9sXVznYr/wBM4eVCWQIAxenAExE9DRjQ6vi7uQ5CqkCVoIN
 WuvOP+x/u/BOnOP9U/u+/pmZv06JwePbq5Mrt9unsEt/SZhcc4FrM2OtqE/TuyU2XjNun3hluev
 lBQbeqV3XT+Z2HC62blkakdR+S2haTffqZzydJddOfVu+T70GAA==
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[linux.intel.com,suse.de,gmail.com,ffwll.ch,lwn.net,linuxfoundation.org,oss.qualcomm.com,iki.fi,ideasonboard.com,intel.com,linaro.org,kernel.org,kwiboo.se,emersion.fr,amd.com,igalia.com,redhat.com,ursulin.net,sholland.org,raspberrypi.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[39];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[mripard@kernel.org,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx,renesas];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 7917E5D9F4B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

How drm_atomic_commit and the various entity structures are allocated
and freed isn't really trivial. Document it.

Reviewed-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 Documentation/gpu/drm-kms.rst |  6 ++++
 drivers/gpu/drm/drm_atomic.c  | 72 +++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 78 insertions(+)

diff --git a/Documentation/gpu/drm-kms.rst b/Documentation/gpu/drm-kms.rst
index d22817fdf9aa..36d76e391074 100644
--- a/Documentation/gpu/drm-kms.rst
+++ b/Documentation/gpu/drm-kms.rst
@@ -282,10 +282,16 @@ structure, ordering of committing state changes to hardware is sequenced using
 :c:type:`struct drm_crtc_commit <drm_crtc_commit>`.
 
 Read on in this chapter, and also in :ref:`drm_atomic_helper` for more detailed
 coverage of specific topics.
 
+Atomic State Lifetime
+---------------------
+
+.. kernel-doc:: drivers/gpu/drm/drm_atomic.c
+   :doc: state lifetime
+
 Handling Driver Private State
 -----------------------------
 
 .. kernel-doc:: drivers/gpu/drm/drm_atomic.c
    :doc: handling driver private state
diff --git a/drivers/gpu/drm/drm_atomic.c b/drivers/gpu/drm/drm_atomic.c
index 170de30c28ae..3c5714481ad2 100644
--- a/drivers/gpu/drm/drm_atomic.c
+++ b/drivers/gpu/drm/drm_atomic.c
@@ -45,10 +45,82 @@
 #include <drm/drm_colorop.h>
 
 #include "drm_crtc_internal.h"
 #include "drm_internal.h"
 
+/**
+ * DOC: state lifetime
+ *
+ * &drm_atomic_commit represents an update to modeset pipeline state.
+ * It's a transient object that holds a state update as a collection of
+ * pointers to individual objects' states. &struct drm_atomic_commit has
+ * a much shorter lifetime than the objects' states, since it's only
+ * allocated while preparing, checking or committing the update, while
+ * object states are allocated when preparing the update and kept alive
+ * as long as they are active in the device.
+ *
+ * Their respective lifetimes are:
+ *
+ * - at reset time, the object reset implementation allocates a new
+ *   default state and stores it in the object state pointer.
+ *
+ * - whenever a new update is needed:
+ *
+ *   + drm_atomic_commit_alloc() allocates a new &drm_atomic_commit
+ *     instance.
+ *
+ *   + The code triggering the commit (ioctl, client modeset,
+ *     drm_atomic_helper_reset_crtc(), etc.) copies the current active
+ *     state of all entities affected by the update into this new
+ *     &drm_atomic_commit using drm_atomic_get_plane_state(),
+ *     drm_atomic_get_crtc_state(), drm_atomic_get_connector_state(), or
+ *     drm_atomic_get_private_obj_state(). This new state can then be
+ *     modified.
+ *
+ *     At that point, &drm_atomic_commit stores three state pointers for
+ *     any affected entity: the "old" and "new" states, and
+ *     state_to_destroy. The old state is the state currently active in
+ *     the hardware, which is either the one initialized by reset() or a
+ *     newer one if a commit has been made. The new state is the state
+ *     we just allocated and we might eventually commit to the hardware.
+ *     The state_to_destroy points to the state we'll eventually have to
+ *     free when the drm_atomic_commit will be destroyed, and points to
+ *     the new state for now since the old state is still the active
+ *     state.
+ *
+ *   + After the calling code populated the commit with the entities
+ *     states, it updates the new states with the new values we need to
+ *     commit. The new commit instance is now ready.
+ *
+ *   + Then we have two branches depending on the calling code intent:
+ *
+ *     - If the calling code only wants to check that the commit would
+ *       work (for example because of the DRM_MODE_ATOMIC_TEST_ONLY
+ *       flag). It calls drm_atomic_check_only(), which in turn checks
+ *       all these states by invoking atomic_check on all affected
+ *       pipeline stages.
+ *
+ *     - If the calling code actually wants to trigger a commit, it
+ *       calls drm_atomic_commit(). The first stage is the check
+ *       mentioned above, and if the check is successful, it performs
+ *       the commit. Part of the commit is a call to
+ *       drm_atomic_helper_swap_state() which turns the new states into
+ *       the active states. After swapping states, each object's state
+ *       pointer now refers to the formerly new state. The
+ *       state_to_destroy now refers to the formerly old state.
+ *
+ *   + Once done, and when the last refererence to our &struct
+ *     drm_atomic_commit is given up through drm_atomic_commit_put(), it
+ *     calls __drm_atomic_commit_free(). In turn,
+ *     __drm_atomic_commit_free() calls drm_atomic_commit_clear() that
+ *     will free all state_to_destroy (ie. old states), and it finally
+ *     frees &drm_atomic_commit instance.
+ *
+ *   + Now, we don't have any active &drm_atomic_commit anymore, and
+ *     only the entity active states remain allocated.
+ */
+
 void __drm_crtc_commit_free(struct kref *kref)
 {
 	struct drm_crtc_commit *commit =
 		container_of(kref, struct drm_crtc_commit, ref);
 

-- 
2.54.0

