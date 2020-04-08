Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B578A1A26C7
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 18:08:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84C746EA88;
	Wed,  8 Apr 2020 16:08:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 319236EA83;
 Wed,  8 Apr 2020 16:08:30 +0000 (UTC)
IronPort-SDR: 1tLvsRgHl0USD2jkG994YKPrV3tg6vhvv/7Uhk/FPcDege54GV37BJ3sm82g4h7tij55nGV7Ku
 vHUT3ITGOYkw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2020 09:08:29 -0700
IronPort-SDR: KQ+s7OOzXW/mUqK8cjJFeBSvkhlqEpOw2SB3U7MxLYfZF0O5zc3LUuTquqomcnKfaemiHyFqTj
 h3prZSUkK5GQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,359,1580803200"; d="scan'208";a="242397208"
Received: from plaxmina-desktop.iind.intel.com ([10.145.162.62])
 by fmsmga007.fm.intel.com with ESMTP; 08 Apr 2020 09:08:24 -0700
From: Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>
To: jani.nikula@linux.intel.com, daniel@ffwll.ch,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 sameer.lattannavar@intel.com, ankit.k.nautiyal@intel.com,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>
Date: Wed,  8 Apr 2020 21:29:23 +0530
Message-Id: <20200408155927.32300-2-pankaj.laxminarayan.bharadiya@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200408155927.32300-1-pankaj.laxminarayan.bharadiya@intel.com>
References: <20200408155927.32300-1-pankaj.laxminarayan.bharadiya@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 1/5] drm: Introduce plane and CRTC scaling
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

Introduce per-plane and per-CRTC scaling filter properties to allow
userspace to select the driver's default scaling filter or
Nearest-neighbor(NN) filter for upscaling operations on CRTC and
plane.

Drivers can set up this property for a plane by calling
drm_plane_create_scaling_filter() and for a CRTC by calling
drm_crtc_create_scaling_filter().

NN filter works by filling in the missing color values in the upscaled
image with that of the coordinate-mapped nearest source pixel value.

NN filter for integer multiple scaling can be particularly useful for
for pixel art games that rely on sharp, blocky images to deliver their
distinctive look.

changes since v3:
* Refactor code, add new function for common code (Ville)
changes since v2:
* Create per-plane and per-CRTC scaling filter property (Ville)
changes since v1:
* None
changes since RFC:
* Add separate properties for plane and CRTC (Ville)

Signed-off-by: Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>
---
 drivers/gpu/drm/drm_atomic_uapi.c   |  8 +++
 drivers/gpu/drm/drm_crtc.c          | 48 +++++++++++++++
 drivers/gpu/drm/drm_crtc_internal.h |  3 +
 drivers/gpu/drm/drm_plane.c         | 90 +++++++++++++++++++++++++++++
 include/drm/drm_crtc.h              | 16 +++++
 include/drm/drm_plane.h             | 21 +++++++
 6 files changed, 186 insertions(+)

