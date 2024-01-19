Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A2C832762
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jan 2024 11:11:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4B1610E9C0;
	Fri, 19 Jan 2024 10:10:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51DE810E9AE
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jan 2024 10:10:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705659057; x=1737195057;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RUz0hP3WO/v7fdTiRh00kKVr9CbyOtp76fCt871CyhQ=;
 b=kPhA3MKTPOkvXYLg7ssHYPdbOaG+fqprhl4wl9wu59KZpFXyrbQhY78O
 sDX0w+UljsFhrBsHeANLXJaZe57kL+8xZuyjtNT0dA1vysErFcdt4odd7
 SoXj3FCz9Lyeixk7Vy9D12V3duk6HFYbzo7A/Aox8GOQW/4BfUQpGE/rL
 uGEBTfiWoL3EIsZBeycacfVyZkbhsUQGWtEIwwGjkKqsHCLk1OCggUKbg
 gfWp/thkmZlF4u3qav7nFn75fTQJc4xU5fNQkaM5UiUd3OFad8NMcEa7i
 RR8sV//S9xgKEPaIdJJ/A4egFbW0df+IGuQXrw8cE+1LTKMXO+JLnyWO4 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="14070736"
X-IronPort-AV: E=Sophos;i="6.05,204,1701158400"; d="scan'208";a="14070736"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2024 02:10:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,204,1701158400"; 
   d="scan'208";a="563210"
Received: from randiapp-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.39.12])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2024 02:10:56 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v3 05/21] drm/i915/psr: Do not update phy power state in case
 of panel replay
Date: Fri, 19 Jan 2024 12:10:08 +0200
Message-Id: <20240119101024.1060812-6-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240119101024.1060812-1-jouni.hogander@intel.com>
References: <20240119101024.1060812-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Currently panel replay is supporting only main link on mode -> Do not
update phy power state for panel replay.

Bspec: 53370

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 7b3290f4e0b4..893c72ea8cf1 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1681,13 +1681,15 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
 	if (!psr_interrupt_error_check(intel_dp))
 		return;
 
-	if (intel_dp->psr.panel_replay_enabled)
+	if (intel_dp->psr.panel_replay_enabled) {
 		drm_dbg_kms(&dev_priv->drm, "Enabling Panel Replay\n");
-	else
+	} else {
 		drm_dbg_kms(&dev_priv->drm, "Enabling PSR%s\n",
 			    intel_dp->psr.psr2_enabled ? "2" : "1");
 
-	intel_snps_phy_update_psr_power_state(dev_priv, phy, true);
+		intel_snps_phy_update_psr_power_state(dev_priv, phy, true);
+	}
+
 	intel_psr_enable_sink(intel_dp);
 	intel_psr_enable_source(intel_dp, crtc_state);
 	intel_dp->psr.enabled = true;
@@ -1794,7 +1796,8 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 				     CLKGATE_DIS_MISC_DMASC_GATING_DIS, 0);
 	}
 
-	intel_snps_phy_update_psr_power_state(dev_priv, phy, false);
+	if (!intel_dp->psr.panel_replay_enabled)
+		intel_snps_phy_update_psr_power_state(dev_priv, phy, false);
 
 	/* Disable PSR on Sink */
 	drm_dp_dpcd_writeb(&intel_dp->aux, DP_PSR_EN_CFG, 0);
-- 
2.34.1

