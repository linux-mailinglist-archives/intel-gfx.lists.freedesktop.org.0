Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DCD5329D16
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Mar 2021 12:42:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2A7B89C59;
	Tue,  2 Mar 2021 11:42:19 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C65F89C52
 for <Intel-gfx@lists.freedesktop.org>; Tue,  2 Mar 2021 11:42:18 +0000 (UTC)
IronPort-SDR: 7MXDbxXuVDLKUawyIeOyK21f90tEUHK6Nx+3BAWjj3UYpkx6NdHtckguoEC8bZC/duMqXH26wV
 17tvXLzDPA8Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9910"; a="173925179"
X-IronPort-AV: E=Sophos;i="5.81,216,1610438400"; d="scan'208";a="173925179"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 03:42:17 -0800
IronPort-SDR: Z1U8O9SnW+TYVYz4FdhSdWj2mW+MfFqcW7pMs/Uugm9hGw8RYwrCuVv7mveito2pIkOo0C4/Pz
 NIJor5l9ivDA==
X-IronPort-AV: E=Sophos;i="5.81,216,1610438400"; d="scan'208";a="406675218"
Received: from iandrysi-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.61.112])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 03:42:16 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue,  2 Mar 2021 11:42:13 +0000
Message-Id: <20210302114213.1102223-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915: Wedge the GPU if command parser setup
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

v2:
 * Tidy coding style. (Chris)

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Fixes: 311a50e76a33 ("drm/i915: Add support for mandatory cmdparsing")
Cc: Jon Bloomfield <jon.bloomfield@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Chris Wilson <chris.p.wilson@intel.com>
Reviewed-by: Chris Wilson <chris.p.wilson@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c |  7 ++++++-
 drivers/gpu/drm/i915/i915_cmd_parser.c    | 19 +++++++++++++------
 drivers/gpu/drm/i915/i915_drv.h           |  2 +-
 3 files changed, 20 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 577ebd4a324f..b4df275cba79 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -696,6 +696,10 @@ static int engine_setup_common(struct intel_engine_cs *engine)
 		goto err_status;
 	}
 
+	err = intel_engine_init_cmd_parser(engine);
+	if (err)
+		goto err_cmd_parser;
+
 	i915_sched_init(&engine->sched,
 			engine->i915->drm.dev,
 			engine->name,
@@ -703,7 +707,6 @@ static int engine_setup_common(struct intel_engine_cs *engine)
 			ENGINE_PHYSICAL);
 
 	intel_engine_init_execlists(engine);
-	intel_engine_init_cmd_parser(engine);
 	intel_engine_init__pm(engine);
 	intel_engine_init_retire(engine);
 
@@ -720,6 +723,8 @@ static int engine_setup_common(struct intel_engine_cs *engine)
 
 	return 0;
 
+err_cmd_parser:
+	intel_breadcrumbs_free(engine->breadcrumbs);
 err_status:
 	cleanup_status_page(engine);
 	return err;
diff --git a/drivers/gpu/drm/i915/i915_cmd_parser.c b/drivers/gpu/drm/i915/i915_cmd_parser.c
index ced9a96d7c34..5f86f5b2caf6 100644
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
+
+	return 0;
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
