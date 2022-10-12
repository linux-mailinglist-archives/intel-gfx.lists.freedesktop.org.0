Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AE0B5FCE5F
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Oct 2022 00:28:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A2C810E1F2;
	Wed, 12 Oct 2022 22:28:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA0FE10E237
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Oct 2022 22:27:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665613666; x=1697149666;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=wyTprWxRDAJtaGf1vt1QfI6lpLCf4CizLzJL1rV+Pa4=;
 b=hm7CLyIrZa9qZ/nU91fGIoLYcnDtrtI2I3JGLeZfceavqnI2A2MGYXF6
 zkL7du9eJT3OiLm2ao4TsFOL1mnFKgKGkqycEhnz2rgLO9FRsDt5lZSBg
 6EdfnS3gqDzGFB38u3enKF/Dqah+1e7OzzBQsimP1ZhurqN1e+lS/fIad
 0gxYmNaVgHFEW/+6KcMVN625Z9YN3LznEwzL5+a/4wzt4C8OFZ/s1B75k
 7LPO5zLq96tdXTi7h9CCiEuLX6vXct6ytlCVn6RNYzcmE7SUNFzH1YV2D
 0eJc1QDOicazy/I6FwY1Wq+s6zhBotiGpMJyrg+Zn4BdYr5l6w0Ypx+ZK w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10498"; a="305983957"
X-IronPort-AV: E=Sophos;i="5.95,180,1661842800"; d="scan'208";a="305983957"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 15:27:46 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10498"; a="660097639"
X-IronPort-AV: E=Sophos;i="5.95,180,1661842800"; d="scan'208";a="660097639"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 15:27:45 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>
Date: Wed, 12 Oct 2022 22:27:24 +0000
Message-Id: <20221012222739.27296-2-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221012222739.27296-1-umesh.nerlige.ramappa@intel.com>
References: <20221012222739.27296-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 01/16] drm/i915/perf: Fix OA filtering logic
 for GuC mode
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

With GuC mode of submission, GuC is in control of defining the context
id field that is part of the OA reports. To filter reports, UMD and KMD
must know what sw context id was chosen by GuC. There is not interface
between KMD and GuC to determine this, so read the upper-dword of
EXECLIST_STATUS to filter/squash OA reports for the specific context.

v2: Explain guc id stealing w.r.t OA use case

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.h |   2 +
 drivers/gpu/drm/i915/i915_perf.c    | 144 ++++++++++++++++++++++++----
 2 files changed, 127 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.h b/drivers/gpu/drm/i915/gt/intel_lrc.h
