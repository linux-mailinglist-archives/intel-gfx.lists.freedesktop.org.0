Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CD12182703D
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jan 2024 14:49:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31CCC10E28E;
	Mon,  8 Jan 2024 13:49:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CDF710E01F
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jan 2024 02:57:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="382083423"
X-IronPort-AV: E=Sophos;i="6.04,329,1695711600"; d="scan'208";a="382083423"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2024 18:57:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,329,1695711600"; d="scan'208";a="28607950"
Received: from otc-chromeosbuild-7.ostc.intel.com (HELO
 otc-chromeosbuild-7.intel.com) ([10.54.29.152])
 by orviesa001.jf.intel.com with ESMTP; 03 Jan 2024 18:57:52 -0800
From: George D Sworo <gdsworo@freedesktop.org>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/i915: clear the QGV mask set by GOP while booting
Date: Wed,  3 Jan 2024 18:57:45 -0800
Message-Id: <20240104025745.429056-1-george.d.sworo@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 08 Jan 2024 13:49:22 +0000
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

