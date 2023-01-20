Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA480675DE6
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Jan 2023 20:23:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB6BE10E13F;
	Fri, 20 Jan 2023 19:23:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06C5010E13F
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Jan 2023 19:23:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674242615; x=1705778615;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Sc3hKXEijEPHU9oi8qFjn/sU31WG2HTMgX4yXtbL074=;
 b=WVXr2mVfwFNgEc8qkz8BhOyzJXz7cjyHDsxZxcw72/VG7DzsytWhczdW
 nCC7KUjymdEhHVE/leIwNL+v4ljKfb4YAmOii0dIIFi82VkCVzbybcgzv
 f1wUM6ixKhTHrmgrhcOu6EOBxPhCspPBgvBk3g+ugipVYheXw1Q3CJVna
 NaTZEhYAW9KTfhlAZnJhCOY3aKI1np3MkTyzC3wG7lmZNOwy12SX8l9Pm
 Ruot6U+BnwdqvA9ipA/1hKVy+JKqbjD5M19BEj5Xj+4eHAmdbtSD7YXJw
 LDfhsHsjYW681TxFrBymZw+YYa6l6P6J9ZVB5VhfCcSWDtumPlz6ULa0M g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10596"; a="323357947"
X-IronPort-AV: E=Sophos;i="5.97,233,1669104000"; d="scan'208";a="323357947"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2023 11:23:34 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10596"; a="989497528"
X-IronPort-AV: E=Sophos;i="5.97,233,1669104000"; d="scan'208";a="989497528"
Received: from dut-internal-9dd7.jf.intel.com ([10.24.14.53])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2023 11:23:34 -0800
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Jan 2023 11:19:02 -0800
Message-Id: <20230120191902.1301697-1-jonathan.cavitt@intel.com>
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

