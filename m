Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83BBF6EE0A7
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Apr 2023 12:55:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9225F10E6F7;
	Tue, 25 Apr 2023 10:54:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EB7610E6F7
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Apr 2023 10:54:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682420096; x=1713956096;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=KSE/sJydJ85v4U66snfhcSzLhTlE4/e9MtpuBrp9k/w=;
 b=kyCps6VCpHUyBuGHG96DBwdwhB53ZHrdpticGuIQLBbE/KaOxqiv4p9s
 bPRcZjxbJQhKxxJ4E8VeJduMKsJa+kACAEd194rt+WRM8tLkUDdqshA95
 5bYpPEIplPmAhl/exFqAl2YrML7ojOnzFlyE0R06g1E4dg2O6eUn0n4JA
 1GO5klohg0NrZkiXA/+1IjU4Cj9qgmIosoY0PcqCTw/yukmF6kcf53C7T
 lbnCW6Is1C5NAtTGApdWCfKudnINFqhjcBFHGeY/0RsUgm779DIm0YIxB
 n+m31PszrwJMvCtQwM0GCXAIHi8ENlLiXe669v/BMh6XB9RFXTFztw37y A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="412019597"
X-IronPort-AV: E=Sophos;i="5.99,225,1677571200"; d="scan'208";a="412019597"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 03:54:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="687367335"
X-IronPort-AV: E=Sophos;i="5.99,225,1677571200"; d="scan'208";a="687367335"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga007.jf.intel.com with SMTP; 25 Apr 2023 03:54:54 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 25 Apr 2023 13:54:53 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Apr 2023 13:54:37 +0300
Message-Id: <20230425105450.18441-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230425105450.18441-1-ville.syrjala@linux.intel.com>
References: <20230425105450.18441-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 01/14] drm/i915/icl: Do panel power on + reset
 deassert earlier on icl+
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Looks like we're trying to talk to the DSI panel even before turning
it on, on icl+. Bspec doesn't actually specify when these should be
done, but certainly we need to turn the panel on at least before
talking to it. So let's move the power on + reset deassert steps to
be the first thing we do. This is also what Windows does.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index ad78148e0788..d424d30a01e8 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1138,10 +1138,6 @@ static void gen11_dsi_powerup_panel(struct intel_encoder *encoder)
 				"error setting max return pkt size%d\n", tmp);
 	}
 
-	/* panel power on related mipi dsi vbt sequences */
-	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_POWER_ON);
-	intel_dsi_msleep(intel_dsi, intel_dsi->panel_on_delay);
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
+	intel_dsi_msleep(intel_dsi, intel_dsi->panel_on_delay);
+	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_DEASSERT_RESET);
+
 	/* step2: enable IO power */
 	gen11_dsi_enable_io_power(encoder);
 
-- 
2.39.2

