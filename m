Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CF5F1B21DF
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2020 10:41:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0927889DA9;
	Tue, 21 Apr 2020 08:41:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4642689DA9
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2020 08:41:44 +0000 (UTC)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
 [147.11.189.40])
 by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id 03L8fWEM001089
 (version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
 Tue, 21 Apr 2020 01:41:32 -0700 (PDT)
Received: from pek-lpggp3.wrs.com (128.224.153.76) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.40) with Microsoft SMTP Server id 14.3.487.0;
 Tue, 21 Apr 2020 01:41:31 -0700
From: Liwei Song <liwei.song@windriver.com>
To: Chris <chris@chris-wilson.co.uk>, <intel-gfx@lists.freedesktop.org>
Date: Tue, 21 Apr 2020 16:41:28 +0800
Message-ID: <20200421084128.36839-1-liwei.song@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH xf86-video-intel v4] Sync i915_pciids upto
 8717c6b7414f
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

Import the kernel's i915_pciids.h, up to:

commit 8717c6b7414ffb890672276dccc284c23078ac0e
Author: Lee Shawn C <shawn.c.lee@intel.com>
Date:   Tue Dec 10 23:04:15 2019 +0800

    drm/i915/cml: Separate U series pci id from origianl list.

Signed-off-by: Liwei Song <liwei.song@windriver.com>
---
V3 -> V4:
   Add missed PINEVIEW

V2 -> V3:
   Add 4 new info blocks and add sound support for them.

Change since V1:
  replace old definition in intel_module.c and dri3-test.c
---
 src/i915_pciids.h     | 265 ++++++++++++++++++++++++++++++++----------
 src/intel_module.c    |  93 ++++++++++++++-
 src/sna/gen9_render.c |  48 ++++++++
 test/dri3-test.c      |   3 +-
 4 files changed, 346 insertions(+), 63 deletions(-)

diff --git a/src/i915_pciids.h b/src/i915_pciids.h
index fd965ffbb92e..1d2c12219f44 100644
--- a/src/i915_pciids.h
+++ b/src/i915_pciids.h
@@ -108,8 +108,10 @@
 	INTEL_VGA_DEVICE(0x2e42, info), /* B43_G */ \
 	INTEL_VGA_DEVICE(0x2e92, info)	/* B43_G.1 */
 
-#define INTEL_PINEVIEW_IDS(info)			\
-	INTEL_VGA_DEVICE(0xa001, info),			\
+#define INTEL_PINEVIEW_G_IDS(info) \
+	INTEL_VGA_DEVICE(0xa001, info)
+
+#define INTEL_PINEVIEW_M_IDS(info) \
 	INTEL_VGA_DEVICE(0xa011, info)
 
 #define INTEL_IRONLAKE_D_IDS(info) \
@@ -166,7 +168,18 @@
 #define INTEL_IVB_Q_IDS(info) \
 	INTEL_QUANTA_VGA_DEVICE(info) /* Quanta transcode */
 
+#define INTEL_HSW_ULT_GT1_IDS(info) \
+	INTEL_VGA_DEVICE(0x0A02, info), /* ULT GT1 desktop */ \
+	INTEL_VGA_DEVICE(0x0A0A, info), /* ULT GT1 server */ \
+	INTEL_VGA_DEVICE(0x0A0B, info), /* ULT GT1 reserved */ \
+	INTEL_VGA_DEVICE(0x0A06, info)  /* ULT GT1 mobile */
+
+#define INTEL_HSW_ULX_GT1_IDS(info) \
+	INTEL_VGA_DEVICE(0x0A0E, info) /* ULX GT1 mobile */
+
 #define INTEL_HSW_GT1_IDS(info) \
+	INTEL_HSW_ULT_GT1_IDS(info), \
+	INTEL_HSW_ULX_GT1_IDS(info), \
 	INTEL_VGA_DEVICE(0x0402, info), /* GT1 desktop */ \
 	INTEL_VGA_DEVICE(0x040a, info), /* GT1 server */ \
 	INTEL_VGA_DEVICE(0x040B, info), /* GT1 reserved */ \
@@ -175,20 +188,26 @@
 	INTEL_VGA_DEVICE(0x0C0A, info), /* SDV GT1 server */ \
 	INTEL_VGA_DEVICE(0x0C0B, info), /* SDV GT1 reserved */ \
 	INTEL_VGA_DEVICE(0x0C0E, info), /* SDV GT1 reserved */ \
-	INTEL_VGA_DEVICE(0x0A02, info), /* ULT GT1 desktop */ \
-	INTEL_VGA_DEVICE(0x0A0A, info), /* ULT GT1 server */ \
-	INTEL_VGA_DEVICE(0x0A0B, info), /* ULT GT1 reserved */ \
 	INTEL_VGA_DEVICE(0x0D02, info), /* CRW GT1 desktop */ \
 	INTEL_VGA_DEVICE(0x0D0A, info), /* CRW GT1 server */ \
 	INTEL_VGA_DEVICE(0x0D0B, info), /* CRW GT1 reserved */ \
 	INTEL_VGA_DEVICE(0x0D0E, info), /* CRW GT1 reserved */ \
 	INTEL_VGA_DEVICE(0x0406, info), /* GT1 mobile */ \
 	INTEL_VGA_DEVICE(0x0C06, info), /* SDV GT1 mobile */ \
