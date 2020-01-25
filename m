Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C27014926C
	for <lists+intel-gfx@lfdr.de>; Sat, 25 Jan 2020 01:56:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3657E72BEE;
	Sat, 25 Jan 2020 00:56:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3FE76E51B
 for <intel-gfx@lists.freedesktop.org>; Sat, 25 Jan 2020 00:56:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 16:56:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,359,1574150400"; d="scan'208";a="426790554"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by fmsmga005.fm.intel.com with ESMTP; 24 Jan 2020 16:56:15 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jan 2020 16:55:35 -0800
Message-Id: <20200125005537.31860-5-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200125005537.31860-1-daniele.ceraolospurio@intel.com>
References: <20200125005537.31860-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 4/6] drm/i915/guc: Re-use lrc flush functions
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

The flush commands are independent from the submission method, so we can
re-use the same code.

RFC: I've kept the function in intel_lrc.c for now as my current plan is
to keep the common code there and split out execlists_submission out,
but maybe intel_gpu_commands.c would be a better location?

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c               | 8 +++-----
 drivers/gpu/drm/i915/gt/intel_lrc.h               | 4 ++++
 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 3 +++
 3 files changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 7e912959fb3d..cd15ab7fb82f 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -3793,7 +3793,7 @@ static void gen8_logical_ring_disable_irq(struct intel_engine_cs *engine)
 	ENGINE_WRITE(engine, RING_IMR, ~engine->irq_keep_mask);
 }
 
-static int gen8_emit_flush(struct i915_request *request, u32 mode)
+int gen8_emit_flush(struct i915_request *request, u32 mode)
 {
 	u32 cmd, *cs;
 
@@ -3892,8 +3892,7 @@ static int gen8_emit_flush_render(struct i915_request *request,
 	return 0;
 }
 
-static int gen11_emit_flush_render(struct i915_request *request,
-				   u32 mode)
+int gen11_emit_flush_render(struct i915_request *request, u32 mode)
 {
 	if (mode & EMIT_FLUSH) {
 		u32 *cs;
@@ -3949,8 +3948,7 @@ static u32 preparser_disable(bool state)
 	return MI_ARB_CHECK | 1 << 8 | state;
 }
 
-static int gen12_emit_flush_render(struct i915_request *request,
-				   u32 mode)
+int gen12_emit_flush_render(struct i915_request *request, u32 mode)
 {
 	if (mode & EMIT_FLUSH) {
 		u32 flags = 0;
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.h b/drivers/gpu/drm/i915/gt/intel_lrc.h
index 07d1655ed8c0..c5afae6bc89b 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.h
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.h
@@ -87,6 +87,10 @@ void intel_logical_ring_cleanup(struct intel_engine_cs *engine);
 int intel_execlists_submission_setup(struct intel_engine_cs *engine);
 void intel_execlists_submission_vfuncs(struct intel_engine_cs *engine);
 
+int gen8_emit_flush(struct i915_request *request, u32 mode);
+int gen11_emit_flush_render(struct i915_request *request, u32 mode);
+int gen12_emit_flush_render(struct i915_request *request, u32 mode);
+
 /* Logical Ring Contexts */
 /* At the start of the context image is its per-process HWS page */
 #define LRC_PPHWSP_PN	(0)
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index c688f21cc27e..edefb3cf135f 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -776,6 +776,7 @@ static void guc_submission_default_vfuncs(struct intel_engine_cs *engine)
 
 	engine->request_alloc = guc_submission_request_alloc;
 
+	engine->emit_flush = gen8_emit_flush;
 	engine->emit_init_breadcrumb = emit_init_breadcrumb;
 	engine->emit_fini_breadcrumb = emit_fini_breadcrumb_xcs;
 
@@ -796,9 +797,11 @@ static void rcs_submission_override(struct intel_engine_cs *engine)
 
 	switch (INTEL_GEN(engine->i915)) {
 	case 12:
+		engine->emit_flush = gen12_emit_flush_render;
 		engine->emit_fini_breadcrumb = gen12_emit_fini_breadcrumb_rcs;
 		break;
 	default:
+		engine->emit_flush = gen11_emit_flush_render;
 		engine->emit_fini_breadcrumb = gen11_emit_fini_breadcrumb_rcs;
 		break;
 	}
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
