Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A36239C3A8B
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 10:10:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4BCE10E45E;
	Mon, 11 Nov 2024 09:10:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iZmzK3Uj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B2C910E461;
 Mon, 11 Nov 2024 09:10:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731316229; x=1762852229;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nGR9PtcYtkl1OjtHjJdyspkx5uMCeleAylDt1yUiB6k=;
 b=iZmzK3UjO7NLz4QKXEB9cT6QtVYqIwqqggkD0/yeoHqx7MgxD40slGqL
 VzhbkUQtEa/aLiVBDadlxwVYf+zaC6jn4MHpVaTjCLsynpo606VtHJmgC
 DaDmitXtl7ma747pE+PpfvNQWiYm/UbRnhdhL+Dx6CxOa1BSXO0SaTlfP
 jc0BDHY7nTTjEO4NF/oYXRbkg89QvHKImgpAVVgHmesLJbfXZK88xJ/R+
 r7TryfRR5vCq8uxLUaNUtbtlBaIiNNuc7kDFHV25DqtDVm5AlQHo39+4Q
 XdA/h3nfgBRkXm/k16zO5rlcdb5IXeuZVwXl7Dj0LCXJYbPb76NGeGePC Q==;
X-CSE-ConnectionGUID: 3HpufBaOTGW2/gOZfhcdbQ==
X-CSE-MsgGUID: 7yqJT2LHTsG0jj0WgxQraQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11252"; a="35052410"
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="35052410"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 01:10:28 -0800
X-CSE-ConnectionGUID: 2q7tehyFTkCkzjVhMBJdUg==
X-CSE-MsgGUID: cZT+PSuaS22RKHHIE4euzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="86762695"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 01:10:26 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 17/23] drm/i915/display: Enable MSA Ignore Timing PAR only
 when in not fixed_rr mode
Date: Mon, 11 Nov 2024 14:42:15 +0530
Message-ID: <20241111091221.2992818-18-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241111091221.2992818-1-ankit.k.nautiyal@intel.com>
References: <20241111091221.2992818-1-ankit.k.nautiyal@intel.com>
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

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c              | 2 +-
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 8 +++++++-
 2 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 3c0640efde21..33ecd2a13016 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2230,7 +2230,7 @@ static void intel_dp_sink_set_msa_timing_par_ignore_state(struct intel_dp *intel
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 
-	if (!crtc_state->vrr.tg_enable)
+	if (!crtc_state->vrr.tg_enable || crtc_state->vrr.mode == INTEL_VRRTG_MODE_FIXED_RR)
 		return;
 
 	if (drm_dp_dpcd_writeb(&intel_dp->aux, DP_DOWNSPREAD_CTRL,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 397cc4ebae52..193c906f36a3 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -726,8 +726,14 @@ void intel_dp_link_training_set_mode(struct intel_dp *intel_dp, int link_rate, b
 static void intel_dp_update_downspread_ctrl(struct intel_dp *intel_dp,
 					    const struct intel_crtc_state *crtc_state)
 {
+	bool enable_msa_timing_par_ignore = false;
+
+	/* Enable MSA TIMING PAR IGNORE only in non fixed_rr mode */
+	if (crtc_state->vrr.flipline && crtc_state->vrr.mode != INTEL_VRRTG_MODE_FIXED_RR)
+		enable_msa_timing_par_ignore = true;
+
 	intel_dp_link_training_set_mode(intel_dp,
-					crtc_state->port_clock, crtc_state->vrr.flipline);
+					crtc_state->port_clock, enable_msa_timing_par_ignore);
 }
 
 void intel_dp_link_training_set_bw(struct intel_dp *intel_dp,
-- 
2.45.2

