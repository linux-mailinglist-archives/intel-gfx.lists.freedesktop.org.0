Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C6EA621B481
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 14:00:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BCA26EC0D;
	Fri, 10 Jul 2020 12:00:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 164A46EC12
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 12:00:30 +0000 (UTC)
IronPort-SDR: sjLENzbfNcgqZb3lpHBT1Bz9lLgMmcELcKmix0DmDHfXCiDiO5u8rSgv2ZojT7G2hXOtNcdtIE
 dzk6RyUYFq0A==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="209716654"
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="209716654"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 05:00:29 -0700
IronPort-SDR: LtweP0YXDGLJS5WgiVHFt3Ixw+dI3dFBNE/tFjob9QU8E6PY5COei44H72pJhepck6BAtG0SLJ
 orAWAFHds76w==
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="458257870"
Received: from nmartino-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.255.207.224])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 05:00:27 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jul 2020 12:57:31 +0100
Message-Id: <20200710115757.290984-35-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200710115757.290984-1-matthew.auld@intel.com>
References: <20200710115757.290984-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 34/60] drm/i915: introduce kernel blitter_context
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
Cc: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We may be without a context to perform various internal blitter
operations, for example when performing object migration. Piggybacking
off the kernel_context is probably a bad idea, since it has other uses.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c    | 30 +++++++++++++++++---
 drivers/gpu/drm/i915/gt/intel_engine_types.h |  1 +
 2 files changed, 27 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index dd1a42c4d344..1df94e82550f 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -792,6 +792,7 @@ create_kernel_context(struct intel_engine_cs *engine)
 	int err;
 
 	ce = intel_context_create(engine);
+
 	if (IS_ERR(ce))
 		return ce;
 
@@ -845,16 +846,32 @@ static int engine_init_common(struct intel_engine_cs *engine)
 		return PTR_ERR(ce);
 
 	ret = measure_breadcrumb_dw(ce);
-	if (ret < 0)
-		goto err_context;
+	if (ret < 0) {
+		intel_context_put(ce);
+		return ret;
+	}
 
 	engine->emit_fini_breadcrumb_dw = ret;
 	engine->kernel_context = ce;
 
+	/*
+	 * The blitter context is used to quickly memset or migrate objects
+	 * in local memory, so it has to always be available.
+	 */
+	if (engine->class == COPY_ENGINE_CLASS) {
+		ce = create_kernel_context(engine);
+		if (IS_ERR(ce)) {
+			ret = PTR_ERR(ce);
+			goto err_kernel_context;
+		}
+
+		engine->blitter_context = ce;
+	}
+
 	return 0;
 
-err_context:
-	intel_context_put(ce);
+err_kernel_context:
+	intel_context_put(engine->kernel_context);
 	return ret;
 }
 
@@ -910,6 +927,11 @@ void intel_engine_cleanup_common(struct intel_engine_cs *engine)
 	if (engine->default_state)
 		fput(engine->default_state);
 
+	if (engine->blitter_context) {
+		intel_context_unpin(engine->blitter_context);
+		intel_context_put(engine->blitter_context);
+	}
+
 	if (engine->kernel_context) {
 		intel_context_unpin(engine->kernel_context);
 		intel_context_put(engine->kernel_context);
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 490af81bd6f3..3b2d9ed7670f 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -342,6 +342,7 @@ struct intel_engine_cs {
 	struct llist_head barrier_tasks;
 
 	struct intel_context *kernel_context; /* pinned */
+	struct intel_context *blitter_context; /* pinned; exists for BCS only */
 
 	intel_engine_mask_t saturated; /* submitting semaphores too late? */
 
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
