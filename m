Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 733E67D68DE
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 12:36:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0701010E632;
	Wed, 25 Oct 2023 10:36:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03BE510E633
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Oct 2023 10:36:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698230211; x=1729766211;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wy2EnPKWOHBf00bl92GTSaKe0+oaknkpl7c8/jIIbR0=;
 b=gqOAxapLFWPvNAT7PTlyhN+pC3+AI8WL6aOsAbZl+zpLkeOAqc6PUJXI
 txViwrm4Z0OUvvS4BhW46W9CmvbNU5G2ZShdiSg1JAsHfR4KnKhS/S/ci
 DMhRaOJEAw5C9V7btWfqjN/OkMfg46VQ5X3HdxvNZAI/4MpsuvTT4yIIL
 tBeyspBX5t0XoI9QC703DymOD6SZgkc7EVCyjd8YU24sHExzMuYwE9LJP
 bD1vyz8BLLOoVUEf7SSemmoYek3EQBWjzr5yPz+Cp+jBVrwnuM2cIRo42
 qE4R1N9QuO7Mt+UJR+C2rFLuunaCgFbJQTD8T57oDtEg1AFfZdBoD9k6b g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="367493641"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="367493641"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 03:36:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="932318393"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="932318393"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by orsmga005.jf.intel.com with ESMTP; 25 Oct 2023 03:36:49 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Oct 2023 16:06:46 +0530
Message-Id: <20231025103646.3315818-1-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3] drm/i915/mtl: Add Wa_14019821291
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

This workaround is primarily implemented by the BIOS.  However if the
BIOS applies the workaround it will reserve a small piece of our DSM
(which should be at the top, right below the WOPCM); we just need to
keep that region reserved so that nothing else attempts to re-use it.

v2: Declare regs in intel_gt_regs.h (Matt Roper)

v3: Shift WA implementation before calculation of *base (Matt Roper)

Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c | 17 +++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gt_regs.h    |  3 +++
 2 files changed, 20 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index 1a766d8e7cce..192c9a333c0a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -404,6 +404,23 @@ static void icl_get_stolen_reserved(struct drm_i915_private *i915,
 		MISSING_CASE(reg_val & GEN8_STOLEN_RESERVED_SIZE_MASK);
 	}
 
+	/* Wa_14019821291 */
+	if (MEDIA_VER_FULL(i915) == IP_VER(13, 0)) {
+		/*
+		 * This workaround is primarily implemented by the BIOS.  We
+		 * just need to figure out whether the BIOS has applied the
+		 * workaround (meaning the programmed address falls within
+		 * the DSM) and, if so, reserve that part of the DSM to
+		 * prevent accidental reuse.  The DSM location should be just
+		 * below the WOPCM.
+		 */
+		u64 gscpsmi_base = intel_uncore_read64_2x32(uncore,
+							    MTL_GSCPSMI_BASEADDR_LSB,
+							    MTL_GSCPSMI_BASEADDR_MSB);
+		if (gscpsmi_base >= *base && gscpsmi_base < *base + *size)
+			*size = gscpsmi_base - *base;
+	}
+
 	if (HAS_LMEMBAR_SMEM_STOLEN(i915))
 		/* the base is initialized to stolen top so subtract size to get base */
 		*base -= *size;
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index eecd0a87a647..9de41703fae5 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -537,6 +537,9 @@
 #define XEHP_SQCM				MCR_REG(0x8724)
 #define   EN_32B_ACCESS				REG_BIT(30)
 
+#define MTL_GSCPSMI_BASEADDR_LSB		_MMIO(0x880c)
+#define MTL_GSCPSMI_BASEADDR_MSB		_MMIO(0x8810)
+
 #define HSW_IDICR				_MMIO(0x9008)
 #define   IDIHASHMSK(x)				(((x) & 0x3f) << 16)
 
-- 
2.34.1

