Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39B77326084
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Feb 2021 10:52:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B72756E8FF;
	Fri, 26 Feb 2021 09:52:13 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C7246E8FF
 for <Intel-gfx@lists.freedesktop.org>; Fri, 26 Feb 2021 09:52:12 +0000 (UTC)
IronPort-SDR: 3xDxEcDpux+xmXNFs7XKEfong4jkYrf2x91rhcUK8250oRk6bYd1+vt/W8K80I+Tao/4cnYCKZ
 /rGsp6oVR5eA==
X-IronPort-AV: E=McAfee;i="6000,8403,9906"; a="270807507"
X-IronPort-AV: E=Sophos;i="5.81,208,1610438400"; d="scan'208";a="270807507"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2021 01:52:11 -0800
IronPort-SDR: bNXm0jBbYMUMS8I9tM0Kh/XgeShfdvezve4K8wrMOoGn3d6I7WBa+bw6ZcieZdhNK7B3yiz4lV
 IvgAUa2UL9mw==
X-IronPort-AV: E=Sophos;i="5.81,208,1610438400"; d="scan'208";a="365794499"
Received: from shebatam-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.249.88.129])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2021 01:52:09 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri, 26 Feb 2021 09:51:54 +0000
Message-Id: <20210226095154.806669-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Wedge the GPU if command parser setup
 fails
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

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Commit 311a50e76a33 ("drm/i915: Add support for mandatory cmdparsing")
introduced mandatory command parsing but setup failures were not
translated into wedging the GPU which was probably the intent.

Possible errors come in two categories. Either the sanity check on
internal tables has failed, which should be caught in CI unless an
affected platform would be missed in testing; or memory allocation failure
happened during driver load, which should be extremely unlikely but for
correctness should still be handled.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Fixes: 311a50e76a33 ("drm/i915: Add support for mandatory cmdparsing")
Cc: Jon Bloomfield <jon.bloomfield@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Chris Wilson <chris.p.wilson@intel.com>
---
To catchup with referenced patch we'd need to copy stable from v5.4+.
Failures are very unlikely but I think it would still be prudent to do so.
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c |  8 +++++++-
 drivers/gpu/drm/i915/i915_cmd_parser.c    | 19 +++++++++++++------
 drivers/gpu/drm/i915/i915_drv.h           |  2 +-
 3 files changed, 21 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 577ebd4a324f..ac6478c4ede4 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -696,6 +696,11 @@ static int engine_setup_common(struct intel_engine_cs *engine)
 		goto err_status;
 	}
 
+	err = intel_engine_init_cmd_parser(engine);
+	if (err) {
+		goto err_cmd_parser;
+	}
+
 	i915_sched_init(&engine->sched,
 			engine->i915->drm.dev,
 			engine->name,
@@ -703,7 +708,6 @@ static int engine_setup_common(struct intel_engine_cs *engine)
 			ENGINE_PHYSICAL);
 
 	intel_engine_init_execlists(engine);
-	intel_engine_init_cmd_parser(engine);
 	intel_engine_init__pm(engine);
 	intel_engine_init_retire(engine);
 
@@ -720,6 +724,8 @@ static int engine_setup_common(struct intel_engine_cs *engine)
 
 	return 0;
 
+err_cmd_parser:
+	intel_breadcrumbs_free(engine->breadcrumbs);
 err_status:
 	cleanup_status_page(engine);
 	return err;
diff --git a/drivers/gpu/drm/i915/i915_cmd_parser.c b/drivers/gpu/drm/i915/i915_cmd_parser.c
index ced9a96d7c34..13905891aff7 100644
--- a/drivers/gpu/drm/i915/i915_cmd_parser.c
+++ b/drivers/gpu/drm/i915/i915_cmd_parser.c
@@ -940,7 +940,7 @@ static void fini_hash_table(struct intel_engine_cs *engine)
  * struct intel_engine_cs based on whether the platform requires software
  * command parsing.
  */
-void intel_engine_init_cmd_parser(struct intel_engine_cs *engine)
+int intel_engine_init_cmd_parser(struct intel_engine_cs *engine)
 {
 	const struct drm_i915_cmd_table *cmd_tables;
 	int cmd_table_count;
@@ -948,7 +948,7 @@ void intel_engine_init_cmd_parser(struct intel_engine_cs *engine)
 
 	if (!IS_GEN(engine->i915, 7) && !(IS_GEN(engine->i915, 9) &&
 					  engine->class == COPY_ENGINE_CLASS))
-		return;
+		return 0;
 
 	switch (engine->class) {
 	case RENDER_CLASS:
@@ -1013,19 +1013,19 @@ void intel_engine_init_cmd_parser(struct intel_engine_cs *engine)
 		break;
 	default:
 		MISSING_CASE(engine->class);
-		return;
+		goto out;
 	}
 
 	if (!validate_cmds_sorted(engine, cmd_tables, cmd_table_count)) {
 		drm_err(&engine->i915->drm,
 			"%s: command descriptions are not sorted\n",
 			engine->name);
-		return;
+		goto out;
 	}
 	if (!validate_regs_sorted(engine)) {
 		drm_err(&engine->i915->drm,
 			"%s: registers are not sorted\n", engine->name);
-		return;
+		goto out;
 	}
 
 	ret = init_hash_table(engine, cmd_tables, cmd_table_count);
@@ -1033,10 +1033,17 @@ void intel_engine_init_cmd_parser(struct intel_engine_cs *engine)
 		drm_err(&engine->i915->drm,
 			"%s: initialised failed!\n", engine->name);
 		fini_hash_table(engine);
-		return;
+		goto out;
 	}
 
 	engine->flags |= I915_ENGINE_USING_CMD_PARSER;
+
+out:
+	if (intel_engine_requires_cmd_parser(engine) &&
+	    !intel_engine_using_cmd_parser(engine))
+		return -EINVAL;
+	else
+		return 0;
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index f8413b3b9da8..c8b04b0ec919 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1946,7 +1946,7 @@ const char *i915_cache_level_str(struct drm_i915_private *i915, int type);
 
 /* i915_cmd_parser.c */
 int i915_cmd_parser_get_version(struct drm_i915_private *dev_priv);
-void intel_engine_init_cmd_parser(struct intel_engine_cs *engine);
+int intel_engine_init_cmd_parser(struct intel_engine_cs *engine);
 void intel_engine_cleanup_cmd_parser(struct intel_engine_cs *engine);
 int intel_engine_cmd_parser(struct intel_engine_cs *engine,
 			    struct i915_vma *batch,
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
