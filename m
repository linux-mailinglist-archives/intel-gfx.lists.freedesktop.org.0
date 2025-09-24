Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02B58B9AE66
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Sep 2025 18:43:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BCBD10E778;
	Wed, 24 Sep 2025 16:43:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CljbVDSh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8570310E777;
 Wed, 24 Sep 2025 16:43:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758732232; x=1790268232;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gWPxGLwGzLuOUvTthAcR9cRdi29ym/VUWaAvWKtq9hM=;
 b=CljbVDShm9iJJOzfgir+d2YhYw9gFfqf39c5lDUx3aWN3dJzEzVmM1+a
 cysVwHymO2L0DOwW9CjGkZF35TIbecyLsib3RGnMeZtSmwIP8Px6tsQ1r
 XX2q2YFVrkv37VBflVZCtT3PFmKJzKFbBiaCAgcUy8Onqjb5hS4tZRVHe
 WDLXjdm94hp19GKgd7aeIUvP/iSaHeqIrZw1jMm4YRDckthn4QPOygSZv
 qlvnGz01RBRmsWhPkl8qcz5FdthTYnVXdDHjAZOx161TJKf8vOHDskiMi
 KDqIIgWL/qrN9zMhJW2Rr3At1LoJul2Kl1gXO2OdG1ZUv12H7od6+cdb/ g==;
X-CSE-ConnectionGUID: FhSnwo4vT0iL2LFPWYtorg==
X-CSE-MsgGUID: ffjw2+U+TPaEUIT0yUcAcQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11563"; a="72137934"
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="72137934"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 09:43:52 -0700
X-CSE-ConnectionGUID: 5rCof0q/RMCMg9/aW4QwZg==
X-CSE-MsgGUID: khZrV67GTaK+bcZ9U6eEpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="177515420"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.149])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 09:43:49 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 01/11] drm/{i915,
 xe}/stolen: rename i915_stolen_fb to intel_stolen_node
Date: Wed, 24 Sep 2025 19:43:30 +0300
Message-ID: <925fd07d3f2a6115c71984f5a40a06c9eb46a539.1758732183.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1758732183.git.jani.nikula@intel.com>
References: <cover.1758732183.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Use a more generic name than one that refers to "i915" and "fb".

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c               |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_stolen.h             |  2 +-
 .../drm/xe/compat-i915-headers/gem/i915_gem_stolen.h   | 10 +++++-----
 3 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 0d380c825791..6a7357fa89db 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -102,7 +102,7 @@ struct intel_fbc {
 	struct mutex lock;
 	unsigned int busy_bits;
 
-	struct i915_stolen_fb compressed_fb, compressed_llb;
+	struct intel_stolen_node compressed_fb, compressed_llb;
 
 	enum intel_fbc_id id;
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.h b/drivers/gpu/drm/i915/gem/i915_gem_stolen.h
index dfe0db8bb1b9..c2f9c994e0ae 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.h
@@ -12,7 +12,7 @@ struct drm_i915_private;
 struct drm_mm_node;
 struct drm_i915_gem_object;
 
-#define i915_stolen_fb drm_mm_node
+#define intel_stolen_node drm_mm_node
 
 int i915_gem_stolen_insert_node(struct drm_i915_private *i915,
 				struct drm_mm_node *node, u64 size,
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h b/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
index f097fc6d5127..62389b290907 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
@@ -12,12 +12,12 @@
 
 struct xe_bo;
 
-struct i915_stolen_fb {
+struct intel_stolen_node {
 	struct xe_bo *bo;
 };
 
 static inline int i915_gem_stolen_insert_node_in_range(struct xe_device *xe,
-						       struct i915_stolen_fb *fb,
+						       struct intel_stolen_node *fb,
 						       u32 size, u32 align,
 						       u32 start, u32 end)
 {
@@ -47,7 +47,7 @@ static inline int i915_gem_stolen_insert_node_in_range(struct xe_device *xe,
 }
 
 static inline int i915_gem_stolen_insert_node(struct xe_device *xe,
-					      struct i915_stolen_fb *fb,
+					      struct intel_stolen_node *fb,
 					      u32 size, u32 align)
 {
 	/* Not used on xe */
@@ -56,7 +56,7 @@ static inline int i915_gem_stolen_insert_node(struct xe_device *xe,
 }
 
 static inline void i915_gem_stolen_remove_node(struct xe_device *xe,
-					       struct i915_stolen_fb *fb)
+					       struct intel_stolen_node *fb)
 {
 	xe_bo_unpin_map_no_vm(fb->bo);
 	fb->bo = NULL;
@@ -65,7 +65,7 @@ static inline void i915_gem_stolen_remove_node(struct xe_device *xe,
 #define i915_gem_stolen_initialized(xe) (!!ttm_manager_type(&(xe)->ttm, XE_PL_STOLEN))
 #define i915_gem_stolen_node_allocated(fb) (!!((fb)->bo))
 
-static inline u32 i915_gem_stolen_node_offset(struct i915_stolen_fb *fb)
+static inline u32 i915_gem_stolen_node_offset(struct intel_stolen_node *fb)
 {
 	struct xe_res_cursor res;
 
-- 
2.47.3

