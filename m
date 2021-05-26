Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39BE53921D0
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 23:12:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 014336EDDC;
	Wed, 26 May 2021 21:12:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAB536E862;
 Wed, 26 May 2021 21:12:39 +0000 (UTC)
IronPort-SDR: SLOZbrdASdUBpUvOz7PZoaRb5BqWWIwdO2RRjLNPfbrdMcfDF+Tw7Mbtd6DmUzzRuvw5fuh5UV
 JZauyTQbV86A==
X-IronPort-AV: E=McAfee;i="6200,9189,9996"; a="288163150"
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="288163150"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 14:12:37 -0700
IronPort-SDR: D99bT7qyJ29e3U9E7sIVwldd3xfENC7Nsb8aNRoqjyFo/BItE/gVoLc8+D9fAV1nK97BbW+lRK
 M6/XSJxq82LQ==
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="414620060"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 14:12:37 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Wed, 26 May 2021 14:30:28 -0700
Message-Id: <20210526213029.7178-2-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210526213029.7178-1-matthew.brost@intel.com>
References: <20210526213029.7178-1-matthew.brost@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/guc: Early initialization of GuC
 send registers
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

From: Michal Wajdeczko <michal.wajdeczko@intel.com>

Base offset and count of the GuC scratch registers, used for
sending MMIO messages to GuC, can be initialized earlier with
other GuC members that also depends on platform.

Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Signed-off-by: Matthew Brost <matthew.brost@intel.com>
Reviewed-by: Matthew Brost <matthew.brost@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index adae04c47aab..c17694c77bcf 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -60,15 +60,8 @@ void intel_guc_init_send_regs(struct intel_guc *guc)
 	enum forcewake_domains fw_domains = 0;
 	unsigned int i;
 
-	if (INTEL_GEN(gt->i915) >= 11) {
-		guc->send_regs.base =
-				i915_mmio_reg_offset(GEN11_SOFT_SCRATCH(0));
-		guc->send_regs.count = GEN11_SOFT_SCRATCH_COUNT;
-	} else {
-		guc->send_regs.base = i915_mmio_reg_offset(SOFT_SCRATCH(0));
-		guc->send_regs.count = GUC_MAX_MMIO_MSG_LEN;
-		BUILD_BUG_ON(GUC_MAX_MMIO_MSG_LEN > SOFT_SCRATCH_COUNT);
-	}
+	GEM_BUG_ON(!guc->send_regs.base);
+	GEM_BUG_ON(!guc->send_regs.count);
 
 	for (i = 0; i < guc->send_regs.count; i++) {
 		fw_domains |= intel_uncore_forcewake_for_reg(gt->uncore,
@@ -181,11 +174,18 @@ void intel_guc_init_early(struct intel_guc *guc)
 		guc->interrupts.reset = gen11_reset_guc_interrupts;
 		guc->interrupts.enable = gen11_enable_guc_interrupts;
 		guc->interrupts.disable = gen11_disable_guc_interrupts;
+		guc->send_regs.base =
+			i915_mmio_reg_offset(GEN11_SOFT_SCRATCH(0));
+		guc->send_regs.count = GEN11_SOFT_SCRATCH_COUNT;
+
 	} else {
 		guc->notify_reg = GUC_SEND_INTERRUPT;
 		guc->interrupts.reset = gen9_reset_guc_interrupts;
 		guc->interrupts.enable = gen9_enable_guc_interrupts;
 		guc->interrupts.disable = gen9_disable_guc_interrupts;
+		guc->send_regs.base = i915_mmio_reg_offset(SOFT_SCRATCH(0));
+		guc->send_regs.count = GUC_MAX_MMIO_MSG_LEN;
+		BUILD_BUG_ON(GUC_MAX_MMIO_MSG_LEN > SOFT_SCRATCH_COUNT);
 	}
 }
 
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