diff --git a/drivers/gpu/drm/drm_atomic_uapi.c b/drivers/gpu/drm/drm_atomic_uapi.c
index a1e5e262bae2..ac7dabbf0bcf 100644
--- a/drivers/gpu/drm/drm_atomic_uapi.c
+++ b/drivers/gpu/drm/drm_atomic_uapi.c
@@ -469,6 +469,8 @@ static int drm_atomic_crtc_set_property(struct drm_crtc *crtc,
 			return -EFAULT;
 
 		set_out_fence_for_crtc(state->state, crtc, fence_ptr);
+	} else if (property == crtc->scaling_filter_property) {
+		state->scaling_filter = val;
 	} else if (crtc->funcs->atomic_set_property) {
 		return crtc->funcs->atomic_set_property(crtc, state, property, val);
 	} else {
@@ -503,6 +505,8 @@ drm_atomic_crtc_get_property(struct drm_crtc *crtc,
 		*val = (state->gamma_lut) ? state->gamma_lut->base.id : 0;
 	else if (property == config->prop_out_fence_ptr)
 		*val = 0;
+	else if (property == crtc->scaling_filter_property)
+		*val = state->scaling_filter;
 	else if (crtc->funcs->atomic_get_property)
 		return crtc->funcs->atomic_get_property(crtc, state, property, val);
 	else
@@ -583,6 +587,8 @@ static int drm_atomic_plane_set_property(struct drm_plane *plane,
 					sizeof(struct drm_rect),
 					&replaced);
 		return ret;
+	} else if (property == plane->scaling_filter_property) {
+		state->scaling_filter = val;
 	} else if (plane->funcs->atomic_set_property) {
 		return plane->funcs->atomic_set_property(plane, state,
 				property, val);
@@ -641,6 +647,8 @@ drm_atomic_plane_get_property(struct drm_plane *plane,
 	} else if (property == config->prop_fb_damage_clips) {
 		*val = (state->fb_damage_clips) ?
 			state->fb_damage_clips->base.id : 0;
+	} else if (property == plane->scaling_filter_property) {
+		*val = state->scaling_filter;
 	} else if (plane->funcs->atomic_get_property) {
 		return plane->funcs->atomic_get_property(plane, state, property, val);
 	} else {
diff --git a/drivers/gpu/drm/drm_crtc.c b/drivers/gpu/drm/drm_crtc.c
index 4936e1080e41..91f0bb915dcd 100644
--- a/drivers/gpu/drm/drm_crtc.c
+++ b/drivers/gpu/drm/drm_crtc.c
@@ -748,3 +748,51 @@ int drm_mode_crtc_set_obj_prop(struct drm_mode_object *obj,
 
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
+ * drm_crtc_create_scaling_filter_property
+ */
+
+/**
+ * drm_crtc_create_scaling_filter_property - create a new scaling filter
+ * property
+ *
+ * @crtc: drm CRTC
+ * @supported_filters: bitmask of supported scaling filters, must include
+ *		       BIT(DRM_SCALING_FILTER_DEFAULT).
+ *
+ * This function lets driver to enable the scaling filter property on a given
+ * CRTC.
+ *
+ * RETURNS:
+ * Zero for success or -errno
+ */
+int drm_crtc_create_scaling_filter_property(struct drm_crtc *crtc,
+					    unsigned int supported_filters)
+{
+	struct drm_property *prop =
+		drm_create_scaling_filter_prop(crtc->dev, supported_filters);
+
+	if (IS_ERR(prop))
+		return PTR_ERR(prop);
+
+	drm_object_attach_property(&crtc->base, prop,
+				   DRM_SCALING_FILTER_DEFAULT);
+	crtc->scaling_filter_property = prop;
+
+	return 0;
+}
+EXPORT_SYMBOL(drm_crtc_create_scaling_filter_property);
diff --git a/drivers/gpu/drm/drm_crtc_internal.h b/drivers/gpu/drm/drm_crtc_internal.h
index da96b2f64d7e..54d4cf1233e9 100644
--- a/drivers/gpu/drm/drm_crtc_internal.h
+++ b/drivers/gpu/drm/drm_crtc_internal.h
@@ -72,6 +72,9 @@ int drm_crtc_force_disable(struct drm_crtc *crtc);
 
 struct dma_fence *drm_crtc_create_fence(struct drm_crtc *crtc);
 
+struct drm_property *
+drm_create_scaling_filter_prop(struct drm_device *dev,
+			       unsigned int supported_filters);
 /* IOCTLs */
 int drm_mode_getcrtc(struct drm_device *dev,
 		     void *data, struct drm_file *file_priv);
diff --git a/drivers/gpu/drm/drm_plane.c b/drivers/gpu/drm/drm_plane.c
index d6ad60ab0d38..cc786fb2c442 100644
--- a/drivers/gpu/drm/drm_plane.c
+++ b/drivers/gpu/drm/drm_plane.c
@@ -1221,3 +1221,93 @@ int drm_mode_page_flip_ioctl(struct drm_device *dev,
 
 	return ret;
 }
+
+struct drm_property *
+drm_create_scaling_filter_prop(struct drm_device *dev,
+			       unsigned int supported_filters)
+{
+	struct drm_property *prop;
+	static const struct drm_prop_enum_list props[] = {
+		{ DRM_SCALING_FILTER_DEFAULT, "Default" },
+		{ DRM_SCALING_FILTER_NEAREST_NEIGHBOR, "Nearest Neighbor" },
+	};
+	unsigned int valid_mode_mask = BIT(DRM_SCALING_FILTER_DEFAULT) |
+				       BIT(DRM_SCALING_FILTER_NEAREST_NEIGHBOR);
+	int i;
+
+	if (WARN_ON((supported_filters & ~valid_mode_mask) ||
+		    ((supported_filters & BIT(DRM_SCALING_FILTER_DEFAULT)) == 0)))
+		return ERR_PTR(-EINVAL);
+
+	prop = drm_property_create(dev, DRM_MODE_PROP_ENUM,
+				   "SCALING_FILTER",
+				   hweight32(supported_filters));
+	if (!prop)
+		return ERR_PTR(-ENOMEM);
+
+	for (i = 0; i < ARRAY_SIZE(props); i++) {
+		int ret;
+
+		if (!(BIT(props[i].type) & supported_filters))
+			continue;
+
+		ret = drm_property_add_enum(prop, props[i].type,
+					    props[i].name);
+
+		if (ret) {
+			drm_property_destroy(dev, prop);
+
+			return ERR_PTR(ret);
+		}
+	}
+
+	return prop;
+}
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
+ * drm_plane_create_scaling_filter_property
+ */
+
+/**
+ * drm_plane_create_scaling_filter_property - create a new scaling filter
+ * property
+ *
+ * @plane: drm plane
+ * @supported_filters: bitmask of supported scaling filters, must include
+ *		       BIT(DRM_SCALING_FILTER_DEFAULT).
+ *
+ * This function lets driver to enable the scaling filter property on a given
+ * plane.
+ *
+ * RETURNS:
+ * Zero for success or -errno
+ */
+int drm_plane_create_scaling_filter_property(struct drm_plane *plane,
+					     unsigned int supported_filters)
+{
+	struct drm_property *prop =
+		drm_create_scaling_filter_prop(plane->dev, supported_filters);
+
+	if (IS_ERR(prop))
+		return PTR_ERR(prop);
+
+	drm_object_attach_property(&plane->base, prop,
+				   DRM_SCALING_FILTER_DEFAULT);
+	plane->scaling_filter_property = prop;
+
+	return 0;
+}
+EXPORT_SYMBOL(drm_plane_create_scaling_filter_property);
diff --git a/include/drm/drm_crtc.h b/include/drm/drm_crtc.h
index 59b51a09cae6..ba839e5e357d 100644
--- a/include/drm/drm_crtc.h
+++ b/include/drm/drm_crtc.h
@@ -324,6 +324,13 @@ struct drm_crtc_state {
 	 */
 	bool self_refresh_active;
 
+	/**
+	 * @scaling_filter:
+	 *
+	 * Scaling filter to be applied
+	 */
+	enum drm_scaling_filter scaling_filter;
+
 	/**
 	 * @event:
 	 *
@@ -1083,6 +1090,12 @@ struct drm_crtc {
 	/** @properties: property tracking for this CRTC */
 	struct drm_object_properties properties;
 
+	/**
+	 * @scaling_filter_property: property to apply a particular filter while
+	 * scaling.
+	 */
+	struct drm_property *scaling_filter_property;
+
 	/**
 	 * @state:
 	 *
@@ -1266,4 +1279,7 @@ static inline struct drm_crtc *drm_crtc_find(struct drm_device *dev,
 #define drm_for_each_crtc(crtc, dev) \
 	list_for_each_entry(crtc, &(dev)->mode_config.crtc_list, head)
 
+int drm_crtc_create_scaling_filter_property(struct drm_crtc *crtc,
+					    unsigned int supported_filters);
+
 #endif /* __DRM_CRTC_H__ */
diff --git a/include/drm/drm_plane.h b/include/drm/drm_plane.h
index 3f396d94afe4..1d82b264e5e4 100644
--- a/include/drm/drm_plane.h
+++ b/include/drm/drm_plane.h
@@ -35,6 +35,11 @@ struct drm_crtc;
 struct drm_printer;
 struct drm_modeset_acquire_ctx;
 
+enum drm_scaling_filter {
+	DRM_SCALING_FILTER_DEFAULT,
+	DRM_SCALING_FILTER_NEAREST_NEIGHBOR,
+};
+
 /**
  * struct drm_plane_state - mutable plane state
  *
@@ -214,6 +219,13 @@ struct drm_plane_state {
 	 */
 	bool visible;
 
+	/**
+	 * @scaling_filter:
+	 *
+	 * Scaling filter to be applied
+	 */
+	enum drm_scaling_filter scaling_filter;
+
 	/**
 	 * @commit: Tracks the pending commit to prevent use-after-free conditions,
 	 * and for async plane updates.
@@ -724,6 +736,12 @@ struct drm_plane {
 	 * See drm_plane_create_color_properties().
 	 */
 	struct drm_property *color_range_property;
+
+	/**
+	 * @scaling_filter_property: property to apply a particular filter while
+	 * scaling.
+	 */
+	struct drm_property *scaling_filter_property;
 };
 
 #define obj_to_plane(x) container_of(x, struct drm_plane, base)
@@ -862,4 +880,7 @@ drm_plane_get_damage_clips(const struct drm_plane_state *state)
 					state->fb_damage_clips->data : NULL);
 }
 
+int drm_plane_create_scaling_filter_property(struct drm_plane *plane,
+					     unsigned int supported_filters);
+
 #endif
-- 
2.23.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
