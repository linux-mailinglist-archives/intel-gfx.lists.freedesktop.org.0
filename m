Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72FE12B2345
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Nov 2020 19:04:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD4236E7D3;
	Fri, 13 Nov 2020 18:04:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89D4E6E598
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Nov 2020 18:04:25 +0000 (UTC)
IronPort-SDR: VrxsIJYUBCCAT7Ja7fHiP9ck/M6poitnZrEU0vRR6viglQYeHbEkY1V1XAXRKBW9IurIa0MIv6
 5cvID22h4dXA==
X-IronPort-AV: E=McAfee;i="6000,8403,9804"; a="167931876"
X-IronPort-AV: E=Sophos;i="5.77,476,1596524400"; d="scan'208";a="167931876"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2020 10:04:00 -0800
IronPort-SDR: eOjtZJjXGNo+gQ10IQZiv4kSeo+OmjfAwYoaoKAjz6UYikRTuCfkK33c/loKY/L8s/8DDz/rIR
 WZO5Duzzuo4w==
X-IronPort-AV: E=Sophos;i="5.77,476,1596524400"; d="scan'208";a="474752364"
Received: from orsosgc001.ra.intel.com ([10.23.184.150])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2020 10:04:00 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Nov 2020 10:03:55 -0800
Message-Id: <20201113180359.54410-4-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201113180359.54410-1-umesh.nerlige.ramappa@intel.com>
References: <20201113180359.54410-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/7] drm/i915/gt: Add a reference to the engine
 in i915_wa_list
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
Cc: Chris Wilson <chris.p.wilson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Applying OA whitelist dynamically also demands that we update the wal
list in sync with engine resume. The lock currently used to synchronize
this is engine->uncore->lock. To use this lock, make i915_wa_list aware
of the engine.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c       | 12 +++++++-----
 drivers/gpu/drm/i915/gt/intel_workarounds_types.h |  1 +
 drivers/gpu/drm/i915/gt/selftest_workarounds.c    |  4 ++--
 3 files changed, 10 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index fa8c9d86847d..0f9d2a65dcfe 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -83,10 +83,12 @@ const struct i915_rev_steppings tgl_revids[] = {
 	[1] = { .gt_stepping = TGL_REVID_B0, .disp_stepping = TGL_REVID_D0 },
 };
 
-static void wa_init_start(struct i915_wa_list *wal, const char *name, const char *engine_name)
+static void wa_init_start(struct i915_wa_list *wal, const char *name, const char *engine_name,
+			  struct intel_engine_cs *engine)
 {
 	wal->name = name;
 	wal->engine_name = engine_name;
+	wal->engine = engine;
 }
 
 #define WA_LIST_CHUNK (1 << 4)
@@ -696,7 +698,7 @@ __intel_engine_init_ctx_wa(struct intel_engine_cs *engine,
 	if (engine->class != RENDER_CLASS)
 		return;
 
-	wa_init_start(wal, name, engine->name);
+	wa_init_start(wal, name, engine->name, engine);
 
 	if (IS_DG1(i915))
 		dg1_ctx_workarounds_init(engine, wal);
@@ -1331,7 +1333,7 @@ void intel_gt_init_workarounds(struct drm_i915_private *i915)
 {
 	struct i915_wa_list *wal = &i915->gt_wa_list;
 
-	wa_init_start(wal, "GT", "global");
+	wa_init_start(wal, "GT", "global", NULL);
 	gt_init_workarounds(i915, wal);
 	wa_init_finish(wal);
 }
@@ -1673,7 +1675,7 @@ void intel_engine_init_whitelist(struct intel_engine_cs *engine)
 	struct drm_i915_private *i915 = engine->i915;
 	struct i915_wa_list *w = &engine->whitelist;
 
-	wa_init_start(w, "whitelist", engine->name);
+	wa_init_start(w, "whitelist", engine->name, engine);
 
 	if (IS_DG1(i915))
 		dg1_whitelist_build(engine);
@@ -2073,7 +2075,7 @@ void intel_engine_init_workarounds(struct intel_engine_cs *engine)
 	if (INTEL_GEN(engine->i915) < 4)
 		return;
 
-	wa_init_start(wal, "engine", engine->name);
+	wa_init_start(wal, "engine", engine->name, engine);
 	engine_init_workarounds(engine, wal);
 	wa_init_finish(wal);
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds_types.h b/drivers/gpu/drm/i915/gt/intel_workarounds_types.h
index d166a7145720..e562fd43697b 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds_types.h
@@ -24,6 +24,7 @@ struct i915_wa_list {
 	struct i915_wa	*list;
 	unsigned int	count;
 	unsigned int	wa_count;
+	struct intel_engine_cs *engine;
 };
 
 #endif /* __INTEL_WORKAROUNDS_TYPES_H__ */
diff --git a/drivers/gpu/drm/i915/gt/selftest_workarounds.c b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
index 61a0532d0f3d..fa616d122a23 100644
--- a/drivers/gpu/drm/i915/gt/selftest_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
@@ -65,14 +65,14 @@ reference_lists_init(struct intel_gt *gt, struct wa_lists *lists)
 
 	memset(lists, 0, sizeof(*lists));
 
-	wa_init_start(&lists->gt_wa_list, "GT_REF", "global");
+	wa_init_start(&lists->gt_wa_list, "GT_REF", "global", NULL);
 	gt_init_workarounds(gt->i915, &lists->gt_wa_list);
 	wa_init_finish(&lists->gt_wa_list);
 
 	for_each_engine(engine, gt, id) {
 		struct i915_wa_list *wal = &lists->engine[id].wa_list;
 
-		wa_init_start(wal, "REF", engine->name);
+		wa_init_start(wal, "REF", engine->name, engine);
 		engine_init_workarounds(engine, wal);
 		wa_init_finish(wal);
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
