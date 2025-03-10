Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 638F2A59460
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Mar 2025 13:28:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E35D310E432;
	Mon, 10 Mar 2025 12:28:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BGxC65gd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DFB110E431;
 Mon, 10 Mar 2025 12:28:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741609710; x=1773145710;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6dZ2OpBbtUUXXDeUeQ9msPYZevlCi12xW4A1jqA90FU=;
 b=BGxC65gdNPryNH+q96XfuLS6LlEThFI1yc97fH0jczdfURAsDsF73KxL
 leCV98el3gFrL8rnzcJI1rXqFXYKq2werQENOEkpajTbzGegbEF56T0d2
 mf3hzeji6AX6EwSwHbqDuGLMiTnlPXnVStAa6VuRUD/H/CxLxUa7GuwSV
 UsNiMCUv02NXfvdRLNCCeA8B35uIj8MwteszwRZIVwbZcHFFHq+v5+IV/
 Vfz+zIFYXFKB0cDv/dUdhLFtAHeu0zDYzgCGhs4DV9ZxsMcuBBPv4NZqO
 IzfmDigoBgJsrfvbOkNirvuiuQKY90MwLPVK2mLwcvSQ38WYwxW9EIfu9 A==;
X-CSE-ConnectionGUID: lCp/ZiH7QT2yFGzbT4NJFg==
X-CSE-MsgGUID: yAzb+ZrLQuq2oIDY0TkFjA==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="65057285"
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="65057285"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 05:28:29 -0700
X-CSE-ConnectionGUID: mkBcVifbSiqESygK37N+og==
X-CSE-MsgGUID: 9joAI6+hTwyOji3RWLfpaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="143180528"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 05:28:28 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 08/21] drm/i915/display: Enable MSA Ignore Timing PAR only
 when in not fixed_rr mode
Date: Mon, 10 Mar 2025 17:46:02 +0530
Message-ID: <20250310121615.1077079-9-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250310121615.1077079-1-ankit.k.nautiyal@intel.com>
References: <20250310121615.1077079-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
refresh rate.

Currently for link training we depend on flipline to decide whether we
want to ignore the msa timings. With fixed refresh rate we will still
fill the flipline in all cases whether panel supports VRR or not.

Change the condition for link training to ignore the msa timings if
vrr.in_range.

v2: Add more documentation and a #TODO for readout of vrr.in_range.
(Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_training.c | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 2966f5b39392..ea225496a96e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -711,8 +711,21 @@ void intel_dp_link_training_set_mode(struct intel_dp *intel_dp, int link_rate, b
 static void intel_dp_update_downspread_ctrl(struct intel_dp *intel_dp,
 					    const struct intel_crtc_state *crtc_state)
 {
+	 /*
+	  * Currently, we set the MSA ignore bit based on vrr.in_range.
+	  * We can't really read that out during driver load since we don't have
+	  * the connector information read in yet. So if we do end up doing a
+	  * modeset during initial_commit() we'll clear the MSA ignore bit.
+	  * GOP likely wouldn't have set this bit so after the initial commit,
+	  * if there are no modesets and we enable VRR mode seamlessly
+	  * (without a full modeset), the MSA ignore bit might never get set.
+	  *
+	  * #TODO: Implement readout of vrr.in_range.
+	  * We need fastset support for setting the MSA ignore bit in DPCD,
+	  * especially on the first real commit when clearing the inherited flag.
+	  */
 	intel_dp_link_training_set_mode(intel_dp,
-					crtc_state->port_clock, crtc_state->vrr.flipline);
+					crtc_state->port_clock, crtc_state->vrr.in_range);
 }
 
 void intel_dp_link_training_set_bw(struct intel_dp *intel_dp,
-- 
2.45.2

