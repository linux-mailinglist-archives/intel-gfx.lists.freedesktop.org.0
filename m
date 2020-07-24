Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E1C722D137
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jul 2020 23:39:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EBFB6EA1E;
	Fri, 24 Jul 2020 21:39:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CE866EA13
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jul 2020 21:39:25 +0000 (UTC)
IronPort-SDR: ABmJPSE2LPYE7CRIDicwiqnA3wOjyurencbIOat+bqdzm1lILWF/IUtQPbtN/esbwik/+NJ/MU
 x6y2cXdpOpfg==
X-IronPort-AV: E=McAfee;i="6000,8403,9692"; a="149970020"
X-IronPort-AV: E=Sophos;i="5.75,392,1589266800"; d="scan'208";a="149970020"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2020 14:39:24 -0700
IronPort-SDR: BxwCcv8Mzjm0FHUe/VlOpDyiIzvQrw7nDSp3U4mOem9buCXhxn/thedcVwpNlpCVG33zmbsSeH
 mcuDOFbl/nfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,392,1589266800"; d="scan'208";a="329041993"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by orsmga007.jf.intel.com with ESMTP; 24 Jul 2020 14:39:23 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jul 2020 14:39:18 -0700
Message-Id: <20200724213918.27424-23-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200724213918.27424-1-lucas.demarchi@intel.com>
References: <20200724213918.27424-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 22/22] drm/i915/dg1: Change DMC_DEBUG{1,
 2} registers
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Anshuman Gupta <anshuman.gupta@intel.com>

DGFX devices have different DMC_DEBUG* counter MMIO address
offset. Incorporate these changes in i915_reg.h for DG1 DC5/DC6
counter and handle i915_dmc_info accordingly.

Cc: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 9 +++++++--
 drivers/gpu/drm/i915/i915_reg.h                      | 2 ++
 2 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 3644752cc5ec..e3536edcb394 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -515,8 +515,13 @@ static int i915_dmc_info(struct seq_file *m, void *unused)
 		   CSR_VERSION_MINOR(csr->version));
 
 	if (INTEL_GEN(dev_priv) >= 12) {
-		dc5_reg = TGL_DMC_DEBUG_DC5_COUNT;
-		dc6_reg = TGL_DMC_DEBUG_DC6_COUNT;
+		if (IS_DG1(dev_priv)) {
+			dc5_reg = DG1_DMC_DEBUG_DC5_COUNT;
+		} else {
+			dc5_reg = TGL_DMC_DEBUG_DC5_COUNT;
+			dc6_reg = TGL_DMC_DEBUG_DC6_COUNT;
+		}
+
 		/*
 		 * NOTE: DMC_DEBUG3 is a general purpose reg.
 		 * According to B.Specs:49196 DMC f/w reuses DC5/6 counter
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 4e95312eba24..78bdce67da08 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7549,6 +7549,8 @@ enum {
 #define BXT_CSR_DC3_DC5_COUNT	_MMIO(0x80038)
 #define TGL_DMC_DEBUG_DC5_COUNT	_MMIO(0x101084)
 #define TGL_DMC_DEBUG_DC6_COUNT	_MMIO(0x101088)
+#define DG1_DMC_DEBUG_DC5_COUNT	_MMIO(0x134154)
+#define DG1_DMC_DEBUG_DC6_COUNT	_MMIO(0x134158)
 
 #define DMC_DEBUG3		_MMIO(0x101090)
 
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
