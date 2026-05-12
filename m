Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eDYpBfglA2oF1AEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 15:07:04 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81E0C520BB7
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 15:07:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFD5F10EAD4;
	Tue, 12 May 2026 13:07:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="nzPtGX1k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A500C10EAD1;
 Tue, 12 May 2026 13:07:00 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 2484C6014B;
 Tue, 12 May 2026 13:07:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3CEFBC2BD00;
 Tue, 12 May 2026 13:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1778591219;
 bh=ggQTHc1Vrf1OootvBKBhx0sCr3dngBz6Q+7np6t2O3M=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=nzPtGX1k/gT/E2w5z+GOhYIJqiBOOOas5cXYGZGRd+B0g9YliaRGJ1t+v65NAEL+z
 aG3kjdeS/jC6w60E2suUAKeookEpP06UasmZK+Hg494n3AV36nJQaCz75poH/yRzP0
 3aVWMxCxk9Ari79ub1YUJNCSxk2dsOAoVkDkbEzvAvPavjWYyNgXsQMTJAftWy3C5j
 wnqgRPXsL4JubErR0RoogASnppJDIOq5s/BVbnO4oPejGE8FEqrvMI8RqKP/TeY8sU
 HXygCbD/97N1dutDGntSpYu9h8C6s3e/NGZMg2DRfwO9uu4JXdnLRyuQpXk7PNzLDV
 z9PmR4CkwPMDA==
From: Maxime Ripard <mripard@kernel.org>
Date: Tue, 12 May 2026 15:06:14 +0200
Subject: [PATCH v4 16/20] drm/mode-config: Create
 drm_mode_config_create_initial_state()
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260512-drm-mode-config-init-v4-16-591dfdcc1bf9@kernel.org>
References: <20260512-drm-mode-config-init-v4-0-591dfdcc1bf9@kernel.org>
In-Reply-To: <20260512-drm-mode-config-init-v4-0-591dfdcc1bf9@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=6149; i=mripard@kernel.org;
 h=from:subject:message-id; bh=ggQTHc1Vrf1OootvBKBhx0sCr3dngBz6Q+7np6t2O3M=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDFnMqgd1dxraZveU+dxrmzSr68rHV3dPZgRxOicZHfF74
 eDplyrUMZWFQZiTQVZMkeWJTNjp5e2LqxzsV/6AmcPKBDKEgYtTACbisJmxvupGVt+jqu8dl7bK
 ureJbvl5r/rl5uffOWN6q6bZ/5h71q3u3I+omzfz7T97vVYWTO3ax1hfqrKXZ9aO0pZ3x7nzZS8
 pZdYF884MnWcrL97D2bu3zmbGW90vN904iw6zCBdGvG1hkwAA
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
X-Rspamd-Queue-Id: 81E0C520BB7
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,ideasonboard.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Action: no action

drm_mode_config_reset() can be used to create the initial state, but
also to return to the initial state, when doing a suspend/resume cycle
for example.

It also affects both the software and the hardware, and drivers can
choose to reset the hardware as well. Most will just create an empty
state and the synchronisation between hardware and software states will
effectively be done when the first commit is done.

That dual role can be harmful, since some objects do need to be
initialized but also need to be preserved across a suspend/resume cycle.
drm_private_obj are such objects for example.

Thus, create another helper for drivers to call to initialize their
state when the driver is loaded, so we can make
drm_mode_config_reset() only about handling suspend/resume and similar.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/drm_atomic.c      | 13 +++++-
 drivers/gpu/drm/drm_mode_config.c | 87 +++++++++++++++++++++++++++++++++++++++
 include/drm/drm_mode_config.h     |  1 +
 3 files changed, 99 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/drm_atomic.c b/drivers/gpu/drm/drm_atomic.c
index 04bc3e736cbd..1afa3eef58b5 100644
--- a/drivers/gpu/drm/drm_atomic.c
+++ b/drivers/gpu/drm/drm_atomic.c
@@ -59,12 +59,21 @@
  * preparing the update and kept alive as long as they are active in the
  * device.
  *
  * Their respective lifetimes are:
  *
- * - at reset time, the object reset implementation will allocate a new
- *   default state and will store it in the object state pointer.
+ * - at driver initialization time, the driver will call
+ *   drm_mode_config_create_initial_state() to allocate an initial,
+ *   pristine, state for each object and will store it in the objects
+ *   state pointer. Historically, this was one of
+ *   drm_mode_config_reset() job, so one might still encounter it in a
+ *   driver.
+ *
+ * - at reset time, for example during suspend/resume,
+ *   drm_mode_config_reset() will reset the software and hardware state
+ *   to a known default and will store it in the object's state pointer.
+ *   Not all objects are affected by drm_mode_config_reset() though.
  *
  * - whenever a new update is needed:
  *
  *   + A new &struct drm_atomic_commit is allocated using
  *     drm_atomic_commit_alloc().
