Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A3CD894F0C
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Apr 2024 11:50:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1909010FBCF;
	Tue,  2 Apr 2024 09:50:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G2FM9oiw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62A0810FBCF
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Apr 2024 09:50:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712051432; x=1743587432;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TDZXsq7k7DFhR+d2Gl5dBGJBm45Rq88agF/rHZLdug4=;
 b=G2FM9oiw7xIdz0NPlqe5WN2uzXjpAw+rRSok7gEJxBBxU1Ep99135NUC
 eT+m0MoNzW1YaK8Q1lNDNpSCpt+i0SXv/9pPXiSJ9zTLhB7TMjS2TS/js
 lFfnj0BMdSjNjR0d7CGrFYETVu+xQ32xEDBpDtRApQ4oV5r7gS2ucFMhW
 uAWn4EoqBd7O8W71KNgJddesgWSxU7xsBTydRuPmPAKW8von0AMhjMquq
 vnWoI6sW/uH5cAth2HoUenspnN2/qVFXCKACXwV55fZovZjgXCfrFPaJD
 GtmIfp9ta8nQhSlc30+NWGwOPSJdUMA1v9bE8fytDRJc6+LO5yKwfoHBH w==;
X-CSE-ConnectionGUID: d7xSYZ3HRHaJKK2u/IReVw==
X-CSE-MsgGUID: AjWOb9vcRbu5CzQ8sFkgmw==
X-IronPort-AV: E=McAfee;i="6600,9927,11031"; a="7422635"
X-IronPort-AV: E=Sophos;i="6.07,174,1708416000"; 
   d="scan'208";a="7422635"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 02:50:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,174,1708416000"; d="scan'208";a="22693283"
Received: from sudhirj1-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.34.252])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 02:50:29 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v4 04/19] drm/i915/psr: Do not update phy power state in case
 of non-eDP panel replay
Date: Tue,  2 Apr 2024 12:49:56 +0300
Message-Id: <20240402095011.200558-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240402095011.200558-1-jouni.hogander@intel.com>
References: <20240402095011.200558-1-jouni.hogander@intel.com>
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

