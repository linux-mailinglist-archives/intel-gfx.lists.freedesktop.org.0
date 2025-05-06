Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61288AAB9AB
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 09:01:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DDCE10E5A7;
	Tue,  6 May 2025 07:01:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NGMfUsF7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 780A710E562;
 Tue,  6 May 2025 07:01:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746514904; x=1778050904;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BYQ3+k0PDyG9yd2xnxofXZ+tBSnWncI9KK7heDjqNPY=;
 b=NGMfUsF78Pp9Inpt0oZg554xX8GsP1x0i02NeYMDaujE9VgjBZPzD+Pl
 InbLXX7r207fCbLIhIN2UaSN3Ujpo7e40Ex2lqHY91BA9RJqW8nejPW4v
 OoLr+E7p45JuYbUs96KoYbVuK2HgsPShBTexMux5GqJDuo4WUn5NPJfmp
 KnFNpbwj5e+GRZZXJqa2JeU2t0MMONcRt5bwPHcHyU5Lg2ul7VNno6eQu
 tIIr/LOJPGL2L3VB+zXwKZZV5UHEeJJodV/0UvQ3R2Yx4dcc9/hsLxrbS
 R/SdDwmHhn8qgKxNogkRrqgiNfmCK+XXx+ADMzxjMNj8cVes8sFou5UCO Q==;
X-CSE-ConnectionGUID: F/Xreq/zSVSLj8XLoDaYLg==
X-CSE-MsgGUID: +QkTdt/sSJK4jQ2yADNICg==
X-IronPort-AV: E=McAfee;i="6700,10204,11424"; a="48067979"
X-IronPort-AV: E=Sophos;i="6.15,265,1739865600"; d="scan'208";a="48067979"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 00:01:12 -0700
X-CSE-ConnectionGUID: WVMjI20lQz6zSiz17jwg+g==
X-CSE-MsgGUID: KXf+T8pmRy22Cy2iiqWiUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,265,1739865600"; d="scan'208";a="140273099"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.171])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 00:01:11 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 2/4] drm/i915/alpm: Move disabling sink ALPM to intel_alpm.c
Date: Tue,  6 May 2025 10:00:27 +0300
Message-ID: <20250506070029.1326368-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250506070029.1326368-1-jouni.hogander@intel.com>
References: <20250506070029.1326368-1-jouni.hogander@intel.com>
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
index d48d1e6cc356..2454f78fc416 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -564,6 +564,8 @@ void intel_alpm_disable(struct intel_dp *intel_dp)
 	intel_de_write(display, ALPM_CTL(display, cpu_transcoder), 0);
 	intel_de_write(display, PORT_ALPM_CTL(dp_to_dig_port(intel_dp)->base.port), 0);
 
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