-	INTEL_VGA_DEVICE(0x0A06, info), /* ULT GT1 mobile */ \
-	INTEL_VGA_DEVICE(0x0A0E, info), /* ULX GT1 mobile */ \
 	INTEL_VGA_DEVICE(0x0D06, info)  /* CRW GT1 mobile */
 
+#define INTEL_HSW_ULT_GT2_IDS(info) \
+	INTEL_VGA_DEVICE(0x0A12, info), /* ULT GT2 desktop */ \
+	INTEL_VGA_DEVICE(0x0A1A, info), /* ULT GT2 server */ \
+	INTEL_VGA_DEVICE(0x0A1B, info), /* ULT GT2 reserved */ \
+	INTEL_VGA_DEVICE(0x0A16, info)  /* ULT GT2 mobile */
+
+#define INTEL_HSW_ULX_GT2_IDS(info) \
+	INTEL_VGA_DEVICE(0x0A1E, info) /* ULX GT2 mobile */ \
+
 #define INTEL_HSW_GT2_IDS(info) \
+	INTEL_HSW_ULT_GT2_IDS(info), \
+	INTEL_HSW_ULX_GT2_IDS(info), \
 	INTEL_VGA_DEVICE(0x0412, info), /* GT2 desktop */ \
 	INTEL_VGA_DEVICE(0x041a, info), /* GT2 server */ \
 	INTEL_VGA_DEVICE(0x041B, info), /* GT2 reserved */ \
@@ -197,9 +216,6 @@
 	INTEL_VGA_DEVICE(0x0C1A, info), /* SDV GT2 server */ \
 	INTEL_VGA_DEVICE(0x0C1B, info), /* SDV GT2 reserved */ \
 	INTEL_VGA_DEVICE(0x0C1E, info), /* SDV GT2 reserved */ \
-	INTEL_VGA_DEVICE(0x0A12, info), /* ULT GT2 desktop */ \
-	INTEL_VGA_DEVICE(0x0A1A, info), /* ULT GT2 server */ \
-	INTEL_VGA_DEVICE(0x0A1B, info), /* ULT GT2 reserved */ \
 	INTEL_VGA_DEVICE(0x0D12, info), /* CRW GT2 desktop */ \
 	INTEL_VGA_DEVICE(0x0D1A, info), /* CRW GT2 server */ \
 	INTEL_VGA_DEVICE(0x0D1B, info), /* CRW GT2 reserved */ \
@@ -207,11 +223,17 @@
 	INTEL_VGA_DEVICE(0x0416, info), /* GT2 mobile */ \
 	INTEL_VGA_DEVICE(0x0426, info), /* GT2 mobile */ \
 	INTEL_VGA_DEVICE(0x0C16, info), /* SDV GT2 mobile */ \
-	INTEL_VGA_DEVICE(0x0A16, info), /* ULT GT2 mobile */ \
-	INTEL_VGA_DEVICE(0x0A1E, info), /* ULX GT2 mobile */ \
 	INTEL_VGA_DEVICE(0x0D16, info)  /* CRW GT2 mobile */
 
+#define INTEL_HSW_ULT_GT3_IDS(info) \
+	INTEL_VGA_DEVICE(0x0A22, info), /* ULT GT3 desktop */ \
+	INTEL_VGA_DEVICE(0x0A2A, info), /* ULT GT3 server */ \
+	INTEL_VGA_DEVICE(0x0A2B, info), /* ULT GT3 reserved */ \
+	INTEL_VGA_DEVICE(0x0A26, info), /* ULT GT3 mobile */ \
+	INTEL_VGA_DEVICE(0x0A2E, info)  /* ULT GT3 reserved */
+
 #define INTEL_HSW_GT3_IDS(info) \
+	INTEL_HSW_ULT_GT3_IDS(info), \
 	INTEL_VGA_DEVICE(0x0422, info), /* GT3 desktop */ \
 	INTEL_VGA_DEVICE(0x042a, info), /* GT3 server */ \
 	INTEL_VGA_DEVICE(0x042B, info), /* GT3 reserved */ \
@@ -220,16 +242,11 @@
 	INTEL_VGA_DEVICE(0x0C2A, info), /* SDV GT3 server */ \
 	INTEL_VGA_DEVICE(0x0C2B, info), /* SDV GT3 reserved */ \
 	INTEL_VGA_DEVICE(0x0C2E, info), /* SDV GT3 reserved */ \
-	INTEL_VGA_DEVICE(0x0A22, info), /* ULT GT3 desktop */ \
-	INTEL_VGA_DEVICE(0x0A2A, info), /* ULT GT3 server */ \
-	INTEL_VGA_DEVICE(0x0A2B, info), /* ULT GT3 reserved */ \
 	INTEL_VGA_DEVICE(0x0D22, info), /* CRW GT3 desktop */ \
 	INTEL_VGA_DEVICE(0x0D2A, info), /* CRW GT3 server */ \
 	INTEL_VGA_DEVICE(0x0D2B, info), /* CRW GT3 reserved */ \
 	INTEL_VGA_DEVICE(0x0D2E, info), /* CRW GT3 reserved */ \
 	INTEL_VGA_DEVICE(0x0C26, info), /* SDV GT3 mobile */ \
