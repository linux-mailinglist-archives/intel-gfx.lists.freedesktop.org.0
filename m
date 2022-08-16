Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FCC1595F46
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Aug 2022 17:38:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 330B094C55;
	Tue, 16 Aug 2022 15:37:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95371113BF8
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Aug 2022 15:37:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660664255; x=1692200255;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VCExacxdWUP4V/BC+9n4OY0AEAUDKb6+gvdpP6SUTSs=;
 b=bpQEsAmDDYMV30UMq4jYjAEBRacR4qQQ6iz6rMFBggqNFm/eIPCsu+Aq
 wqr047qklij80+o/mqC8OrT/kGeFXOkd1kzqlevRYKDWd/lLGV9ip130s
 Nn9aCpnlll00N4IZYTIeSSSV5BFLrAC33lKWzTPbflOTrqLdngEpVbZv3
 WhD+TwLMkVJH+6HFhfTMW7jibYPVgJNAhIdhDuJhhJvtE25J3CYo2TX55
 yBPGn1LClhD6Mgb+mm2impuxS7GCwXzwx2qFEPDk/2J5U0yDF2tLoi73F
 Z+a9KxWlYpT5uz2G6EeRhaOEEqZEaNIboQVElgtm+Y+ACCn30c1iVzq86 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10441"; a="275308266"
X-IronPort-AV: E=Sophos;i="5.93,241,1654585200"; d="scan'208";a="275308266"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 08:37:34 -0700
X-IronPort-AV: E=Sophos;i="5.93,241,1654585200"; d="scan'208";a="635938151"
Received: from kinzelba-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.39.194])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 08:37:33 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 16 Aug 2022 18:37:21 +0300
Message-Id: <8c462718bcc7b36a83e09d0a5eef058b6bc8b1a2.1660664162.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1660664162.git.jani.nikula@intel.com>
References: <cover.1660664162.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RESEND 2/3] drm/i915/dsi: fix dual-link DSI backlight
 and CABC ports for display 11+
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
Cc: jani.nikula@intel.com, stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The VBT dual-link DSI backlight and CABC still use ports A and C, both
in Bspec and code, while display 11+ DSI only supports ports A and
B. Assume port C actually means port B for display 11+ when parsing VBT.

Bspec: 20154
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6476
Cc: stable@vger.kernel.org
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 51dde5bfd956..198a2f4920cc 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -1596,6 +1596,8 @@ static void parse_dsi_backlight_ports(struct drm_i915_private *i915,
 				      struct intel_panel *panel,
 				      enum port port)
 {
+	enum port port_bc = DISPLAY_VER(i915) >= 11 ? PORT_B : PORT_C;
+
 	if (!panel->vbt.dsi.config->dual_link || i915->vbt.version < 197) {
 		panel->vbt.dsi.bl_ports = BIT(port);
 		if (panel->vbt.dsi.config->cabc_supported)
@@ -1609,11 +1611,11 @@ static void parse_dsi_backlight_ports(struct drm_i915_private *i915,
 		panel->vbt.dsi.bl_ports = BIT(PORT_A);
 		break;
 	case DL_DCS_PORT_C:
-		panel->vbt.dsi.bl_ports = BIT(PORT_C);
+		panel->vbt.dsi.bl_ports = BIT(port_bc);
 		break;
 	default:
 	case DL_DCS_PORT_A_AND_C:
-		panel->vbt.dsi.bl_ports = BIT(PORT_A) | BIT(PORT_C);
+		panel->vbt.dsi.bl_ports = BIT(PORT_A) | BIT(port_bc);
 		break;
 	}
 
@@ -1625,12 +1627,12 @@ static void parse_dsi_backlight_ports(struct drm_i915_private *i915,
 		panel->vbt.dsi.cabc_ports = BIT(PORT_A);
 		break;
 	case DL_DCS_PORT_C:
-		panel->vbt.dsi.cabc_ports = BIT(PORT_C);
+		panel->vbt.dsi.cabc_ports = BIT(port_bc);
 		break;
 	default:
 	case DL_DCS_PORT_A_AND_C:
 		panel->vbt.dsi.cabc_ports =
-					BIT(PORT_A) | BIT(PORT_C);
+					BIT(PORT_A) | BIT(port_bc);
 		break;
 	}
 }
-- 
2.34.1

