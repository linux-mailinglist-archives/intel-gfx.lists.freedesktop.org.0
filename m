Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C84487F160
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Mar 2024 21:44:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BCF71120B1;
	Mon, 18 Mar 2024 20:44:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KqUEhUr1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 707C71120B1
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Mar 2024 20:44:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710794657; x=1742330657;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=94HwJ5IhvcWEI2OklU8pMwEOAWDXwo0zlhICFjnGTv4=;
 b=KqUEhUr1nPE9CGknOFFltpHlCDc6GPq+FvDVbmarq0E/69M8P9dYjIiQ
 WgADgasaujU2xcFL7RitvY/BOWn7ppA1EeEuAxj3IRJ2EtBjkBh7DYrcv
 M+YXIaXHGxHWCejJqwg4CUr52pivx7BwT23KEXklQk5PdymdSp65UO9+5
 TQ2bxttHCRIo8KDBtBlxp29ZA+LUsp7fwi0vpb6w2JvAbxJym5eT4QcNc
 vXx6HdhMDyMuFvtW3WNTukSB3k7V9s1OQtMmAT1Mc0H6soyjPU1hlJuFz
 5/oJK0TJLvb2fNaPAJtrvQW2VAOve5gIkj8Tq/6EkBoDcbFbp3JOXpMjd A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11017"; a="16273734"
X-IronPort-AV: E=Sophos;i="6.07,135,1708416000"; d="scan'208";a="16273734"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2024 13:44:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11017"; a="827781923"
X-IronPort-AV: E=Sophos;i="6.07,135,1708416000"; d="scan'208";a="827781923"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 18 Mar 2024 13:44:13 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 18 Mar 2024 22:44:12 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jonas=20=C3=85dahl?= <jadahl@redhat.com>,
 Sameer Lattannavar <sameer.lattannavar@intel.com>,
 Sebastian Wick <sebastian.wick@redhat.com>,
 Simon Ser <contact@emersion.fr>, Daniel Stone <daniels@collabora.com>,
 Harry Wentland <harry.wentland@amd.com>,
 Pekka Paalanen <pekka.paalanen@collabora.com>
Subject: [PATCH v3 1/2] drm: Introduce plane SIZE_HINTS property
Date: Mon, 18 Mar 2024 22:44:07 +0200
Message-ID: <20240318204408.9687-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240318204408.9687-1-ville.syrjala@linux.intel.com>
References: <20240318204408.9687-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Add a new immutable plane property by which a plane can advertise
a handful of recommended plane sizes. This would be mostly exposed
by cursor planes as a slightly more capable replacement for
the DRM_CAP_CURSOR_WIDTH/HEIGHT caps, which can only declare
a one size fits all limit for the whole device.

Currently eg. amdgpu/i915/nouveau just advertize the max cursor
size via the cursor size caps. But always using the max sized
cursor can waste a surprising amount of power, so a better
strategy is desirable.

Most other drivers don't specify any cursor size at all, in
which case the ioctl code just claims that 64x64 is a great
choice. Whether that is actually true is debatable.

A poll of various compositor developers informs us that
blindly probing with setcursor/atomic ioctl to determine
suitable cursor sizes is not acceptable, thus the
introduction of the new property to supplant the cursor
size caps. The compositor will now be free to select a
more optimal cursor size from the short list of options.

Note that the reported sizes (either via the property or the
caps) make no claims about things such as plane scaling. So
these things should only really be consulted for simple
"cursor like" use cases.

Userspace consumer in the form of mutter seems ready:
https://gitlab.gnome.org/GNOME/mutter/-/merge_requests/3165

v2: Try to add some docs
v3: Specify that value 0 is reserved for future use (basic idea from Jonas)
    Drop the note about typical hardware (Pekka)
v4: Update the docs to indicate the list is "in order of preference"
    Add a a link to the mutter MR
v5: Limit to cursors only for now (Simon)

Cc: Jonas Ådahl <jadahl@redhat.com>
Cc: Sameer Lattannavar <sameer.lattannavar@intel.com>
Reviewed-by: Sebastian Wick <sebastian.wick@redhat.com>
Reviewed-by: Simon Ser <contact@emersion.fr>
Acked-by: Daniel Stone <daniels@collabora.com>
Acked-by: Harry Wentland <harry.wentland@amd.com>
Acked-by: Pekka Paalanen <pekka.paalanen@collabora.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/drm_mode_config.c |  7 ++++
 drivers/gpu/drm/drm_plane.c       | 56 +++++++++++++++++++++++++++++++
 include/drm/drm_mode_config.h     |  5 +++
 include/drm/drm_plane.h           |  4 +++
 include/uapi/drm/drm_mode.h       | 11 ++++++
 5 files changed, 83 insertions(+)

diff --git a/drivers/gpu/drm/drm_mode_config.c b/drivers/gpu/drm/drm_mode_config.c
index 48fd2d67f352..568972258222 100644
--- a/drivers/gpu/drm/drm_mode_config.c
+++ b/drivers/gpu/drm/drm_mode_config.c
@@ -372,6 +372,13 @@ static int drm_mode_create_standard_properties(struct drm_device *dev)
 		return -ENOMEM;
 	dev->mode_config.modifiers_property = prop;
 
