Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6314796814C
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2024 10:05:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0271E10E23D;
	Mon,  2 Sep 2024 08:05:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R3VfQnzL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AE9710E234
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Sep 2024 08:05:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725264307; x=1756800307;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wTBGaVE5aLjk8j3sz+2QQw8Ec6X3tTW/0F8/v834ha8=;
 b=R3VfQnzL3U4S46LPexgcDhB6J2tH9L3dgpQqUUN0RdD+spyoWhxx8gZD
 zaZbtg8z1K9QQLIZU00LuwSlDk22IGRCpOTjsU8AHZP7HyK36CEzPLfgt
 jdfqUeVzdTt0KPRfsGuLnUpDfOiHPKJfagEz8jctCpbWOFKPlM+YvQ0q5
 zjXgksqHN2D657KHwrlJcgF44SAMHvb/9es+5xTADc1ojoNCJ5S7UN/cr
 2weOjkFGIxzkdKFxp2Dn4lXQbZWtIqJ7UoIqtiYGOBCCG2Jn0IQ1I2X6+
 uc3BOz7SZXjkNcaRippYxCOAEt+Z1jNkdhMNjKv/w9lvUA3IXC39v2gB3 Q==;
X-CSE-ConnectionGUID: js4HFBWQTnGMfKkmJRmf+w==
X-CSE-MsgGUID: 7XI1K7wgQVW27gQ2/qRmJw==
X-IronPort-AV: E=McAfee;i="6700,10204,11182"; a="23967388"
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="23967388"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 01:05:06 -0700
X-CSE-ConnectionGUID: ix2E5jWkSuOANES2yS3ZIQ==
X-CSE-MsgGUID: LLJn6rWORHmeCOjomP6tFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="65039847"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 01:05:05 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, ville.syrjala@linux.intel.com,
 mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 04/13] drm/i915/display: Enable MSA Ignore Timing PAR only
 when in not fixed_rr mode
Date: Mon,  2 Sep 2024 13:36:25 +0530
Message-ID: <20240902080635.2946858-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240902080635.2946858-1-ankit.k.nautiyal@intel.com>
References: <20240902080635.2946858-1-ankit.k.nautiyal@intel.com>
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

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c              | 2 +-
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 8 +++++++-
 2 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 25ff3ff0ab95..f6df1de2c6a3 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2213,7 +2213,7 @@ static void intel_dp_sink_set_msa_timing_par_ignore_state(struct intel_dp *intel
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 
-	if (!crtc_state->vrr.enable)
+	if (!crtc_state->vrr.enable || crtc_state->vrr.fixed_rr)
 		return;
 
 	if (drm_dp_dpcd_writeb(&intel_dp->aux, DP_DOWNSPREAD_CTRL,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 9c8738295106..4820a4bdbe26 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -718,8 +718,14 @@ void intel_dp_link_training_set_mode(struct intel_dp *intel_dp, int link_rate, b
 static void intel_dp_update_downspread_ctrl(struct intel_dp *intel_dp,
 					    const struct intel_crtc_state *crtc_state)
 {
+	bool enable_msa_timing_par_ignore;
+
+	/* Enable MSA TIMING PAR IGNORE only in non fixed_rr mode */
+	if (crtc_state->vrr.enable && !crtc_state->vrr.fixed_rr)
+		enable_msa_timing_par_ignore = true;
+
 	intel_dp_link_training_set_mode(intel_dp,
-					crtc_state->port_clock, crtc_state->vrr.flipline);
+					crtc_state->port_clock, enable_msa_timing_par_ignore);
 }
 
 void intel_dp_link_training_set_bw(struct intel_dp *intel_dp,
-- 
2.45.2