-	INTEL_VGA_DEVICE(0x0A26, info), /* ULT GT3 mobile */ \
-	INTEL_VGA_DEVICE(0x0A2E, info), /* ULT GT3 reserved */ \
 	INTEL_VGA_DEVICE(0x0D26, info)  /* CRW GT3 mobile */
 
 #define INTEL_HSW_IDS(info) \
@@ -245,35 +262,59 @@
 	INTEL_VGA_DEVICE(0x0157, info), \
 	INTEL_VGA_DEVICE(0x0155, info)
 
-#define INTEL_BDW_GT1_IDS(info)  \
-	INTEL_VGA_DEVICE(0x1602, info), /* GT1 ULT */ \
+#define INTEL_BDW_ULT_GT1_IDS(info) \
 	INTEL_VGA_DEVICE(0x1606, info), /* GT1 ULT */ \
-	INTEL_VGA_DEVICE(0x160B, info), /* GT1 Iris */ \
-	INTEL_VGA_DEVICE(0x160E, info), /* GT1 ULX */ \
+	INTEL_VGA_DEVICE(0x160B, info)  /* GT1 Iris */
+
+#define INTEL_BDW_ULX_GT1_IDS(info) \
+	INTEL_VGA_DEVICE(0x160E, info) /* GT1 ULX */
+
+#define INTEL_BDW_GT1_IDS(info) \
+	INTEL_BDW_ULT_GT1_IDS(info), \
+	INTEL_BDW_ULX_GT1_IDS(info), \
+	INTEL_VGA_DEVICE(0x1602, info), /* GT1 ULT */ \
 	INTEL_VGA_DEVICE(0x160A, info), /* GT1 Server */ \
 	INTEL_VGA_DEVICE(0x160D, info)  /* GT1 Workstation */
 
-#define INTEL_BDW_GT2_IDS(info)  \
-	INTEL_VGA_DEVICE(0x1612, info), /* GT2 Halo */	\
+#define INTEL_BDW_ULT_GT2_IDS(info) \
 	INTEL_VGA_DEVICE(0x1616, info), /* GT2 ULT */ \
-	INTEL_VGA_DEVICE(0x161B, info), /* GT2 ULT */ \
-	INTEL_VGA_DEVICE(0x161E, info), /* GT2 ULX */ \
+	INTEL_VGA_DEVICE(0x161B, info)  /* GT2 ULT */
+
+#define INTEL_BDW_ULX_GT2_IDS(info) \
+	INTEL_VGA_DEVICE(0x161E, info) /* GT2 ULX */
+
+#define INTEL_BDW_GT2_IDS(info) \
+	INTEL_BDW_ULT_GT2_IDS(info), \
+	INTEL_BDW_ULX_GT2_IDS(info), \
+	INTEL_VGA_DEVICE(0x1612, info), /* GT2 Halo */	\
 	INTEL_VGA_DEVICE(0x161A, info), /* GT2 Server */ \
 	INTEL_VGA_DEVICE(0x161D, info)  /* GT2 Workstation */
 
+#define INTEL_BDW_ULT_GT3_IDS(info) \
+	INTEL_VGA_DEVICE(0x1626, info), /* ULT */ \
+	INTEL_VGA_DEVICE(0x162B, info)  /* Iris */ \
+
+#define INTEL_BDW_ULX_GT3_IDS(info) \
+	INTEL_VGA_DEVICE(0x162E, info)  /* ULX */
+
 #define INTEL_BDW_GT3_IDS(info) \
+	INTEL_BDW_ULT_GT3_IDS(info), \
+	INTEL_BDW_ULX_GT3_IDS(info), \
 	INTEL_VGA_DEVICE(0x1622, info), /* ULT */ \
-	INTEL_VGA_DEVICE(0x1626, info), /* ULT */ \
-	INTEL_VGA_DEVICE(0x162B, info), /* Iris */ \
-	INTEL_VGA_DEVICE(0x162E, info),  /* ULX */\
 	INTEL_VGA_DEVICE(0x162A, info), /* Server */ \
 	INTEL_VGA_DEVICE(0x162D, info)  /* Workstation */
 
+#define INTEL_BDW_ULT_RSVD_IDS(info) \
+	INTEL_VGA_DEVICE(0x1636, info), /* ULT */ \
+	INTEL_VGA_DEVICE(0x163B, info)  /* Iris */
+
+#define INTEL_BDW_ULX_RSVD_IDS(info) \
+	INTEL_VGA_DEVICE(0x163E, info) /* ULX */
+
 #define INTEL_BDW_RSVD_IDS(info) \
