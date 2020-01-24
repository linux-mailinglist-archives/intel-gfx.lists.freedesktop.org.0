Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 592AC148634
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 14:32:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 531A76E388;
	Fri, 24 Jan 2020 13:32:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 607756E388
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 13:32:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 05:32:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,357,1574150400"; d="scan'208";a="222621517"
Received: from vandita-desktop.iind.intel.com ([10.223.74.218])
 by fmsmga008.fm.intel.com with ESMTP; 24 Jan 2020 05:32:11 -0800
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jan 2020 18:28:29 +0530
Message-Id: <20200124125829.16973-1-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/vbt: Fix the timing parameters
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Fix htotal and vtotal parameters derived from
DTD block of VBT.

Fixes: 33ef6d4fd8df ("drm/i915/vbt: Handle generic DTD block")
Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 1e675aa55938..942a073d5768 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -366,14 +366,16 @@ parse_generic_dtd(struct drm_i915_private *dev_priv,
 		panel_fixed_mode->hdisplay + dtd->hfront_porch;
 	panel_fixed_mode->hsync_end =
 		panel_fixed_mode->hsync_start + dtd->hsync;
-	panel_fixed_mode->htotal = panel_fixed_mode->hsync_end;
+	panel_fixed_mode->htotal =
+		panel_fixed_mode->hdisplay + dtd->hblank;
 
 	panel_fixed_mode->vdisplay = dtd->vactive;
 	panel_fixed_mode->vsync_start =
 		panel_fixed_mode->vdisplay + dtd->vfront_porch;
 	panel_fixed_mode->vsync_end =
 		panel_fixed_mode->vsync_start + dtd->vsync;
-	panel_fixed_mode->vtotal = panel_fixed_mode->vsync_end;
+	panel_fixed_mode->vtotal =
+		panel_fixed_mode->vdisplay + dtd->vblank;
 
 	panel_fixed_mode->clock = dtd->pixel_clock;
 	panel_fixed_mode->width_mm = dtd->width_mm;
-- 
2.21.0.5.gaeb582a

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
