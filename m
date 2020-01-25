Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 187A8149269
	for <lists+intel-gfx@lfdr.de>; Sat, 25 Jan 2020 01:56:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50F926E51B;
	Sat, 25 Jan 2020 00:56:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 350056E51B
 for <intel-gfx@lists.freedesktop.org>; Sat, 25 Jan 2020 00:56:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 16:56:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,359,1574150400"; d="scan'208";a="426790547"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by fmsmga005.fm.intel.com with ESMTP; 24 Jan 2020 16:56:14 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jan 2020 16:55:33 -0800
Message-Id: <20200125005537.31860-3-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200125005537.31860-1-daniele.ceraolospurio@intel.com>
References: <20200125005537.31860-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 2/6] drm/i915/guc: Add request_alloc for
 guc_submission
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

A straight copy of the execlists one to begin with. Tweaks will come
later if needed.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
---
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 35 +++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index a4caa0f9dfbf..bf40793e32e5 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -18,6 +18,9 @@
 #include "i915_drv.h"
 #include "i915_trace.h"
 
+/* Typical size of the average request (2 pipecontrols and a MI_BB) */
+#define GUC_REQUEST_SIZE 64 /* bytes */
+
 /**
  * DOC: GuC-based command submission
  *
@@ -498,6 +501,36 @@ static void guc_reset_finish(struct intel_engine_cs *engine)
 		     atomic_read(&execlists->tasklet.count));
 }
 
+static int guc_submission_request_alloc(struct i915_request *request)
+{
+	int ret;
+
+	GEM_BUG_ON(!intel_context_is_pinned(request->context));
+
+	/*
+	 * Flush enough space to reduce the likelihood of waiting after
+	 * we start building the request - in which case we will just
+	 * have to repeat work.
+	 */
+	request->reserved_space += GUC_REQUEST_SIZE;
+
+	/*
+	 * Note that after this point, we have committed to using
+	 * this request as it is being used to both track the
+	 * state of engine initialisation and liveness of the
+	 * golden renderstate above. Think twice before you try
+	 * to cancel/unwind this request now.
+	 */
+
+	/* Unconditionally invalidate GPU caches and TLBs. */
+	ret = request->engine->emit_flush(request, EMIT_INVALIDATE);
+	if (ret)
+		return ret;
+
+	request->reserved_space -= GUC_REQUEST_SIZE;
+	return 0;
+}
+
 static int emit_init_breadcrumb(struct i915_request *rq)
 {
 	u32 *cs;
@@ -712,6 +745,8 @@ static void guc_submission_default_vfuncs(struct intel_engine_cs *engine)
 {
 	/* Default vfuncs which can be overriden by each engine. */
 
+	engine->request_alloc = guc_submission_request_alloc;
+
 	engine->emit_init_breadcrumb = emit_init_breadcrumb;
 	engine->emit_fini_breadcrumb = emit_fini_breadcrumb_xcs;
 
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
