Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33A70557C81
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jun 2022 15:09:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FEDB10E0B5;
	Thu, 23 Jun 2022 13:09:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 764FD10E0B5
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jun 2022 13:09:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655989747; x=1687525747;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=/P664eRGctRLH2juhUkMKepj48bY2Pp5AAQ5vmN3mcg=;
 b=n9x+FTd/wNiqJkL4DX7cSJVDICXM4bql6qHIxtiuuglpMXf1RcTa/PiY
 yXhz8e8GeYWPVH3ibiExSIWsu3W9hTmSJFLuYYjCXe20Nq9qggdz26RLW
 ZVhxL6iNqunbcgoXuvwCjobpWgFDNJue9eM2PiQMw34yCFfTq37qrS42W
 0uSgduuiQYhZeGTVir60MoqLINbtwBDHGrz7quTmH6GTFwZ8M20TxXlwg
 uuWVq2xfO1bpdK8bvjPl2NKAmV1UN+j/0VQgXuvuM9vNff/GxPPRu9zKb
 bs+GYhQaIwfrdwbm3Maq2xbTVRXEPXlkaOZb+F0CmYmN5qQuJZsZHDFMd g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10386"; a="281443497"
X-IronPort-AV: E=Sophos;i="5.92,216,1650956400"; d="scan'208";a="281443497"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2022 06:09:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,216,1650956400"; d="scan'208";a="730846734"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by fmsmga001.fm.intel.com with SMTP; 23 Jun 2022 06:09:04 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 23 Jun 2022 16:09:03 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Jun 2022 16:08:52 +0300
Message-Id: <20220623130900.26078-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220623130900.26078-1-ville.syrjala@linux.intel.com>
References: <20220623130900.26078-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/9] drm/i915: Move dbuf details to
 INTEL_INFO->display
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

