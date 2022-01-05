Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BB4B4859A7
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jan 2022 20:57:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21F8B10E3EC;
	Wed,  5 Jan 2022 19:57:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0581710E3F4
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jan 2022 19:57:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641412674; x=1672948674;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KybuotC5kD8z6crwyysv5d2+E2YnjFE+F5PdE4IAeEQ=;
 b=IwsFp4Ni/e62Fs5P+0utg+qbBnLxovEjjlj+mqHtSVMczdmTdqkRf7G5
 wh3OShtMToCHgSaBftcCV55KkcdU09l/EC0XloQ1nKsU3m5ikBEeO4Aj5
 1p9tsZ8suZRjZBctLu0GJWVDKzOHWqENx7abDxbDGKGLcC0N2Jxfide73
 9rdeT1UbjB6X10syYEeLoFpCCvX0yfohtoxrcX3dEa/9R0+OWj8WCvlGR
 RdKIzF0kjNaW4Epj35GZX9u3QG472FXSoRXNCgG8qZuDny9tn6FQ1CHub
 bB/IYEDaHUrqsnz43P6OC9CKZ6Y4aZ+5WvdKkTiVpA5IwGANet40+n6+g w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="229341397"
X-IronPort-AV: E=Sophos;i="5.88,264,1635231600"; d="scan'208";a="229341397"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 11:57:47 -0800
X-IronPort-AV: E=Sophos;i="5.88,264,1635231600"; d="scan'208";a="621260443"
Received: from menright-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.25.244])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 11:57:44 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Jan 2022 21:56:28 +0200
Message-Id: <68f9ba36f533355cebf816dca437646d50599903.1641411696.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1641411696.git.jani.nikula@intel.com>
References: <cover.1641411696.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 12/21] drm/i915: move i915_cache_level_str()
 static in i915_debugfs.c
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move the function next to the only user.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c | 11 -----------
 drivers/gpu/drm/i915/i915_debugfs.c       | 11 +++++++++++
 drivers/gpu/drm/i915/i915_drv.h           |  2 --
 3 files changed, 11 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index bc21d30f7abb..a0d43cfca694 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1228,17 +1228,6 @@ void intel_engine_cancel_stop_cs(struct intel_engine_cs *engine)
 	ENGINE_WRITE_FW(engine, RING_MI_MODE, _MASKED_BIT_DISABLE(STOP_RING));
 }
 
-const char *i915_cache_level_str(struct drm_i915_private *i915, int type)
-{
-	switch (type) {
-	case I915_CACHE_NONE: return " uncached";
-	case I915_CACHE_LLC: return HAS_LLC(i915) ? " LLC" : " snooped";
-	case I915_CACHE_L3_LLC: return " L3+LLC";
-	case I915_CACHE_WT: return " WT";
-	default: return "";
-	}
-}
-
 static u32
 read_subslice_reg(const struct intel_engine_cs *engine,
 		  int slice, int subslice, i915_reg_t reg)
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index e0e052cdf8b8..cb99ba0aaa66 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -136,6 +136,17 @@ static const char *stringify_vma_type(const struct i915_vma *vma)
 	return "ppgtt";
 }
 
+static const char *i915_cache_level_str(struct drm_i915_private *i915, int type)
+{
+	switch (type) {
+	case I915_CACHE_NONE: return " uncached";
+	case I915_CACHE_LLC: return HAS_LLC(i915) ? " LLC" : " snooped";
+	case I915_CACHE_L3_LLC: return " L3+LLC";
+	case I915_CACHE_WT: return " WT";
+	default: return "";
+	}
+}
+
 void
 i915_debugfs_describe_obj(struct seq_file *m, struct drm_i915_gem_object *obj)
 {
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index c30e994c9822..3e9aeb51de34 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1677,8 +1677,6 @@ static inline bool i915_gem_object_needs_bit17_swizzle(struct drm_i915_gem_objec
 		i915_gem_object_is_tiled(obj);
 }
 
-const char *i915_cache_level_str(struct drm_i915_private *i915, int type);
-
 /* intel_device_info.c */
 static inline struct intel_device_info *
 mkwrite_device_info(struct drm_i915_private *dev_priv)
-- 
2.30.2

