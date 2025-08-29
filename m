Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09CB7B3B2A1
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Aug 2025 07:39:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 420B510EB33;
	Fri, 29 Aug 2025 05:39:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MxjiajQ8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 315FD10E1FB;
 Fri, 29 Aug 2025 05:39:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756445991; x=1787981991;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ovu9CK8+mMY9kjD4hDhce/MhGKyTqtYqCQJeM8Vl5BU=;
 b=MxjiajQ83aR6oUqWD+xLizR8SSeHzv5IIzsypNLuQnc3T5fdhzr5P6yt
 MdeC5oZn2XkDlhGB4uXbahNZwdopH52ubRYKSDJ6AghcHHWL6wg8p10e8
 EhsBYiE94ULr/QJPG0YMMNHne/VYTmamsIVHmHkgNgGigoizkPoCXpXW5
 hoxgpRJCTcaFALNII+ILInj+9D0LQUPppgQ8X9t0EJLwGXQPw3CMsLHZE
 keM33W39sMGpgpoDpZqX1XovbV24s5hiSoNPXXEYILvb6wVlqStdJTMyt
 lwvblJjBdInaJ9xdr8787gKVv1pd4560XyfoMxNxUnIKEX9YMGo4e8FhL w==;
X-CSE-ConnectionGUID: ktor2TeWQjmNWwA1ku7l5A==
X-CSE-MsgGUID: uEJ5pFljQtap3P/ZveTa/Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11536"; a="58874505"
X-IronPort-AV: E=Sophos;i="6.18,221,1751266800"; d="scan'208";a="58874505"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 22:39:50 -0700
X-CSE-ConnectionGUID: hW31BIlASy6TseAznxgxnw==
X-CSE-MsgGUID: w6vPsWVyQ0ayPmUhfTpKgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,221,1751266800"; d="scan'208";a="193963835"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.172])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 22:39:49 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v2 4/4] drm/i915/alpm: Use actual lfps cycle and silence
 periods in wake time
Date: Fri, 29 Aug 2025 08:39:28 +0300
Message-ID: <20250829053929.3585636-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250829053929.3585636-1-jouni.hogander@intel.com>
References: <20250829053929.3585636-1-jouni.hogander@intel.com>
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

Currently we are using maximum lfps cycle and silence period times when
calculating AUXLess wake time. Use actual values instead.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index b061f7165bba..ed7a7ed486b5 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -116,21 +116,19 @@ static int get_lfps_half_cycle_clocks(const struct intel_crtc_state *crtc_state)
  * tML_PHY_LOCK = TPS4 Length * ( 10 / (Link Rate in MHz) )
  * TPS4 Length = 252 Symbols
  */
-static int _lnl_compute_aux_less_wake_time(int port_clock)
+static int _lnl_compute_aux_less_wake_time(const struct intel_crtc_state *crtc_state)
 {
 	int tphy2_p2_to_p0 = 12 * 1000;
-	int tlfps_period_max = 800;
-	int tsilence_max = 180;
 	int t1 = 50 * 1000;
 	int tps4 = 252;
 	/* port_clock is link rate in 10kbit/s units */
-	int tml_phy_lock = 1000 * 1000 * tps4 / port_clock;
+	int tml_phy_lock = 1000 * 1000 * tps4 / crtc_state->port_clock;
 	int num_ml_phy_lock = 7 + DIV_ROUND_UP(6500, tml_phy_lock) + 1;
 	int t2 = num_ml_phy_lock * tml_phy_lock;
 	int tcds = 1 * t2;
 
-	return DIV_ROUND_UP(tphy2_p2_to_p0 + tlfps_period_max + tsilence_max +
-			    t1 + tcds, 1000);
+	return DIV_ROUND_UP(tphy2_p2_to_p0 + get_lfps_cycle_time(crtc_state) +
+			    SILENCE_PERIOD_TIME + t1 + tcds, 1000);
 }
 
 static int
@@ -142,7 +140,7 @@ _lnl_compute_aux_less_alpm_params(struct intel_dp *intel_dp,
 		lfps_half_cycle;
 
 	aux_less_wake_time =
-		_lnl_compute_aux_less_wake_time(crtc_state->port_clock);
+		_lnl_compute_aux_less_wake_time(crtc_state);
 	aux_less_wake_lines = intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode,
 						       aux_less_wake_time);
 	silence_period = get_silence_period_symbols(crtc_state);
-- 
2.43.0

