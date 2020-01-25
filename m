Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB54C14926D
	for <lists+intel-gfx@lfdr.de>; Sat, 25 Jan 2020 01:56:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5204E72BF1;
	Sat, 25 Jan 2020 00:56:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B86A6E51B
 for <intel-gfx@lists.freedesktop.org>; Sat, 25 Jan 2020 00:56:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 16:56:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,359,1574150400"; d="scan'208";a="426790550"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by fmsmga005.fm.intel.com with ESMTP; 24 Jan 2020 16:56:14 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jan 2020 16:55:34 -0800
Message-Id: <20200125005537.31860-4-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200125005537.31860-1-daniele.ceraolospurio@intel.com>
References: <20200125005537.31860-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 3/6] drm/i915/guc: Add engine->resume for GuC
 submission
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

Similar to the execlists one, but we don't handle the STOP_RING (because
GuC owns the engine status) and we leave the CSB fifo at 6 deep.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
---
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 29 +++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index bf40793e32e5..c688f21cc27e 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -11,6 +11,7 @@
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_pm.h"
 #include "gt/intel_lrc_reg.h"
+#include "gt/intel_mocs.h"
 #include "gt/intel_ring.h"
 
 #include "intel_guc_submission.h"
@@ -501,6 +502,32 @@ static void guc_reset_finish(struct intel_engine_cs *engine)
 		     atomic_read(&execlists->tasklet.count));
 }
 
+static void hwsp_setup(struct intel_engine_cs *engine)
+{
+	intel_engine_set_hwsp_writemask(engine, ~0u); /* HWSTAM */
+
+	ENGINE_WRITE(engine, RING_HWS_PGA,
+		     i915_ggtt_offset(engine->status_page.vma));
+	ENGINE_POSTING_READ(engine, RING_HWS_PGA);
+}
+
+static int guc_submission_resume(struct intel_engine_cs *engine)
+{
+	intel_engine_apply_workarounds(engine);
+	intel_engine_apply_whitelist(engine);
+
+	intel_mocs_init_engine(engine);
+
+	intel_engine_reset_breadcrumbs(engine);
+
+	hwsp_setup(engine);
+
+	/* pre-gen11 requires explicit enabling of the execlists */
+	GEM_BUG_ON(INTEL_GEN(engine->i915) < 11);
+
+	return 0;
+}
+
 static int guc_submission_request_alloc(struct i915_request *request)
 {
 	int ret;
@@ -745,6 +772,8 @@ static void guc_submission_default_vfuncs(struct intel_engine_cs *engine)
 {
 	/* Default vfuncs which can be overriden by each engine. */
 
+	engine->resume = guc_submission_resume;
+
 	engine->request_alloc = guc_submission_request_alloc;
 
 	engine->emit_init_breadcrumb = emit_init_breadcrumb;
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