diff --git a/drivers/gpu/drm/drm_mode_config.c b/drivers/gpu/drm/drm_mode_config.c
index 9d240817f8b6..27fe95184182 100644
--- a/drivers/gpu/drm/drm_mode_config.c
+++ b/drivers/gpu/drm/drm_mode_config.c
@@ -21,10 +21,11 @@
  */
 
 #include <linux/export.h>
 #include <linux/uaccess.h>
 
+#include <drm/drm_atomic.h>
 #include <drm/drm_drv.h>
 #include <drm/drm_encoder.h>
 #include <drm/drm_file.h>
 #include <drm/drm_framebuffer.h>
 #include <drm/drm_managed.h>
@@ -314,10 +315,96 @@ void drm_mode_config_reset(struct drm_device *dev)
 	}
 	drm_connector_list_iter_end(&conn_iter);
 }
 EXPORT_SYMBOL(drm_mode_config_reset);
 
+/**
+ * drm_mode_config_create_initial_state - Allocates the initial state
+ * @dev: drm device
+ *
+ * This functions creates the initial state for all the objects. Drivers
+ * can use this in e.g. probe to initialize their software state.
+ *
+ * It has two main differences with drm_mode_config_reset(): the reset()
+ * hooks aren't called and thus the hardware will be left untouched, but
+ * also the &drm_private_obj structures will be initialized as opposed
+ * to drm_mode_config_reset() that skips them.
+ *
+ * Returns: 0 on success, negative error value on failure.
+ */
+int drm_mode_config_create_initial_state(struct drm_device *dev)
+{
+	struct drm_crtc *crtc;
+	struct drm_colorop *colorop;
+	struct drm_plane *plane;
+	struct drm_connector *connector;
+	struct drm_connector_list_iter conn_iter;
+	struct drm_private_obj *privobj;
+	int ret;
+
+	drm_for_each_privobj(privobj, dev) {
+		struct drm_private_state *privobj_state;
+
+		if (privobj->state)
+			continue;
+
+		if (!privobj->funcs->atomic_create_state)
+			continue;
+
+		privobj_state = privobj->funcs->atomic_create_state(privobj);
+		if (IS_ERR(privobj_state))
+			return PTR_ERR(privobj_state);
+
+		privobj->state = privobj_state;
+	}
+
+	drm_for_each_colorop(colorop, dev) {
+		struct drm_colorop_state *colorop_state;
+
+		if (colorop->state)
+			continue;
+
+		colorop_state = drm_atomic_helper_colorop_create_state(colorop);
+		if (IS_ERR(colorop_state))
+			return PTR_ERR(colorop_state);
+
+		colorop->state = colorop_state;
+	}
+
+	drm_for_each_plane(plane, dev) {
+		if (plane->state)
+			continue;
+
+		ret = drm_mode_config_plane_create_state(plane);
+		if (ret)
+			return ret;
+	}
+
+	drm_for_each_crtc(crtc, dev) {
+		if (crtc->state)
+			continue;
+
+		ret = drm_mode_config_crtc_create_state(crtc);
+		if (ret)
+			return ret;
+	}
+
+	drm_connector_list_iter_begin(dev, &conn_iter);
+	drm_for_each_connector_iter(connector, &conn_iter) {
+		if (connector->state)
+			continue;
+
+		ret = drm_mode_config_connector_create_state(connector);
+		if (ret)
+			return ret;
+	}
+	drm_connector_list_iter_end(&conn_iter);
+
+	return 0;
+}
+EXPORT_SYMBOL(drm_mode_config_create_initial_state);
+
 /*
  * Global properties
  */
 static const struct drm_prop_enum_list drm_plane_type_enum_list[] = {
 	{ DRM_PLANE_TYPE_OVERLAY, "Overlay" },
diff --git a/include/drm/drm_mode_config.h b/include/drm/drm_mode_config.h
index e584652ddf67..d8f5b7e9673e 100644
--- a/include/drm/drm_mode_config.h
+++ b/include/drm/drm_mode_config.h
@@ -1005,9 +1005,10 @@ int __must_check drmm_mode_config_init(struct drm_device *dev);
 static inline int drm_mode_config_init(struct drm_device *dev)
 {
 	return drmm_mode_config_init(dev);
 }
 
+int drm_mode_config_create_initial_state(struct drm_device *dev);
 void drm_mode_config_reset(struct drm_device *dev);
 void drm_mode_config_cleanup(struct drm_device *dev);
 
 #endif

-- 
2.54.0

