Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F1367CD5F7
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Oct 2023 10:04:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7151B10E023;
	Wed, 18 Oct 2023 08:04:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C41E810E023
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Oct 2023 08:04:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697616288; x=1729152288;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=r4ypGGXypjz+UDLTfcGFvZJDjp0zRHfJBQw+XMTulcw=;
 b=E/fmsSoALwny/IB2aTJ4px6yic559zgrXPXSFQeh2MlLevjbgG0CnaBC
 Vk8KPJHsZRaCrp0/OK77cAObXHpMKx9pAw3yodZIg9oYpR4HjLKaNHUTh
 hmIKncqF78AeG+XvrSubknXmUooCQ3X1OAIF3yYetNvDqfDgHhxNRgZhA
 iN29zkYJkEERhdICXwE1mp/SqS1Lj5czYBFCH94u5XVKkN6cRDrf/PvaL
 iKrTRcd7EnVn6u2QgDwuKrPZnXELe7sDfH3yhZIdl0yuur86rD9Uf2nB9
 WFagwgQcTkuc/rsRluTzJviAblGtwFCruPcFgfj6s0cWR1rFgeNkWxhJs w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="452435374"
X-IronPort-AV: E=Sophos;i="6.03,234,1694761200"; d="scan'208";a="452435374"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 01:04:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="822343513"
X-IronPort-AV: E=Sophos;i="6.03,234,1694761200"; d="scan'208";a="822343513"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by fmsmga008.fm.intel.com with ESMTP; 18 Oct 2023 01:04:46 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Oct 2023 13:34:43 +0530
Message-Id: <20231018080443.2543881-1-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/mtl: Add Wa_14019821291
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

Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c | 18 ++++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h            |  2 ++
 2 files changed, 20 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index 1a766d8e7cce..b2bc5aab88d3 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -409,6 +409,24 @@ static void icl_get_stolen_reserved(struct drm_i915_private *i915,
 		*base -= *size;
 	else
 		*base = reg_val & GEN11_STOLEN_RESERVED_ADDR_MASK;
+
+	/* Wa_14019821291*/
+	if (IS_MEDIA_GT_IP_STEP(i915->media_gt, IP_VER(13, 0), STEP_A0, STEP_C0)) {
+		/*
+		 * This workaround is primarily implemented by the BIOS.  We
+		 * just need to figure out whether the BIOS has applied the
+		 * workaround (meaning the programmed address falls within
+		 * the DSM) and, if so, reserve that part of the DSM to
+		 * prevent accidental reuse.  The DSM location should be just
+		 * below the WOPCM.
+		 */
+
+		u64 gscpsmi_base = intel_uncore_read64_2x32(uncore,
+							    MTL_GSCPSMI_BASEADDR_LSB,
+							    MTL_GSCPSMI_BASEADDR_MSB);
+		if (gscpsmi_base >= *base && gscpsmi_base < *base + *size)
+			*size = gscpsmi_base - *base;
+	}
 }
 
 /*
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 135e8d8dbdf0..31d0692a5620 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -6399,5 +6399,7 @@ enum skl_power_gate {
 #define   MTL_TRDPRE_MASK		REG_GENMASK(7, 0)
 
 #define MTL_MEDIA_GSI_BASE		0x380000
+#define MTL_GSCPSMI_BASEADDR_LSB		_MMIO(MTL_MEDIA_GSI_BASE + 0x880c)
+#define MTL_GSCPSMI_BASEADDR_MSB		_MMIO(MTL_MEDIA_GSI_BASE + 0x8810)
 
 #endif /* _I915_REG_H_ */
-- 
2.34.1

