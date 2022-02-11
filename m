Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D20CF4B1A9A
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Feb 2022 01:42:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D31FB10E35D;
	Fri, 11 Feb 2022 00:42:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF72410E35D
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Feb 2022 00:42:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644540158; x=1676076158;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=sic+p2He9PYlWdsS46CiNiRYUIpNaJOSuFDVi18+mcc=;
 b=CzGdKHBKLEoCkgE6I98okogUyisf57MWrg7cu5dyRbhH0hR02xu6wmHZ
 IpAZ7/TXGI1/L+MgQ89gE1sXIsqS4MjQ4f3rP/n3jAF1l5XRFD1tFRIUI
 6SgjY/ULzLp1lcjhSX7mBI922RYnKE1fmNHyY2hhqREg8lSzYHBtfnxnA
 EP3w0Yg9gb5f8i5eVMnaCBArB7AftKAOg1xWwX221dkYwfmW4Nhr+ujFr
 20kDgWBAprJABG8doBWYZo/PDFqQqVppua73u9ExVDtVITeLhtYGYy3Vh
 6cnZ3EwEd5YEsFAn2/J+Ji9M+YAaMru1V0W+0i265CWG16YfWuEAq8nza g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="229593475"
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="229593475"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 16:42:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="701908753"
Received: from cliu38-mobl3.sh.intel.com ([10.239.147.47])
 by orsmga005.jf.intel.com with ESMTP; 10 Feb 2022 16:42:37 -0800
From: Chuansheng Liu <chuansheng.liu@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Feb 2022 08:29:33 +0800
Message-Id: <20220211002933.84240-1-chuansheng.liu@intel.com>
X-Mailer: git-send-email 2.25.0.rc2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/dg1: Update DMC_DEBUG3 register
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Current DMC_DEBUG3(_MMIO(0x101090)) address is for TGL,
it is wrong for DG1. Just like commit 5bcc95ca382e
("drm/i915/dg1: Update DMC_DEBUG register"), correct
this issue for DG1 platform to avoid wrong register
being read.

BSpec: 49788

v2: fix "not wrong" typo. (Jani)

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
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