+	INTEL_BDW_ULT_RSVD_IDS(info), \
+	INTEL_BDW_ULX_RSVD_IDS(info), \
 	INTEL_VGA_DEVICE(0x1632, info), /* ULT */ \
-	INTEL_VGA_DEVICE(0x1636, info), /* ULT */ \
-	INTEL_VGA_DEVICE(0x163B, info), /* Iris */ \
-	INTEL_VGA_DEVICE(0x163E, info), /* ULX */ \
 	INTEL_VGA_DEVICE(0x163A, info), /* Server */ \
 	INTEL_VGA_DEVICE(0x163D, info)  /* Workstation */
 
@@ -289,25 +330,40 @@
 	INTEL_VGA_DEVICE(0x22b2, info), \
 	INTEL_VGA_DEVICE(0x22b3, info)
 
+#define INTEL_SKL_ULT_GT1_IDS(info) \
+	INTEL_VGA_DEVICE(0x1906, info) /* ULT GT1 */
+
+#define INTEL_SKL_ULX_GT1_IDS(info) \
+	INTEL_VGA_DEVICE(0x190E, info) /* ULX GT1 */
+
 #define INTEL_SKL_GT1_IDS(info)	\
-	INTEL_VGA_DEVICE(0x1906, info), /* ULT GT1 */ \
-	INTEL_VGA_DEVICE(0x190E, info), /* ULX GT1 */ \
+	INTEL_SKL_ULT_GT1_IDS(info), \
+	INTEL_SKL_ULX_GT1_IDS(info), \
 	INTEL_VGA_DEVICE(0x1902, info), /* DT  GT1 */ \
 	INTEL_VGA_DEVICE(0x190B, info), /* Halo GT1 */ \
 	INTEL_VGA_DEVICE(0x190A, info) /* SRV GT1 */
 
-#define INTEL_SKL_GT2_IDS(info)	\
+#define INTEL_SKL_ULT_GT2_IDS(info) \
 	INTEL_VGA_DEVICE(0x1916, info), /* ULT GT2 */ \
-	INTEL_VGA_DEVICE(0x1921, info), /* ULT GT2F */ \
-	INTEL_VGA_DEVICE(0x191E, info), /* ULX GT2 */ \
+	INTEL_VGA_DEVICE(0x1921, info)  /* ULT GT2F */
+
+#define INTEL_SKL_ULX_GT2_IDS(info) \
+	INTEL_VGA_DEVICE(0x191E, info) /* ULX GT2 */
+
+#define INTEL_SKL_GT2_IDS(info)	\
+	INTEL_SKL_ULT_GT2_IDS(info), \
+	INTEL_SKL_ULX_GT2_IDS(info), \
 	INTEL_VGA_DEVICE(0x1912, info), /* DT  GT2 */ \
 	INTEL_VGA_DEVICE(0x191B, info), /* Halo GT2 */ \
 	INTEL_VGA_DEVICE(0x191A, info), /* SRV GT2 */ \
 	INTEL_VGA_DEVICE(0x191D, info)  /* WKS GT2 */
 
+#define INTEL_SKL_ULT_GT3_IDS(info) \
+	INTEL_VGA_DEVICE(0x1926, info) /* ULT GT3 */
+
 #define INTEL_SKL_GT3_IDS(info) \
+	INTEL_SKL_ULT_GT3_IDS(info), \
 	INTEL_VGA_DEVICE(0x1923, info), /* ULT GT3 */ \
-	INTEL_VGA_DEVICE(0x1926, info), /* ULT GT3 */ \
 	INTEL_VGA_DEVICE(0x1927, info), /* ULT GT3 */ \
 	INTEL_VGA_DEVICE(0x192B, info), /* Halo GT3 */ \
 	INTEL_VGA_DEVICE(0x192D, info)  /* SRV GT3 */
@@ -336,45 +392,91 @@
 	INTEL_VGA_DEVICE(0x3184, info), \
 	INTEL_VGA_DEVICE(0x3185, info)
 
-#define INTEL_KBL_GT1_IDS(info)	\
-	INTEL_VGA_DEVICE(0x5913, info), /* ULT GT1.5 */ \
-	INTEL_VGA_DEVICE(0x5915, info), /* ULX GT1.5 */ \
+#define INTEL_KBL_ULT_GT1_IDS(info) \
 	INTEL_VGA_DEVICE(0x5906, info), /* ULT GT1 */ \
+	INTEL_VGA_DEVICE(0x5913, info)  /* ULT GT1.5 */
+
+#define INTEL_KBL_ULX_GT1_IDS(info) \
 	INTEL_VGA_DEVICE(0x590E, info), /* ULX GT1 */ \
+	INTEL_VGA_DEVICE(0x5915, info)  /* ULX GT1.5 */
+
+#define INTEL_KBL_GT1_IDS(info)	\
+	INTEL_KBL_ULT_GT1_IDS(info), \
+	INTEL_KBL_ULX_GT1_IDS(info), \
 	INTEL_VGA_DEVICE(0x5902, info), /* DT  GT1 */ \
 	INTEL_VGA_DEVICE(0x5908, info), /* Halo GT1 */ \
 	INTEL_VGA_DEVICE(0x590B, info), /* Halo GT1 */ \
 	INTEL_VGA_DEVICE(0x590A, info) /* SRV GT1 */
 
