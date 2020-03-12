Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 34650182F08
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 12:24:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39C776E17B;
	Thu, 12 Mar 2020 11:24:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 780776E175;
 Thu, 12 Mar 2020 11:24:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Mar 2020 04:24:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,544,1574150400"; d="scan'208";a="354108258"
Received: from plaxmina-desktop.iind.intel.com ([10.145.162.62])
 by fmsmga001.fm.intel.com with ESMTP; 12 Mar 2020 04:24:46 -0700
From: Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>
To: jani.nikula@linux.intel.com, daniel@ffwll.ch,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 ville.syrjala@linux.intel.com, daniels@collabora.com,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>
Date: Thu, 12 Mar 2020 16:44:45 +0530
Message-Id: <20200312111449.21202-2-pankaj.laxminarayan.bharadiya@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200312111449.21202-1-pankaj.laxminarayan.bharadiya@intel.com>
References: <20200312111449.21202-1-pankaj.laxminarayan.bharadiya@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/5] drm: Introduce plane and CRTC scaling
 filter properties
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Introduce new plane and CRTC scaling filter properties to allow
userspace to select the driver's default scaling filter or
Nearest-neighbor(NN) filter for upscaling operations on CRTC and
plane.

Drivers can set up this property for a plane by calling
drm_plane_enable_scaling_filter() and for a CRTC by calling
drm_crtc_enable_scaling_filter().

NN filter works by filling in the missing color values in the upscaled
image with that of the coordinate-mapped nearest source pixel value.

NN filter for integer multiple scaling can be particularly useful for
for pixel art games that rely on sharp, blocky images to deliver their
distinctive look.

changes since RFC:
* Add separate properties for plane and CRTC (Ville)

Signed-off-by: Shashank Sharma <shashank.sharma@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>
---
 drivers/gpu/drm/drm_atomic_uapi.c |  8 ++++++++
 drivers/gpu/drm/drm_crtc.c        | 33 +++++++++++++++++++++++++++++++
 drivers/gpu/drm/drm_mode_config.c | 26 ++++++++++++++++++++++++
 drivers/gpu/drm/drm_plane.c       | 33 +++++++++++++++++++++++++++++++
 include/drm/drm_crtc.h            | 13 ++++++++++++
 include/drm/drm_mode_config.h     | 12 +++++++++++
 include/drm/drm_plane.h           | 13 ++++++++++++
 7 files changed, 138 insertions(+)

