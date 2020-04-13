Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EECE21A6464
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2020 10:59:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8DE189AEE;
	Mon, 13 Apr 2020 08:59:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0506589AEE
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Apr 2020 08:59:12 +0000 (UTC)
IronPort-SDR: +3VXAVsoHeYX7dmM5d1tP8Om+T6U7O+8c0RCrLae0+r1Y+IOIjtij853s0W9rcEFoSUaOZ8yNQ
 kFHF0+mv06FA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2020 01:59:12 -0700
IronPort-SDR: AQ7waaCA6z2oaQtQ/5BzVwY9qgIIMEu68JLcPV96VdypuBg2Kx+LBdwupGmNtI4BleCnKa98EC
 yY3mdFzmmR4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,378,1580803200"; d="scan'208";a="256122230"
Received: from invictus.jf.intel.com ([10.165.21.212])
 by orsmga006.jf.intel.com with ESMTP; 13 Apr 2020 01:59:12 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Apr 2020 02:00:03 -0700
Message-Id: <20200413090003.13451-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/icl: Update forcewake firmware ranges
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

Some workarounds are not sticking across suspend resume cycles. The
forcewake ranges table has been updated and would reflect the hardware
appropriately.

Closes: https://gitlab.freedesktop.org/drm/intel/issues/1222

Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/intel_uncore.c | 55 +++++++++++++++++++++--------
 1 file changed, 41 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index fa86b7ab2d99..c0e21697a44c 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -1098,32 +1098,59 @@ static const struct intel_forcewake_range __gen11_fw_ranges[] = {
 	GEN_FW_RANGE(0x2700, 0x2fff, FORCEWAKE_BLITTER),
 	GEN_FW_RANGE(0x3000, 0x3fff, FORCEWAKE_RENDER),
 	GEN_FW_RANGE(0x4000, 0x51ff, FORCEWAKE_BLITTER),
-	GEN_FW_RANGE(0x5200, 0x7fff, FORCEWAKE_RENDER),
+	GEN_FW_RANGE(0x5200, 0x53ff, FORCEWAKE_RENDER),
+	GEN_FW_RANGE(0x5400, 0x54ff, FORCEWAKE_BLITTER),
+	GEN_FW_RANGE(0x5500, 0x7fff, FORCEWAKE_RENDER),
 	GEN_FW_RANGE(0x8000, 0x813f, FORCEWAKE_BLITTER),
 	GEN_FW_RANGE(0x8140, 0x815f, FORCEWAKE_RENDER),
 	GEN_FW_RANGE(0x8160, 0x82ff, FORCEWAKE_BLITTER),
 	GEN_FW_RANGE(0x8300, 0x84ff, FORCEWAKE_RENDER),
-	GEN_FW_RANGE(0x8500, 0x8bff, FORCEWAKE_BLITTER),
+	GEN_FW_RANGE(0x8500, 0x87ff, FORCEWAKE_BLITTER),
+	GEN_FW_RANGE(0x8800, 0x883f, 0),
+	GEN_FW_RANGE(0x8840, 0x8bff, FORCEWAKE_BLITTER),
 	GEN_FW_RANGE(0x8c00, 0x8cff, FORCEWAKE_RENDER),
-	GEN_FW_RANGE(0x8d00, 0x93ff, FORCEWAKE_BLITTER),
-	GEN_FW_RANGE(0x9400, 0x97ff, FORCEWAKE_ALL),
-	GEN_FW_RANGE(0x9800, 0xafff, FORCEWAKE_BLITTER),
+	GEN_FW_RANGE(0x8d00, 0x94cf, FORCEWAKE_BLITTER),
+	GEN_FW_RANGE(0x94d0, 0x955f, FORCEWAKE_RENDER),
+	GEN_FW_RANGE(0x9560, 0x95ff, 0),
+	GEN_FW_RANGE(0x9600, 0xafff, FORCEWAKE_BLITTER),
 	GEN_FW_RANGE(0xb000, 0xb47f, FORCEWAKE_RENDER),
 	GEN_FW_RANGE(0xb480, 0xdeff, FORCEWAKE_BLITTER),
 	GEN_FW_RANGE(0xdf00, 0xe8ff, FORCEWAKE_RENDER),
 	GEN_FW_RANGE(0xe900, 0x16dff, FORCEWAKE_BLITTER),
 	GEN_FW_RANGE(0x16e00, 0x19fff, FORCEWAKE_RENDER),
-	GEN_FW_RANGE(0x1a000, 0x243ff, FORCEWAKE_BLITTER),
-	GEN_FW_RANGE(0x24400, 0x247ff, FORCEWAKE_RENDER),
-	GEN_FW_RANGE(0x24800, 0x3ffff, FORCEWAKE_BLITTER),
+	GEN_FW_RANGE(0x1a000, 0x23fff, FORCEWAKE_BLITTER),
+	GEN_FW_RANGE(0x24000, 0x2407f, 0),
+	GEN_FW_RANGE(0x24080, 0x2417f, FORCEWAKE_BLITTER),
+	GEN_FW_RANGE(0x24180, 0x242ff, FORCEWAKE_RENDER),
+	GEN_FW_RANGE(0x24300, 0x243ff, FORCEWAKE_BLITTER),
+	GEN_FW_RANGE(0x24400, 0x245ff, FORCEWAKE_RENDER),
+	GEN_FW_RANGE(0x24600, 0x2467f, FORCEWAKE_BLITTER),
+	GEN_FW_RANGE(0x24680, 0x247ff, FORCEWAKE_RENDER),
+	GEN_FW_RANGE(0x24800, 0x249ff, FORCEWAKE_BLITTER),
+	GEN_FW_RANGE(0x24a00, 0x24a7f, FORCEWAKE_RENDER),
+	GEN_FW_RANGE(0x24a80, 0x24dff, FORCEWAKE_BLITTER),
+	GEN_FW_RANGE(0x24e00, 0x24fff, FORCEWAKE_RENDER),
+	GEN_FW_RANGE(0x25000, 0x3ffff, FORCEWAKE_BLITTER),
 	GEN_FW_RANGE(0x40000, 0x1bffff, 0),
-	GEN_FW_RANGE(0x1c0000, 0x1c3fff, FORCEWAKE_MEDIA_VDBOX0),
-	GEN_FW_RANGE(0x1c4000, 0x1c7fff, FORCEWAKE_MEDIA_VDBOX1),
-	GEN_FW_RANGE(0x1c8000, 0x1cbfff, FORCEWAKE_MEDIA_VEBOX0),
+	GEN_FW_RANGE(0x1c0000, 0x1c2bff, FORCEWAKE_MEDIA_VDBOX0),
+	GEN_FW_RANGE(0x1c2c00, 0x1c3eff, FORCEWAKE_BLITTER),
+	GEN_FW_RANGE(0x1c3f00, 0x1c3fff, FORCEWAKE_MEDIA_VDBOX0),
+	GEN_FW_RANGE(0x1c4000, 0x1c6bff, FORCEWAKE_MEDIA_VDBOX1),
+	GEN_FW_RANGE(0x1c6c00, 0x1c7eff, FORCEWAKE_BLITTER),
+	GEN_FW_RANGE(0x1c7f00, 0x1c7fff, FORCEWAKE_MEDIA_VDBOX1),
+	GEN_FW_RANGE(0x1c8000, 0x1ca0ff, FORCEWAKE_MEDIA_VEBOX0),
+	GEN_FW_RANGE(0x1ca100, 0x1cbeff, FORCEWAKE_BLITTER),
+	GEN_FW_RANGE(0x1cbf00, 0x1cbfff, FORCEWAKE_MEDIA_VEBOX0),
 	GEN_FW_RANGE(0x1cc000, 0x1cffff, FORCEWAKE_BLITTER),
-	GEN_FW_RANGE(0x1d0000, 0x1d3fff, FORCEWAKE_MEDIA_VDBOX2),
-	GEN_FW_RANGE(0x1d4000, 0x1d7fff, FORCEWAKE_MEDIA_VDBOX3),
-	GEN_FW_RANGE(0x1d8000, 0x1dbfff, FORCEWAKE_MEDIA_VEBOX1)
+	GEN_FW_RANGE(0x1d0000, 0x1d2bff, FORCEWAKE_MEDIA_VDBOX2),
+	GEN_FW_RANGE(0x1d2c00, 0x1d3eff, FORCEWAKE_BLITTER),
+	GEN_FW_RANGE(0x1d3f00, 0x1d3fff, FORCEWAKE_MEDIA_VDBOX2),
+	GEN_FW_RANGE(0x1d4000, 0x1d6bff, FORCEWAKE_MEDIA_VDBOX3),
+	GEN_FW_RANGE(0x1d6c00, 0x1d7eff, FORCEWAKE_BLITTER),
+	GEN_FW_RANGE(0x1d7f00, 0x1d7fff, FORCEWAKE_MEDIA_VDBOX3),
+	GEN_FW_RANGE(0x1d8000, 0x1da0ff, FORCEWAKE_MEDIA_VEBOX1),
+	GEN_FW_RANGE(0x1da100, 0x1dbeff, FORCEWAKE_BLITTER),
+	GEN_FW_RANGE(0x1dbf00, 0x1dbfff, FORCEWAKE_MEDIA_VEBOX1)
 };
 
 /* *Must* be sorted by offset ranges! See intel_fw_table_check(). */
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
