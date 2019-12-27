Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A19912B3E0
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Dec 2019 11:29:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EF176E3D3;
	Fri, 27 Dec 2019 10:29:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1842B6E185
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Dec 2019 10:29:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Dec 2019 02:29:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,362,1571727600"; d="scan'208";a="419687721"
Received: from vandita-desktop.iind.intel.com ([10.223.74.218])
 by fmsmga006.fm.intel.com with ESMTP; 27 Dec 2019 02:29:14 -0800
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Dec 2019 15:26:24 +0530
Message-Id: <20191227095629.1796-4-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a
In-Reply-To: <20191227095629.1796-1-vandita.kulkarni@intel.com>
References: <20191227095629.1796-1-vandita.kulkarni@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [V4 3/8] drm/i915/dsi: Add cmd mode flags in display
 mode private flags
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

Adding TE flags and periodic command mode flags
as part of private flags to indicate what TE interrupts
we would be getting instead of vblanks in case of mipi dsi
command mode.

v2: Add TE flag description (Jani)

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 630a94892b7b..73711214efd2 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -656,6 +656,16 @@ struct intel_crtc_scaler_state {
 #define I915_MODE_FLAG_GET_SCANLINE_FROM_TIMESTAMP (1<<1)
 /* Flag to use the scanline counter instead of the pixel counter */
 #define I915_MODE_FLAG_USE_SCANLINE_COUNTER (1<<2)
+/*
+ * TE0 or TE1 flag is set if the crtc has a DSI encoder which
+ * is operating in command mode.
+ * Flag to use TE from DSI0 instead of VBI in command mode
+ */
+#define I915_MODE_FLAG_DSI_USE_TE0 (1<<3)
+/* Flag to use TE from DSI1 instead of VBI in command mode */
+#define I915_MODE_FLAG_DSI_USE_TE1 (1<<4)
+/* Flag to indicate mipi dsi periodic command mode where we do not get TE */
+#define I915_MODE_FLAG_DSI_PERIODIC_CMD_MODE (1<<5)
 
 struct intel_pipe_wm {
 	struct intel_wm_level wm[5];
-- 
2.21.0.5.gaeb582a

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