-#define INTEL_KBL_GT2_IDS(info)	\
+#define INTEL_KBL_ULT_GT2_IDS(info) \
 	INTEL_VGA_DEVICE(0x5916, info), /* ULT GT2 */ \
+	INTEL_VGA_DEVICE(0x5921, info)  /* ULT GT2F */
+
+#define INTEL_KBL_ULX_GT2_IDS(info) \
+	INTEL_VGA_DEVICE(0x591E, info)  /* ULX GT2 */
+
+#define INTEL_KBL_GT2_IDS(info)	\
+	INTEL_KBL_ULT_GT2_IDS(info), \
+	INTEL_KBL_ULX_GT2_IDS(info), \
 	INTEL_VGA_DEVICE(0x5917, info), /* Mobile GT2 */ \
-	INTEL_VGA_DEVICE(0x5921, info), /* ULT GT2F */ \
-	INTEL_VGA_DEVICE(0x591E, info), /* ULX GT2 */ \
 	INTEL_VGA_DEVICE(0x5912, info), /* DT  GT2 */ \
 	INTEL_VGA_DEVICE(0x591B, info), /* Halo GT2 */ \
 	INTEL_VGA_DEVICE(0x591A, info), /* SRV GT2 */ \
 	INTEL_VGA_DEVICE(0x591D, info) /* WKS GT2 */
 
+#define INTEL_KBL_ULT_GT3_IDS(info) \
+	INTEL_VGA_DEVICE(0x5926, info) /* ULT GT3 */
+
 #define INTEL_KBL_GT3_IDS(info) \
+	INTEL_KBL_ULT_GT3_IDS(info), \
 	INTEL_VGA_DEVICE(0x5923, info), /* ULT GT3 */ \
-	INTEL_VGA_DEVICE(0x5926, info), /* ULT GT3 */ \
 	INTEL_VGA_DEVICE(0x5927, info) /* ULT GT3 */
 
 #define INTEL_KBL_GT4_IDS(info) \
 	INTEL_VGA_DEVICE(0x593B, info) /* Halo GT4 */
 
 /* AML/KBL Y GT2 */
-#define INTEL_AML_GT2_IDS(info) \
+#define INTEL_AML_KBL_GT2_IDS(info) \
 	INTEL_VGA_DEVICE(0x591C, info),  /* ULX GT2 */ \
 	INTEL_VGA_DEVICE(0x87C0, info) /* ULX GT2 */
 
+/* AML/CFL Y GT2 */
+#define INTEL_AML_CFL_GT2_IDS(info) \
+	INTEL_VGA_DEVICE(0x87CA, info)
+
+/* CML GT1 */
+#define INTEL_CML_GT1_IDS(info)	\
+	INTEL_VGA_DEVICE(0x9BA5, info), \
+	INTEL_VGA_DEVICE(0x9BA8, info), \
+	INTEL_VGA_DEVICE(0x9BA4, info), \
+	INTEL_VGA_DEVICE(0x9BA2, info)
+
+#define INTEL_CML_U_GT1_IDS(info) \
+	INTEL_VGA_DEVICE(0x9B21, info), \
+	INTEL_VGA_DEVICE(0x9BAA, info), \
+	INTEL_VGA_DEVICE(0x9BAC, info)
+
+/* CML GT2 */
+#define INTEL_CML_GT2_IDS(info)	\
+	INTEL_VGA_DEVICE(0x9BC5, info), \
+	INTEL_VGA_DEVICE(0x9BC8, info), \
+	INTEL_VGA_DEVICE(0x9BC4, info), \
+	INTEL_VGA_DEVICE(0x9BC2, info), \
+	INTEL_VGA_DEVICE(0x9BC6, info), \
+	INTEL_VGA_DEVICE(0x9BE6, info), \
+	INTEL_VGA_DEVICE(0x9BF6, info)
+
+#define INTEL_CML_U_GT2_IDS(info) \
+	INTEL_VGA_DEVICE(0x9B41, info), \
+	INTEL_VGA_DEVICE(0x9BCA, info), \
+	INTEL_VGA_DEVICE(0x9BCC, info)
+
 #define INTEL_KBL_IDS(info) \
 	INTEL_KBL_GT1_IDS(info), \
 	INTEL_KBL_GT2_IDS(info), \
 	INTEL_KBL_GT3_IDS(info), \
 	INTEL_KBL_GT4_IDS(info), \
-	INTEL_AML_GT2_IDS(info)
+	INTEL_AML_KBL_GT2_IDS(info)
 
 /* CFL S */
 #define INTEL_CFL_S_GT1_IDS(info) \
@@ -390,6 +492,9 @@
 	INTEL_VGA_DEVICE(0x3E9A, info)  /* SRV GT2 */
 
 /* CFL H */
