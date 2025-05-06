Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66390AAC895
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 16:49:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3325B10E6B3;
	Tue,  6 May 2025 14:49:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OGEUo0OR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC14410E360;
 Tue,  6 May 2025 14:49:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746542974; x=1778078974;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ns2vxGBEs5x0D+yuQhELhx36Y4Ib17dEzQrusHg/j3s=;
 b=OGEUo0OR9D9EMFpd/Qo17WWirKW4hMKyGBhdAwVH9KDvHcmUyOOZqnR0
 VYw81PFxErLdckjCGvy+aTo9a7v8zG8hBCU2wFRNOEaP0lrQpC79AVF3M
 LR0EnMNwv81tCW5HIAi9yuETNhtRnJvqPAa3cUfG3mV5JHe9IkkogW9ED
 7sjH9PKPrYQpZje4qo8ub9S2iLByXERymMzYKf4czUqFwPQGiCR/6qvRO
 uZ9pjbE8Ag+q0+dTLidMfkS10ryPgwXxBAsrickVS4InKGzabyU4ckqaM
 sYhWomwcL76h69YmgONmcN9h/Zw9LCZsSqYXUPg/yn3bjR28acQ+uct54 A==;
X-CSE-ConnectionGUID: Yxp0wFZBTrqA5n8C+9HioA==
X-CSE-MsgGUID: s/KS+0vmRSWWh4Oa26cT9A==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="47476940"
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="47476940"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 07:49:34 -0700
X-CSE-ConnectionGUID: Tg64BQ+7Tge+OW6C9mNEYw==
X-CSE-MsgGUID: ijkmLvLsRhy3p28LyYeGXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="135519522"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.171])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 07:49:32 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 1/3] drm/i915/alpm: Move disabling sink ALPM to intel_alpm.c
Date: Tue,  6 May 2025 17:49:10 +0300
Message-ID: <20250506144912.1848606-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250506144912.1848606-1-jouni.hogander@intel.com>
References: <20250506144912.1848606-1-jouni.hogander@intel.com>
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

Currently disabling sink ALPM is done only when disabling PSR. Now
ALPM code is shared between LOBF and PSR. Enabling sink ALPM is
already done in intel_alpm.c. Not really expected it getting disabled
in intel_psr.c. Move disabling sink ALPM to intel_alpm.c.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 2 ++
 drivers/gpu/drm/i915/display/intel_psr.c  | 7 +------
 2 files changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 1bf08b80c23f..2fdf13515feb 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -569,6 +569,8 @@ void intel_alpm_disable(struct intel_dp *intel_dp)
 		     PORT_ALPM_CTL(cpu_transcoder),
 		     PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE, 0);
 
+	drm_dp_dpcd_writeb(&intel_dp->aux, DP_RECEIVER_ALPM_CONFIG, 0);
+
 	drm_dbg_kms(display->drm, "Disabling ALPM\n");
 	mutex_unlock(&intel_dp->alpm_parameters.lock);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index ccd66bbc72f7..89c4aaf8bd36 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2173,14 +2173,9 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 		intel_snps_phy_update_psr_power_state(&dp_to_dig_port(intel_dp)->base, false);
 
 	/* Disable PSR on Sink */
-	if (!intel_dp->psr.panel_replay_enabled) {
+	if (!intel_dp->psr.panel_replay_enabled)
 		drm_dp_dpcd_writeb(&intel_dp->aux, DP_PSR_EN_CFG, 0);
 
-		if (intel_dp->psr.sel_update_enabled)
-			drm_dp_dpcd_writeb(&intel_dp->aux,
-					   DP_RECEIVER_ALPM_CONFIG, 0);
-	}
-
 	/* Wa_16025596647 */
 	if ((DISPLAY_VER(display) == 20 ||
 	     IS_DISPLAY_VERx100_STEP(display, 3000, STEP_A0, STEP_B0)) &&
-- 
2.43.0

