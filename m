Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D84982820CE
	for <lists+intel-gfx@lfdr.de>; Sat,  3 Oct 2020 05:30:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 607196EA28;
	Sat,  3 Oct 2020 03:30:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E94A6EA27
 for <intel-gfx@lists.freedesktop.org>; Sat,  3 Oct 2020 03:30:01 +0000 (UTC)
IronPort-SDR: p+PAUR7+/NfeXMWt0E64DIKcRF5icHagP6fj+k0IDCDMX8GCTFpUVdp8mAFpbeNCrW7V5FHdpD
 i87PZvVvlLpw==
X-IronPort-AV: E=McAfee;i="6000,8403,9762"; a="163992691"
X-IronPort-AV: E=Sophos;i="5.77,330,1596524400"; d="scan'208";a="163992691"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2020 20:29:59 -0700
IronPort-SDR: cEHo5H4k5HGDzBsnmUCoq5qwg43Y5B3PfJvvRf+V/l/llB569AjWGZ7qXfLLpZ/q802dq2XBHO
 Uv89+80JRaYQ==
X-IronPort-AV: E=Sophos;i="5.77,330,1596524400"; d="scan'208";a="326022170"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2020 20:29:58 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Oct 2020 20:29:50 -0700
Message-Id: <20201003032951.2730073-2-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20201003032951.2730073-1-matthew.d.roper@intel.com>
References: <20201003032951.2730073-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Update gen12 forcewake table
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

The bspec's forcewake page was very stale and out of date for recent
platforms.  The hardware team finally provided us with an updated gen12
table (which applies to TGL, RKL, and DG1) and there are a lot of
changes.

Bspec: 66696
Cc: Caz Yokoyama <caz.yokoyama@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/intel_uncore.c | 66 +++++++++++++++++------------
 1 file changed, 40 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index 263ffcb832b7..e14dbc1c7e22 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -1124,44 +1124,58 @@ static const struct intel_forcewake_range __gen11_fw_ranges[] = {
 	GEN_FW_RANGE(0x1d4000, 0x1dbfff, 0)
 };
 
