Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 737F762066F
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Nov 2022 03:04:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9248C10E414;
	Tue,  8 Nov 2022 02:03:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BC6E10E407
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Nov 2022 02:03:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667873028; x=1699409028;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=LfiJhYSgHmyZvNAC00FRgUuotC1iQRe8Ct0BxgtBvig=;
 b=VnE2t+Q5s8GgQtj0oncfUNeokjNF1v/RT7KD683hLDacu4vkdNNselmD
 KVcUK/STOaQWWwNeNHyElLgtxL4Tp/Z/KOBJ5zQAdhnbNSuEJAA+AwiK2
 UTJuIeB+RNNzq5xe9SvfebjFv65E8nJCRFGPMm8KO1yEjmJjHxpjmLwZ/
 isV72jMQS9tlHgudTdJVq7kiI7df2o49KfuysmVeSDUCOj78/H9ymXXDq
 rjZDVK8SVu69m2mVAYABdsz1RR24NWuNfhowARD3dvJfEOMTxDF7BIj0L
 Zocrs0z6gs8yrgC3I6N3g/aPxy//w2kWIMjtfGCB2fdKQtWUNjcoY/4yk A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="374850087"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="374850087"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 18:03:07 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="614097255"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="614097255"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 18:03:07 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Nov 2022 18:05:59 -0800
Message-Id: <20221108020600.3575467-6-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221108020600.3575467-1-daniele.ceraolospurio@intel.com>
References: <20221108020600.3575467-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 6/7] drm/i915/guc: define media GT GuC send regs
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

The media GT shares the G-unit with the root GT, so a second set of
communication registers is required for the media GuC.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc.c     | 14 ++++++++++----
 drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h |  2 ++
 2 files changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index 1bcd61bb50f8..13d49048c568 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -156,7 +156,8 @@ static void gen11_disable_guc_interrupts(struct intel_guc *guc)
 
 void intel_guc_init_early(struct intel_guc *guc)
 {
-	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
+	struct intel_gt *gt = guc_to_gt(guc);
+	struct drm_i915_private *i915 = gt->i915;
 
 	intel_uc_fw_init_early(&guc->fw, INTEL_UC_FW_TYPE_GUC);
 	intel_guc_ct_init_early(&guc->ct);
@@ -168,12 +169,17 @@ void intel_guc_init_early(struct intel_guc *guc)
 	mutex_init(&guc->send_mutex);
 	spin_lock_init(&guc->irq_lock);
 	if (GRAPHICS_VER(i915) >= 11) {
-		guc->notify_reg = GEN11_GUC_HOST_INTERRUPT;
 		guc->interrupts.reset = gen11_reset_guc_interrupts;
 		guc->interrupts.enable = gen11_enable_guc_interrupts;
 		guc->interrupts.disable = gen11_disable_guc_interrupts;
-		guc->send_regs.base =
-			i915_mmio_reg_offset(GEN11_SOFT_SCRATCH(0));
+		if (gt->type == GT_MEDIA) {
+			guc->notify_reg = MEDIA_GUC_HOST_INTERRUPT;
+			guc->send_regs.base = i915_mmio_reg_offset(MEDIA_SOFT_SCRATCH(0));
+		} else {
+			guc->notify_reg = GEN11_GUC_HOST_INTERRUPT;
+			guc->send_regs.base = i915_mmio_reg_offset(GEN11_SOFT_SCRATCH(0));
+		}
+
 		guc->send_regs.count = GEN11_SOFT_SCRATCH_COUNT;
 
 	} else {
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h
index a7092f711e9c..9915de32e894 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h
@@ -36,6 +36,7 @@
 #define SOFT_SCRATCH_COUNT		16
 
 #define GEN11_SOFT_SCRATCH(n)		_MMIO(0x190240 + (n) * 4)
+#define MEDIA_SOFT_SCRATCH(n)		_MMIO(0x190310 + (n) * 4)
 #define GEN11_SOFT_SCRATCH_COUNT	4
 
 #define UOS_RSA_SCRATCH(i)		_MMIO(0xc200 + (i) * 4)
@@ -101,6 +102,7 @@
 #define GUC_SEND_INTERRUPT		_MMIO(0xc4c8)
 #define   GUC_SEND_TRIGGER		  (1<<0)
 #define GEN11_GUC_HOST_INTERRUPT	_MMIO(0x1901f0)
+#define MEDIA_GUC_HOST_INTERRUPT	_MMIO(0x190304)
 
 #define GEN12_GUC_SEM_INTR_ENABLES	_MMIO(0xc71c)
 #define   GUC_SEM_INTR_ROUTE_TO_GUC	BIT(31)
-- 
2.37.3

