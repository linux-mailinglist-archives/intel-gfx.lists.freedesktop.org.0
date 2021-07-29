Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 818663DA98A
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jul 2021 19:00:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5C8D6EDF4;
	Thu, 29 Jul 2021 17:00:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DF8C6EDF4
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Jul 2021 17:00:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10060"; a="212966792"
X-IronPort-AV: E=Sophos;i="5.84,279,1620716400"; d="scan'208";a="212966792"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2021 10:00:20 -0700
X-IronPort-AV: E=Sophos;i="5.84,279,1620716400"; d="scan'208";a="417712118"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2021 10:00:20 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Jul 2021 09:59:53 -0700
Message-Id: <20210729170008.2836648-4-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210729170008.2836648-1-matthew.d.roper@intel.com>
References: <20210729170008.2836648-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 03/18] drm/i915/dg2: Add forcewake table
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

The DG2 forcewake table is very similar to the one used by XeHP SDV (and
both platforms are even presented as a single table in the bspec).  For
the most part DG2 starts using a few additional ranges that were
'reserved' on XeHP SDV and stops using some others.  However there is a
single range (0xd800-0xd87f) that needs to be handled differently
between the two platforms (it needs GT wake on XeHP SDV, but render wake
on DG2) so unless we want to wake both domains (which could waste power)
or define new types of forcewake domains for this special case we need
to have separate tables for the two platforms.  Let's define the ranges
for both platforms with a parameterized macro so that we don't actually
need to duplicate everything in the code.

It should be fine for DG2 to re-use the Xe_HP shadow register list so we
can continue to use the 'xehpsdv' MMIO write functions and don't need to
spin up a separate DG2 instance.

Bspec: 66534
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/intel_uncore.c | 305 +++++++++++++++-------------
 1 file changed, 168 insertions(+), 137 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index 8cf53f54559d..6b38bc2811c1 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -1317,143 +1317,170 @@ static const struct intel_forcewake_range __gen12_fw_ranges[] = {
 		0x1d3f00 - 0x1d3fff: VD2 */
 };
 