-/* *Must* be sorted by offset ranges! See intel_fw_table_check(). */
+/*
+ * *Must* be sorted by offset ranges! See intel_fw_table_check().
+ *
+ * Note that the spec lists several reserved/unused ranges that don't
+ * actually contain any registers.  In the table below we'll combine those
+ * reserved ranges with either the preceding or following range to keep the
+ * table small and lookups fast.
+ */
 static const struct intel_forcewake_range __gen12_fw_ranges[] = {
-	GEN_FW_RANGE(0x0, 0xaff, FORCEWAKE_BLITTER),
-	GEN_FW_RANGE(0xb00, 0x1fff, 0), /* uncore range */
+	GEN_FW_RANGE(0x0, 0x1fff, 0),
 	GEN_FW_RANGE(0x2000, 0x26ff, FORCEWAKE_RENDER),
-	GEN_FW_RANGE(0x2700, 0x2fff, FORCEWAKE_BLITTER),
+	GEN_FW_RANGE(0x2700, 0x27ff, FORCEWAKE_BLITTER),
+	GEN_FW_RANGE(0x2800, 0x2aff, FORCEWAKE_RENDER),
+	GEN_FW_RANGE(0x2b00, 0x2fff, FORCEWAKE_BLITTER),
 	GEN_FW_RANGE(0x3000, 0x3fff, FORCEWAKE_RENDER),
 	GEN_FW_RANGE(0x4000, 0x51ff, FORCEWAKE_BLITTER),
 	GEN_FW_RANGE(0x5200, 0x7fff, FORCEWAKE_RENDER),
 	GEN_FW_RANGE(0x8000, 0x813f, FORCEWAKE_BLITTER),
-	GEN_FW_RANGE(0x8140, 0x815f, FORCEWAKE_RENDER),
-	GEN_FW_RANGE(0x8160, 0x82ff, FORCEWAKE_BLITTER),
+	GEN_FW_RANGE(0x8140, 0x817f, FORCEWAKE_RENDER),
+	GEN_FW_RANGE(0x8180, 0x81ff, 0),
+	GEN_FW_RANGE(0x8200, 0x82ff, FORCEWAKE_BLITTER),
 	GEN_FW_RANGE(0x8300, 0x84ff, FORCEWAKE_RENDER),
-	GEN_FW_RANGE(0x8500, 0x8bff, FORCEWAKE_BLITTER),
-	GEN_FW_RANGE(0x8c00, 0x8cff, FORCEWAKE_RENDER),
-	GEN_FW_RANGE(0x8d00, 0x93ff, FORCEWAKE_BLITTER),
-	GEN_FW_RANGE(0x9400, 0x97ff, FORCEWAKE_ALL),
+	GEN_FW_RANGE(0x8500, 0x94cf, FORCEWAKE_BLITTER),
+	GEN_FW_RANGE(0x94d0, 0x955f, FORCEWAKE_RENDER),
+	GEN_FW_RANGE(0x9560, 0x97ff, 0),
 	GEN_FW_RANGE(0x9800, 0xafff, FORCEWAKE_BLITTER),
-	GEN_FW_RANGE(0xb000, 0xb47f, FORCEWAKE_RENDER),
-	GEN_FW_RANGE(0xb480, 0xdfff, FORCEWAKE_BLITTER),
-	GEN_FW_RANGE(0xe000, 0xe8ff, FORCEWAKE_RENDER),
-	GEN_FW_RANGE(0xe900, 0x147ff, FORCEWAKE_BLITTER),
-	GEN_FW_RANGE(0x14800, 0x148ff, FORCEWAKE_RENDER),
-	GEN_FW_RANGE(0x14900, 0x19fff, FORCEWAKE_BLITTER),
-	GEN_FW_RANGE(0x1a000, 0x1a7ff, FORCEWAKE_RENDER),
-	GEN_FW_RANGE(0x1a800, 0x1afff, FORCEWAKE_BLITTER),
-	GEN_FW_RANGE(0x1b000, 0x1bfff, FORCEWAKE_RENDER),
-	GEN_FW_RANGE(0x1c000, 0x243ff, FORCEWAKE_BLITTER),
-	GEN_FW_RANGE(0x24400, 0x247ff, FORCEWAKE_RENDER),
-	GEN_FW_RANGE(0x24800, 0x3ffff, FORCEWAKE_BLITTER),
+	GEN_FW_RANGE(0xb000, 0xb3ff, FORCEWAKE_RENDER),
+	GEN_FW_RANGE(0xb400, 0xcfff, FORCEWAKE_BLITTER),
+	GEN_FW_RANGE(0xd000, 0xd7ff, 0),
+	GEN_FW_RANGE(0xd800, 0xd8ff, FORCEWAKE_RENDER),
+	GEN_FW_RANGE(0xd900, 0xdbff, FORCEWAKE_BLITTER),
+	GEN_FW_RANGE(0xdc00, 0xefff, FORCEWAKE_RENDER),
+	GEN_FW_RANGE(0xf000, 0x147ff, FORCEWAKE_BLITTER),
+	GEN_FW_RANGE(0x14800, 0x1ffff, FORCEWAKE_RENDER),
+	GEN_FW_RANGE(0x20000, 0x20fff, FORCEWAKE_MEDIA_VDBOX0),
+	GEN_FW_RANGE(0x21000, 0x21fff, FORCEWAKE_MEDIA_VDBOX2),
+	GEN_FW_RANGE(0x22000, 0x23fff, FORCEWAKE_BLITTER),
+	GEN_FW_RANGE(0x24000, 0x2417f, 0),
+	GEN_FW_RANGE(0x24180, 0x249ff, FORCEWAKE_BLITTER),
+	GEN_FW_RANGE(0x24a00, 0x251ff, FORCEWAKE_RENDER),
+	GEN_FW_RANGE(0x25200, 0x255ff, FORCEWAKE_BLITTER),
+	GEN_FW_RANGE(0x25600, 0x2567f, FORCEWAKE_MEDIA_VDBOX0),
+	GEN_FW_RANGE(0x25680, 0x259ff, FORCEWAKE_MEDIA_VDBOX2),
+	GEN_FW_RANGE(0x25a00, 0x25a7f, FORCEWAKE_MEDIA_VDBOX0),
+	GEN_FW_RANGE(0x25a80, 0x2ffff, FORCEWAKE_MEDIA_VDBOX2),
+	GEN_FW_RANGE(0x30000, 0x3ffff, FORCEWAKE_BLITTER),
 	GEN_FW_RANGE(0x40000, 0x1bffff, 0),
 	GEN_FW_RANGE(0x1c0000, 0x1c3fff, FORCEWAKE_MEDIA_VDBOX0),
-	GEN_FW_RANGE(0x1c4000, 0x1c7fff, FORCEWAKE_MEDIA_VDBOX1),
+	GEN_FW_RANGE(0x1c4000, 0x1c7fff, 0),
 	GEN_FW_RANGE(0x1c8000, 0x1cbfff, FORCEWAKE_MEDIA_VEBOX0),
-	GEN_FW_RANGE(0x1cc000, 0x1cffff, FORCEWAKE_BLITTER),
+	GEN_FW_RANGE(0x1cc000, 0x1cffff, FORCEWAKE_MEDIA_VDBOX0),
 	GEN_FW_RANGE(0x1d0000, 0x1d3fff, FORCEWAKE_MEDIA_VDBOX2),
-	GEN_FW_RANGE(0x1d4000, 0x1d7fff, FORCEWAKE_MEDIA_VDBOX3),
-	GEN_FW_RANGE(0x1d8000, 0x1dbfff, FORCEWAKE_MEDIA_VEBOX1)
 };
 
 static void
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
