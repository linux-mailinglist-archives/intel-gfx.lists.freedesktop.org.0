Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A09311811F
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 08:13:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 480886E822;
	Tue, 10 Dec 2019 07:13:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A178C6E820
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2019 07:13:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Dec 2019 23:06:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,298,1571727600"; d="scan'208";a="215469648"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.9])
 by orsmga003.jf.intel.com with ESMTP; 09 Dec 2019 23:06:21 -0800
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Dec 2019 23:04:15 +0800
Message-Id: <20191210150415.10705-2-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191210150415.10705-1-shawn.c.lee@intel.com>
References: <20191210150415.10705-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/cml: Separate U series pci id from
 origianl list.
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
Cc: Jani Nikula <jani.nikula@intel.com>, Cooper Chiou <cooper.chiou@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U series device need different DDI buffer setup for eDP
and DP. If driver did not recognize ULT id proerply.
The setting for H and S series would be used.

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
Cc: Cooper Chiou <cooper.chiou@intel.com>
Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c          |  2 ++
 drivers/gpu/drm/i915/intel_device_info.c |  2 ++
 include/drm/i915_pciids.h                | 20 +++++++++++++-------
 3 files changed, 17 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index bba6b50e6beb..877560b1031e 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -897,6 +897,8 @@ static const struct pci_device_id pciidlist[] = {
 	INTEL_WHL_U_GT3_IDS(&intel_coffeelake_gt3_info),
 	INTEL_CML_GT1_IDS(&intel_coffeelake_gt1_info),
 	INTEL_CML_GT2_IDS(&intel_coffeelake_gt2_info),
+	INTEL_CML_U_GT1_IDS(&intel_coffeelake_gt1_info),
+	INTEL_CML_U_GT2_IDS(&intel_coffeelake_gt2_info),
 	INTEL_CNL_IDS(&intel_cannonlake_info),
 	INTEL_ICL_11_IDS(&intel_icelake_11_info),
 	INTEL_EHL_IDS(&intel_elkhartlake_info),
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 2cde0bac27d3..1acb5db77431 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -829,6 +829,8 @@ static const u16 subplatform_ult_ids[] = {
 	INTEL_WHL_U_GT1_IDS(0),
 	INTEL_WHL_U_GT2_IDS(0),
 	INTEL_WHL_U_GT3_IDS(0),
+	INTEL_CML_U_GT1_IDS(0),
+	INTEL_CML_U_GT2_IDS(0),
 };
 
 static const u16 subplatform_ulx_ids[] = {
diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
index 92873c3957c8..1d2c12219f44 100644
--- a/include/drm/i915_pciids.h
+++ b/include/drm/i915_pciids.h
@@ -446,19 +446,18 @@
 
 /* CML GT1 */
 #define INTEL_CML_GT1_IDS(info)	\
-	INTEL_VGA_DEVICE(0x9B21, info), \
-	INTEL_VGA_DEVICE(0x9BAA, info), \
-	INTEL_VGA_DEVICE(0x9BAC, info), \
 	INTEL_VGA_DEVICE(0x9BA5, info), \
 	INTEL_VGA_DEVICE(0x9BA8, info), \
 	INTEL_VGA_DEVICE(0x9BA4, info), \
 	INTEL_VGA_DEVICE(0x9BA2, info)
 
+#define INTEL_CML_U_GT1_IDS(info) \
+	INTEL_VGA_DEVICE(0x9B21, info), \
+	INTEL_VGA_DEVICE(0x9BAA, info), \
+	INTEL_VGA_DEVICE(0x9BAC, info)
+
 /* CML GT2 */
 #define INTEL_CML_GT2_IDS(info)	\
-	INTEL_VGA_DEVICE(0x9B41, info), \
-	INTEL_VGA_DEVICE(0x9BCA, info), \
-	INTEL_VGA_DEVICE(0x9BCC, info), \
 	INTEL_VGA_DEVICE(0x9BC5, info), \
 	INTEL_VGA_DEVICE(0x9BC8, info), \
 	INTEL_VGA_DEVICE(0x9BC4, info), \
@@ -467,6 +466,11 @@
 	INTEL_VGA_DEVICE(0x9BE6, info), \
 	INTEL_VGA_DEVICE(0x9BF6, info)
 
+#define INTEL_CML_U_GT2_IDS(info) \
+	INTEL_VGA_DEVICE(0x9B41, info), \
+	INTEL_VGA_DEVICE(0x9BCA, info), \
+	INTEL_VGA_DEVICE(0x9BCC, info)
+
 #define INTEL_KBL_IDS(info) \
 	INTEL_KBL_GT1_IDS(info), \
 	INTEL_KBL_GT2_IDS(info), \
@@ -532,7 +536,9 @@
 	INTEL_WHL_U_GT3_IDS(info), \
 	INTEL_AML_CFL_GT2_IDS(info), \
 	INTEL_CML_GT1_IDS(info), \
-	INTEL_CML_GT2_IDS(info)
+	INTEL_CML_GT2_IDS(info), \
+	INTEL_CML_U_GT1_IDS(info), \
+	INTEL_CML_U_GT2_IDS(info)
 
 /* CNL */
 #define INTEL_CNL_PORT_F_IDS(info) \
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
