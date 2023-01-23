Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96011677FC3
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Jan 2023 16:30:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BAC010E4CC;
	Mon, 23 Jan 2023 15:29:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F7E610E4CC
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Jan 2023 15:29:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674487796; x=1706023796;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fna23Mxzq17wEvR+a+/53JyMvWGZ5IFPKP83XXuKTuQ=;
 b=H1F6Qmeaj+7mShTfu92ZD3/dU+T8lUuPOZVBpgz4XJBpuHlJWu0EidI3
 f1Mov2cdm8Aiw/iTNNkJ/IRISg98Ma+HUiYbVDQfAzjkpygz9QjnHLHbz
 BtRQHVppVXZsPIRIg+itLFpicXuncoF1v1HNivnWbKe6dvYBz6Y1zuW5J
 9mznJZNF7cjrvE6HPElzKmUvsAvkBg7l2oAOyA8YVmaNxYfZTaRIExh27
 tM8cE95EWDW8T2rGgXJTSQJ9rxEZ+iVY+sjzQ1JjT/Hp/vB9Qk4WHxAh4
 1Z6qnYee3S3QsvGlqjf4w95N7Xl0/YDDZ/QXxOybGkGcsQwBUxbJ7xoO2 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="327325553"
X-IronPort-AV: E=Sophos;i="5.97,239,1669104000"; d="scan'208";a="327325553"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 07:29:55 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="661730707"
X-IronPort-AV: E=Sophos;i="5.97,239,1669104000"; d="scan'208";a="661730707"
Received: from dut-internal-9dd7.jf.intel.com ([10.24.14.53])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 07:29:54 -0800
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Jan 2023 07:25:23 -0800
Message-Id: <20230123152523.1537564-1-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Use uabi engines for the default
 engine map
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
Cc: jonathan.cavitt@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Default engine map is exactly about uabi engines so no excuse not to use
the appropriate iterator to populate it.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 454e73a433c8..42a39e103d7c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -1096,16 +1096,15 @@ static struct i915_gem_engines *alloc_engines(unsigned int count)
 static struct i915_gem_engines *default_engines(struct i915_gem_context *ctx,
 						struct intel_sseu rcs_sseu)
 {
-	const struct intel_gt *gt = to_gt(ctx->i915);
+	const unsigned int max = I915_NUM_ENGINES;
 	struct intel_engine_cs *engine;
 	struct i915_gem_engines *e, *err;
-	enum intel_engine_id id;
 
-	e = alloc_engines(I915_NUM_ENGINES);
+	e = alloc_engines(max);
 	if (!e)
 		return ERR_PTR(-ENOMEM);
 
-	for_each_engine(engine, gt, id) {
+	for_each_uabi_engine(engine, ctx->i915) {
 		struct intel_context *ce;
 		struct intel_sseu sseu = {};
 		int ret;
@@ -1113,7 +1112,7 @@ static struct i915_gem_engines *default_engines(struct i915_gem_context *ctx,
 		if (engine->legacy_idx == INVALID_ENGINE)
 			continue;
 
-		GEM_BUG_ON(engine->legacy_idx >= I915_NUM_ENGINES);
+		GEM_BUG_ON(engine->legacy_idx >= max);
 		GEM_BUG_ON(e->engines[engine->legacy_idx]);
 
 		ce = intel_context_create(engine);
-- 
2.25.1

