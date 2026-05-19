Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UMuSHzQnDGqlXgUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 11:02:44 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE03357AC66
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 11:02:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C80410EBA2;
	Tue, 19 May 2026 09:02:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="Wph4QD5t";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB3F710EB9D;
 Tue, 19 May 2026 09:02:35 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 90EC24374D;
 Tue, 19 May 2026 09:02:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EBF14C2BCB3;
 Tue, 19 May 2026 09:02:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1779181355;
 bh=ws84eVBkBuBXcteGS1ly6aYWO3fPLpn5a4wl+4ygSks=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=Wph4QD5tL8BwoIZuqO50IEg28Npe9e5uE3AZUuSi28Y6UuAQGJwYOLoYg8e4ovMh7
 FuElnC0MEk+RFMHrvJKDUnemBKt73f6z83eIWltmPGp6lrATcnTtgfc3IQNEwPVn3T
 QL83O37vYVLKVR07mu7v4VEnQyaEpexsCAZwt6r60l0hjeiVIqHY28jke79AMstKUe
 MCqyC2lWhxE+JdKxDHJGwjXjsDqr5p+dJK5LES2YYNrn1WlunVz4F74FRo4vSA0zrq
 ojaIfl6RVwZZKVJ6umt7IqseFPh3nGYl6PJ/NKnhBNjTY+1ho0fQETtMRvyQ+xRWx+
 j4LC2UibD4yFg==
From: Maxime Ripard <mripard@kernel.org>
Date: Tue, 19 May 2026 11:01:52 +0200
Subject: [PATCH v5 10/19] drm/plane: Add new atomic_create_state callback
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260519-drm-mode-config-init-v5-10-388b03321e38@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=6799; i=mripard@kernel.org;
 h=from:subject:message-id; bh=ws84eVBkBuBXcteGS1ly6aYWO3fPLpn5a4wl+4ygSks=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDFk8an/d1odOY1Ut/qOT4lvE9tRi365rUqXt26/W/qowv
 lO5wmVjx1QWBmFOBlkxRZYnMmGnl7cvrnKwX/kDZg4rE8gQBi5OAZjIIzfGhpO5dfUL9ZbvudmY
 yXx92frCe38mBFYfWevvtLlohVXDaoa57/5596yOebn5UujV3hfOExlreJd9dL9cNW99x90n4Sc
 LllZHGAi0iaQuZf6m0/LWc79GS06AGTt/V9o6pwXy8qmT7G0B
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[linux.intel.com,suse.de,gmail.com,ffwll.ch,lwn.net,linuxfoundation.org,oss.qualcomm.com,iki.fi,ideasonboard.com,intel.com,linaro.org,kernel.org,kwiboo.se,emersion.fr,amd.com,igalia.com,redhat.com,ursulin.net,sholland.org,raspberrypi.com];
	ARC_NA(0.00)[];
	ASN_FAIL(0.00)[177.210.252.131.asn.rspamd.com:query timed out];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[39];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FROM_NEQ_ENVFROM(0.00)[mripard@kernel.org,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx,renesas];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ideasonboard.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: EE03357AC66
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Commit 47b5ac7daa46 ("drm/atomic: Add new atomic_create_state callback
to drm_private_obj") introduced a new pattern for allocating drm object
states.

Instead of relying on the reset() callback, it created a new
atomic_create_state hook. This is helpful because reset is a bit
overloaded: it's used to create the initial software state, reset it,
but also reset the hardware.

It can also be used either at probe time, to create the initial state
and possibly reset the hardware to an expected default, but also during
suspend/resume.

Both these cases come with different expectations too: during the
initialization, we want to initialize all states, but during
suspend/resume, drm_private_states for example are expected to be kept
around.

reset() also isn't fallible, which makes it harder to handle
initialization errors properly. This is only really relevant for some
drivers though, since all the helpers for reset only create a new
state, and don't touch the hardware at all.

It was thus decided to create a new hook that would allocate and
initialize a pristine state without any side effect:
atomic_create_state to untangle a bit some of it, and to separate the
initialization with the actual reset one might need during a
suspend/resume.

Continue the transition to the new pattern with planes.

Reviewed-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/drm_atomic_state_helper.c | 25 +++++++++++++++++++++++++
 drivers/gpu/drm/drm_mode_config.c         | 31 ++++++++++++++++++++++++++++++-
 include/drm/drm_atomic_state_helper.h     |  2 ++
 include/drm/drm_plane.h                   | 16 ++++++++++++++++
 4 files changed, 73 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_atomic_state_helper.c b/drivers/gpu/drm/drm_atomic_state_helper.c
index ee01700d4ca7..ab171bfe6e86 100644
--- a/drivers/gpu/drm/drm_atomic_state_helper.c
+++ b/drivers/gpu/drm/drm_atomic_state_helper.c
@@ -338,10 +338,35 @@ void drm_atomic_helper_plane_reset(struct drm_plane *plane)
 	if (plane->state)
 		__drm_atomic_helper_plane_reset(plane, plane->state);
 }
 EXPORT_SYMBOL(drm_atomic_helper_plane_reset);
 
