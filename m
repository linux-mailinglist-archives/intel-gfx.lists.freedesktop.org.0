Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BA3B42E055
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Oct 2021 19:46:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C7736E84B;
	Thu, 14 Oct 2021 17:46:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2425A6E2C0;
 Thu, 14 Oct 2021 17:46:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10137"; a="228030817"
X-IronPort-AV: E=Sophos;i="5.85,373,1624345200"; d="scan'208";a="228030817"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2021 10:25:02 -0700
X-IronPort-AV: E=Sophos;i="5.85,373,1624345200"; d="scan'208";a="481360436"
Received: from jons-linux-dev-box.fm.intel.com ([10.1.27.20])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2021 10:25:00 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Cc: <john.c.harrison@intel.com>
Date: Thu, 14 Oct 2021 10:19:51 -0700
Message-Id: <20211014172005.27155-12-matthew.brost@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211014172005.27155-1-matthew.brost@intel.com>
References: <20211014172005.27155-1-matthew.brost@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/25] drm/i915/guc: Implement parallel context
 pin / unpin functions
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

Parallel contexts are perma-pinned by the upper layers which makes the
backend implementation rather simple. The parent pins the guc_id and
children increment the parent's pin count on pin to ensure all the
contexts are unpinned before we disable scheduling with the GuC / or
deregister the context.

v2:
 (Daniel Vetter)
  - Perma-pin parallel contexts

Signed-off-by: Matthew Brost <matthew.brost@intel.com>
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>
---
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 70 +++++++++++++++++++
 1 file changed, 70 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 7ba4f1d6f69c..a412593342db 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -2584,6 +2584,76 @@ static const struct intel_context_ops virtual_guc_context_ops = {
 	.get_sibling = guc_virtual_get_sibling,
 };
 
+/* Future patches will use this function */
+__maybe_unused
+static int guc_parent_context_pin(struct intel_context *ce, void *vaddr)
+{
+	struct intel_engine_cs *engine = guc_virtual_get_sibling(ce->engine, 0);
+	struct intel_guc *guc = ce_to_guc(ce);
+	int ret;
+
+	GEM_BUG_ON(!intel_context_is_parent(ce));
+	GEM_BUG_ON(!intel_engine_is_virtual(ce->engine));
+
+	ret = pin_guc_id(guc, ce);
+	if (unlikely(ret < 0))
+		return ret;
+
+	return __guc_context_pin(ce, engine, vaddr);
+}
+
+/* Future patches will use this function */
+__maybe_unused
+static int guc_child_context_pin(struct intel_context *ce, void *vaddr)
+{
+	struct intel_engine_cs *engine = guc_virtual_get_sibling(ce->engine, 0);
+
+	GEM_BUG_ON(!intel_context_is_child(ce));
+	GEM_BUG_ON(!intel_engine_is_virtual(ce->engine));
+
+	__intel_context_pin(ce->parallel.parent);
+	return __guc_context_pin(ce, engine, vaddr);
+}
+
+/* Future patches will use this function */
+__maybe_unused
+static void guc_parent_context_unpin(struct intel_context *ce)
+{
+	struct intel_guc *guc = ce_to_guc(ce);
+
+	GEM_BUG_ON(context_enabled(ce));
+	GEM_BUG_ON(intel_context_is_barrier(ce));
+	GEM_BUG_ON(!intel_context_is_parent(ce));
+	GEM_BUG_ON(!intel_engine_is_virtual(ce->engine));
+
+	unpin_guc_id(guc, ce);
+	lrc_unpin(ce);
+}
+
+/* Future patches will use this function */
+__maybe_unused
+static void guc_child_context_unpin(struct intel_context *ce)
+{
+	GEM_BUG_ON(context_enabled(ce));
+	GEM_BUG_ON(intel_context_is_barrier(ce));
+	GEM_BUG_ON(!intel_context_is_child(ce));
+	GEM_BUG_ON(!intel_engine_is_virtual(ce->engine));
+
+	lrc_unpin(ce);
+}
+
+/* Future patches will use this function */
+__maybe_unused
+static void guc_child_context_post_unpin(struct intel_context *ce)
+{
+	GEM_BUG_ON(!intel_context_is_child(ce));
+	GEM_BUG_ON(!intel_context_is_pinned(ce->parallel.parent));
+	GEM_BUG_ON(!intel_engine_is_virtual(ce->engine));
+
+	lrc_post_unpin(ce);
+	intel_context_unpin(ce->parallel.parent);
+}
+
 static bool
 guc_irq_enable_breadcrumbs(struct intel_breadcrumbs *b)
 {
-- 
2.32.0

