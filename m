Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED8EAB1BFDA
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Aug 2025 07:22:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CFBF10E39E;
	Wed,  6 Aug 2025 05:22:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N3NFolUB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25C5C10E300;
 Wed,  6 Aug 2025 05:22:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754457751; x=1785993751;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DjsSpUDqaDcMvEZMRtR3oW8XLEth1Ly0X2z2XnE5GS4=;
 b=N3NFolUBEm0NnArq3DXn4zHLQ4fSv8rPMRvtLeOH24OP43TU1UInQcua
 qV1eV385fw+ZES03i214cZeRcTL4h9q314UkB/WKmb/VxYBCwRP+BqVXP
 esyG5iLvhXYMEbu+af8CpbmRQ5jELrVOjtft615PGQt7caTnDE3yjMMk5
 jnfn1s2WZp3zezXTnc6HGKm2SzuFz6Fs78DgaNYA5wyOYWw9Gxc070yBZ
 fK2uK2UkweYrgvFxiOnUrNCxnoa4DMtbw/x/Kq0hF6vK5zvmiRN5WxIbr
 non0vDwoB5sfYOpDd9K4bLPASajeK0ZOc4oNG6EVpLVlRFhpYqeaWtQXl g==;
X-CSE-ConnectionGUID: l9AYCzqpSVatQ4ErsdGa0A==
X-CSE-MsgGUID: tgJJ51PURgq4Gccf+cvEaw==
X-IronPort-AV: E=McAfee;i="6800,10657,11513"; a="60597250"
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="60597250"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 22:22:30 -0700
X-CSE-ConnectionGUID: 0CvTJ6giQoCl3zjF5smaVQ==
X-CSE-MsgGUID: ucU2/vf8S3mN7DxtcDDUxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="188350229"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.95])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 22:22:29 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 1/4] drm/i915/psr: Pass intel_crtc_state instead of
 intel_dp in wait_for_idle
Date: Wed,  6 Aug 2025 08:22:10 +0300
Message-ID: <20250806052213.1800559-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250806052213.1800559-1-jouni.hogander@intel.com>
References: <20250806052213.1800559-1-jouni.hogander@intel.com>
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
---
 drivers/gpu/drm/i915/display/intel_psr.c | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 6bd3454bb00e..c2ab00fe2c20 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2982,10 +2982,11 @@ void intel_psr_post_plane_update(struct intel_atomic_state *state,
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
@@ -2997,10 +2998,11 @@ static int _psr2_ready_for_pipe_update_locked(struct intel_dp *intel_dp)
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
@@ -3039,9 +3041,9 @@ void intel_psr_wait_for_idle_locked(const struct intel_crtc_state *new_crtc_stat
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

