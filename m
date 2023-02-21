Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC18369E9F6
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Feb 2023 23:17:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E126D10E380;
	Tue, 21 Feb 2023 22:17:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 197CC10E380
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Feb 2023 22:17:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677017859; x=1708553859;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LIWdo1kSC0fN6UUYk9MzA39d5F1GSd3Hu5YTCrFiwQI=;
 b=OAl1hRPCyp9+KGR9oJ2Wg7l8Pnjka7Zwhlj95Ctlw8hkPfOCb684WNm+
 DBwrusA2i9qCsnr1nURHfaY9aeZzJ4YKeMsCaC7is4pTTrjKqW8UEkUx5
 zXCgEp6iCosRnkf1Rohz4GfQow1FF4oAXwYayuIhKTOhp1nOTphkTCr7E
 l/Y4a7Xb3bvbZrN2GPuThhI5QfKMLEZVsUB0BznaUV1sMQUpsryE4k5be
 VbvzBudxT9GjG9dPx8npgt0CFP5y6yDc3OaY9YdKT7f65udchiNig7vFK
 ihlH6Kcm+Ng7IVlQwjVdOD5HlnlckrrKr1c/lbCcZmjgx6bs0rcCUTrJP g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="332771130"
X-IronPort-AV: E=Sophos;i="5.97,317,1669104000"; d="scan'208";a="332771130"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 14:17:38 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="781165814"
X-IronPort-AV: E=Sophos;i="5.97,317,1669104000"; d="scan'208";a="781165814"
Received: from dut-internal-9dd7.jf.intel.com ([10.24.14.53])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 14:17:38 -0800
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Feb 2023 14:13:09 -0800
Message-Id: <20230221221309.1467995-2-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230221221309.1467995-1-jonathan.cavitt@intel.com>
References: <20230221221309.1467995-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Poll aux invalidation register
 bit on invalidation
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
Cc: jonathan.cavitt@intel.com, gregory.f.germano@intel.com,
 saurabhg.gupta@intel.com, chris.p.wilson@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For platforms that use Aux CCS, we must wait for aux
invalidation to complete by checking the aux
invalidation register bit is cleared.

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
---
 drivers/gpu/drm/i915/gt/gen8_engine_cs.c     | 17 +++++++++++++----
 drivers/gpu/drm/i915/gt/intel_gpu_commands.h |  1 +
 2 files changed, 14 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
index 6f830f80eb0f..d93484211abd 100644
--- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
@@ -174,6 +174,16 @@ u32 *gen12_emit_aux_table_inv(struct intel_gt *gt, u32 *cs, const i915_reg_t inv
 	*cs++ = AUX_INV;
 	*cs++ = MI_NOOP;
 
+	*cs++ = MI_SEMAPHORE_WAIT_TOKEN |
+		MI_SEMAPHORE_REGISTER_POLL |
+		MI_SEMAPHORE_POLL |
+		MI_SEMAPHORE_SAD_EQ_SDD;
+	*cs++ = 0;
+	*cs++ = i915_mmio_reg_offset(inv_reg) + gsi_offset;
+	*cs++ = 0;
+	*cs++ = 0;
+	*cs++ = MI_NOOP;
+
 	return cs;
 }
 
@@ -243,10 +253,9 @@ int gen12_emit_flush_rcs(struct i915_request *rq, u32 mode)
 		else if (engine->class == COMPUTE_CLASS)
 			flags &= ~PIPE_CONTROL_3D_ENGINE_FLAGS;
 
+		count = 8;
 		if (!HAS_FLAT_CCS(rq->engine->i915))
-			count = 8 + 4;
-		else
-			count = 8;
+			count += 10;
 
 		cs = intel_ring_begin(rq, count);
 		if (IS_ERR(cs))
@@ -289,7 +298,7 @@ int gen12_emit_flush_xcs(struct i915_request *rq, u32 mode)
 			aux_inv = rq->engine->mask &
 				~GENMASK(_BCS(I915_MAX_BCS - 1), BCS0);
 			if (aux_inv)
-				cmd += 4;
+				cmd += 10;
 		}
 	}
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
index e10507fa71ce..8026b6a89192 100644
--- a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
+++ b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
@@ -121,6 +121,7 @@
 #define   MI_SEMAPHORE_TARGET(engine)	((engine)<<15)
 #define MI_SEMAPHORE_WAIT	MI_INSTR(0x1c, 2) /* GEN8+ */
 #define MI_SEMAPHORE_WAIT_TOKEN	MI_INSTR(0x1c, 3) /* GEN12+ */
+#define   MI_SEMAPHORE_REGISTER_POLL	(1 << 16)
 #define   MI_SEMAPHORE_POLL		(1 << 15)
 #define   MI_SEMAPHORE_SAD_GT_SDD	(0 << 12)
 #define   MI_SEMAPHORE_SAD_GTE_SDD	(1 << 12)
-- 
2.25.1