+#define INTEL_CFL_H_GT1_IDS(info) \
+	INTEL_VGA_DEVICE(0x3E9C, info)
+
 #define INTEL_CFL_H_GT2_IDS(info) \
 	INTEL_VGA_DEVICE(0x3E9B, info), /* Halo GT2 */ \
 	INTEL_VGA_DEVICE(0x3E94, info)  /* Halo GT2 */
@@ -407,30 +512,43 @@
 
 /* WHL/CFL U GT1 */
 #define INTEL_WHL_U_GT1_IDS(info) \
-	INTEL_VGA_DEVICE(0x3EA1, info)
+	INTEL_VGA_DEVICE(0x3EA1, info), \
+	INTEL_VGA_DEVICE(0x3EA4, info)
 
 /* WHL/CFL U GT2 */
 #define INTEL_WHL_U_GT2_IDS(info) \
-	INTEL_VGA_DEVICE(0x3EA0, info)
+	INTEL_VGA_DEVICE(0x3EA0, info), \
+	INTEL_VGA_DEVICE(0x3EA3, info)
 
 /* WHL/CFL U GT3 */
 #define INTEL_WHL_U_GT3_IDS(info) \
-	INTEL_VGA_DEVICE(0x3EA2, info), \
-	INTEL_VGA_DEVICE(0x3EA3, info), \
-	INTEL_VGA_DEVICE(0x3EA4, info)
+	INTEL_VGA_DEVICE(0x3EA2, info)
 
 #define INTEL_CFL_IDS(info)	   \
 	INTEL_CFL_S_GT1_IDS(info), \
 	INTEL_CFL_S_GT2_IDS(info), \
+	INTEL_CFL_H_GT1_IDS(info), \
 	INTEL_CFL_H_GT2_IDS(info), \
 	INTEL_CFL_U_GT2_IDS(info), \
 	INTEL_CFL_U_GT3_IDS(info), \
 	INTEL_WHL_U_GT1_IDS(info), \
 	INTEL_WHL_U_GT2_IDS(info), \
-	INTEL_WHL_U_GT3_IDS(info)
+	INTEL_WHL_U_GT3_IDS(info), \
+	INTEL_AML_CFL_GT2_IDS(info), \
+	INTEL_CML_GT1_IDS(info), \
+	INTEL_CML_GT2_IDS(info), \
+	INTEL_CML_U_GT1_IDS(info), \
+	INTEL_CML_U_GT2_IDS(info)
 
 /* CNL */
+#define INTEL_CNL_PORT_F_IDS(info) \
+	INTEL_VGA_DEVICE(0x5A54, info), \
+	INTEL_VGA_DEVICE(0x5A5C, info), \
+	INTEL_VGA_DEVICE(0x5A44, info), \
+	INTEL_VGA_DEVICE(0x5A4C, info)
+
 #define INTEL_CNL_IDS(info) \
+	INTEL_CNL_PORT_F_IDS(info), \
 	INTEL_VGA_DEVICE(0x5A51, info), \
 	INTEL_VGA_DEVICE(0x5A59, info), \
 	INTEL_VGA_DEVICE(0x5A41, info), \
@@ -440,22 +558,47 @@
 	INTEL_VGA_DEVICE(0x5A42, info), \
 	INTEL_VGA_DEVICE(0x5A4A, info), \
 	INTEL_VGA_DEVICE(0x5A50, info), \
-	INTEL_VGA_DEVICE(0x5A40, info), \
-	INTEL_VGA_DEVICE(0x5A54, info), \
-	INTEL_VGA_DEVICE(0x5A5C, info), \
-	INTEL_VGA_DEVICE(0x5A44, info), \
-	INTEL_VGA_DEVICE(0x5A4C, info)
+	INTEL_VGA_DEVICE(0x5A40, info)
 
 /* ICL */
-#define INTEL_ICL_11_IDS(info) \
+#define INTEL_ICL_PORT_F_IDS(info) \
 	INTEL_VGA_DEVICE(0x8A50, info), \
-	INTEL_VGA_DEVICE(0x8A51, info), \
 	INTEL_VGA_DEVICE(0x8A5C, info), \
-	INTEL_VGA_DEVICE(0x8A5D, info), \
+	INTEL_VGA_DEVICE(0x8A59, info),	\
+	INTEL_VGA_DEVICE(0x8A58, info),	\
 	INTEL_VGA_DEVICE(0x8A52, info), \
 	INTEL_VGA_DEVICE(0x8A5A, info), \
 	INTEL_VGA_DEVICE(0x8A5B, info), \
+	INTEL_VGA_DEVICE(0x8A57, info), \
+	INTEL_VGA_DEVICE(0x8A56, info), \
 	INTEL_VGA_DEVICE(0x8A71, info), \