+	prop = drm_property_create(dev,
+				   DRM_MODE_PROP_IMMUTABLE | DRM_MODE_PROP_BLOB,
+				   "SIZE_HINTS", 0);
+	if (!prop)
+		return -ENOMEM;
+	dev->mode_config.size_hints_property = prop;
+
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/drm_plane.c b/drivers/gpu/drm/drm_plane.c
index 672c655c7a8e..eecc24c54efd 100644
--- a/drivers/gpu/drm/drm_plane.c
+++ b/drivers/gpu/drm/drm_plane.c
@@ -140,6 +140,25 @@
  *     DRM_FORMAT_MOD_LINEAR. Before linux kernel release v5.1 there have been
  *     various bugs in this area with inconsistencies between the capability
  *     flag and per-plane properties.
+ *
+ * SIZE_HINTS:
+ *     Blob property which contains the set of recommended plane size
+ *     which can used for simple "cursor like" use cases (eg. no scaling).
+ *     Using these hints frees userspace from extensive probing of
+ *     supported plane sizes through atomic/setcursor ioctls.
+ *
+ *     The blob contains an array of struct drm_plane_size_hint, in
+ *     order of preference. For optimal usage userspace should pick
+ *     the first size that satisfies its own requirements.
+ *
+ *     Drivers should only attach this property to planes that
+ *     support a very limited set of sizes.
+ *
+ *     Note that property value 0 (ie. no blob) is reserved for potential
+ *     future use. Current userspace is expected to ignore the property
+ *     if the value is 0, and fall back to some other means (eg.
+ *     &DRM_CAP_CURSOR_WIDTH and &DRM_CAP_CURSOR_HEIGHT) to determine
+ *     the appropriate plane size to use.
  */
 
 static unsigned int drm_num_planes(struct drm_device *dev)
@@ -1729,3 +1748,40 @@ int drm_plane_create_scaling_filter_property(struct drm_plane *plane,
 	return 0;
 }
 EXPORT_SYMBOL(drm_plane_create_scaling_filter_property);
+
+/**
+ * drm_plane_add_size_hint_property - create a size hint property
+ *
+ * @plane: drm plane
+ * @hints: size hints
+ * @num_hints: number of size hints
+ *
+ * Create a size hints property for the plane.
+ *
+ * RETURNS:
+ * Zero for success or -errno
+ */
+int drm_plane_add_size_hints_property(struct drm_plane *plane,
+				      const struct drm_plane_size_hint *hints,
+				      int num_hints)
+{
+	struct drm_device *dev = plane->dev;
+	struct drm_mode_config *config = &dev->mode_config;
+	struct drm_property_blob *blob;
+
+	/* extending to other plane types needs actual thought */
+	if (drm_WARN_ON(dev, plane->type != DRM_PLANE_TYPE_CURSOR))
+		return -EINVAL;
+
+	blob = drm_property_create_blob(dev,
+					array_size(sizeof(hints[0]), num_hints),
+					hints);
+	if (IS_ERR(blob))
+		return PTR_ERR(blob);
+
+	drm_object_attach_property(&plane->base, config->size_hints_property,
+				   blob->base.id);
+
+	return 0;
+}
+EXPORT_SYMBOL(drm_plane_add_size_hints_property);
diff --git a/include/drm/drm_mode_config.h b/include/drm/drm_mode_config.h
index 973119a9176b..9d8acf7a10eb 100644
--- a/include/drm/drm_mode_config.h
+++ b/include/drm/drm_mode_config.h
@@ -942,6 +942,11 @@ struct drm_mode_config {
 	 */
 	struct drm_property *modifiers_property;
 
+	/**
+	 * @size_hints_propertty: Plane SIZE_HINTS property.
+	 */
+	struct drm_property *size_hints_property;
+
 	/* cursor size */
 	uint32_t cursor_width, cursor_height;
 
diff --git a/include/drm/drm_plane.h b/include/drm/drm_plane.h
index 641fe298052d..ec1112208b73 100644
--- a/include/drm/drm_plane.h
+++ b/include/drm/drm_plane.h
@@ -32,6 +32,7 @@
 #include <drm/drm_util.h>
 
 struct drm_crtc;
+struct drm_plane_size_hint;
 struct drm_printer;
 struct drm_modeset_acquire_ctx;
 
@@ -976,5 +977,8 @@ drm_plane_get_damage_clips(const struct drm_plane_state *state);
 
 int drm_plane_create_scaling_filter_property(struct drm_plane *plane,
 					     unsigned int supported_filters);
+int drm_plane_add_size_hints_property(struct drm_plane *plane,
+				      const struct drm_plane_size_hint *hints,
+				      int num_hints);
 
 #endif
diff --git a/include/uapi/drm/drm_mode.h b/include/uapi/drm/drm_mode.h
index 7040e7ea80c7..1ca5c7e418fd 100644
--- a/include/uapi/drm/drm_mode.h
+++ b/include/uapi/drm/drm_mode.h
@@ -865,6 +865,17 @@ struct drm_color_lut {
 	__u16 reserved;
 };
 
+/**
+ * struct drm_plane_size_hint - Plane size hints
+ *
+ * The plane SIZE_HINTS property blob contains an
+ * array of struct drm_plane_size_hint.
+ */
+struct drm_plane_size_hint {
+	__u16 width;
+	__u16 height;
+};
+
 /**
  * struct hdr_metadata_infoframe - HDR Metadata Infoframe Data.
  *
-- 
2.43.2

