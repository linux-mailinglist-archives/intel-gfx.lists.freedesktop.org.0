Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35D61899BF9
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 13:36:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5ACD0113B4D;
	Fri,  5 Apr 2024 11:36:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d9PYW0Nt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1943C113B49
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Apr 2024 11:36:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712317006; x=1743853006;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=G5RC8OGP2qEqjWe+y5Cfmog3K+kvyuzqI+6E5mtEGAY=;
 b=d9PYW0NtccdA8e9MAkKXsGVZKUc9kEyYd2sAuw/+MsQpNx4WHbHlWQuP
 C8JK9z+8F9l1Dd9VHI9oJzzbJElXKwN1J+ZstC0igMx4PQZ/9BBgsYWcp
 exeeZGCab70Xju/PMdEjSLIm9V1v43IDMnRMjaqe9mp9i5PGN2FFpNrXp
 IHMtXlyfYqOE0fWfUcfJiuMc7ZasKgHCDpAgloxpw7R8KlsQcWnUKNUQ5
 Ed1FSB4ycT8xA/B/2NfsY3IcgtbR3eozF4J5UYVc9pT1JhZt7tTlovsQ4
 KHzhaXJbT1DM0tFjpCy/mbWp43IPfCBhUHzLdFMqEH8anqoEhfq0rc/Dd w==;
X-CSE-ConnectionGUID: tO721dxwTEKrPHQYQM7Sqw==
X-CSE-MsgGUID: BhcaEEBzR2K5vjSX9up5Vg==
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="30116549"
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="30116549"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 04:36:46 -0700
X-CSE-ConnectionGUID: FTsIx9uCQ9Camzh6ptTRPw==
X-CSE-MsgGUID: K0dusM3IR8q5eEnuJOwDkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="23858755"
Received: from ctiouajx-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.214.82])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 04:36:44 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 4/8] drm/i915/psr: Do not update phy power state in case of
 non-eDP panel replay
Date: Fri,  5 Apr 2024 14:35:58 +0300
Message-Id: <20240405113602.992714-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240405113602.992714-1-jouni.hogander@intel.com>
References: <20240405113602.992714-1-jouni.hogander@intel.com>
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
Reviewed-by: Animesh Manna <animesh.manna@intel.com>
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

