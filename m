Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2FED824890
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 20:05:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB1C410E4F8;
	Thu,  4 Jan 2024 19:04:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27DE610E4F8
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jan 2024 19:04:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704395097; x=1735931097;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Pm2Kct/vbxCiit9uWsJIXW7A3JrWzNkts1UrdhbL6s4=;
 b=lBmCm1CLQ2aPjMxwbAVNSaGPUq4DmbmCTWZYG99/gU2wmbEELwiR5bPM
 o5cfK2IJXF0T4B0VHvNPvJCnlrr8wMCyTJDOnCTSY84QRCOEH0IOfFtA3
 sx14gG2kjFLY+uAGzW7UWK/n08pwJlfCia764ZNSlGbtIBPThBw+l8AIw
 akpJwG1EXjTXZE3ujCHArtp84fca+ViSlThxwq84KbFBvzm3LdVYD3koU
 e07y3O+7xq6b5D4w3PTOhkyxt9HAtHvoMs7ojMFPXRavi1+ixunYcx2aB
 x92OxbgaU6g0QjURVkS8f2CXdtpfPcRc2Mo9rA6fgkEjDrYkoEWu32CXl A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="4153071"
X-IronPort-AV: E=Sophos;i="6.04,331,1695711600"; 
   d="scan'208";a="4153071"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 11:04:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,331,1695711600"; d="scan'208";a="15008625"
Received: from otc-chromeosbuild-7.ostc.intel.com (HELO
 otc-chromeosbuild-7.intel.com) ([10.54.29.152])
 by fmviesa002.fm.intel.com with ESMTP; 04 Jan 2024 11:04:56 -0800
From: george.d.sworo@intel.com
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/i915: clear the QGV mask set by GOP while booting
Date: Thu,  4 Jan 2024 11:04:36 -0800
Message-Id: <20240104190436.456114-1-george.d.sworo@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

From: George D Sworo <george.d.sworo@intel.com>

GOP driver in the firmware is masking the QGV points except the one
which can
provide high Bandwidth required for panel.

On boot to the OS the mask is already set, and is not cleared anywhere
in the i915 driver
even though sagv is enabled. This means Pcode is unable to switch to
other QGV work points
except the one enabled by default in the GOP driver at boot time.

This change resets the mask, when i915 driver is finding the QGV
points at the boot time. So that Pcode can switch to QGV work points
based
on the Workloads.

Signed-off-by: George D Sworo <george.d.sworo@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index bef96db62c80..e2576c0fb729 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -212,6 +212,7 @@ static int icl_get_qgv_points(struct drm_i915_private *dev_priv,
 			      bool is_y_tile)
 {
 	const struct dram_info *dram_info = &dev_priv->dram_info;
+	u32 val = 0x00, val2 = 0;
 	int i, ret;
 
 	qi->num_points = dram_info->num_qgv_points;
@@ -311,6 +312,11 @@ static int icl_get_qgv_points(struct drm_i915_private *dev_priv,
 				    i, qi->psf_points[i].clk);
 	}
 
+	/* clear the QGV points mask set by the GOP driver while booting */
+	ret = snb_pcode_read(&dev_priv->uncore, ICL_PCODE_SAGV_DE_MEM_SS_CONFIG, &val, &val2);
+	if (ret)
+		return ret;
+
 	return 0;
 }
 
-- 
2.34.1

