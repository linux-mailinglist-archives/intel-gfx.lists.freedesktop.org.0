Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 041A9255B3F
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Aug 2020 15:31:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACE156E0D0;
	Fri, 28 Aug 2020 13:31:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37C016E0D0
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Aug 2020 13:31:28 +0000 (UTC)
IronPort-SDR: Pja8rCbtevADcuw747ydwHBDK3ZFv8+6OaNB4EhCIYRktXRkolZ2qMMqnJJ7upyuV4juOuhSYu
 CAD1k7dd07og==
X-IronPort-AV: E=McAfee;i="6000,8403,9726"; a="157685224"
X-IronPort-AV: E=Sophos;i="5.76,363,1592895600"; d="scan'208";a="157685224"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2020 06:31:27 -0700
IronPort-SDR: +bb+Tt0S3wjPa4Nz6eCIYW4D1Lmcw8Jqag4B/XFeKDRyIX4ucuBmVjWeLdy81HDBc7S7lPvSkp
 yRcq7vn+Frmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,363,1592895600"; d="scan'208";a="337495927"
Received: from mvyshnev-mobl2.ger.corp.intel.com (HELO
 delly.ger.corp.intel.com) ([10.252.54.21])
 by FMSMGA003.fm.intel.com with ESMTP; 28 Aug 2020 06:31:26 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Aug 2020 16:31:25 +0300
Message-Id: <20200828133125.157171-1-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: break TGL pci-ids in GT 1 & 2
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

I'll need this in IGT to identify the different kind of GTs and apply
the right performance query configuration.

Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
---
 include/drm/i915_pciids.h | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
index 8e7ae30ebcbb..7eeecb07c9a1 100644
--- a/include/drm/i915_pciids.h
+++ b/include/drm/i915_pciids.h
@@ -594,19 +594,25 @@
 	INTEL_VGA_DEVICE(0x4E51, info)
 
 /* TGL */
-#define INTEL_TGL_12_IDS(info) \
+#define INTEL_TGL_12_GT1_IDS(info) \
+	INTEL_VGA_DEVICE(0x9A60, info), \
+	INTEL_VGA_DEVICE(0x9A68, info), \
+	INTEL_VGA_DEVICE(0x9A70, info)
+
+#define INTEL_TGL_12_GT2_IDS(info) \
 	INTEL_VGA_DEVICE(0x9A40, info), \
 	INTEL_VGA_DEVICE(0x9A49, info), \
 	INTEL_VGA_DEVICE(0x9A59, info), \
-	INTEL_VGA_DEVICE(0x9A60, info), \
-	INTEL_VGA_DEVICE(0x9A68, info), \
-	INTEL_VGA_DEVICE(0x9A70, info), \
 	INTEL_VGA_DEVICE(0x9A78, info), \
 	INTEL_VGA_DEVICE(0x9AC0, info), \
 	INTEL_VGA_DEVICE(0x9AC9, info), \
 	INTEL_VGA_DEVICE(0x9AD9, info), \
 	INTEL_VGA_DEVICE(0x9AF8, info)
 
+#define INTEL_TGL_12_IDS(info) \
+	INTEL_TGL_12_GT1_IDS(info), \
+	INTEL_TGL_12_GT2_IDS(info)
+
 /* RKL */
 #define INTEL_RKL_IDS(info) \
 	INTEL_VGA_DEVICE(0x4C80, info), \
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