-	INTEL_VGA_DEVICE(0x8A70, info)
+	INTEL_VGA_DEVICE(0x8A70, info), \
+	INTEL_VGA_DEVICE(0x8A53, info), \
+	INTEL_VGA_DEVICE(0x8A54, info)
+
+#define INTEL_ICL_11_IDS(info) \
+	INTEL_ICL_PORT_F_IDS(info), \
+	INTEL_VGA_DEVICE(0x8A51, info), \
+	INTEL_VGA_DEVICE(0x8A5D, info)
+
+/* EHL/JSL */
+#define INTEL_EHL_IDS(info) \
+	INTEL_VGA_DEVICE(0x4500, info),	\
+	INTEL_VGA_DEVICE(0x4571, info), \
+	INTEL_VGA_DEVICE(0x4551, info), \
+	INTEL_VGA_DEVICE(0x4541, info), \
+	INTEL_VGA_DEVICE(0x4E71, info), \
+	INTEL_VGA_DEVICE(0x4E61, info), \
+	INTEL_VGA_DEVICE(0x4E51, info)
+
+/* TGL */
+#define INTEL_TGL_12_IDS(info) \
+	INTEL_VGA_DEVICE(0x9A49, info), \
+	INTEL_VGA_DEVICE(0x9A40, info), \
+	INTEL_VGA_DEVICE(0x9A59, info), \
+	INTEL_VGA_DEVICE(0x9A60, info), \
+	INTEL_VGA_DEVICE(0x9A68, info), \
+	INTEL_VGA_DEVICE(0x9A70, info), \
+	INTEL_VGA_DEVICE(0x9A78, info)
 
 #endif /* _I915_PCIIDS_H */
diff --git a/src/intel_module.c b/src/intel_module.c
index a71c2e40b774..955bdac66980 100644
--- a/src/intel_module.c
+++ b/src/intel_module.c
@@ -142,6 +142,22 @@ static const struct intel_device_info intel_coffeelake_info = {
 	.gen = 0114,
 };
 