+/**
+ * drm_atomic_helper_plane_create_state - default &drm_plane_funcs.atomic_create_state hook for planes
+ * @plane: plane object
+ *
+ * Allocates and initializes pristine @drm_plane_state.
+ *
+ * This is useful for drivers that don't subclass @drm_plane_state.
+ *
+ * RETURNS:
+ * Pointer to new plane state, or ERR_PTR on failure.
+ */
+struct drm_plane_state *drm_atomic_helper_plane_create_state(struct drm_plane *plane)
+{
+	struct drm_plane_state *state;
+
+	state = kzalloc_obj(*state);
+	if (!state)
+		return ERR_PTR(-ENOMEM);
+
+	__drm_atomic_helper_plane_state_init(state, plane);
+
+	return state;
+}
+EXPORT_SYMBOL(drm_atomic_helper_plane_create_state);
+
 /**
  * __drm_atomic_helper_plane_duplicate_state - copy atomic plane state
  * @plane: plane object
  * @state: atomic plane state
  *
diff --git a/drivers/gpu/drm/drm_mode_config.c b/drivers/gpu/drm/drm_mode_config.c
index c33382a38191..fa609357858f 100644
--- a/drivers/gpu/drm/drm_mode_config.c
+++ b/drivers/gpu/drm/drm_mode_config.c
@@ -180,10 +180,36 @@ int drm_mode_getresources(struct drm_device *dev, void *data,
 	drm_connector_list_iter_end(&conn_iter);
 
 	return ret;
 }
 
+static int drm_mode_config_plane_create_state(struct drm_plane *plane)
+{
+	struct drm_plane_state *plane_state;
+
+	if (!plane->funcs->atomic_create_state)
+		return 0;
+
+	plane_state = plane->funcs->atomic_create_state(plane);
+	if (IS_ERR(plane_state))
+		return PTR_ERR(plane_state);
+
+	plane->state = plane_state;
+
+	return 0;
+}
+
+static int drm_mode_config_plane_reset_with_create_state(struct drm_plane *plane)
+{
+	if (plane->state) {
+		plane->funcs->atomic_destroy_state(plane, plane->state);
+		plane->state = NULL;
+	}
+
+	return drm_mode_config_plane_create_state(plane);
+}
+
 /**
  * drm_mode_config_reset - call ->reset callbacks
  * @dev: drm device
  *
  * This functions calls all the crtc's, encoder's and connector's ->reset
@@ -204,13 +230,16 @@ void drm_mode_config_reset(struct drm_device *dev)
 	struct drm_connector_list_iter conn_iter;
 
 	drm_for_each_colorop(colorop, dev)
 		drm_colorop_reset(colorop);
 
-	drm_for_each_plane(plane, dev)
+	drm_for_each_plane(plane, dev) {
 		if (plane->funcs->reset)
 			plane->funcs->reset(plane);
+		else if (plane->funcs->atomic_create_state)
+			drm_mode_config_plane_reset_with_create_state(plane);
+	}
 
 	drm_for_each_crtc(crtc, dev)
 		if (crtc->funcs->reset)
 			crtc->funcs->reset(crtc);
 
diff --git a/include/drm/drm_atomic_state_helper.h b/include/drm/drm_atomic_state_helper.h
index 691c1ccfa4e0..8d1ef268fdef 100644
--- a/include/drm/drm_atomic_state_helper.h
+++ b/include/drm/drm_atomic_state_helper.h
@@ -53,10 +53,12 @@ void __drm_atomic_helper_crtc_destroy_state(struct drm_crtc_state *state);
 void drm_atomic_helper_crtc_destroy_state(struct drm_crtc *crtc,
 					  struct drm_crtc_state *state);
 
 void __drm_atomic_helper_plane_state_init(struct drm_plane_state *state,
 					   struct drm_plane *plane);
+struct drm_plane_state *
+drm_atomic_helper_plane_create_state(struct drm_plane *plane);
 void __drm_atomic_helper_plane_reset(struct drm_plane *plane,
 				     struct drm_plane_state *state);
 void drm_atomic_helper_plane_reset(struct drm_plane *plane);
 void __drm_atomic_helper_plane_duplicate_state(struct drm_plane *plane,
 					       struct drm_plane_state *state);
diff --git a/include/drm/drm_plane.h b/include/drm/drm_plane.h
index 419c88c873a6..2c5a5a70a71b 100644
--- a/include/drm/drm_plane.h
+++ b/include/drm/drm_plane.h
@@ -386,10 +386,26 @@ struct drm_plane_funcs {
 	 * 0 on success or a negative error code on failure.
 	 */
 	int (*set_property)(struct drm_plane *plane,
 			    struct drm_property *property, uint64_t val);
 
+	/**
+	 * @atomic_create_state:
+	 *
+	 * Allocate a pristine, initialized, state for the plane object
+	 * and return it. This callback must have no side effects: in
+	 * particular, the returned state must not be assigned to the
+	 * object's state pointer and it must not affect the hardware
+	 * state.
+	 *
+	 * RETURNS:
+	 *
+	 * A new, pristine, plane state instance or an error pointer
+	 * on failure.
+	 */
+	struct drm_plane_state *(*atomic_create_state)(struct drm_plane *plane);
+
 	/**
 	 * @atomic_duplicate_state:
 	 *
 	 * Duplicate the current atomic state for this plane and return it.
 	 * The core and helpers guarantee that any atomic state duplicated with

-- 
2.54.0

