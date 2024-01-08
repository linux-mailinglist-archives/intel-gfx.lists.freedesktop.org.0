Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58BAD826DD2
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jan 2024 13:28:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 671CA10E24F;
	Mon,  8 Jan 2024 12:28:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DFF910E221
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jan 2024 12:28:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704716891; x=1736252891;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Cg4O08i7qMApHtWiDg1Bz43dsioxzeauvWh+XMb02RM=;
 b=lT35sqBbWOv8G2c5rDXdGrNRZpiQmzFsKs0166XdO5G6WE0YojqohBC2
 2x7JXwYhDt7yhVpa8MfaUcxhPBS/ajI93E5oEBQjoYhIs0bifEYZNr+Cg
 XXjuFXBxHzThCKyrtWmbPtBNfWOwhCkqSmYdR3LsriJIs55KXLpfRHjLM
 mm43ROxXwxSyMPY6J91RTDDOoi7lqHr1oOXkMV/V4TtFHtKRKnveBkodp
 T9S/FcfO6qqrXUH8DPCteIEqZ2mUmE6Z0LS4uW9MeIWwnPYKY/AQCKa3m
 rs2VhiDh/K2+DYVtC0EBPes8DLmzviUZip1SXAuUC553K6w7lIM+GX3qO w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10946"; a="395032581"
X-IronPort-AV: E=Sophos;i="6.04,341,1695711600"; d="scan'208";a="395032581"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 04:28:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10946"; a="731093817"
X-IronPort-AV: E=Sophos;i="6.04,341,1695711600"; d="scan'208";a="731093817"
Received: from haridhar-ms-7d25.iind.intel.com ([10.190.238.61])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 04:28:09 -0800
From: Haridhar Kalvala <haridhar.kalvala@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v1 2/3] drm/i915/xelpg: Extend driver code of Xe_LPG to Xe_LPG+
Date: Mon,  8 Jan 2024 17:57:37 +0530
Message-Id: <20240108122738.14399-3-haridhar.kalvala@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240108122738.14399-1-haridhar.kalvala@intel.com>
References: <20240108122738.14399-1-haridhar.kalvala@intel.com>
MIME-Version: 1.0
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Harish Chegondi <harish.chegondi@intel.com>

Xe_LPG+ (IP version 12.74) should take the same general code
paths as Xe_LPG (versions 12.70 and 12.71).

Xe_LPG+'s workaround list will be handled by the next patch.

Signed-off-by: Harish Chegondi <harish.chegondi@intel.com>
Signed-off-by: Haridhar Kalvala <haridhar.kalvala@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c | 3 ++-
 drivers/gpu/drm/i915/gt/intel_mocs.c      | 2 +-
 drivers/gpu/drm/i915/gt/intel_rc6.c       | 2 +-
 drivers/gpu/drm/i915/i915_debugfs.c       | 2 +-
 4 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 40687806d22a..1ade568ffbfa 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1190,7 +1190,8 @@ static int intel_engine_init_tlb_invalidation(struct intel_engine_cs *engine)
 			num = ARRAY_SIZE(xelpmp_regs);
 		}
 	} else {
-		if (GRAPHICS_VER_FULL(i915) == IP_VER(12, 71) ||
+		if (GRAPHICS_VER_FULL(i915) == IP_VER(12, 74) ||
+		    GRAPHICS_VER_FULL(i915) == IP_VER(12, 71) ||
 		    GRAPHICS_VER_FULL(i915) == IP_VER(12, 70) ||
 		    GRAPHICS_VER_FULL(i915) == IP_VER(12, 50) ||
 		    GRAPHICS_VER_FULL(i915) == IP_VER(12, 55)) {
diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
index 353f93baaca0..25c1023eb5f9 100644
--- a/drivers/gpu/drm/i915/gt/intel_mocs.c
+++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
@@ -495,7 +495,7 @@ static unsigned int get_mocs_settings(struct drm_i915_private *i915,
 	memset(table, 0, sizeof(struct drm_i915_mocs_table));
 
 	table->unused_entries_index = I915_MOCS_PTE;
-	if (IS_GFX_GT_IP_RANGE(to_gt(i915), IP_VER(12, 70), IP_VER(12, 71))) {
+	if (IS_GFX_GT_IP_RANGE(to_gt(i915), IP_VER(12, 70), IP_VER(12, 74))) {
 		table->size = ARRAY_SIZE(mtl_mocs_table);
 		table->table = mtl_mocs_table;
 		table->n_entries = MTL_NUM_MOCS_ENTRIES;
diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index 7090e4be29cb..8f4b3c8af09c 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -123,7 +123,7 @@ static void gen11_rc6_enable(struct intel_rc6 *rc6)
 	 * temporary wa and should be removed after fixing real cause
 	 * of forcewake timeouts.
 	 */
-	if (IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 71)))
+	if (IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 74)))
 		pg_enable =
 			GEN9_MEDIA_PG_ENABLE |
 			GEN11_MEDIA_SAMPLER_PG_ENABLE;
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index db99c2ef66db..990eaa029d9c 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -147,7 +147,7 @@ static const char *i915_cache_level_str(struct drm_i915_gem_object *obj)
 {
 	struct drm_i915_private *i915 = obj_to_i915(obj);
 
-	if (IS_GFX_GT_IP_RANGE(to_gt(i915), IP_VER(12, 70), IP_VER(12, 71))) {
+	if (IS_GFX_GT_IP_RANGE(to_gt(i915), IP_VER(12, 70), IP_VER(12, 74))) {
 		switch (obj->pat_index) {
 		case 0: return " WB";
 		case 1: return " WT";
-- 
2.25.1

