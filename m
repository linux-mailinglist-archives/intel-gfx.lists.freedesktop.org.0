Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A31A903BAE
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2024 14:13:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21DAB10E640;
	Tue, 11 Jun 2024 12:13:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JY4jMsYj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACD2E10E612
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2024 12:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718108003; x=1749644003;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=y+RDBLiW37fM/xiWbhh6Dgt7fVC//3jNWpBvPdDW5qc=;
 b=JY4jMsYjeB42Ey9hPB0TqR/criNNZMwH76oT8PhijtqentwTcTsMQ0fW
 JRS4QW1mCTSQTSEWUCXzXRAMuL65OQfxLmnMAwLrXnR9qhEoJdaZYSU5x
 jHFiOMI2tiPMOEt1sLB2x7u+Zg+oaZCMnSwddHV2X047236gaaiChLzxS
 FSVri7lcDwiNBEbq9TR0LAk15IwfVMI9VrziQJxrNPiNLX50/E+aOln34
 hZFSc0C3IdOLa18L3pFDne/pJJFsUCo3WPGR9S6x+X4Ng+rYGuua2khys
 4HoeeO58astDeX59fjr7jbijJVz+yQaq1l+COmIqy6nasi3Dun+UlN0gA g==;
X-CSE-ConnectionGUID: 5nNwmvDfQymGL/2svpcgYw==
X-CSE-MsgGUID: juv6Hl3/R3mqjBR5UALS5A==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="32296858"
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="32296858"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 05:13:23 -0700
X-CSE-ConnectionGUID: LVDWG/2nT6GznDZcvsWJDA==
X-CSE-MsgGUID: kHOlVKLIT6uGVHPzcVsVyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="40118742"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.164])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 05:13:21 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v7 12/18] drm/i915/psr: Perform scanline indication check for
 Panel Replay as well
Date: Tue, 11 Jun 2024 15:12:37 +0300
Message-Id: <20240611121243.3366990-13-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240611121243.3366990-1-jouni.hogander@intel.com>
References: <20240611121243.3366990-1-jouni.hogander@intel.com>
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

Scanline indication needs to be checked and configure for both PSR2 and
Panel Replay Selective Update. Move this check to
intel_sel_update_config_valid.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index fcaf3ef39523..b3add3c21fb1 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1403,12 +1403,6 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 		return false;
 	}
 
-	if (!_compute_psr2_sdp_prior_scanline_indication(intel_dp, crtc_state)) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "PSR2 not enabled, PSR2 SDP indication do not fit in hblank\n");
-		return false;
-	}
-
 	if (!alpm_config_valid(intel_dp, crtc_state))
 		return false;
 
@@ -1450,6 +1444,12 @@ static bool intel_sel_update_config_valid(struct intel_dp *intel_dp,
 	if (!crtc_state->has_panel_replay && !intel_psr2_config_valid(intel_dp, crtc_state))
 		goto unsupported;
 
+	if (!_compute_psr2_sdp_prior_scanline_indication(intel_dp, crtc_state)) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "Selective update not enabled, SDP indication do not fit in hblank\n");
+		goto unsupported;
+	}
+
 	if (crtc_state->has_panel_replay && (DISPLAY_VER(dev_priv) < 14 ||
 					     !intel_dp->psr.sink_panel_replay_su_support))
 		goto unsupported;
-- 
2.34.1

