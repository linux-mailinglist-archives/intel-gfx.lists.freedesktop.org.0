Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DAC451476C3
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 02:37:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E37816FA39;
	Fri, 24 Jan 2020 01:37:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7858A6FA39
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 01:37:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jan 2020 17:37:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,355,1574150400"; d="scan'208";a="276206820"
Received: from orsosgc001.ra.intel.com ([10.23.184.150])
 by FMSMGA003.fm.intel.com with ESMTP; 23 Jan 2020 17:37:01 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Chris Wilson <chris.p.wilson@intel.com>,
	intel-gfx@lists.freedesktop.org
Date: Thu, 23 Jan 2020 17:37:01 -0800
Message-Id: <20200124013701.40609-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/perf: Fix OA context id overlap with
 idle context id
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

Engine context pinned in perf OA was set to same context id as
the idle context. Set the context id to an unused value.

Clear the sw context id field in lrc descriptor before ORing with
ce->tag (Chris)

Fixes: https://gitlab.freedesktop.org/drm/intel/issues/756
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 2 +-
 drivers/gpu/drm/i915/i915_perf.c    | 9 +++++++--
 2 files changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index a13a8c4b65ab..cf6c43bd540a 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1211,12 +1211,12 @@ __execlists_schedule_in(struct i915_request *rq)
 	if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
 		execlists_check_context(ce, engine);
 
+	ce->lrc_desc &= ~GENMASK_ULL(47, 37);
 	if (ce->tag) {
 		/* Use a fixed tag for OA and friends */
 		ce->lrc_desc |= (u64)ce->tag << 32;
 	} else {
 		/* We don't need a strict matching tag, just different values */
-		ce->lrc_desc &= ~GENMASK_ULL(47, 37);
 		ce->lrc_desc |=
 			(u64)(++engine->context_tag % NUM_CONTEXT_TAG) <<
 			GEN11_SW_CTX_ID_SHIFT;
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 3c4647054557..5bd878c64504 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -1323,7 +1323,12 @@ static int oa_get_render_ctx_id(struct i915_perf_stream *stream)
 	case 12: {
 		stream->specific_ctx_id_mask =
 			((1U << GEN11_SW_CTX_ID_WIDTH) - 1) << (GEN11_SW_CTX_ID_SHIFT - 32);
-		stream->specific_ctx_id = stream->specific_ctx_id_mask;
+		/* Pick an unused context id
+		 * 0 - (NUM_CONTEXT_TAG - 1) are used by other contexts
+		 * GEN12_MAX_CONTEXT_HW_ID (0x7ff) is used by idle context
+		 */
+		stream->specific_ctx_id = (GEN12_MAX_CONTEXT_HW_ID - 1) << (GEN11_SW_CTX_ID_SHIFT - 32);
+		BUILD_BUG_ON((GEN12_MAX_CONTEXT_HW_ID - 1) < NUM_CONTEXT_TAG);
 		break;
 	}
 
@@ -1331,7 +1336,7 @@ static int oa_get_render_ctx_id(struct i915_perf_stream *stream)
 		MISSING_CASE(INTEL_GEN(ce->engine->i915));
 	}
 
-	ce->tag = stream->specific_ctx_id_mask;
+	ce->tag = stream->specific_ctx_id;
 
 	DRM_DEBUG_DRIVER("filtering on ctx_id=0x%x ctx_id_mask=0x%x\n",
 			 stream->specific_ctx_id,
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