-/* *Must* be sorted by offset ranges! See intel_fw_table_check(). */
-static const struct intel_forcewake_range __xehp_fw_ranges[] = {
-	GEN_FW_RANGE(0x0, 0x1fff, 0), /*
-		  0x0 -  0xaff: reserved
-		0xb00 - 0x1fff: always on */
-	GEN_FW_RANGE(0x2000, 0x26ff, FORCEWAKE_RENDER),
-	GEN_FW_RANGE(0x2700, 0x4aff, FORCEWAKE_GT),
-	GEN_FW_RANGE(0x4b00, 0x51ff, 0), /*
-		0x4b00 - 0x4fff: reserved
-		0x5000 - 0x51ff: always on */
-	GEN_FW_RANGE(0x5200, 0x7fff, FORCEWAKE_RENDER),
-	GEN_FW_RANGE(0x8000, 0x813f, FORCEWAKE_GT),
-	GEN_FW_RANGE(0x8140, 0x815f, FORCEWAKE_RENDER),
-	GEN_FW_RANGE(0x8160, 0x81ff, 0), /*
-		0x8160 - 0x817f: reserved
-		0x8180 - 0x81ff: always on */
-	GEN_FW_RANGE(0x8200, 0x82ff, FORCEWAKE_GT),
-	GEN_FW_RANGE(0x8300, 0x84ff, FORCEWAKE_RENDER),
-	GEN_FW_RANGE(0x8500, 0x94cf, FORCEWAKE_GT), /*
-		0x8500 - 0x87ff: gt
-		0x8800 - 0x8fff: reserved
-		0x9000 - 0x947f: gt
-		0x9480 - 0x94cf: reserved */
-	GEN_FW_RANGE(0x94d0, 0x955f, FORCEWAKE_RENDER),
-	GEN_FW_RANGE(0x9560, 0x97ff, 0), /*
-		0x9560 - 0x95ff: always on
-		0x9600 - 0x97ff: reserved */
-	GEN_FW_RANGE(0x9800, 0xcfff, FORCEWAKE_GT), /*
-		0x9800 - 0xb4ff: gt
-		0xb500 - 0xbfff: reserved
-		0xc000 - 0xcfff: gt */
-	GEN_FW_RANGE(0xd000, 0xd7ff, 0),
-	GEN_FW_RANGE(0xd800, 0xdbff, FORCEWAKE_GT),
-	GEN_FW_RANGE(0xdc00, 0xdcff, FORCEWAKE_RENDER),
-	GEN_FW_RANGE(0xdd00, 0xde7f, FORCEWAKE_GT), /*
-		0xdd00 - 0xddff: gt
-		0xde00 - 0xde7f: reserved */
-	GEN_FW_RANGE(0xde80, 0xe8ff, FORCEWAKE_RENDER), /*
-		0xde80 - 0xdfff: render
-		0xe000 - 0xe0ff: reserved
-		0xe100 - 0xe8ff: render */
-	GEN_FW_RANGE(0xe900, 0xffff, FORCEWAKE_GT), /*
-		0xe900 - 0xe9ff: gt
-		0xea00 - 0xefff: reserved
-		0xf000 - 0xffff: gt */
-	GEN_FW_RANGE(0x10000, 0x13fff, 0), /*
-		0x10000 - 0x11fff: reserved
-		0x12000 - 0x127ff: always on
-		0x12800 - 0x13fff: reserved */
-	GEN_FW_RANGE(0x14000, 0x141ff, FORCEWAKE_MEDIA_VDBOX0),
-	GEN_FW_RANGE(0x14200, 0x143ff, FORCEWAKE_MEDIA_VDBOX2),
-	GEN_FW_RANGE(0x14400, 0x145ff, FORCEWAKE_MEDIA_VDBOX4),
-	GEN_FW_RANGE(0x14600, 0x147ff, FORCEWAKE_MEDIA_VDBOX6),
-	GEN_FW_RANGE(0x14800, 0x1ffff, FORCEWAKE_RENDER), /*
-		0x14800 - 0x14fff: render
-		0x15000 - 0x16dff: reserved
-		0x16e00 - 0x1ffff: render */
-	GEN_FW_RANGE(0x20000, 0x21fff, FORCEWAKE_MEDIA_VDBOX0), /*
-		0x20000 - 0x20fff: VD0
-		0x21000 - 0x21fff: reserved */
-	GEN_FW_RANGE(0x22000, 0x23fff, FORCEWAKE_GT),
-	GEN_FW_RANGE(0x24000, 0x2417f, 0), /*
-		0x24000 - 0x2407f: always on
-		0x24080 - 0x2417f: reserved */
-	GEN_FW_RANGE(0x24180, 0x249ff, FORCEWAKE_GT), /*
-		0x24180 - 0x241ff: gt
-		0x24200 - 0x249ff: reserved */
-	GEN_FW_RANGE(0x24a00, 0x251ff, FORCEWAKE_RENDER), /*
-		0x24a00 - 0x24a7f: render
-		0x24a80 - 0x251ff: reserved */
-	GEN_FW_RANGE(0x25200, 0x25fff, FORCEWAKE_GT), /*
-		0x25200 - 0x252ff: gt
-		0x25300 - 0x25fff: reserved */
-	GEN_FW_RANGE(0x26000, 0x2ffff, FORCEWAKE_RENDER), /*
-		0x26000 - 0x27fff: render
-		0x28000 - 0x29fff: reserved
-		0x2a000 - 0x2ffff: undocumented */
-	GEN_FW_RANGE(0x30000, 0x3ffff, FORCEWAKE_GT),
-	GEN_FW_RANGE(0x40000, 0x1bffff, 0),
-	GEN_FW_RANGE(0x1c0000, 0x1c3fff, FORCEWAKE_MEDIA_VDBOX0), /*
-		0x1c0000 - 0x1c2bff: VD0
-		0x1c2c00 - 0x1c2cff: reserved
-		0x1c2d00 - 0x1c2dff: VD0
-		0x1c2e00 - 0x1c3eff: reserved
-		0x1c3f00 - 0x1c3fff: VD0 */
-	GEN_FW_RANGE(0x1c4000, 0x1c7fff, FORCEWAKE_MEDIA_VDBOX1), /*
-		0x1c4000 - 0x1c6bff: VD1
-		0x1c6c00 - 0x1c6cff: reserved
-		0x1c6d00 - 0x1c6dff: VD1
-		0x1c6e00 - 0x1c7fff: reserved */
-	GEN_FW_RANGE(0x1c8000, 0x1cbfff, FORCEWAKE_MEDIA_VEBOX0), /*
-		0x1c8000 - 0x1ca0ff: VE0
-		0x1ca100 - 0x1cbfff: reserved */
-	GEN_FW_RANGE(0x1cc000, 0x1ccfff, FORCEWAKE_MEDIA_VDBOX0),
-	GEN_FW_RANGE(0x1cd000, 0x1cdfff, FORCEWAKE_MEDIA_VDBOX2),
-	GEN_FW_RANGE(0x1ce000, 0x1cefff, FORCEWAKE_MEDIA_VDBOX4),
-	GEN_FW_RANGE(0x1cf000, 0x1cffff, FORCEWAKE_MEDIA_VDBOX6),
-	GEN_FW_RANGE(0x1d0000, 0x1d3fff, FORCEWAKE_MEDIA_VDBOX2), /*
-		0x1d0000 - 0x1d2bff: VD2
-		0x1d2c00 - 0x1d2cff: reserved
-		0x1d2d00 - 0x1d2dff: VD2
-		0x1d2e00 - 0x1d3eff: reserved
-		0x1d3f00 - 0x1d3fff: VD2 */
-	GEN_FW_RANGE(0x1d4000, 0x1d7fff, FORCEWAKE_MEDIA_VDBOX3), /*
-		0x1d4000 - 0x1d6bff: VD3
-		0x1d6c00 - 0x1d6cff: reserved
-		0x1d6d00 - 0x1d6dff: VD3
-		0x1d6e00 - 0x1d7fff: reserved */
-	GEN_FW_RANGE(0x1d8000, 0x1dffff, FORCEWAKE_MEDIA_VEBOX1), /*
-		0x1d8000 - 0x1da0ff: VE1
-		0x1da100 - 0x1dffff: reserved */
-	GEN_FW_RANGE(0x1e0000, 0x1e3fff, FORCEWAKE_MEDIA_VDBOX4), /*
-		0x1e0000 - 0x1e2bff: VD4
-		0x1e2c00 - 0x1e2cff: reserved
-		0x1e2d00 - 0x1e2dff: VD4
-		0x1e2e00 - 0x1e3eff: reserved
-		0x1e3f00 - 0x1e3fff: VD4 */
-	GEN_FW_RANGE(0x1e4000, 0x1e7fff, FORCEWAKE_MEDIA_VDBOX5), /*
-		0x1e4000 - 0x1e6bff: VD5
-		0x1e6c00 - 0x1e6cff: reserved
-		0x1e6d00 - 0x1e6dff: VD5
-		0x1e6e00 - 0x1e7fff: reserved */
-	GEN_FW_RANGE(0x1e8000, 0x1effff, FORCEWAKE_MEDIA_VEBOX2), /*
-		0x1e8000 - 0x1ea0ff: VE2
-		0x1ea100 - 0x1effff: reserved */
-	GEN_FW_RANGE(0x1f0000, 0x1f3fff, FORCEWAKE_MEDIA_VDBOX6), /*
-		0x1f0000 - 0x1f2bff: VD6
-		0x1f2c00 - 0x1f2cff: reserved
-		0x1f2d00 - 0x1f2dff: VD6
-		0x1f2e00 - 0x1f3eff: reserved
-		0x1f3f00 - 0x1f3fff: VD6 */
-	GEN_FW_RANGE(0x1f4000, 0x1f7fff, FORCEWAKE_MEDIA_VDBOX7), /*
-		0x1f4000 - 0x1f6bff: VD7
-		0x1f6c00 - 0x1f6cff: reserved
-		0x1f6d00 - 0x1f6dff: VD7
-		0x1f6e00 - 0x1f7fff: reserved */
+/*
+ * Graphics IP version 12.55 brings a slight change to the 0xd800 range,
+ * switching it from the GT domain to the render domain.
+ *
+ * *Must* be sorted by offset ranges! See intel_fw_table_check().
+ */
+#define XEHP_FWRANGES(FW_RANGE_D800)					\
+	GEN_FW_RANGE(0x0, 0x1fff, 0), /*					\
+		  0x0 -  0xaff: reserved					\
+		0xb00 - 0x1fff: always on */					\
+	GEN_FW_RANGE(0x2000, 0x26ff, FORCEWAKE_RENDER),				\
+	GEN_FW_RANGE(0x2700, 0x4aff, FORCEWAKE_GT),				\
+	GEN_FW_RANGE(0x4b00, 0x51ff, 0), /*					\
+		0x4b00 - 0x4fff: reserved					\
+		0x5000 - 0x51ff: always on */					\
+	GEN_FW_RANGE(0x5200, 0x7fff, FORCEWAKE_RENDER),				\
+	GEN_FW_RANGE(0x8000, 0x813f, FORCEWAKE_GT),				\
+	GEN_FW_RANGE(0x8140, 0x815f, FORCEWAKE_RENDER),				\
+	GEN_FW_RANGE(0x8160, 0x81ff, 0), /*					\
+		0x8160 - 0x817f: reserved					\
+		0x8180 - 0x81ff: always on */					\
+	GEN_FW_RANGE(0x8200, 0x82ff, FORCEWAKE_GT),				\
+	GEN_FW_RANGE(0x8300, 0x84ff, FORCEWAKE_RENDER),				\
+	GEN_FW_RANGE(0x8500, 0x8cff, FORCEWAKE_GT), /*				\
+		0x8500 - 0x87ff: gt						\
+		0x8800 - 0x8c7f: reserved					\
+		0x8c80 - 0x8cff: gt (DG2 only) */				\
+	GEN_FW_RANGE(0x8d00, 0x8fff, FORCEWAKE_RENDER), /*			\
+		0x8d00 - 0x8dff: render (DG2 only)				\
+		0x8e00 - 0x8fff: reserved */					\
+	GEN_FW_RANGE(0x9000, 0x94cf, FORCEWAKE_GT), /*				\
+		0x9000 - 0x947f: gt						\
+		0x9480 - 0x94cf: reserved */					\
+	GEN_FW_RANGE(0x94d0, 0x955f, FORCEWAKE_RENDER),				\
+	GEN_FW_RANGE(0x9560, 0x967f, 0), /*					\
+		0x9560 - 0x95ff: always on					\
+		0x9600 - 0x967f: reserved */					\
+	GEN_FW_RANGE(0x9680, 0x97ff, FORCEWAKE_RENDER), /*			\
+		0x9680 - 0x96ff: render (DG2 only)				\
+		0x9700 - 0x97ff: reserved */					\
+	GEN_FW_RANGE(0x9800, 0xcfff, FORCEWAKE_GT), /*				\
+		0x9800 - 0xb4ff: gt						\
+		0xb500 - 0xbfff: reserved					\
+		0xc000 - 0xcfff: gt */						\
+	GEN_FW_RANGE(0xd000, 0xd7ff, 0),					\
+	GEN_FW_RANGE(0xd800, 0xd87f, FW_RANGE_D800),			\
+	GEN_FW_RANGE(0xd880, 0xdbff, FORCEWAKE_GT),				\
+	GEN_FW_RANGE(0xdc00, 0xdcff, FORCEWAKE_RENDER),				\
+	GEN_FW_RANGE(0xdd00, 0xde7f, FORCEWAKE_GT), /*				\
+		0xdd00 - 0xddff: gt						\
+		0xde00 - 0xde7f: reserved */					\
+	GEN_FW_RANGE(0xde80, 0xe8ff, FORCEWAKE_RENDER), /*			\
+		0xde80 - 0xdfff: render						\
+		0xe000 - 0xe0ff: reserved					\
+		0xe100 - 0xe8ff: render */					\
+	GEN_FW_RANGE(0xe900, 0xffff, FORCEWAKE_GT), /*				\
+		0xe900 - 0xe9ff: gt						\
+		0xea00 - 0xefff: reserved					\
+		0xf000 - 0xffff: gt */						\
+	GEN_FW_RANGE(0x10000, 0x12fff, 0), /*					\
+		0x10000 - 0x11fff: reserved					\
+		0x12000 - 0x127ff: always on					\
+		0x12800 - 0x12fff: reserved */					\
+	GEN_FW_RANGE(0x13000, 0x131ff, FORCEWAKE_MEDIA_VDBOX0), /* DG2 only */	\
+	GEN_FW_RANGE(0x13200, 0x13fff, FORCEWAKE_MEDIA_VDBOX2), /*		\
+		0x13200 - 0x133ff: VD2 (DG2 only)				\
+		0x13400 - 0x13fff: reserved */					\
+	GEN_FW_RANGE(0x14000, 0x141ff, FORCEWAKE_MEDIA_VDBOX0), /* XEHPSDV only */	\
+	GEN_FW_RANGE(0x14200, 0x143ff, FORCEWAKE_MEDIA_VDBOX2), /* XEHPSDV only */	\
+	GEN_FW_RANGE(0x14400, 0x145ff, FORCEWAKE_MEDIA_VDBOX4), /* XEHPSDV only */	\
+	GEN_FW_RANGE(0x14600, 0x147ff, FORCEWAKE_MEDIA_VDBOX6), /* XEHPSDV only */	\
+	GEN_FW_RANGE(0x14800, 0x14fff, FORCEWAKE_RENDER),			\
+	GEN_FW_RANGE(0x15000, 0x16dff, FORCEWAKE_GT), /*			\
+		0x15000 - 0x15fff: gt (DG2 only)				\
+		0x16000 - 0x16dff: reserved */					\
+	GEN_FW_RANGE(0x16e00, 0x1ffff, FORCEWAKE_RENDER),			\
+	GEN_FW_RANGE(0x20000, 0x21fff, FORCEWAKE_MEDIA_VDBOX0), /*		\
+		0x20000 - 0x20fff: VD0 (XEHPSDV only)				\
+		0x21000 - 0x21fff: reserved */					\
+	GEN_FW_RANGE(0x22000, 0x23fff, FORCEWAKE_GT),				\
+	GEN_FW_RANGE(0x24000, 0x2417f, 0), /*					\
+		0x24000 - 0x2407f: always on					\
+		0x24080 - 0x2417f: reserved */					\
+	GEN_FW_RANGE(0x24180, 0x249ff, FORCEWAKE_GT), /*			\
+		0x24180 - 0x241ff: gt						\
+		0x24200 - 0x249ff: reserved */					\
+	GEN_FW_RANGE(0x24a00, 0x251ff, FORCEWAKE_RENDER), /*			\
+		0x24a00 - 0x24a7f: render					\
+		0x24a80 - 0x251ff: reserved */					\
+	GEN_FW_RANGE(0x25200, 0x25fff, FORCEWAKE_GT), /*			\
+		0x25200 - 0x252ff: gt						\
+		0x25300 - 0x25fff: reserved */					\
+	GEN_FW_RANGE(0x26000, 0x2ffff, FORCEWAKE_RENDER), /*			\
+		0x26000 - 0x27fff: render					\
+		0x28000 - 0x29fff: reserved					\
+		0x2a000 - 0x2ffff: undocumented */				\
+	GEN_FW_RANGE(0x30000, 0x3ffff, FORCEWAKE_GT),				\
+	GEN_FW_RANGE(0x40000, 0x1bffff, 0),					\
+	GEN_FW_RANGE(0x1c0000, 0x1c3fff, FORCEWAKE_MEDIA_VDBOX0), /*		\
+		0x1c0000 - 0x1c2bff: VD0					\
+		0x1c2c00 - 0x1c2cff: reserved					\
+		0x1c2d00 - 0x1c2dff: VD0					\
+		0x1c2e00 - 0x1c3eff: VD0 (DG2 only)				\
+		0x1c3f00 - 0x1c3fff: VD0 */					\
+	GEN_FW_RANGE(0x1c4000, 0x1c7fff, FORCEWAKE_MEDIA_VDBOX1), /*		\
+		0x1c4000 - 0x1c6bff: VD1					\
+		0x1c6c00 - 0x1c6cff: reserved					\
+		0x1c6d00 - 0x1c6dff: VD1					\
+		0x1c6e00 - 0x1c7fff: reserved */				\
+	GEN_FW_RANGE(0x1c8000, 0x1cbfff, FORCEWAKE_MEDIA_VEBOX0), /*		\
+		0x1c8000 - 0x1ca0ff: VE0					\
+		0x1ca100 - 0x1cbfff: reserved */				\
+	GEN_FW_RANGE(0x1cc000, 0x1ccfff, FORCEWAKE_MEDIA_VDBOX0),		\
+	GEN_FW_RANGE(0x1cd000, 0x1cdfff, FORCEWAKE_MEDIA_VDBOX2),		\
+	GEN_FW_RANGE(0x1ce000, 0x1cefff, FORCEWAKE_MEDIA_VDBOX4),		\
+	GEN_FW_RANGE(0x1cf000, 0x1cffff, FORCEWAKE_MEDIA_VDBOX6),		\
+	GEN_FW_RANGE(0x1d0000, 0x1d3fff, FORCEWAKE_MEDIA_VDBOX2), /*		\
+		0x1d0000 - 0x1d2bff: VD2					\
+		0x1d2c00 - 0x1d2cff: reserved					\
+		0x1d2d00 - 0x1d2dff: VD2					\
+		0x1d2e00 - 0x1d3dff: VD2 (DG2 only)				\
+		0x1d3e00 - 0x1d3eff: reserved					\
+		0x1d3f00 - 0x1d3fff: VD2 */					\
+	GEN_FW_RANGE(0x1d4000, 0x1d7fff, FORCEWAKE_MEDIA_VDBOX3), /*		\
+		0x1d4000 - 0x1d6bff: VD3					\
+		0x1d6c00 - 0x1d6cff: reserved					\
+		0x1d6d00 - 0x1d6dff: VD3					\
+		0x1d6e00 - 0x1d7fff: reserved */				\
+	GEN_FW_RANGE(0x1d8000, 0x1dffff, FORCEWAKE_MEDIA_VEBOX1), /*		\
+		0x1d8000 - 0x1da0ff: VE1					\
+		0x1da100 - 0x1dffff: reserved */				\
+	GEN_FW_RANGE(0x1e0000, 0x1e3fff, FORCEWAKE_MEDIA_VDBOX4), /*		\
+		0x1e0000 - 0x1e2bff: VD4					\
+		0x1e2c00 - 0x1e2cff: reserved					\
+		0x1e2d00 - 0x1e2dff: VD4					\
+		0x1e2e00 - 0x1e3eff: reserved					\
+		0x1e3f00 - 0x1e3fff: VD4 */					\
+	GEN_FW_RANGE(0x1e4000, 0x1e7fff, FORCEWAKE_MEDIA_VDBOX5), /*		\
+		0x1e4000 - 0x1e6bff: VD5					\
+		0x1e6c00 - 0x1e6cff: reserved					\
+		0x1e6d00 - 0x1e6dff: VD5					\
+		0x1e6e00 - 0x1e7fff: reserved */				\
+	GEN_FW_RANGE(0x1e8000, 0x1effff, FORCEWAKE_MEDIA_VEBOX2), /*		\
+		0x1e8000 - 0x1ea0ff: VE2					\
+		0x1ea100 - 0x1effff: reserved */				\
+	GEN_FW_RANGE(0x1f0000, 0x1f3fff, FORCEWAKE_MEDIA_VDBOX6), /*		\
+		0x1f0000 - 0x1f2bff: VD6					\
+		0x1f2c00 - 0x1f2cff: reserved					\
+		0x1f2d00 - 0x1f2dff: VD6					\
+		0x1f2e00 - 0x1f3eff: reserved					\
+		0x1f3f00 - 0x1f3fff: VD6 */					\
+	GEN_FW_RANGE(0x1f4000, 0x1f7fff, FORCEWAKE_MEDIA_VDBOX7), /*		\
+		0x1f4000 - 0x1f6bff: VD7					\
+		0x1f6c00 - 0x1f6cff: reserved					\
+		0x1f6d00 - 0x1f6dff: VD7					\
+		0x1f6e00 - 0x1f7fff: reserved */				\
 	GEN_FW_RANGE(0x1f8000, 0x1fa0ff, FORCEWAKE_MEDIA_VEBOX3),
+
+static const struct intel_forcewake_range __xehp_fw_ranges[] = {
+	XEHP_FWRANGES(FORCEWAKE_GT)
+};
+
+static const struct intel_forcewake_range __dg2_fw_ranges[] = {
+	XEHP_FWRANGES(FORCEWAKE_RENDER)
 };
 
 static void
@@ -2084,7 +2111,11 @@ static int uncore_forcewake_init(struct intel_uncore *uncore)
 		return ret;
 	forcewake_early_sanitize(uncore, 0);
 
-	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50)) {
+	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 55)) {
+		ASSIGN_FW_DOMAINS_TABLE(uncore, __dg2_fw_ranges);
+		ASSIGN_WRITE_MMIO_VFUNCS(uncore, xehp_fwtable);
+		ASSIGN_READ_MMIO_VFUNCS(uncore, gen11_fwtable);
+	} else if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50)) {
 		ASSIGN_FW_DOMAINS_TABLE(uncore, __xehp_fw_ranges);
 		ASSIGN_WRITE_MMIO_VFUNCS(uncore, xehp_fwtable);
 		ASSIGN_READ_MMIO_VFUNCS(uncore, gen11_fwtable);
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