diff --git a/drivers/gpu/drm/drm_atomic_uapi.c b/drivers/gpu/drm/drm_atomic_uapi.c
index a1e5e262bae2..3c72ab52ff62 100644
--- a/drivers/gpu/drm/drm_atomic_uapi.c
+++ b/drivers/gpu/drm/drm_atomic_uapi.c
@@ -435,6 +435,8 @@ static int drm_atomic_crtc_set_property(struct drm_crtc *crtc,
 		return ret;
 	} else if (property == config->prop_vrr_enabled) {
 		state->vrr_enabled = val;
+	} else if (property == config->crtc_scaling_filter_property) {
+		state->scaling_filter = val;
 	} else if (property == config->degamma_lut_property) {
 		ret = drm_atomic_replace_property_blob_from_id(dev,
 					&state->degamma_lut,
@@ -503,6 +505,8 @@ drm_atomic_crtc_get_property(struct drm_crtc *crtc,
 		*val = (state->gamma_lut) ? state->gamma_lut->base.id : 0;
 	else if (property == config->prop_out_fence_ptr)
 		*val = 0;
+	else if (property == config->crtc_scaling_filter_property)
+		*val = state->scaling_filter;
 	else if (crtc->funcs->atomic_get_property)
 		return crtc->funcs->atomic_get_property(crtc, state, property, val);
 	else
@@ -583,6 +587,8 @@ static int drm_atomic_plane_set_property(struct drm_plane *plane,
 					sizeof(struct drm_rect),
 					&replaced);
 		return ret;
+	} else if (property == config->plane_scaling_filter_property) {
+		state->scaling_filter = val;
 	} else if (plane->funcs->atomic_set_property) {
 		return plane->funcs->atomic_set_property(plane, state,
 				property, val);
@@ -641,6 +647,8 @@ drm_atomic_plane_get_property(struct drm_plane *plane,
 	} else if (property == config->prop_fb_damage_clips) {
 		*val = (state->fb_damage_clips) ?
 			state->fb_damage_clips->base.id : 0;
+	} else if (property == config->plane_scaling_filter_property) {
+		*val = state->scaling_filter;
 	} else if (plane->funcs->atomic_get_property) {
 		return plane->funcs->atomic_get_property(plane, state, property, val);
 	} else {
diff --git a/drivers/gpu/drm/drm_crtc.c b/drivers/gpu/drm/drm_crtc.c
index 4936e1080e41..c8d387891dd5 100644
--- a/drivers/gpu/drm/drm_crtc.c
+++ b/drivers/gpu/drm/drm_crtc.c
@@ -748,3 +748,36 @@ int drm_mode_crtc_set_obj_prop(struct drm_mode_object *obj,
 
 	return ret;
 }
+
+/**
+ * DOC: CRTC scaling filter property
+ *
+ * SCALING_FILTER:
+ *
+ *	Indicates scaling filter to be used for CRTC scaler
+ *
+ *	The value of this property can be one of the following:
+ *	Default:
+ *		Driver's default scaling filter
+ *	Nearest Neighbor:
+ *		Nearest Neighbor scaling filter
+ *
+ * Drivers can set up this property for a CRTC by calling
+ * drm_crtc_enable_scaling_filter()
+ */
+
+/**
+ * drm_crtc_enable_scaling_filter - Enables CRTC scaling filter property.
+ * @crtc: CRTC on which to enable scaling filter property.
+ *
+ * This function lets driver to enable the scaling filter property on a CRTC.
+ */
+void drm_crtc_enable_scaling_filter(struct drm_crtc *crtc)
+{
+	struct drm_device *dev = crtc->dev;
+
+	drm_object_attach_property(&crtc->base,
+				   dev->mode_config.crtc_scaling_filter_property,
+				   0);
+}
+EXPORT_SYMBOL(drm_crtc_enable_scaling_filter);
diff --git a/drivers/gpu/drm/drm_mode_config.c b/drivers/gpu/drm/drm_mode_config.c
index 08e6eff6a179..1c87ac096158 100644
--- a/drivers/gpu/drm/drm_mode_config.c
+++ b/drivers/gpu/drm/drm_mode_config.c
@@ -214,6 +214,16 @@ static const struct drm_prop_enum_list drm_plane_type_enum_list[] = {
 	{ DRM_PLANE_TYPE_CURSOR, "Cursor" },
 };
 
+static const struct drm_prop_enum_list drm_crtc_scaling_filter_enum_list[] = {
+	{ DRM_CRTC_SCALING_FILTER_DEFAULT, "Default" },
+	{ DRM_CRTC_SCALING_FILTER_NEAREST_NEIGHBOR, "Nearest Neighbor" },
+};
+
+static const struct drm_prop_enum_list drm_plane_scaling_filter_enum_list[] = {
+	{ DRM_PLANE_SCALING_FILTER_DEFAULT, "Default" },
+	{ DRM_PLANE_SCALING_FILTER_NEAREST_NEIGHBOR, "Nearest Neighbor" },
+};
+
 static int drm_mode_create_standard_properties(struct drm_device *dev)
 {
 	struct drm_property *prop;
@@ -370,6 +380,22 @@ static int drm_mode_create_standard_properties(struct drm_device *dev)
 		return -ENOMEM;
 	dev->mode_config.modifiers_property = prop;
 
+	prop = drm_property_create_enum(dev, 0,
+				"SCALING_FILTER",
+				drm_crtc_scaling_filter_enum_list,
+				ARRAY_SIZE(drm_crtc_scaling_filter_enum_list));
+	if (!prop)
+		return -ENOMEM;
+	dev->mode_config.crtc_scaling_filter_property = prop;
+
+	prop = drm_property_create_enum(dev, 0,
+				"SCALING_FILTER",
+				drm_plane_scaling_filter_enum_list,
+				ARRAY_SIZE(drm_plane_scaling_filter_enum_list));
+	if (!prop)
+		return -ENOMEM;
+	dev->mode_config.plane_scaling_filter_property = prop;
+
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/drm_plane.c b/drivers/gpu/drm/drm_plane.c
index d6ad60ab0d38..f71cf50a4ef9 100644
--- a/drivers/gpu/drm/drm_plane.c
+++ b/drivers/gpu/drm/drm_plane.c
@@ -1221,3 +1221,36 @@ int drm_mode_page_flip_ioctl(struct drm_device *dev,
 
 	return ret;
 }
+
+/**
+ * DOC: Plane scaling filter property
+ *
+ * SCALING_FILTER:
+ *
+ *	Indicates scaling filter to be used for plane scaler
+ *
+ *	The value of this property can be one of the following:
+ *	Default:
+ *		Driver's default scaling filter
+ *	Nearest Neighbor:
+ *		Nearest Neighbor scaling filter
+ *
+ * Drivers can set up this property for a plane by calling
+ * drm_plane_enable_scaling_filter()
+ */
+
+/**
+ * drm_plane_enable_scaling_filter - Enables plane scaling filter property.
+ * @plane: Plane on which to enable scaling filter property.
+ *
+ * This function lets driver to enable the scaling filter property on a plane.
+ */
+void drm_plane_enable_scaling_filter(struct drm_plane *plane)
+{
+	struct drm_device *dev = plane->dev;
+
+	drm_object_attach_property(&plane->base,
+				   dev->mode_config.plane_scaling_filter_property,
+				   0);
+}
+EXPORT_SYMBOL(drm_plane_enable_scaling_filter);
diff --git a/include/drm/drm_crtc.h b/include/drm/drm_crtc.h
index 59b51a09cae6..3187df6874d4 100644
--- a/include/drm/drm_crtc.h
+++ b/include/drm/drm_crtc.h
@@ -76,6 +76,10 @@ struct drm_atomic_state;
 struct drm_crtc_helper_funcs;
 struct drm_plane_helper_funcs;
 
+enum drm_crtc_scaling_filter {
+	DRM_CRTC_SCALING_FILTER_DEFAULT,
+	DRM_CRTC_SCALING_FILTER_NEAREST_NEIGHBOR,
+};
 /**
  * struct drm_crtc_state - mutable CRTC state
  *
@@ -296,6 +300,13 @@ struct drm_crtc_state {
 	 */
 	u32 target_vblank;
 
+	/**
+	 * @scaling_filter:
+	 *
+	 * Scaling filter mode to be applied
+	 */
+	enum drm_crtc_scaling_filter scaling_filter;
+
 	/**
 	 * @async_flip:
 	 *
@@ -1266,4 +1277,6 @@ static inline struct drm_crtc *drm_crtc_find(struct drm_device *dev,
 #define drm_for_each_crtc(crtc, dev) \
 	list_for_each_entry(crtc, &(dev)->mode_config.crtc_list, head)
 
+void drm_crtc_enable_scaling_filter(struct drm_crtc *crtc);
+
 #endif /* __DRM_CRTC_H__ */
diff --git a/include/drm/drm_mode_config.h b/include/drm/drm_mode_config.h
index 3bcbe30339f0..2b394561359b 100644
--- a/include/drm/drm_mode_config.h
+++ b/include/drm/drm_mode_config.h
@@ -914,6 +914,18 @@ struct drm_mode_config {
 	 */
 	struct drm_property *modifiers_property;
 
+	/**
+	 * @crtc_scaling_filter_property: CRTC property to apply a particular
+	 * filter while scaling.
+	 */
+	struct drm_property *crtc_scaling_filter_property;
+
+	/**
+	 * @plane_scaling_filter_property: Plane property to apply a particular
+	 * filter while scaling.
+	 */
+	struct drm_property *plane_scaling_filter_property;
+
 	/* cursor size */
 	uint32_t cursor_width, cursor_height;
 
diff --git a/include/drm/drm_plane.h b/include/drm/drm_plane.h
index 3f396d94afe4..f75cee8c4ffa 100644
--- a/include/drm/drm_plane.h
+++ b/include/drm/drm_plane.h
@@ -35,6 +35,10 @@ struct drm_crtc;
 struct drm_printer;
 struct drm_modeset_acquire_ctx;
 
+enum drm_plane_scaling_filter {
+	DRM_PLANE_SCALING_FILTER_DEFAULT,
+	DRM_PLANE_SCALING_FILTER_NEAREST_NEIGHBOR,
+};
 /**
  * struct drm_plane_state - mutable plane state
  *
@@ -214,6 +218,13 @@ struct drm_plane_state {
 	 */
 	bool visible;
 
+	/**
+	 * @scaling_filter:
+	 *
+	 * Scaling filter mode to be applied
+	 */
+	enum drm_plane_scaling_filter scaling_filter;
+
 	/**
 	 * @commit: Tracks the pending commit to prevent use-after-free conditions,
 	 * and for async plane updates.
@@ -862,4 +873,6 @@ drm_plane_get_damage_clips(const struct drm_plane_state *state)
 					state->fb_damage_clips->data : NULL);
 }
 
+void drm_plane_enable_scaling_filter(struct drm_plane *plane);
+
 #endif
-- 
2.23.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
