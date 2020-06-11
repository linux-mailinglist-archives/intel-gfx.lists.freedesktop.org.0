Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C65061F70E0
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2020 01:31:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 068816E0E2;
	Thu, 11 Jun 2020 23:31:07 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94BF86E0E2
 for <Intel-gfx@lists.freedesktop.org>; Thu, 11 Jun 2020 23:31:05 +0000 (UTC)
IronPort-SDR: cvzMeXUG9lKLTd+cFIYRx7X+PQ0B1ZLIL/aCAEWCuLHTnLhpAcnmyayhFrJyDJXG/NCArHPvhe
 kwj86AeM9/NA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2020 16:31:05 -0700
IronPort-SDR: kQBKruTc76d78Nen8JC//TNCgNOa1LieBG+RVm8lGKJB61brFcxTIGPMVUw/D3yWxifcKdg7QE
 PF3mG6Pg7OxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,501,1583222400"; d="scan'208";a="380539682"
Received: from kzandif-mobl1.amr.corp.intel.com (HELO
 cataylo2-MOBL1.amr.corp.intel.com) ([10.254.105.80])
 by fmsmga001.fm.intel.com with ESMTP; 11 Jun 2020 16:31:04 -0700
From: clinton.a.taylor@intel.com
To: Intel-gfx@lists.freedesktop.org
Date: Thu, 11 Jun 2020 16:31:08 -0700
Message-Id: <20200611233108.19205-1-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Implement WA_1406941453
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

From: Clint Taylor <clinton.a.taylor@intel.com>

Enable HW Default flip for small PL.

bspec: 52890
bspec: 53508
bspec: 53273

Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 6 ++++++
 drivers/gpu/drm/i915/i915_reg.h             | 1 +
 2 files changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 2da366821dda..0b9091c05e06 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -628,6 +628,9 @@ static void tgl_ctx_workarounds_init(struct intel_engine_cs *engine,
 	WA_SET_FIELD_MASKED(GEN8_CS_CHICKEN1,
 			    GEN9_PREEMPT_GPGPU_LEVEL_MASK,
 			    GEN9_PREEMPT_GPGPU_THREAD_GROUP_LEVEL);
+
+	/* Wa_1406941453:gen12 */
+	WA_SET_BIT_MASKED(GEN10_SAMPLER_MODE, ENABLE_SMALLPL);
 }
 
 static void
@@ -1500,6 +1503,9 @@ static void icl_whitelist_build(struct intel_engine_cs *engine)
 		whitelist_reg_ext(w, PS_INVOCATION_COUNT,
 				  RING_FORCE_TO_NONPRIV_ACCESS_RD |
 				  RING_FORCE_TO_NONPRIV_RANGE_4);
+
+		/* Wa_1406941453:gen12 */
+		whitelist_reg(w, GEN10_SAMPLER_MODE);
 		break;
 
 	case VIDEO_DECODE_CLASS:
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 19e1fed198c3..fbb095a94b3a 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -9223,6 +9223,7 @@ enum {
 #define   GEN11_LSN_UNSLCVC_GAFS_HALF_SF_MAXALLOC	(1 << 7)
 
 #define GEN10_SAMPLER_MODE		_MMIO(0xE18C)
+#define   ENABLE_SMALLPL			REG_BIT(15)
 #define   GEN11_SAMPLER_ENABLE_HEADLESS_MSG	REG_BIT(5)
 
 /* IVYBRIDGE DPF */
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
