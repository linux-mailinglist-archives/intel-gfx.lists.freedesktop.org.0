Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8E324B11F9
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 16:46:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBC3A10E8A1;
	Thu, 10 Feb 2022 15:46:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A04310E8A1
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Feb 2022 15:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644507993; x=1676043993;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Kgsu8t70TxBVUMPGMeI6ZM4E+uNjexhw/UKHTxbmi6w=;
 b=jVQCRd3ICGleToWF7cybUAssypJ/0PW0ZpxnjaNTEaSAWwsqgpu9MkzC
 3JBPc0Jba98t3UMASQEbSCgu8sW3PdCXSAv3jGIyn/T8vnWUYskwNhqRQ
 vE9RTqoRS3Ecuk+v0Bu8wzflMRkyFmulHJDlB/nocXvtgtv8mQTsH6NfE
 kDJFyj0FfSQ7Hr/D6whIPNS2r9SWMplOE+G1MBtcrETIkjQmjz2l6MRhL
 /7mp2hzuBqpxnK3VrrZdIjvf65BrnnLQB0nUNg+ZjQhjQ2UHMxXOSqNLS
 QNLJJL+qN/j/D5qChPFyf+RMT76a1VjDVVJUbn/Pfedf1MurP20zxIK3L g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="236920738"
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="236920738"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 07:46:32 -0800
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="526535590"
Received: from dhogarty-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.10.221])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 07:46:28 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Feb 2022 17:45:44 +0200
Message-Id: <dc0901dbe424c21b3e03b875bf5b944b214d1af4.1644507885.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1644507885.git.jani.nikula@intel.com>
References: <cover.1644507885.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 06/14] drm/i915: move i915_cache_level_str()
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
Cc: jani.nikula@intel.com, Daniel Vetter <daniel.vetter@ffwll.ch>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move the function next to the only user.

Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c | 11 -----------
 drivers/gpu/drm/i915/i915_debugfs.c       | 11 +++++++++++
 drivers/gpu/drm/i915/i915_drv.h           |  2 --
 3 files changed, 11 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 85f86d71603d..e53008b4dd05 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1230,17 +1230,6 @@ void intel_engine_cancel_stop_cs(struct intel_engine_cs *engine)
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
index ca52ee0742ce..5ddd1929254a 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -137,6 +137,17 @@ static const char *stringify_vma_type(const struct i915_vma *vma)
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
index 4dbab34045e8..306bc87dadcc 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1646,8 +1646,6 @@ static inline bool i915_gem_object_needs_bit17_swizzle(struct drm_i915_gem_objec
 		i915_gem_object_is_tiled(obj);
 }
 
-const char *i915_cache_level_str(struct drm_i915_private *i915, int type);
-
 /* intel_device_info.c */
 static inline struct intel_device_info *
 mkwrite_device_info(struct drm_i915_private *dev_priv)
-- 
2.30.2

