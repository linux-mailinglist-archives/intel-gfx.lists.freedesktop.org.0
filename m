Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84F234B04CC
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 06:18:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B974A10E712;
	Thu, 10 Feb 2022 05:18:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95C6610E712
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Feb 2022 05:18:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644470291; x=1676006291;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qqI2EPxLYk796dNfq3wjsei00h8zGm9gDr2ANJi9LxY=;
 b=PB+f7juIOsMaxgukcn1KMitsERcbfOwUX6fZ7y8SqsetNxUEO8GOF8WO
 rfdnvSsTvrR/w8sosdWFxIGgA64OdKtxpHYcUV+sjeKAnl2zDRdeDjr1v
 uBp3ws4v1b0QDfIDfsDLOBDdvQPHB4UHrnA6eXTs4C4t2apSVsEIFtEaE
 E4igZrgj4X2ddjZJ3olipnmoART5gRkyLbO5/Zxs8+3SCKsVrSekXsPPn
 d3MAz4n8+pVY9hUDqE4iehDl/a2nIh8oU6Kf7SGUoisEuWgrJAXA8thD4
 RJMdaV3ho8sBKEeZb5pepIBRNftjvZw1COSUektfQmS/xvTwlJ6KIua3D w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10253"; a="230061111"
X-IronPort-AV: E=Sophos;i="5.88,357,1635231600"; d="scan'208";a="230061111"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 21:18:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,357,1635231600"; d="scan'208";a="679027331"
Received: from cliu38-mobl3.sh.intel.com ([10.239.147.47])
 by fmsmga001.fm.intel.com with ESMTP; 09 Feb 2022 21:18:09 -0800
From: Chuansheng Liu <chuansheng.liu@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Feb 2022 13:05:01 +0800
Message-Id: <20220210050501.87795-1-chuansheng.liu@intel.com>
X-Mailer: git-send-email 2.25.0.rc2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dg1: Update DMC_DEBUG3 register
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
Cc: lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Current DMC_DEBUG3(_MMIO(0x101090)) address is for TGL,
it is not wrong for DG1. Just like commit 5bcc95ca382e
("drm/i915/dg1: Update DMC_DEBUG register"), correct
this issue for DG1 platform to avoid wrong register
being read.

BSpec: 49788

Signed-off-by: Chuansheng Liu <chuansheng.liu@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 4 ++--
 drivers/gpu/drm/i915/i915_reg.h                      | 3 ++-
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index f4de004d470f..f6c4ad8fce19 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -474,8 +474,8 @@ static int i915_dmc_info(struct seq_file *m, void *unused)
 		 * reg for DC3CO debugging and validation,
 		 * but TGL DMC f/w is using DMC_DEBUG3 reg for DC3CO counter.
 		 */
-		seq_printf(m, "DC3CO count: %d\n",
-			   intel_de_read(dev_priv, DMC_DEBUG3));
+		seq_printf(m, "DC3CO count: %d\n", intel_de_read(dev_priv, IS_DGFX(dev_priv) ?
+					DG1_DMC_DEBUG3 : TGL_DMC_DEBUG3));
 	} else {
 		dc5_reg = IS_BROXTON(dev_priv) ? BXT_DMC_DC3_DC5_COUNT :
 						 SKL_DMC_DC3_DC5_COUNT;
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 87c92314ee26..9c215a6df659 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -5632,7 +5632,8 @@
 #define TGL_DMC_DEBUG_DC6_COUNT	_MMIO(0x101088)
 #define DG1_DMC_DEBUG_DC5_COUNT	_MMIO(0x134154)
 
-#define DMC_DEBUG3		_MMIO(0x101090)
+#define TGL_DMC_DEBUG3		_MMIO(0x101090)
+#define DG1_DMC_DEBUG3		_MMIO(0x13415c)
 
 /* Display Internal Timeout Register */
 #define RM_TIMEOUT		_MMIO(0x42060)
-- 
2.25.0.rc2

