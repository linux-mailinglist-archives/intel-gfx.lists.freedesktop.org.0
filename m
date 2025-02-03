Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22747A259E1
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2025 13:50:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4AC610E4CD;
	Mon,  3 Feb 2025 12:50:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SiEf5R+y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1EF710E4C7;
 Mon,  3 Feb 2025 12:50:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738587024; x=1770123024;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=C/1T6QII0phBRQAKLG5QKOXH6yYXtC2CgJm9WoaN1+s=;
 b=SiEf5R+yif0I5pa+/WzpdM6ELJ7rFYwFs3VteDUgpVNb2OMlCIitQJar
 0JdgtLHr/l6exOK7h2fsoi54s7XdL3fD8way6He0HVAFGHPNyLIgeXW+U
 3+Sc7qerfTK4UymqAJwisg6mATMbXK9RRGpTzROgoclf800YiKLRKLMCw
 I84DLaqV32R4lW+rmlLmefBc+t/AocJCiY5lFuL/t7qQa+8JqB5LiT2MR
 BK5uBBi7yofQSzb1oahsMF5VMW4s/1k7yLTZnOeX1478AOG1ngSdRMmtd
 yALY+awU7ecC4dgR9W+UOHfjdPgU3iZJqQ7Y89MRwuCtgFaLQRCG3dYfH g==;
X-CSE-ConnectionGUID: PK1j6sEYSHGUPkRmq4YWDQ==
X-CSE-MsgGUID: FjKlOKM8Rtm9UNLzgPXfvA==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="61548085"
X-IronPort-AV: E=Sophos;i="6.13,255,1732608000"; d="scan'208";a="61548085"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 04:50:24 -0800
X-CSE-ConnectionGUID: cryK07/4Qg64+kF3MvZ6aw==
X-CSE-MsgGUID: ASVEI5C3Si+xi7e30wK2Iw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="133529002"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 04:50:21 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 16/28] drm/i915/display: Enable MSA Ignore Timing PAR only
 when in not fixed_rr mode
Date: Mon,  3 Feb 2025 18:08:28 +0530
Message-ID: <20250203123840.3855874-17-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250203123840.3855874-1-ankit.k.nautiyal@intel.com>
References: <20250203123840.3855874-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
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

MSA Ignore Timing PAR enable is set in the DP sink when we enable variable
refresh rate. When using VRR timing generator for fixed refresh rate
we do not want to ignore the mode timings, as the refresh rate is still
fixed. Modify the checks to enable MSA Ignore Timing PAR only when not
in fixed_rr mode.

v2: Initialize enable_msa_timing_par_ignore to false.
v3: For link training ignore the msa timings if vrr.in_range and
drop the flag enable_msa_timing_par_ignore. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c              | 2 +-
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index f440299da637..f3a74804b61f 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2281,7 +2281,7 @@ static void intel_dp_sink_set_msa_timing_par_ignore_state(struct intel_dp *intel
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 
-	if (!intel_vrr_is_enabled(crtc_state))
+	if (!intel_vrr_is_enabled(crtc_state) || crtc_state->vrr.flipline == crtc_state->vrr.vmax)
 		return;
 
 	if (drm_dp_dpcd_writeb(&intel_dp->aux, DP_DOWNSPREAD_CTRL,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 9cb22baafeeb..ebf0657380d2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -725,7 +725,7 @@ static void intel_dp_update_downspread_ctrl(struct intel_dp *intel_dp,
 					    const struct intel_crtc_state *crtc_state)
 {
 	intel_dp_link_training_set_mode(intel_dp,
-					crtc_state->port_clock, crtc_state->vrr.flipline);
+					crtc_state->port_clock, crtc_state->vrr.in_range);
 }
 
 void intel_dp_link_training_set_bw(struct intel_dp *intel_dp,
-- 
2.45.2

