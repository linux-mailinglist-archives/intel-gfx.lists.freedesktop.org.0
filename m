Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76176B44F64
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Sep 2025 09:27:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5041010EB34;
	Fri,  5 Sep 2025 07:27:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PUoHe8NV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A730B10EB30;
 Fri,  5 Sep 2025 07:27:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757057244; x=1788593244;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mwHMvurhSzWQQnIlCdhgLS8hj2fC0ImFnqqoNa9VioU=;
 b=PUoHe8NVepZTgbldR9ZuA7ykqCR0Hs04EPl078e8gKrp2ivyoih8/FMI
 WkjXqTRLADCjP+CKLLghj69plIcCA1Zs0FXr522a6cK9sHTSzgEB+Rm0g
 YMb1eiVLBhQfxdRBKGJgyi+ZZEZWXmA0wuK0PsgeC7EbOEiPjvChbKFa7
 9bFVFozQFmBs9PoR94VejVD1tFPEmtKqTYN0milH9y3ty+CxVYnSIx0ZD
 qV2LAKiwTR1HwICe70rvQRFFiJOFTguQdLJd2Slx7bhu3SPWQ7Ag78yno
 xIN5pm2DzWHZMhx9P++/t/ecziU5rezUyPJQSbzwh+UUOHLm7e4XfpRxD Q==;
X-CSE-ConnectionGUID: u6/zvjioQ1WCPr48GHYEFA==
X-CSE-MsgGUID: B2jpYVrTRkSNcMglFWGZ1w==
X-IronPort-AV: E=McAfee;i="6800,10657,11543"; a="63047062"
X-IronPort-AV: E=Sophos;i="6.18,240,1751266800"; d="scan'208";a="63047062"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 00:27:24 -0700
X-CSE-ConnectionGUID: 0uEG1oaNTZ6MAPV2yfSymA==
X-CSE-MsgGUID: 1tweEPpSThSuUBFACXwtJw==
X-ExtLoop1: 1
Received: from dalessan-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.5])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 00:27:22 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v3 1/4] drm/i915/psr: Pass intel_crtc_state instead of
 intel_dp in wait_for_idle
Date: Fri,  5 Sep 2025 10:27:05 +0300
Message-ID: <20250905072708.2659411-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250905072708.2659411-1-jouni.hogander@intel.com>
References: <20250905072708.2659411-1-jouni.hogander@intel.com>
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

This is preparation to add own function for polling PSR being ready for
update when doing dsb commit.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 22433fe2ee14..6ab5c028845a 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2997,10 +2997,11 @@ void intel_psr_post_plane_update(struct intel_atomic_state *state,
 	}
 }
 
-static int _psr2_ready_for_pipe_update_locked(struct intel_dp *intel_dp)
+static int
+_psr2_ready_for_pipe_update_locked(const struct intel_crtc_state *new_crtc_state)
 {
-	struct intel_display *display = to_intel_display(intel_dp);
-	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
+	struct intel_display *display = to_intel_display(new_crtc_state);
+	enum transcoder cpu_transcoder = new_crtc_state->cpu_transcoder;
 
 	/*
 	 * Any state lower than EDP_PSR2_STATUS_STATE_DEEP_SLEEP is enough.
@@ -3012,10 +3013,11 @@ static int _psr2_ready_for_pipe_update_locked(struct intel_dp *intel_dp)
 				       EDP_PSR2_STATUS_STATE_DEEP_SLEEP, 50);
 }
 
-static int _psr1_ready_for_pipe_update_locked(struct intel_dp *intel_dp)
+static int
+_psr1_ready_for_pipe_update_locked(const struct intel_crtc_state *new_crtc_state)
 {
-	struct intel_display *display = to_intel_display(intel_dp);
-	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
+	struct intel_display *display = to_intel_display(new_crtc_state);
+	enum transcoder cpu_transcoder = new_crtc_state->cpu_transcoder;
 
 	/*
 	 * From bspec: Panel Self Refresh (BDW+)
@@ -3054,9 +3056,9 @@ void intel_psr_wait_for_idle_locked(const struct intel_crtc_state *new_crtc_stat
 			continue;
 
 		if (intel_dp->psr.sel_update_enabled)
-			ret = _psr2_ready_for_pipe_update_locked(intel_dp);
+			ret = _psr2_ready_for_pipe_update_locked(new_crtc_state);
 		else
-			ret = _psr1_ready_for_pipe_update_locked(intel_dp);
+			ret = _psr1_ready_for_pipe_update_locked(new_crtc_state);
 
 		if (ret)
 			drm_err(display->drm,
-- 
2.43.0

