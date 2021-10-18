Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 819AA4310DE
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Oct 2021 08:51:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8B686E964;
	Mon, 18 Oct 2021 06:51:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE17D6E964
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Oct 2021 06:51:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10140"; a="208286117"
X-IronPort-AV: E=Sophos;i="5.85,381,1624345200"; d="scan'208";a="208286117"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2021 23:51:39 -0700
X-IronPort-AV: E=Sophos;i="5.85,381,1624345200"; d="scan'208";a="482603710"
Received: from unknown (HELO vandita-Z390-AORUS-ULTRA.iind.intel.com)
 ([10.190.238.8])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2021 23:51:37 -0700
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, imre.deak@intel.com, matthew.d.roper@intel.com,
 Vandita Kulkarni <vandita.kulkarni@intel.com>
Date: Mon, 18 Oct 2021 12:22:04 +0530
Message-Id: <20211018065207.30587-2-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211018065207.30587-1-vandita.kulkarni@intel.com>
References: <20211018065207.30587-1-vandita.kulkarni@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/4] drm/i915/dsi/xelpd: Fix the bit mask for
 wakeup GB
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Fixes: f87c46c43175 ("drm/i915/dsi/xelpd: Add WA to program LP to HS wakeup guardband")
Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 2 +-
 drivers/gpu/drm/i915/i915_reg.h        | 3 ++-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 9ee62707ec72..8c166f92f8bd 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1271,7 +1271,7 @@ static void adlp_set_lp_hs_wakeup_gb(struct intel_encoder *encoder)
 	if (DISPLAY_VER(i915) == 13) {
 		for_each_dsi_port(port, intel_dsi->ports)
 			intel_de_rmw(i915, TGL_DSI_CHKN_REG(port),
-				     TGL_DSI_CHKN_LSHS_GB, 0x4);
+				     TGL_DSI_CHKN_LSHS_GB_MASK, TGL_DSI_CHKN_LSHS_GB_MASK);
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index a897f4abea0c..e4b1f80ca5eb 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -11728,7 +11728,8 @@ enum skl_power_gate {
 #define TGL_DSI_CHKN_REG(port)		_MMIO_PORT(port,	\
 						    _TGL_DSI_CHKN_REG_0, \
 						    _TGL_DSI_CHKN_REG_1)
-#define TGL_DSI_CHKN_LSHS_GB			REG_GENMASK(15, 12)
+#define TGL_DSI_CHKN_LSHS_GB_MASK		REG_GENMASK(15, 12)
+#define TGL_DSI_CHKN_LSHS_GB			REG_FIELD_PREP(TGL_DSI_CHKN_LSHS_GB_MASK, 4)
 
 /* Display Stream Splitter Control */
 #define DSS_CTL1				_MMIO(0x67400)
-- 
2.32.0

