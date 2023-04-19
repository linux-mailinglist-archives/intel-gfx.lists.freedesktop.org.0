Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 77FAE6E72C6
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Apr 2023 07:56:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E4ED10E099;
	Wed, 19 Apr 2023 05:56:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73C4610E0C0
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Apr 2023 05:56:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681883763; x=1713419763;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JT8863FArhVKr92efN/DOBs53cgSzCf9Oitf9qWrpPg=;
 b=M/4q2va/prKJyheptnVToZy6p3xt6h+Fe59f/BF8gAFstYG2fNmFp3jL
 k5IT0pElrDgT98DEBCL3c/YTH+uJlEUg4lI9yn6wNH6EoMjQ1VdgWNYiQ
 9NbcoUBC6Y2/OwdnkybAhGcnK9ajEyoQI88vLNoNtseeDLOOWjfHiLDJR
 usWIK3aVY7TDdPYBmcCia3kQ+Zylz0MULdO0tk5iyWobK/8ZSEqLCJRBn
 pTmtf8TS5F+XKAJzjQiv6XfNNqi7sc9mlS9Ff7BxOVM6VIPo67sPBc2rY
 IGZ+IpnxaeVU+nNsjJbDd4RxJRSjZ70j8n8N77MEfFN+PLlMsXsdqmGoI A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="347216209"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="347216209"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 22:56:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="693910503"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="693910503"
Received: from tejas-super-server.iind.intel.com ([10.145.169.166])
 by fmsmga007.fm.intel.com with ESMTP; 18 Apr 2023 22:56:02 -0700
From: Tejas Upadhyay <tejas.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Apr 2023 11:30:36 +0530
Message-Id: <20230419060036.3422635-4-tejas.upadhyay@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230419060036.3422635-1-tejas.upadhyay@intel.com>
References: <20230419060036.3422635-1-tejas.upadhyay@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/selftests: Consider multi-gt
 instead of to_gt()
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

In order to enable complete multi-GT, loop through all
the GTs, rather than relying on the to_gt(), which only
provides a reference to the primary GT.

Problem appear when it runs on platform like MTL where
different set of engines are possible on different GTs.

Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
---
 .../gpu/drm/i915/selftests/igt_live_test.c    | 46 +++++++++++--------
 1 file changed, 27 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/selftests/igt_live_test.c b/drivers/gpu/drm/i915/selftests/igt_live_test.c
index 72b58b66692a..714b7afc490b 100644
--- a/drivers/gpu/drm/i915/selftests/igt_live_test.c
+++ b/drivers/gpu/drm/i915/selftests/igt_live_test.c
@@ -16,27 +16,31 @@ int igt_live_test_begin(struct igt_live_test *t,
 			const char *func,
 			const char *name)
 {
-	struct intel_gt *gt = to_gt(i915);
 	struct intel_engine_cs *engine;
 	enum intel_engine_id id;
+	struct intel_gt *gt;
+	unsigned int i;
 	int err;
 
 	t->i915 = i915;
 	t->func = func;
 	t->name = name;
 
-	err = intel_gt_wait_for_idle(gt, MAX_SCHEDULE_TIMEOUT);
-	if (err) {
-		pr_err("%s(%s): failed to idle before, with err=%d!",
-		       func, name, err);
-		return err;
-	}
+	for_each_gt(gt, i915, i) {
 
-	t->reset_global = i915_reset_count(&i915->gpu_error);
+		err = intel_gt_wait_for_idle(gt, MAX_SCHEDULE_TIMEOUT);
+		if (err) {
+			pr_err("%s(%s): failed to idle before, with err=%d!",
+			       func, name, err);
+			return err;
+		}
 
-	for_each_engine(engine, gt, id)
-		t->reset_engine[id] =
+		for_each_engine(engine, gt, id)
+			t->reset_engine[id] =
 			i915_reset_engine_count(&i915->gpu_error, engine);
+	}
+
+	t->reset_global = i915_reset_count(&i915->gpu_error);
 
 	return 0;
 }
@@ -46,6 +50,8 @@ int igt_live_test_end(struct igt_live_test *t)
 	struct drm_i915_private *i915 = t->i915;
 	struct intel_engine_cs *engine;
 	enum intel_engine_id id;
+	struct intel_gt *gt;
+	unsigned int i;
 
 	if (igt_flush_test(i915))
 		return -EIO;
@@ -57,16 +63,18 @@ int igt_live_test_end(struct igt_live_test *t)
 		return -EIO;
 	}
 
-	for_each_engine(engine, to_gt(i915), id) {
-		if (t->reset_engine[id] ==
-		    i915_reset_engine_count(&i915->gpu_error, engine))
-			continue;
+	for_each_gt(gt, i915, i) {
+		for_each_engine(engine, gt, id) {
+			if (t->reset_engine[id] ==
+			    i915_reset_engine_count(&i915->gpu_error, engine))
+				continue;
 
-		pr_err("%s(%s): engine '%s' was reset %d times!\n",
-		       t->func, t->name, engine->name,
-		       i915_reset_engine_count(&i915->gpu_error, engine) -
-		       t->reset_engine[id]);
-		return -EIO;
+			pr_err("%s(%s): engine '%s' was reset %d times!\n",
+			       t->func, t->name, engine->name,
+			       i915_reset_engine_count(&i915->gpu_error, engine) -
+			       t->reset_engine[id]);
+			return -EIO;
+		}
 	}
 
 	return 0;
-- 
2.25.1

