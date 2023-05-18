Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 450DC707D63
	for <lists+intel-gfx@lfdr.de>; Thu, 18 May 2023 11:56:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A2A710E4FD;
	Thu, 18 May 2023 09:56:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72D4A10E4F7
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 May 2023 09:56:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684403794; x=1715939794;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ozjb2E1llFhioCf9BggMukPIdpDIXXPaKen7gE7n8mM=;
 b=TVfKwwNE5lq0bj3owDkWJ6j9B2rw4ru7wZP9MtiMYzcWmEXD2zb5jXr3
 A+vQh6aWE4Cypgxde8272v/RETqw/l/f7ZV9zOB7KpP95jSIQiRB6MySH
 A1xVatwOyowuY5tBEUCaZIzbxJNx9araFtvmD5zVV32tYm3hEQxNOIwcA
 9ew8QsvVDuUyJYUb8a+LC+8dyGiW/51fUnk+J7mYRuQKh5howUG6HdQCX
 EEuPZuDo191x3JI9vih0Kq4XCqZe7mUzoLmH+StsV38ymmIKlT07I54aI
 W0C0g1K6el19SdLvM7VmVX5tvAkf/m/xlrnokuSWsv/c5xoPm/oa/tzNZ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="438366672"
X-IronPort-AV: E=Sophos;i="5.99,285,1677571200"; d="scan'208";a="438366672"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2023 02:56:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="791897352"
X-IronPort-AV: E=Sophos;i="5.99,285,1677571200"; d="scan'208";a="791897352"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by FMSMGA003.fm.intel.com with ESMTP; 18 May 2023 02:56:16 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 18 May 2023 15:19:14 +0530
Message-Id: <20230518094916.1142812-4-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230518094916.1142812-1-arun.r.murthy@intel.com>
References: <20230518094916.1142812-1-arun.r.murthy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/6] drm/i915/display: Add crtc properties for
 global histogram
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

CRTC properties have been added for enable/disable histogram, reading
the histogram data and writing the IET data.
"GLOBAL_HIST_EN" is the crtc property to enable/disable the global
histogram and takes a value 0/1 accordingly.
"Global Histogram" is a crtc property to read the binary histogram data.
"Global IET" is a crtc property to write the IET binary LUT data.

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic.c   |   5 +
 drivers/gpu/drm/i915/display/intel_crtc.c     | 200 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_crtc.h     |   5 +
 drivers/gpu/drm/i915/display/intel_display.c  |  13 ++
 .../drm/i915/display/intel_display_types.h    |  19 +-
 .../gpu/drm/i915/display/intel_global_hist.c  |   7 +
 6 files changed, 246 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
index 0e5d57c978fe..bed682854071 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic.c
@@ -245,6 +245,8 @@ intel_crtc_duplicate_state(struct drm_crtc *crtc)
 
 	__drm_atomic_helper_crtc_duplicate_state(crtc, &crtc_state->uapi);
 
+	if (crtc_state->global_iet)
+		drm_property_blob_get(crtc_state->global_iet);
 	/* copy color blobs */
 	if (crtc_state->hw.degamma_lut)
 		drm_property_blob_get(crtc_state->hw.degamma_lut);
@@ -266,6 +268,7 @@ intel_crtc_duplicate_state(struct drm_crtc *crtc)
 	crtc_state->fb_bits = 0;
 	crtc_state->update_planes = 0;
 	crtc_state->dsb = NULL;
+	crtc_state->global_hist_en_changed = false;
 
 	return &crtc_state->uapi;
 }
