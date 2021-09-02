Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BA4A3FF3B6
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Sep 2021 21:00:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86D7B6E7FE;
	Thu,  2 Sep 2021 19:00:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94C8E6E7FA
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Sep 2021 19:00:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10095"; a="217357058"
X-IronPort-AV: E=Sophos;i="5.85,262,1624345200"; d="scan'208";a="217357058"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2021 11:59:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,262,1624345200"; d="scan'208";a="689262689"
Received: from ayazahma-nuc8i7beh.iind.intel.com ([10.145.162.59])
 by fmsmga006.fm.intel.com with ESMTP; 02 Sep 2021 11:59:55 -0700
From: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Sreedhar Telukuntla <sreedhar.telukuntla@intel.com>,
 Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
Date: Fri,  3 Sep 2021 00:26:34 +0530
Message-Id: <20210902185635.290538-6-ayaz.siddiqui@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210902185635.290538-1-ayaz.siddiqui@intel.com>
References: <20210902185635.290538-1-ayaz.siddiqui@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH V4 5/6] drm/i915/gt: Initialize L3CC table in
 mocs init
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

From: Sreedhar Telukuntla <sreedhar.telukuntla@intel.com>

Initialize the L3CC table as part of mocs initialization to program
LNCFCMOCSx registers so that the mocs settings are available for
selection for subsequent memory transactions in the driver load path.

Apart from the above requirement, this patch is also needed for platforms
which does not have any renderer engine.
We have verified that value programmed LNCFCMOCSx is retained for
XEHP-SDV, while we lose those values for DG1/TGL.

Signed-off-by: Sreedhar Telukuntla <sreedhar.telukuntla@intel.com>
Signed-off-by: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_mocs.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
index 0fdadefdabc29..df8aa761d2d7f 100644
--- a/drivers/gpu/drm/i915/gt/intel_mocs.c
+++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
@@ -481,10 +481,9 @@ static u32 l3cc_combine(u16 low, u16 high)
 	     0; \
 	     i++)
 
-static void init_l3cc_table(struct intel_engine_cs *engine,
+static void init_l3cc_table(struct intel_uncore *uncore,
 			    const struct drm_i915_mocs_table *table)
 {
-	struct intel_uncore *uncore = engine->uncore;
 	unsigned int i;
 	u32 l3cc;
 
@@ -509,7 +508,7 @@ void intel_mocs_init_engine(struct intel_engine_cs *engine)
 		init_mocs_table(engine, &table);
 
 	if (flags & HAS_RENDER_L3CC && engine->class == RENDER_CLASS)
-		init_l3cc_table(engine, &table);
+		init_l3cc_table(engine->uncore, &table);
 }
 
 static u32 global_mocs_offset(void)
@@ -536,6 +535,14 @@ void intel_mocs_init(struct intel_gt *gt)
 	flags = get_mocs_settings(gt->i915, &table);
 	if (flags & HAS_GLOBAL_MOCS)
 		__init_mocs_table(gt->uncore, &table, global_mocs_offset());
+
+	/*
+	 * Initialize the L3CC table as part of mocs initalization to make
+	 * sure the LNCFCMOCSx registers are programmed for the subsequent
+	 * memory transactions including guc transactions
+	 */
+	if (flags & HAS_RENDER_L3CC)
+		init_l3cc_table(gt->uncore, &table);
 }
 
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
-- 
2.26.2

