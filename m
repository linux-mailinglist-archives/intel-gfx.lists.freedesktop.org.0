Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5965C89BA18
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Apr 2024 10:22:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF61911227A;
	Mon,  8 Apr 2024 08:22:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VcNjIV2S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D01FF112273
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Apr 2024 08:22:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712564565; x=1744100565;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=V9/KaWvYfIQWLPc8QVr1YfUYnGhAJHrDE4AaYIeY9b0=;
 b=VcNjIV2SGXRs0fiPvaFGyST3xKjXmn1sZFOR5e+lbdSlNe3ZTBJOuBtD
 B2WHaIix0TC5x9qy0HDK6e1E4ebkuAPkAetWQBersM+H91J3GKtZUKXO8
 GLXvf8yKgXKn1sayRGhyJSqLjIHQRUkKesCt9D6PWiX5oO1vHgf64CUHS
 dlxdoELpMDWd3OJ3luSf/OaqjKL4aeHy8u2sCPXAsc03HoQ+BSWGtayIJ
 w1salfK+Qcg/SDKfpx8RntkO9lIfOtxa4rcjiAmqdqztTKr1ZS0O6rsrC
 ELsyo6bh/JF5rLXpah9w539zM8O4RuV2ecR73fX8B9o/lTjzTGM1AxMIN A==;
X-CSE-ConnectionGUID: b+uDmN5eS0qQK0ZPHiJwww==
X-CSE-MsgGUID: 1elcBOfETGa1Xi97urDimA==
X-IronPort-AV: E=McAfee;i="6600,9927,11037"; a="25275783"
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="25275783"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 01:22:45 -0700
X-CSE-ConnectionGUID: Eb2//nCWQrSWhaD98bJ1qw==
X-CSE-MsgGUID: rBEiA8OLTW2OGE3MKXjOdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="24444600"
Received: from rkhristx-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.214.154])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 01:22:43 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v6 06/10] drm/i915/psr: Panel replay uses SRD_STATUS to track
 it's status
Date: Mon,  8 Apr 2024 11:22:08 +0300
Message-Id: <20240408082212.3429193-7-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240408082212.3429193-1-jouni.hogander@intel.com>
References: <20240408082212.3429193-1-jouni.hogander@intel.com>
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

DP Panel replay uses SRD_STATUS to track it's status despite selective
update mode.

Bspec: 53370, 68920

v3:
  - do not use PSR2_STATUS for PSR1
v2:
  - use intel_dp_is_edp to differentiate
  - modify debugfs status as well

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 111eb7d6bc1c..9e6625470ced 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2849,7 +2849,8 @@ void intel_psr_wait_for_idle_locked(const struct intel_crtc_state *new_crtc_stat
 		if (!intel_dp->psr.enabled)
 			continue;
 
-		if (intel_dp->psr.sel_update_enabled)
+		if (intel_dp_is_edp(intel_dp) &&
+		    intel_dp->psr.sel_update_enabled)
 			ret = _psr2_ready_for_pipe_update_locked(intel_dp);
 		else
 			ret = _psr1_ready_for_pipe_update_locked(intel_dp);
@@ -2870,7 +2871,8 @@ static bool __psr_wait_for_idle_locked(struct intel_dp *intel_dp)
 	if (!intel_dp->psr.enabled)
 		return false;
 
-	if (intel_dp->psr.sel_update_enabled) {
+	if (!intel_dp->psr.panel_replay_enabled &&
+	    intel_dp->psr.sel_update_enabled) {
 		reg = EDP_PSR2_STATUS(cpu_transcoder);
 		mask = EDP_PSR2_STATUS_STATE_MASK;
 	} else {
@@ -3489,7 +3491,7 @@ psr_source_status(struct intel_dp *intel_dp, struct seq_file *m)
 	const char *status = "unknown";
 	u32 val, status_val;
 
-	if (intel_dp->psr.sel_update_enabled) {
+	if (intel_dp_is_edp(intel_dp) && intel_dp->psr.sel_update_enabled) {
 		static const char * const live_status[] = {
 			"IDLE",
 			"CAPTURE",
-- 
2.34.1