+static const struct intel_device_info intel_cannonlake_info = {
+	.gen = 0115,
+};
+
+static const struct intel_device_info intel_icelake_info = {
+	.gen = 0116,
+};
+
+static const struct intel_device_info intel_elkhartlake_info = {
+	.gen = 0117,
+};
+
+static const struct intel_device_info intel_tigerlake_info = {
+	.gen = 0120,
+};
+
 static const SymTabRec intel_chipsets[] = {
 	{PCI_CHIP_I810,				"i810"},
 	{PCI_CHIP_I810_DC100,			"i810-dc100"},
@@ -315,6 +331,7 @@ static const SymTabRec intel_chipsets[] = {
 	{0x3E92, "HD Graphics"},
 	{0x3E96, "HD Graphics"},
 	{0x3E9A, "HD Graphics"},
+	{0x3E9C, "HD Graphics"},
 	{0x3E9B, "HD Graphics"},
 	{0x3E94, "HD Graphics"},
 	{0x3EA1, "HD Graphics"},
@@ -327,6 +344,75 @@ static const SymTabRec intel_chipsets[] = {
 	{0x3EA6, "HD Graphics"},
 	{0x3EA7, "HD Graphics"},
 	{0x3EA8, "HD Graphics"},
+	{0x87CA, "HD Graphics"},
+	{0x9BA5, "HD Graphics"},
+	{0x9BA8, "HD Graphics"},
+	{0x9BA4, "HD Graphics"},
+	{0x9BA2, "HD Graphics"},
+	{0x9BC5, "HD Graphics"},
+	{0x9BC8, "HD Graphics"},
+	{0x9BC4, "HD Graphics"},
+	{0x9BC2, "HD Graphics"},
+	{0x9BC6, "HD Graphics"},
+	{0x9BE6, "HD Graphics"},
+	{0x9BF6, "HD Graphics"},
+	{0x9B21, "HD Graphics"},
+	{0x9BAA, "HD Graphics"},
+	{0x9BAC, "HD Graphics"},
+	{0x9B41, "HD Graphics"},
+	{0x9BCA, "HD Graphics"},
+	{0x9BCC, "HD Graphics"},
+
+	/*CannonLake */
+	{0x5A54, "HD Graphics"},
+	{0x5A5C, "HD Graphics"},
+	{0x5A44, "HD Graphics"},
+	{0x5A4C, "HD Graphics"},
+	{0x5A51, "HD Graphics"},
+	{0x5A59, "HD Graphics"},
+	{0x5A41, "HD Graphics"},
+	{0x5A49, "HD Graphics"},
+	{0x5A52, "HD Graphics"},
+	{0x5A5A, "HD Graphics"},
+	{0x5A42, "HD Graphics"},
+	{0x5A4A, "HD Graphics"},
+	{0x5A50, "HD Graphics"},
+	{0x5A40, "HD Graphics"},
+
+	/*IceLake*/
+	{0x8A50, "HD Graphics"},
+	{0x8A5C, "HD Graphics"},
+	{0x8A59, "HD Graphics"},
+	{0x8A58, "HD Graphics"},
+	{0x8A52, "HD Graphics"},
+	{0x8A5A, "HD Graphics"},
+	{0x8A5B, "HD Graphics"},
+	{0x8A57, "HD Graphics"},
+	{0x8A56, "HD Graphics"},
+	{0x8A71, "HD Graphics"},
+	{0x8A70, "HD Graphics"},
+	{0x8A53, "HD Graphics"},
+	{0x8A54, "HD Graphics"},
+	{0x8A51, "HD Graphics"},
+	{0x8A5D, "HD Graphics"},
+
+	/*ElkhartLake*/
+	{0x4500, "HD Graphics"},
+	{0x4571, "HD Graphics"},
+	{0x4551, "HD Graphics"},
+	{0x4541, "HD Graphics"},
+	{0x4E71, "HD Graphics"},
+	{0x4E61, "HD Graphics"},
+	{0x4E51, "HD Graphics"},
+
+	/*TigerLake*/
+	{0x9A49, "HD Graphics"},
+	{0x9A40, "HD Graphics"},
+	{0x9A59, "HD Graphics"},
+	{0x9A60, "HD Graphics"},
+	{0x9A68, "HD Graphics"},
+	{0x9A70, "HD Graphics"},
+	{0x9A78, "HD Graphics"},
 
 	/* When adding new identifiers, also update:
 	 * 1. intel_identify()
@@ -357,7 +443,8 @@ static const struct pci_id_match intel_device_match[] = {
 	INTEL_I945GM_IDS(&intel_i945_info),
 
 	INTEL_G33_IDS(&intel_g33_info),
-	INTEL_PINEVIEW_IDS(&intel_g33_info),
+	INTEL_PINEVIEW_G_IDS(&intel_g33_info),
+	INTEL_PINEVIEW_M_IDS(&intel_g33_info),
 
 	INTEL_I965G_IDS(&intel_i965_info),
 	INTEL_I965GM_IDS(&intel_i965_info),
@@ -384,6 +471,10 @@ static const struct pci_id_match intel_device_match[] = {
 	INTEL_GLK_IDS(&intel_geminilake_info),
 
 	INTEL_CFL_IDS(&intel_coffeelake_info),
+	INTEL_CNL_IDS(&intel_cannonlake_info),
+	INTEL_ICL_11_IDS(&intel_icelake_info),
+	INTEL_EHL_IDS(&intel_elkhartlake_info),
+	INTEL_TGL_12_IDS(&intel_tigerlake_info),
 
 	INTEL_VGA_DEVICE(PCI_MATCH_ANY, &intel_generic_info),
 #endif
diff --git a/src/sna/gen9_render.c b/src/sna/gen9_render.c
index 06c1f9a32145..d901307a95cd 100644
--- a/src/sna/gen9_render.c
+++ b/src/sna/gen9_render.c
@@ -297,6 +297,26 @@ static const struct gt_info cfl_gt_info = {
 	.urb = { .max_vs_entries = 960 },
 };
 
+static const struct gt_info cnl_gt_info = {
+	.name = "Cannonlake",
+	.urb = { .max_vs_entries = 960 },
+};
+
+static const struct gt_info icl_gt_info = {
+	.name = "Icelake",
+	.urb = { .max_vs_entries = 960 },
+};
+
+static const struct gt_info ehl_gt_info = {
+	.name = "Elkhartlake",
+	.urb = { .max_vs_entries = 960 },
+};
+
+static const struct gt_info tgl_gt_info = {
+	.name = "Tigerlake",
+	.urb = { .max_vs_entries = 960 },
+};
+
 static bool is_skl(struct sna *sna)
 {
 	return sna->kgem.gen == 0110;
@@ -322,6 +342,26 @@ static bool is_cfl(struct sna *sna)
 	return sna->kgem.gen == 0114;
 }
 
+static bool is_cnl(struct sna *sna)
+{
+	return sna->kgem.gen == 0115;
+}
+
+static bool is_icl(struct sna *sna)
+{
+	return sna->kgem.gen == 0116;
+}
+
+static bool is_ehl(struct sna *sna)
+{
+	return sna->kgem.gen == 0117;
+}
+
+static bool is_tgl(struct sna *sna)
+{
+	return sna->kgem.gen == 0120;
+}
+
 static inline bool too_large(int width, int height)
 {
 	return width > GEN9_MAX_SIZE || height > GEN9_MAX_SIZE;
@@ -4119,6 +4159,14 @@ static bool gen9_render_setup(struct sna *sna)
 		state->info = &glk_gt_info;
 	if (is_cfl(sna))
 		state->info = &cfl_gt_info;
+	if (is_cnl(sna))
+		state->info = &cnl_gt_info;
+	if (is_icl(sna))
+		state->info = &icl_gt_info;
+	if (is_ehl(sna))
+		state->info = &ehl_gt_info;
+	if (is_tgl(sna))
+		state->info = &tgl_gt_info;
 
 	sna_static_stream_init(&general);
 
diff --git a/test/dri3-test.c b/test/dri3-test.c
index 78e105a8b64a..4346aa9773af 100644
--- a/test/dri3-test.c
+++ b/test/dri3-test.c
@@ -76,7 +76,8 @@ static const struct pci_id_match ids[] = {
 	INTEL_I945GM_IDS(031),
 
 	INTEL_G33_IDS(033),
-	INTEL_PINEVIEW_IDS(033),
+	INTEL_PINEVIEW_G_IDS(033),
+	INTEL_PINEVIEW_M_IDS(033),
 
 	INTEL_I965G_IDS(040),
 	INTEL_I965GM_IDS(040),
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
