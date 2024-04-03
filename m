Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 132588969C8
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 11:00:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1717F1128E5;
	Wed,  3 Apr 2024 09:00:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="et+zPgw4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13EF21128E5
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Apr 2024 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712134833; x=1743670833;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TDZXsq7k7DFhR+d2Gl5dBGJBm45Rq88agF/rHZLdug4=;
 b=et+zPgw4OhYzpd88N8dH4Tn7AjhJpjxBTzuLDBEeOeOhRWG+UJGuf9Ps
 m/6ZirK+bB53r1NMnZZqDIMOgx7W+Gsi/QfRbh/6pWHtGCGsdnNC4MBtq
 Kx/7u4Utkd/M85tkyJyV38OoJxrvBW9lpaBXf68l9MERYozWS/54OBPly
 OTUWAQpp+zowm73bR9ZS83jvvHox9yOkTQOyfXdXF/1TKSnMc9oOA4HVq
 W7IutI2WI6t6jO/euTRnxn17lX3moS8CYRXlIX29mKVPBnV9e/bdP6OVT
 69yiR8nb3/X1FJ9yDnd60N50VwpjUJ1bPtZQkX0BYZc09cd38YNCCaLiT Q==;
X-CSE-ConnectionGUID: xOKH6TpHSquB8j5QwFym2g==
X-CSE-MsgGUID: //4rX1dUS9Ok7yac0pXo6g==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="7472397"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; 
   d="scan'208";a="7472397"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 02:00:31 -0700
X-CSE-ConnectionGUID: MeZWui+/TjuilY7eQjFmBw==
X-CSE-MsgGUID: 1CMtD8XGS22gMJR7Sb7a3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18452982"
Received: from esavax-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.249.35.175])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 02:00:30 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v5 04/19] drm/i915/psr: Do not update phy power state in case
 of non-eDP panel replay
Date: Wed,  3 Apr 2024 11:59:58 +0300
Message-Id: <20240403090013.54296-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240403090013.54296-1-jouni.hogander@intel.com>
References: <20240403090013.54296-1-jouni.hogander@intel.com>
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
update phy power state for non-eDP panel replay.

Bspec: 53370

v2: use intel_dp_is_edp to differentiate

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index bd99b9953274..07c1ddec2d86 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1930,13 +1930,16 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
 	if (!psr_interrupt_error_check(intel_dp))
 		return;
 
-	if (intel_dp->psr.panel_replay_enabled)
+	if (intel_dp->psr.panel_replay_enabled) {
 		drm_dbg_kms(&dev_priv->drm, "Enabling Panel Replay\n");
-	else
+	} else {
 		drm_dbg_kms(&dev_priv->drm, "Enabling PSR%s\n",
 			    intel_dp->psr.psr2_enabled ? "2" : "1");
+	}
+
+	if (intel_dp_is_edp(intel_dp))
+		intel_snps_phy_update_psr_power_state(&dig_port->base, true);
 
-	intel_snps_phy_update_psr_power_state(&dig_port->base, true);
 	intel_psr_enable_sink(intel_dp);
 	intel_psr_enable_source(intel_dp, crtc_state);
 	intel_dp->psr.enabled = true;
@@ -2041,7 +2044,8 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 				     CLKGATE_DIS_MISC_DMASC_GATING_DIS, 0);
 	}
 
-	intel_snps_phy_update_psr_power_state(&dp_to_dig_port(intel_dp)->base, false);
+	if (intel_dp_is_edp(intel_dp))
+		intel_snps_phy_update_psr_power_state(&dp_to_dig_port(intel_dp)->base, false);
 
 	/* Panel Replay on eDP is always using ALPM aux less. */
 	if (intel_dp->psr.panel_replay_enabled && intel_dp_is_edp(intel_dp)) {
-- 
2.34.1

