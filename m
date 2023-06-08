Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 142CF728977
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 22:31:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4A7A10E613;
	Thu,  8 Jun 2023 20:31:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31ABC10E087
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jun 2023 20:31:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686256264; x=1717792264;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zoVWBkzUhnK4q0Or3rNGy1fttawR/sZqsRcG3fDKeZg=;
 b=iZP8SQ1E7HRPlDvvSmf+tKp2jfbh9D887Qt5AuhMewEIL/k3Q+8cKC/z
 GsON/J2SWJcDdt2kFuH+W2CZ+Eahc/UTB5Hl6hw3u3NUd4QvIIxB4a7LO
 yVwwb9+HweDIudfHVEqxUD99uxoXPo+XrHdm7T4gqqWEt/aZBhkR7Lhqo
 vEXWhz5xzn68FH03dQ0Bmd+BRH66gKMTKluc12e28ephlbcHhWWPxCW+N
 TiilIBM21GbosA3p9urg/DIEopYOzRAp8Dqgu28BCLFGNacp2kSasM13U
 8dk0wdrCaoVVcFT4ada631BB9Qjw07c/MgjS8BbhV4kY3uoDNeRisYaqM w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="421012621"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="421012621"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 13:31:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="710100622"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="710100622"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 08 Jun 2023 13:31:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 08 Jun 2023 23:31:00 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Jun 2023 23:30:45 +0300
Message-Id: <20230608203057.23759-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230608203057.23759-1-ville.syrjala@linux.intel.com>
References: <20230608203057.23759-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 01/13] drm/i915/dsi: Do panel power on +
 reset deassert earlier on icl+
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Looks like we're trying to talk to the DSI panel even before turning
it on, on icl+. Bspec doesn't actually specify when these should be
done, but certainly we need to turn the panel on at least before
talking to it. So let's move the power on + reset deassert steps to
be the first thing we do. This is also what Windows does.

v2: s/intel_dsi_msleep/msleep/

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index c133928a0655..d55725a71ba8 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1138,10 +1138,6 @@ static void gen11_dsi_powerup_panel(struct intel_encoder *encoder)
 				"error setting max return pkt size%d\n", tmp);
 	}
 
-	/* panel power on related mipi dsi vbt sequences */
-	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_POWER_ON);
-	msleep(intel_dsi->panel_on_delay);
-	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_DEASSERT_RESET);
 	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_INIT_OTP);
 	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_DISPLAY_ON);
 
@@ -1154,6 +1150,12 @@ static void gen11_dsi_pre_pll_enable(struct intel_atomic_state *state,
 				     const struct intel_crtc_state *crtc_state,
 				     const struct drm_connector_state *conn_state)
 {
+	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
+
+	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_POWER_ON);
+	msleep(intel_dsi->panel_on_delay);
+	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_DEASSERT_RESET);
+
 	/* step2: enable IO power */
 	gen11_dsi_enable_io_power(encoder);
 
-- 
2.39.3

