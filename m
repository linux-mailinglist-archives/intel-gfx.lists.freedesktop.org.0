Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 540DC134594
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2020 16:03:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B01B26E89D;
	Wed,  8 Jan 2020 15:03:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70C766E89D
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2020 15:03:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jan 2020 07:03:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,410,1571727600"; d="scan'208";a="215975786"
Received: from vandita-desktop.iind.intel.com ([10.223.74.218])
 by orsmga008.jf.intel.com with ESMTP; 08 Jan 2020 07:03:18 -0800
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Jan 2020 19:59:58 +0530
Message-Id: <20200108143002.13695-6-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a
In-Reply-To: <20200108143002.13695-1-vandita.kulkarni@intel.com>
References: <20200108143002.13695-1-vandita.kulkarni@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [V5 5/9] drm/i915/dsi: Use private flags to indicate TE
 in cmd mode
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

On dsi cmd mode we do not receive vblanks instead
we would get TE and these flags indicate TE is expected on
which port.

Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 3ad8cedb5211..92faaedd6123 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1502,6 +1502,24 @@ static int gen11_dsi_compute_config(struct intel_encoder *encoder,
 	pipe_config->hw.adjusted_mode.private_flags &=
 					~I915_MODE_FLAG_DSI_PERIODIC_CMD_MODE;
 
+	/*
+	 * In case of TE GATE cmd mode, we
+	 * receive TE from the slave if
+	 * dual link is enabled
+	 */
+	if (is_cmd_mode(intel_dsi)) {
+		if (intel_dsi->ports == BIT(PORT_B) | BIT(PORT_A))
+			pipe_config->hw.adjusted_mode.private_flags |=
+						I915_MODE_FLAG_DSI_USE_TE1 |
+						I915_MODE_FLAG_DSI_USE_TE0;
+		else if (intel_dsi->ports == BIT(PORT_B))
+			pipe_config->hw.adjusted_mode.private_flags |=
+						I915_MODE_FLAG_DSI_USE_TE1;
+		else
+			pipe_config->hw.adjusted_mode.private_flags |=
+						I915_MODE_FLAG_DSI_USE_TE0;
+	}
+
 	return 0;
 }
 
-- 
2.21.0.5.gaeb582a

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