DBUF is a display thing, so move it into the display
portion of the device info.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.h   |  2 +-
 .../gpu/drm/i915/display/intel_display_power.c |  2 +-
 drivers/gpu/drm/i915/i915_pci.c                | 18 +++++++++---------
 drivers/gpu/drm/i915/intel_device_info.h       |  9 +++++----
 drivers/gpu/drm/i915/intel_pm.c                |  8 ++++----
 5 files changed, 20 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 8610e17cc593..c896c1070211 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -193,7 +193,7 @@ enum plane_id {
 
 #define for_each_dbuf_slice(__dev_priv, __slice) \
 	for ((__slice) = DBUF_S1; (__slice) < I915_MAX_DBUF_SLICES; (__slice)++) \
-		for_each_if(INTEL_INFO(__dev_priv)->dbuf.slice_mask & BIT(__slice))
+		for_each_if(INTEL_INFO(__dev_priv)->display.dbuf.slice_mask & BIT(__slice))
 
 #define for_each_dbuf_slice_in_mask(__dev_priv, __slice, __mask) \
 	for_each_dbuf_slice((__dev_priv), (__slice)) \
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index fb17439bd4f8..a9cb27f1c964 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1038,7 +1038,7 @@ void gen9_dbuf_slices_update(struct drm_i915_private *dev_priv,
 			     u8 req_slices)
 {
 	struct i915_power_domains *power_domains = &dev_priv->power_domains;
-	u8 slice_mask = INTEL_INFO(dev_priv)->dbuf.slice_mask;
+	u8 slice_mask = INTEL_INFO(dev_priv)->display.dbuf.slice_mask;
 	enum dbuf_slice slice;
 
 	drm_WARN(&dev_priv->drm, req_slices & ~slice_mask,
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 5e51fc29bb8b..212a958fd8bd 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -656,8 +656,8 @@ static const struct intel_device_info chv_info = {
 	.display.has_ipc = 1, \
 	.display.has_psr = 1, \
 	.display.has_psr_hw_tracking = 1, \
-	.dbuf.size = 896 - 4, /* 4 blocks for bypass path allocation */ \
-	.dbuf.slice_mask = BIT(DBUF_S1)
+	.display.dbuf.size = 896 - 4, /* 4 blocks for bypass path allocation */ \
+	.display.dbuf.slice_mask = BIT(DBUF_S1)
 
 #define SKL_PLATFORM \
 	GEN9_FEATURES, \
@@ -692,7 +692,7 @@ static const struct intel_device_info skl_gt4_info = {
 #define GEN9_LP_FEATURES \
 	GEN(9), \
 	.is_lp = 1, \
-	.dbuf.slice_mask = BIT(DBUF_S1), \
+	.display.dbuf.slice_mask = BIT(DBUF_S1), \
 	.display.has_hotplug = 1, \
 	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0), \
 	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C), \
@@ -730,14 +730,14 @@ static const struct intel_device_info skl_gt4_info = {
 static const struct intel_device_info bxt_info = {
 	GEN9_LP_FEATURES,
 	PLATFORM(INTEL_BROXTON),
-	.dbuf.size = 512 - 4, /* 4 blocks for bypass path allocation */
+	.display.dbuf.size = 512 - 4, /* 4 blocks for bypass path allocation */
 };
 
 static const struct intel_device_info glk_info = {
 	GEN9_LP_FEATURES,
 	PLATFORM(INTEL_GEMINILAKE),
 	.display.ver = 10,
-	.dbuf.size = 1024 - 4, /* 4 blocks for bypass path allocation */
+	.display.dbuf.size = 1024 - 4, /* 4 blocks for bypass path allocation */
 	GLK_COLORS,
 };
 
@@ -827,8 +827,8 @@ static const struct intel_device_info cml_gt2_info = {
 	}, \
 	GEN(11), \
 	ICL_COLORS, \
-	.dbuf.size = 2048, \
-	.dbuf.slice_mask = BIT(DBUF_S1) | BIT(DBUF_S2), \
+	.display.dbuf.size = 2048, \
+	.display.dbuf.slice_mask = BIT(DBUF_S1) | BIT(DBUF_S2), \
 	.display.has_dsc = 1, \
 	.has_coherent_ggtt = false, \
 	.has_logical_ring_elsq = 1
@@ -951,8 +951,8 @@ static const struct intel_device_info adl_s_info = {
 		   .degamma_lut_tests = DRM_COLOR_LUT_NON_DECREASING |		\
 					DRM_COLOR_LUT_EQUAL_CHANNELS,		\
 	},									\
-	.dbuf.size = 4096,							\
-	.dbuf.slice_mask = BIT(DBUF_S1) | BIT(DBUF_S2) | BIT(DBUF_S3) |		\
+	.display.dbuf.size = 4096,						\
+	.display.dbuf.slice_mask = BIT(DBUF_S1) | BIT(DBUF_S2) | BIT(DBUF_S3) |	\
 		BIT(DBUF_S4),							\
 	.display.has_ddi = 1,							\
 	.display.has_dmc = 1,							\
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 08341174ee0a..a5f0e5eac6a6 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -231,15 +231,16 @@ struct intel_device_info {
 		u8 fbc_mask;
 		u8 abox_mask;
 
+		struct {
+			u16 size; /* in blocks */
+			u8 slice_mask;
+		} dbuf;
+
 #define DEFINE_FLAG(name) u8 name:1
 		DEV_INFO_DISPLAY_FOR_EACH_FLAG(DEFINE_FLAG);
 #undef DEFINE_FLAG
 	} display;
 
-	struct {
-		u16 size; /* in blocks */
-		u8 slice_mask;
-	} dbuf;
 
 	/* Register offsets for the various display pipes and transcoders */
 	int pipe_offsets[I915_MAX_TRANSCODERS];
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 9b7e93ca1ff9..f06babdb3a8c 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -4101,8 +4101,8 @@ static u16 skl_ddb_entry_init(struct skl_ddb_entry *entry,
 
 static int intel_dbuf_slice_size(struct drm_i915_private *dev_priv)
 {
-	return INTEL_INFO(dev_priv)->dbuf.size /
-		hweight8(INTEL_INFO(dev_priv)->dbuf.slice_mask);
+	return INTEL_INFO(dev_priv)->display.dbuf.size /
+		hweight8(INTEL_INFO(dev_priv)->display.dbuf.slice_mask);
 }
 
 static void
@@ -4121,7 +4121,7 @@ skl_ddb_entry_for_slices(struct drm_i915_private *dev_priv, u8 slice_mask,
 	ddb->end = fls(slice_mask) * slice_size;
 
 	WARN_ON(ddb->start >= ddb->end);
-	WARN_ON(ddb->end > INTEL_INFO(dev_priv)->dbuf.size);
+	WARN_ON(ddb->end > INTEL_INFO(dev_priv)->display.dbuf.size);
 }
 
 static unsigned int mbus_ddb_offset(struct drm_i915_private *i915, u8 slice_mask)
@@ -6096,7 +6096,7 @@ skl_compute_ddb(struct intel_atomic_state *state)
 			    "Enabled dbuf slices 0x%x -> 0x%x (total dbuf slices 0x%x), mbus joined? %s->%s\n",
 			    old_dbuf_state->enabled_slices,
 			    new_dbuf_state->enabled_slices,
-			    INTEL_INFO(dev_priv)->dbuf.slice_mask,
+			    INTEL_INFO(dev_priv)->display.dbuf.slice_mask,
 			    str_yes_no(old_dbuf_state->joined_mbus),
 			    str_yes_no(new_dbuf_state->joined_mbus));
 	}
-- 
2.35.1