index a390f0813c8b..7111bae759f3 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.h
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.h
@@ -110,6 +110,8 @@ enum {
 #define XEHP_SW_CTX_ID_WIDTH			16
 #define XEHP_SW_COUNTER_SHIFT			58
 #define XEHP_SW_COUNTER_WIDTH			6
+#define GEN12_GUC_SW_CTX_ID_SHIFT		39
+#define GEN12_GUC_SW_CTX_ID_WIDTH		16
 
 static inline void lrc_runtime_start(struct intel_context *ce)
 {
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 15816df916c7..255335868b6a 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -1231,6 +1231,128 @@ static struct intel_context *oa_pin_context(struct i915_perf_stream *stream)
 	return stream->pinned_ctx;
 }
 
+static int
+__store_reg_to_mem(struct i915_request *rq, i915_reg_t reg, u32 ggtt_offset)
+{
+	u32 *cs, cmd;
+
+	cmd = MI_STORE_REGISTER_MEM | MI_SRM_LRM_GLOBAL_GTT;
+	if (GRAPHICS_VER(rq->engine->i915) >= 8)
+		cmd++;
+
+	cs = intel_ring_begin(rq, 4);
+	if (IS_ERR(cs))
+		return PTR_ERR(cs);
+
+	*cs++ = cmd;
+	*cs++ = i915_mmio_reg_offset(reg);
+	*cs++ = ggtt_offset;
+	*cs++ = 0;
+
+	intel_ring_advance(rq, cs);
+
+	return 0;
+}
+
+static int
+__read_reg(struct intel_context *ce, i915_reg_t reg, u32 ggtt_offset)
+{
+	struct i915_request *rq;
+	int err;
+
+	rq = i915_request_create(ce);
+	if (IS_ERR(rq))
+		return PTR_ERR(rq);
+
+	i915_request_get(rq);
+
+	err = __store_reg_to_mem(rq, reg, ggtt_offset);
+
+	i915_request_add(rq);
+	if (!err && i915_request_wait(rq, 0, HZ / 2) < 0)
+		err = -ETIME;
+
+	i915_request_put(rq);
+
+	return err;
+}
+
+static int
+gen12_guc_sw_ctx_id(struct intel_context *ce, u32 *ctx_id)
+{
+	struct i915_vma *scratch;
+	u32 *val;
+	int err;
+
+	scratch = __vm_create_scratch_for_read_pinned(&ce->engine->gt->ggtt->vm, 4);
+	if (IS_ERR(scratch))
+		return PTR_ERR(scratch);
+
+	err = i915_vma_sync(scratch);
+	if (err)
+		goto err_scratch;
+
+	err = __read_reg(ce, RING_EXECLIST_STATUS_HI(ce->engine->mmio_base),
+			 i915_ggtt_offset(scratch));
+	if (err)
+		goto err_scratch;
+
+	val = i915_gem_object_pin_map_unlocked(scratch->obj, I915_MAP_WB);
+	if (IS_ERR(val)) {
+		err = PTR_ERR(val);
+		goto err_scratch;
+	}
+
+	*ctx_id = *val;
+	i915_gem_object_unpin_map(scratch->obj);
+
+err_scratch:
+	i915_vma_unpin_and_release(&scratch, 0);
+	return err;
+}
+
+/*
+ * For execlist mode of submission, pick an unused context id
+ * 0 - (NUM_CONTEXT_TAG -1) are used by other contexts
+ * XXX_MAX_CONTEXT_HW_ID is used by idle context
+ *
+ * For GuC mode of submission read context id from the upper dword of the
+ * EXECLIST_STATUS register. Note that we read this value only once and expect
+ * that the value stays fixed for the entire OA use case. There are cases where
+ * GuC KMD implementation may deregister a context to reuse it's context id, but
+ * we prevent that from happening to the OA context by pinning it.
+ */
+static int gen12_get_render_context_id(struct i915_perf_stream *stream)
+{
+	u32 ctx_id, mask;
+	int ret;
+
+	if (intel_engine_uses_guc(stream->engine)) {
+		ret = gen12_guc_sw_ctx_id(stream->pinned_ctx, &ctx_id);
+		if (ret)
+			return ret;
+
+		mask = ((1U << GEN12_GUC_SW_CTX_ID_WIDTH) - 1) <<
+			(GEN12_GUC_SW_CTX_ID_SHIFT - 32);
+	} else if (GRAPHICS_VER_FULL(stream->engine->i915) >= IP_VER(12, 50)) {
+		ctx_id = (XEHP_MAX_CONTEXT_HW_ID - 1) <<
+			(XEHP_SW_CTX_ID_SHIFT - 32);
+
+		mask = ((1U << XEHP_SW_CTX_ID_WIDTH) - 1) <<
+			(XEHP_SW_CTX_ID_SHIFT - 32);
+	} else {
+		ctx_id = (GEN12_MAX_CONTEXT_HW_ID - 1) <<
+			 (GEN11_SW_CTX_ID_SHIFT - 32);
+
+		mask = ((1U << GEN11_SW_CTX_ID_WIDTH) - 1) <<
+			(GEN11_SW_CTX_ID_SHIFT - 32);
+	}
+	stream->specific_ctx_id = ctx_id & mask;
+	stream->specific_ctx_id_mask = mask;
+
+	return 0;
+}
+
 /**
  * oa_get_render_ctx_id - determine and hold ctx hw id
  * @stream: An i915-perf stream opened for OA metrics
@@ -1244,6 +1366,7 @@ static struct intel_context *oa_pin_context(struct i915_perf_stream *stream)
 static int oa_get_render_ctx_id(struct i915_perf_stream *stream)
 {
 	struct intel_context *ce;
+	int ret = 0;
 
 	ce = oa_pin_context(stream);
 	if (IS_ERR(ce))
@@ -1290,24 +1413,7 @@ static int oa_get_render_ctx_id(struct i915_perf_stream *stream)
 
 	case 11:
 	case 12:
-		if (GRAPHICS_VER_FULL(ce->engine->i915) >= IP_VER(12, 50)) {
-			stream->specific_ctx_id_mask =
-				((1U << XEHP_SW_CTX_ID_WIDTH) - 1) <<
-				(XEHP_SW_CTX_ID_SHIFT - 32);
-			stream->specific_ctx_id =
-				(XEHP_MAX_CONTEXT_HW_ID - 1) <<
-				(XEHP_SW_CTX_ID_SHIFT - 32);
-		} else {
-			stream->specific_ctx_id_mask =
-				((1U << GEN11_SW_CTX_ID_WIDTH) - 1) << (GEN11_SW_CTX_ID_SHIFT - 32);
-			/*
-			 * Pick an unused context id
-			 * 0 - BITS_PER_LONG are used by other contexts
-			 * GEN12_MAX_CONTEXT_HW_ID (0x7ff) is used by idle context
-			 */
-			stream->specific_ctx_id =
-				(GEN12_MAX_CONTEXT_HW_ID - 1) << (GEN11_SW_CTX_ID_SHIFT - 32);
-		}
+		ret = gen12_get_render_context_id(stream);
 		break;
 
 	default:
@@ -1321,7 +1427,7 @@ static int oa_get_render_ctx_id(struct i915_perf_stream *stream)
 		stream->specific_ctx_id,
 		stream->specific_ctx_id_mask);
 
-	return 0;
+	return ret;
 }
 
 /**
-- 
2.25.1

