Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CD0B7B051A
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Sep 2023 15:18:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8FEE10E511;
	Wed, 27 Sep 2023 13:18:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49EC410E50F;
 Wed, 27 Sep 2023 13:18:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695820681; x=1727356681;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yVYOjD16lPxS35jtyj3M+NlpDlByKS0O7iJodZZ3QME=;
 b=RaDEL0Mo7YOUKQnTN4cTFvcrmlMnkWq2ZYNCjY2bb25sFOgWJdggi7f5
 JTf+FJxOz4DKOdYNpjTLEwSTl2aQGLkDbdZ+OTE+NZiJD+tt9nuiOg6pX
 bkMp+n+GGqG7ZyA1/M3TouLb74oo7PYY02RiokZ8gvvpV6RsT9XoIRsZ1
 4sKG+/HM+TQy1ShZioq0WCsDBf12ArUx/cod7rADsVBUUtiURAHPTV/Jg
 J5z1ufa2XO7P25Jk1Yl3hrquQ/f2p+QQXeZo3sPHFotpbTUwrq8R4/xeN
 wz6Tg30LnvlvaYkotVFuRLiCCOje1vzKvBRFHTpYd5ZrpekBCIkc04pr5 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="381724046"
X-IronPort-AV: E=Sophos;i="6.03,181,1694761200"; d="scan'208";a="381724046"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2023 06:18:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="1080158440"
X-IronPort-AV: E=Sophos;i="6.03,181,1694761200"; d="scan'208";a="1080158440"
Received: from nirmoyda-desk.igk.intel.com ([10.102.138.190])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2023 06:17:59 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Sep 2023 15:17:48 +0200
Message-ID: <20230927131748.3895-3-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230927131748.3895-1-nirmoy.das@intel.com>
References: <20230927131748.3895-1-nirmoy.das@intel.com>
MIME-Version: 1.0
Organization: Intel Deutschland GmbH, Registered Address: Am Campeon 10,
 85579 Neubiberg, Germany,
 Commercial Register: Amtsgericht Muenchen HRB 186928 
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 3/3] drm/i915/mtl: Skip MCR ops for ring
 fault register
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, matthew.d.roper@intel.com,
 dri-devel@lists.freedesktop.org, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On MTL GEN12_RING_FAULT_REG is not replicated so don't
do mcr based operation for this register.

v2: use MEDIA_VER() instead of GRAPHICS_VER()(Matt).
v3: s/"MEDIA_VER(i915) == 13"/"MEDIA_VER(i915) >= 13"(Matt)
    improve comment.
v4: improve the comment further(Andi)

Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c      | 13 ++++++++++++-
 drivers/gpu/drm/i915/gt/intel_gt_regs.h |  1 +
 drivers/gpu/drm/i915/i915_gpu_error.c   | 11 ++++++++++-
 3 files changed, 23 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 93062c35e072..dff8bba1f5d4 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -262,10 +262,21 @@ intel_gt_clear_error_registers(struct intel_gt *gt,
 				   I915_MASTER_ERROR_INTERRUPT);
 	}
 
-	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50)) {
+	/*
+	 * For the media GT, this ring fault register is not replicated,
+	 * so don't do multicast/replicated register read/write operation on it.
+	 */
+	if (MEDIA_VER(i915) >= 13 && gt->type == GT_MEDIA) {
+		intel_uncore_rmw(uncore, XELPMP_RING_FAULT_REG,
+				 RING_FAULT_VALID, 0);
+		intel_uncore_posting_read(uncore,
+					  XELPMP_RING_FAULT_REG);
+
+	} else if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50)) {
 		intel_gt_mcr_multicast_rmw(gt, XEHP_RING_FAULT_REG,
 					   RING_FAULT_VALID, 0);
 		intel_gt_mcr_read_any(gt, XEHP_RING_FAULT_REG);
+
 	} else if (GRAPHICS_VER(i915) >= 12) {
 		intel_uncore_rmw(uncore, GEN12_RING_FAULT_REG, RING_FAULT_VALID, 0);
 		intel_uncore_posting_read(uncore, GEN12_RING_FAULT_REG);
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index cca4bac8f8b0..eecd0a87a647 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -1084,6 +1084,7 @@
 
 #define GEN12_RING_FAULT_REG			_MMIO(0xcec4)
 #define XEHP_RING_FAULT_REG			MCR_REG(0xcec4)
+#define XELPMP_RING_FAULT_REG			_MMIO(0xcec4)
 #define   GEN8_RING_FAULT_ENGINE_ID(x)		(((x) >> 12) & 0x7)
 #define   RING_FAULT_GTTSEL_MASK		(1 << 11)
 #define   RING_FAULT_SRCID(x)			(((x) >> 3) & 0xff)
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index f4ebcfb70289..b4e31e59c799 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -1234,7 +1234,16 @@ static void engine_record_registers(struct intel_engine_coredump *ee)
 	if (GRAPHICS_VER(i915) >= 6) {
 		ee->rc_psmi = ENGINE_READ(engine, RING_PSMI_CTL);
 
-		if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50))
+		/*
+		 * For the media GT, this ring fault register is not replicated,
+		 * so don't do multicast/replicated register read/write
+		 * operation on it.
+		 */
+		if (MEDIA_VER(i915) >= 13 && engine->gt->type == GT_MEDIA)
+			ee->fault_reg = intel_uncore_read(engine->uncore,
+							  XELPMP_RING_FAULT_REG);
+
+		else if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50))
 			ee->fault_reg = intel_gt_mcr_read_any(engine->gt,
 							      XEHP_RING_FAULT_REG);
 		else if (GRAPHICS_VER(i915) >= 12)
-- 
2.41.0

