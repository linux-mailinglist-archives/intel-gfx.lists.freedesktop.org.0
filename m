Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 656AC7D0AFE
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Oct 2023 10:59:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA4BA10E0E5;
	Fri, 20 Oct 2023 08:59:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F263910E0E5
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Oct 2023 08:59:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697792354; x=1729328354;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZWGsCzMjlaonoZVk/eJujYxMiT00bKGnsyrVaUMIPnY=;
 b=jruesnYV4537Xt8nC4XI+/wZJgBKeZvzCGB1d0KUUlqNHg3jVLamj9g4
 JagCD2ROg3X+vasRkeEyPJzgql1Rv8zMiA4SzJTSA5SHu8juYcC9oUuRO
 r+ZY/IrqRlxVH34ZfVC5ncV2Jh+llU8Td07Re7ty+VpuRNufmWFFhqnwZ
 pUKpjY1IRm7za5RD5uHzj/stnGclpENAv4CpkWiAaVOoenkBEzM0beMVm
 86COivWx7CI9+UGkMpvBl+M3t4q74L9yIrerRfq86kmPK26xWK4uu6rmF
 3/1zAeRBqAM7Fq6enTZwZlnrFkUKpXNoX1XK1U6VHRlqxBxQQC15sZxXN g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10868"; a="365799148"
X-IronPort-AV: E=Sophos;i="6.03,238,1694761200"; d="scan'208";a="365799148"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2023 01:59:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10868"; a="760981931"
X-IronPort-AV: E=Sophos;i="6.03,238,1694761200"; d="scan'208";a="760981931"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by fmsmga007.fm.intel.com with ESMTP; 20 Oct 2023 01:59:13 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Oct 2023 14:29:09 +0530
Message-Id: <20231020085909.2959965-1-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/mtl: Add Wa_14019821291
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

v2: Declare regs in gt/intel_gt_regs.h file

Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c | 17 +++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gt_regs.h    |  3 +++
 2 files changed, 20 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index 1a766d8e7cce..bb2639d1a824 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -409,6 +409,23 @@ static void icl_get_stolen_reserved(struct drm_i915_private *i915,
 		*base -= *size;
 	else
 		*base = reg_val & GEN11_STOLEN_RESERVED_ADDR_MASK;
+
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
 }
 
 /*
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

