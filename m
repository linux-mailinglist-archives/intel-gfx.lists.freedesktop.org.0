Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 636DFA7F490
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Apr 2025 08:05:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BF9310E5CA;
	Tue,  8 Apr 2025 06:05:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GZKGeRjm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C70910E5CA;
 Tue,  8 Apr 2025 06:05:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744092352; x=1775628352;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=McEkw4zbCW5b4WOGTjlWaKrrzeQOzS7t0z3lVq088ZI=;
 b=GZKGeRjm3U9qirgO3cZ8vKWWCgAq1DiSOg6++z/eXQR6Bt5t/iOdw4wz
 LYWgL/wPRTyCfsrgEV+9bMYVlNLlFtkbFc8kyGcm1quv9LZug9GKw9MXu
 L4Te8ycNBL8PokjSldY0YKT0NTyydxUK6Ij67TI9Bo98IwHEJ7vDlnTSq
 2KRfaYiDuQqtOhP7l51wZ1qd3nmxMKs4I9WCXpKAY8YTjj7sFoImRqz4r
 c9QxyPYJXifR11TToOBR5usvuLWAie916nNVusJGC074Iewn9HyLUPHZA
 2ggjIzO2KKeiALwmEipaY3xCKOyHHENZXlguCDvV63KtGrEz7mYiidRi3 w==;
X-CSE-ConnectionGUID: Kb6O9I7URfG8BzK47/h2cw==
X-CSE-MsgGUID: yLwqAxDgTJGKd140cP0V2A==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="49352977"
X-IronPort-AV: E=Sophos;i="6.15,197,1739865600"; d="scan'208";a="49352977"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 23:05:51 -0700
X-CSE-ConnectionGUID: 52Mx0dnWS/a1c/PS30Ah7g==
X-CSE-MsgGUID: 7154YVyAR6eUjzpVxOeeSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,197,1739865600"; d="scan'208";a="133374822"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.58])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 23:05:50 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH] drm/i915/alpm: use variable from intel_crtc_state instead of
 intel_psr
Date: Tue,  8 Apr 2025 09:05:39 +0300
Message-ID: <20250408060539.4167353-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
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

Currently code is making assumption that PSR is enabled when
intel_alpm_configure is called. This doesn't work if alpm is configured
before PSR is enabled.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index eba49263e2fb8..746495ac675be 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -317,14 +317,14 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
 	u32 alpm_ctl;
 
 	if (DISPLAY_VER(display) < 20 ||
-	    (!intel_dp->psr.sel_update_enabled && !intel_dp_is_edp(intel_dp)))
+	    (!crtc_state->has_sel_update && !intel_dp_is_edp(intel_dp)))
 		return;
 
 	/*
 	 * Panel Replay on eDP is always using ALPM aux less. I.e. no need to
 	 * check panel support at this point.
 	 */
-	if ((intel_dp->psr.panel_replay_enabled && intel_dp_is_edp(intel_dp)) ||
+	if ((crtc_state->has_panel_replay && intel_dp_is_edp(intel_dp)) ||
 	    (crtc_state->has_lobf && intel_alpm_aux_less_wake_supported(intel_dp))) {
 		alpm_ctl = ALPM_CTL_ALPM_ENABLE |
 			ALPM_CTL_ALPM_AUX_LESS_ENABLE |
-- 
2.43.0

