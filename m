Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 05A88728984
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 22:32:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48F3410E619;
	Thu,  8 Jun 2023 20:32:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC4AF10E613
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jun 2023 20:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686256325; x=1717792325;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bRR0vygLvzVybp+aRSWfBo30z0R8+0Tglc/y43O3LbU=;
 b=ij+6JM0hB4xMBgYbitGa91g3yejxvF/LZTGYN9O0FUGrEjivoZyM47LR
 4d+13H/C9rzNLP+nwqZzmng3/MQjfLHfvfwvKirJf63gA407oACon4B5w
 ee2riGV/KAxhffLbT23P80TLIvraLCXAMQdsis9/8AGiQOhhx18THDtil
 /hp0W4oNOeMfCb73B1kKgSHsxxehvOu+WDnTgdnW/oFkWPOJQaakp1hKo
 bnGrhllWmXQbXg4mPUepEmi6JvSpfff8FFk8eRfaUcFauGqbEpZMDbHM7
 IPVDmhg9MDrdydadK+qfVhbIDXtfjH9Ynz6BXAG14g9axnFh5k0/HX7ko w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="421012751"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="421012751"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 13:31:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="710100874"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="710100874"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 08 Jun 2023 13:31:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 08 Jun 2023 23:31:32 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Jun 2023 23:30:55 +0300
Message-Id: <20230608203057.23759-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230608203057.23759-1-ville.syrjala@linux.intel.com>
References: <20230608203057.23759-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 11/13] drm/i915/dsi: Move panel reset+power
 off to be the last thing
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

Follow what Windows does and do the DSI panel reset+power off
after everything else.

v2: s/intel_dsi_msleep/msleep/

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 669637b61789..c4638c6b583e 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1291,12 +1291,6 @@ static void gen11_dsi_powerdown_panel(struct intel_encoder *encoder)
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 
 	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_DISPLAY_OFF);
-	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_ASSERT_RESET);
-
-	msleep(intel_dsi->panel_off_delay);
-	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_POWER_OFF);
-
-	intel_dsi->panel_power_off_time = ktime_get_boottime();
 
 	/* ensure cmds dispatched to panel */
 	wait_for_cmds_dispatched_to_panel(encoder);
@@ -1408,6 +1402,7 @@ static void gen11_dsi_post_disable(struct intel_atomic_state *state,
 				   const struct intel_crtc_state *old_crtc_state,
 				   const struct drm_connector_state *old_conn_state)
 {
+	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	struct intel_crtc *crtc = to_intel_crtc(old_conn_state->crtc);
 
 	intel_crtc_vblank_off(old_crtc_state);
@@ -1434,6 +1429,13 @@ static void gen11_dsi_post_disable(struct intel_atomic_state *state,
 
 	/* step4: disable IO power */
 	gen11_dsi_disable_io_power(encoder);
+
+	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_ASSERT_RESET);
+
+	msleep(intel_dsi->panel_off_delay);
+	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_POWER_OFF);
+
+	intel_dsi->panel_power_off_time = ktime_get_boottime();
 }
 
 static enum drm_mode_status gen11_dsi_mode_valid(struct drm_connector *connector,
-- 
2.39.3