@@ -298,6 +301,8 @@ intel_crtc_destroy_state(struct drm_crtc *crtc,
 
 	drm_WARN_ON(crtc->dev, crtc_state->dsb);
 
+	if (crtc_state->global_iet)
+		drm_property_blob_put(crtc_state->global_iet);
 	__drm_atomic_helper_crtc_destroy_state(&crtc_state->uapi);
 	intel_crtc_free_hw_state(crtc_state);
 	kfree(crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 521dc676e2d0..501bcf732aba 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -11,6 +11,7 @@
 #include <drm/drm_plane.h>
 #include <drm/drm_plane_helper.h>
 #include <drm/drm_vblank_work.h>
+#include <drm/drm_atomic_uapi.h>
 
 #include "i915_irq.h"
 #include "i915_vgpu.h"
@@ -26,6 +27,7 @@
 #include "intel_display_types.h"
 #include "intel_drrs.h"
 #include "intel_dsi.h"
+#include "intel_global_hist.h"
 #include "intel_pipe_crc.h"
 #include "intel_psr.h"
 #include "intel_sprite.h"
@@ -196,6 +198,7 @@ static struct intel_crtc *intel_crtc_alloc(void)
 static void intel_crtc_free(struct intel_crtc *crtc)
 {
 	intel_crtc_destroy_state(&crtc->base, crtc->base.state);
+	intel_global_hist_deinit(crtc);
 	kfree(crtc);
 }
 
@@ -215,6 +218,99 @@ static int intel_crtc_late_register(struct drm_crtc *crtc)
 	return 0;
 }
 
+int intel_crtc_get_property(struct drm_crtc *crtc,
+				   const struct drm_crtc_state *state,
+				   struct drm_property *property,
+				   uint64_t *val)
+{
+	struct drm_i915_private *i915 = to_i915(crtc->dev);
+	struct intel_crtc_state *intel_crtc_state =
+		to_intel_crtc_state(state);
+	struct intel_crtc *intel_crtc = to_intel_crtc(crtc);
+
+	if (property == intel_crtc->global_hist_en_property)
+		*val = intel_crtc_state->global_hist_en;
+	else if (property == intel_crtc->global_iet_property)
+		*val = (intel_crtc_state->global_iet) ?
+			intel_crtc_state->global_iet->base.id : 0;
+	else if (property == intel_crtc->global_hist_property)
+		*val = (intel_crtc_state->global_hist) ?
+			intel_crtc_state->global_hist->base.id : 0;
+	else {
+		drm_err(&i915->drm,
+			       "Unknown property [PROP:%d:%s]\n",
+			       property->base.id, property->name);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static int
+intel_atomic_replace_property_blob_from_id(struct drm_device *dev,
+					 struct drm_property_blob **blob,
+					 uint64_t blob_id,
+					 ssize_t expected_size,
+					 ssize_t expected_elem_size,
+					 bool *replaced)
+{
+	struct drm_property_blob *new_blob = NULL;
+
+	if (blob_id != 0) {
+		new_blob = drm_property_lookup_blob(dev, blob_id);
+		if (new_blob == NULL)
+			return -EINVAL;
+
+		if (expected_size > 0 &&
+		    new_blob->length != expected_size) {
+			drm_property_blob_put(new_blob);
+			return -EINVAL;
+		}
+		if (expected_elem_size > 0 &&
+		    new_blob->length % expected_elem_size != 0) {
+			drm_property_blob_put(new_blob);
+			return -EINVAL;
+		}
+	}
+
+	*replaced |= drm_property_replace_blob(blob, new_blob);
+	drm_property_blob_put(new_blob);
+
+	return 0;
+}
+
+int intel_crtc_set_property(struct drm_crtc *crtc,
+				struct drm_crtc_state *state,
+				struct drm_property *property,
+				u64 val)
+{
+	struct drm_i915_private *i915 = to_i915(crtc->dev);
+	struct intel_crtc_state *intel_crtc_state =
+		to_intel_crtc_state(state);
+	struct intel_crtc *intel_crtc = to_intel_crtc(crtc);
+	bool replaced = false;
+
+	if (property == intel_crtc->global_hist_en_property) {
+		intel_crtc_state->global_hist_en = val;
+		intel_crtc_state->global_hist_en_changed = true;
+		return 0;
+	}
+
+	if (property == intel_crtc->global_iet_property) {
+		intel_atomic_replace_property_blob_from_id(crtc->dev,
+				&intel_crtc_state->global_iet, val,
+				sizeof(uint32_t) * GLOBAL_HIST_IET_LENGTH,
+				-1, &replaced);
+		if (replaced)
+			intel_crtc_state->global_iet_changed = true;
+		return 0;
+	}
+
+	drm_dbg_atomic(&i915->drm, "Unknown property [PROP:%d:%s]\n",
+		       property->base.id, property->name);
+	return -EINVAL;
+}
+
 #define INTEL_CRTC_FUNCS \
 	.set_config = drm_atomic_helper_set_config, \
 	.destroy = intel_crtc_destroy, \
@@ -225,7 +321,9 @@ static int intel_crtc_late_register(struct drm_crtc *crtc)
 	.verify_crc_source = intel_crtc_verify_crc_source, \
 	.get_crc_sources = intel_crtc_get_crc_sources, \
 	.late_register = intel_crtc_late_register, \
-	.pre_crc_read = intel_crtc_pre_crc_read
+	.pre_crc_read = intel_crtc_pre_crc_read, \
+	.atomic_set_property = intel_crtc_set_property, \
+	.atomic_get_property = intel_crtc_get_property
 
 static const struct drm_crtc_funcs bdw_crtc_funcs = {
 	INTEL_CRTC_FUNCS,
@@ -371,6 +469,10 @@ int intel_crtc_init(struct drm_i915_private *dev_priv, enum pipe pipe)
 
 	intel_crtc_drrs_init(crtc);
 	intel_crtc_crc_init(crtc);
+	intel_global_hist_init(crtc);
+
+	/* Initialize crtc properties */
+	intel_crtc_add_property(crtc);
 
 	cpu_latency_qos_add_request(&crtc->vblank_pm_qos, PM_QOS_DEFAULT_VALUE);
 
@@ -713,3 +815,99 @@ void intel_pipe_update_end(struct intel_crtc_state *new_crtc_state)
 
 	dbg_vblank_evade(crtc, end_vbl_time);
 }
+
+static const struct drm_prop_enum_list global_hist_en_names[] = {
+	{ INTEL_GLOBAL_HIST_DISABLE, "Disable" },
+	{ INTEL_GLOBAL_HIST_ENABLE, "Enable" },
+};
+
+/**
+ * intel_attach_global_hist_en_property() - add property to enable/disable histogram
+ * @intel_crtc: pointer to the struct intel_crtc on which the global histogram is to
+ *		be enabled/disabled
+ *
+ * "GLOBAL_HIST_EN" is the crtc proeprty to enable/disable global histogram
+ */
+void intel_attach_global_hist_en_property(struct intel_crtc *intel_crtc)
+{
+	struct drm_crtc *crtc = &intel_crtc->base;
+	struct drm_device *dev = crtc->dev;
+	struct drm_property *prop;
+
+	prop = intel_crtc->global_hist_en_property;
+	if (prop == NULL) {
+		prop = drm_property_create_enum(dev, 0,
+					   "GLOBAL_HIST_EN",
+					   global_hist_en_names,
+					   ARRAY_SIZE(global_hist_en_names));
+		if (prop == NULL)
+			return;
+
+		intel_crtc->global_hist_en_property = prop;
+	}
+
+	drm_object_attach_property(&crtc->base, prop, 0);
+}
+
+/**
+ * intel_attach_global_iet_property() - add property to write Image Enhancement data
+ * @intel_crtc: pointer to the struct intel_crtc on which global histogram is enabled
+ *
+ * "Global IET" is the crtc property to write the Image Enhancement LUT binary data
+ */
+void intel_attach_global_iet_property(struct intel_crtc *intel_crtc)
+{
+	struct drm_crtc *crtc = &intel_crtc->base;
+	struct drm_device *dev = crtc->dev;
+	struct drm_property *prop;
+
+	prop = intel_crtc->global_iet_property;
+	if (prop == NULL) {
+		prop = drm_property_create(dev, DRM_MODE_PROP_BLOB | DRM_MODE_PROP_ATOMIC,
+					   "Global IET", 0);
+		if (prop == NULL)
+			return;
+
+		intel_crtc->global_iet_property = prop;
+	}
+
+	drm_object_attach_property(&crtc->base, prop, 0);
+}
+
+/**
+ * intel_atach_global_hist_property() - crtc proeprty to read the histogram.
+ * @intel_crtc: pointer to the struct intel_crtc on which the global histogram
+ *		was enabled.
+ * "Global Histogram" is the crtc property to read the binary histogram data.
+ */
+void intel_attach_global_hist_property(struct intel_crtc *intel_crtc)
+{
+	struct drm_crtc *crtc = &intel_crtc->base;
+	struct drm_device *dev = crtc->dev;
+	struct drm_property *prop;
+	struct drm_property_blob *blob;
+
+	prop = intel_crtc->global_hist_property;
+	if (prop == NULL) {
+		prop = drm_property_create(dev, DRM_MODE_PROP_BLOB |
+					DRM_MODE_PROP_ATOMIC | DRM_MODE_PROP_IMMUTABLE,
+					"Global Histogram", 0);
+		if (prop == NULL)
+			return;
+
+		intel_crtc->global_hist_property = prop;
+	}
+	blob = drm_property_create_blob(dev, sizeof(uint32_t) * GLOBAL_HIST_BIN_COUNT, NULL);
+	intel_crtc->config->global_hist = blob;
+
+	drm_object_attach_property(&crtc->base, prop, blob->base.id);
+}
+
+int intel_crtc_add_property(struct intel_crtc *intel_crtc)
+{
+	intel_attach_global_hist_en_property(intel_crtc);
+	intel_attach_global_hist_property(intel_crtc);
+	intel_attach_global_iet_property(intel_crtc);
+
+	return 0;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_crtc.h b/drivers/gpu/drm/i915/display/intel_crtc.h
index 73077137fb99..6744b6a03e19 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.h
+++ b/drivers/gpu/drm/i915/display/intel_crtc.h
@@ -7,6 +7,7 @@
 #define _INTEL_CRTC_H_
 
 #include <linux/types.h>
+#include <drm/drm_crtc.h>
 
 enum i9xx_plane_id;
 enum pipe;
@@ -36,4 +37,8 @@ void intel_wait_for_vblank_if_active(struct drm_i915_private *i915,
 				     enum pipe pipe);
 void intel_crtc_wait_for_next_vblank(struct intel_crtc *crtc);
 
+int intel_crtc_add_property(struct intel_crtc *intel_crtc);
+void intel_attach_global_hist_en_property(struct intel_crtc *intel_crtc);
+void intel_attach_global_iet_property(struct intel_crtc *intel_crtc);
+void intel_attach_global_hist_property(struct intel_crtc *intel_crtc);
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ab3c9e8d4157..6255c6443726 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -52,6 +52,7 @@
 #include "display/intel_dp.h"
 #include "display/intel_dp_mst.h"
 #include "display/intel_dpll.h"
+#include "display/intel_global_hist.h"
 #include "display/intel_dpll_mgr.h"
 #include "display/intel_drrs.h"
 #include "display/intel_dsi.h"
@@ -4921,6 +4922,10 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 	if (ret)
 		return ret;
 
+	/* GLOBAL_HIST changed */
+	if (crtc_state->global_hist_en_changed)
+		intel_global_hist_compute_config(crtc);
+
 	return 0;
 }
 
@@ -7730,6 +7735,14 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 		 * commit_done and later do dsb cleanup in cleanup_work.
 		 */
 		old_crtc_state->dsb = fetch_and_zero(&new_crtc_state->dsb);
+
+		/* Re-Visit: GLOBAL_HIST related stuff */
+		if (new_crtc_state->global_hist_en_changed)
+			intel_global_hist_update(crtc,
+					new_crtc_state->global_hist_en);
+		if (new_crtc_state->global_iet_changed)
+			intel_global_hist_set_iet_lut(crtc,
+					(u32 *)new_crtc_state->global_iet->data);
 	}
 
 	/* Underruns don't always raise interrupts, so check manually */
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 9848fcf73b87..15d28e2305da 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -94,6 +94,12 @@ enum intel_broadcast_rgb {
 	INTEL_BROADCAST_RGB_LIMITED,
 };
 
+/* GLOBAL_HIST property */
+enum intel_global_hist_en_prop {
+	INTEL_GLOBAL_HIST_PROP_DISABLE,
+	INTEL_GLOBAL_HIST_PROP_ENABLE,
+};
+
 struct intel_fb_view {
 	/*
 	 * The remap information used in the remapped and rotated views to
@@ -1360,6 +1366,13 @@ struct intel_crtc_state {
 
 	/* for loading single buffered registers during vblank */
 	struct drm_vblank_work vblank_work;
+
+	/* GLOBAL_HIST data */
+	int global_hist_en;
+	struct drm_property_blob *global_iet;
+	struct drm_property_blob *global_hist;
+	bool global_iet_changed;
+	bool global_hist_en_changed;
 };
 
 enum intel_pipe_crc_source {
@@ -1462,9 +1475,11 @@ struct intel_crtc {
 	/* for loading single buffered registers during vblank */
 	struct pm_qos_request vblank_pm_qos;
 
-	/* GLOBAL_HIST data */
 	struct intel_global_hist *global_hist;
-
+	/* GLOBAL_HIST properties */
+	struct drm_property *global_hist_en_property;
+	struct drm_property *global_iet_property;
+	struct drm_property *global_hist_property;
 #ifdef CONFIG_DEBUG_FS
 	struct intel_pipe_crc pipe_crc;
 	u32 cpu_fifo_underrun_count;
diff --git a/drivers/gpu/drm/i915/display/intel_global_hist.c b/drivers/gpu/drm/i915/display/intel_global_hist.c
index ea5bcd195017..874d80d1e41b 100644
--- a/drivers/gpu/drm/i915/display/intel_global_hist.c
+++ b/drivers/gpu/drm/i915/display/intel_global_hist.c
@@ -69,6 +69,12 @@ static int intel_global_hist_get_data(struct drm_i915_private *i915,
 	intel_de_rmw(i915, DPST_GUARD(pipe),
 			DPST_GUARD_HIST_EVENT_STATUS, 1);
 
+	drm_property_replace_global_blob(&i915->drm,
+			&intel_crtc->config->global_hist,
+			sizeof(global_hist->bindata),
+			global_hist->bindata, &intel_crtc->base.base,
+			intel_crtc->global_hist_property);
+
 	return ret;
 }
 
@@ -196,6 +202,7 @@ static int intel_global_hist_disable(struct intel_crtc *intel_crtc)
 
 	cancel_delayed_work(&global_hist->handle_global_hist_int_work);
 	global_hist->enable = false;
+	intel_crtc->config->global_hist_en = false;
 
 	return 0;
 }
-- 
2.25.1

