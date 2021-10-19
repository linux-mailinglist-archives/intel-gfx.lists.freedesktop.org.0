Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 096EE4339F8
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Oct 2021 17:14:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D26196E2F2;
	Tue, 19 Oct 2021 15:14:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E32B6E2F2
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Oct 2021 15:14:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10142"; a="215709306"
X-IronPort-AV: E=Sophos;i="5.87,164,1631602800"; d="scan'208";a="215709306"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 08:14:12 -0700
X-IronPort-AV: E=Sophos;i="5.87,164,1631602800"; d="scan'208";a="494143550"
Received: from unknown (HELO vandita-Z390-AORUS-ULTRA.iind.intel.com)
 ([10.190.238.8])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 08:14:09 -0700
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, imre.deak@intel.com, matthew.d.roper@intel.com,
 ville.syrjala@linux.intel.com,
 Vandita Kulkarni <vandita.kulkarni@intel.com>
Date: Tue, 19 Oct 2021 20:44:32 +0530
Message-Id: <20211019151435.20477-2-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211019151435.20477-1-vandita.kulkarni@intel.com>
References: <20211019151435.20477-1-vandita.kulkarni@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [V2 1/4] drm/i915/dsi/xelpd: Fix the bit mask for
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

v2: Fix the typo, move out the hardcoding from
    macro(Jani, Ville)

Fixes: f87c46c43175 ("drm/i915/dsi/xelpd: Add WA to program LP to HS wakeup guardband")
Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 3 ++-
 drivers/gpu/drm/i915/i915_reg.h        | 4 +++-
 2 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 168c84a74d30..63dd75c6448a 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1271,7 +1271,8 @@ static void adlp_set_lp_hs_wakeup_gb(struct intel_encoder *encoder)
 	if (DISPLAY_VER(i915) == 13) {
 		for_each_dsi_port(port, intel_dsi->ports)
 			intel_de_rmw(i915, TGL_DSI_CHKN_REG(port),
-				     TGL_DSI_CHKN_LSHS_GB, 0x4);
+				     TGL_DSI_CHKN_LSHS_GB_MASK,
+				     TGL_DSI_CHKN_LSHS_GB(4));
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index d9f7a729333f..749b043a3ee3 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -11715,7 +11715,9 @@ enum skl_power_gate {
 #define TGL_DSI_CHKN_REG(port)		_MMIO_PORT(port,	\
 						    _TGL_DSI_CHKN_REG_0, \
 						    _TGL_DSI_CHKN_REG_1)
-#define TGL_DSI_CHKN_LSHS_GB			REG_GENMASK(15, 12)
+#define TGL_DSI_CHKN_LSHS_GB_MASK		REG_GENMASK(15, 12)
+#define TGL_DSI_CHKN_LSHS_GB(byte_clocks)	REG_FIELD_PREP(TGL_DSI_CHKN_LSHS_GB_MASK, \
+							       (byte_clocks))
 
 /* Display Stream Splitter Control */
 #define DSS_CTL1				_MMIO(0x67400)
-- 
2.32.0

