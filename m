Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04818842262
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jan 2024 12:12:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F043F112F91;
	Tue, 30 Jan 2024 11:11:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D299112F8F
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jan 2024 11:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706613113; x=1738149113;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sUKMut41ZSzY1SgcwXqgH0hS9+jLgGn5K2PnKgxbYVw=;
 b=nAHzzGF46lNTYvKiv/e2x1s+uegjUNULFalNvJh0SMhZY8Bpo85Cficl
 XHkUXozgZc76SQweBJiCHrVO4bIbxkBjrAw9VdYaiFSxmryjjXIADq6w9
 Wt0iQSEsQz9NQP9AUbvN0d2+CSHF/l6R+s4zcSOjkA1G/D98PVQjZDur5
 W7xRl7dPcTYRBx+Odk55NnrFNMlEK8OQ4o7tEyVELG55bzIgazyQwNsNX
 ILEmMm7AkvocYKnA5srUdzw1iIlD4cL8f96Ivw194WTTaPoxghp0zxpJG
 R41AJyDwk0ynUuobeRY6upayO+WGBBb1h3x6dOXrP94eWgQHKJzrFkXsp g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="402877179"
X-IronPort-AV: E=Sophos;i="6.05,707,1701158400"; d="scan'208";a="402877179"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2024 03:11:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="858461233"
X-IronPort-AV: E=Sophos;i="6.05,707,1701158400"; d="scan'208";a="858461233"
Received: from swilyman-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.41.112])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2024 03:11:51 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v3 3/4] drm/i915/alpm: Calculate ALPM Entry check
Date: Tue, 30 Jan 2024 13:11:29 +0200
Message-Id: <20240130111130.3298779-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240130111130.3298779-1-jouni.hogander@intel.com>
References: <20240130111130.3298779-1-jouni.hogander@intel.com>
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

ALPM Entry Check represents the number of lines needed to put the main link
to sleep and keep it in the sleep state before it can be taken out of the
SLEEP state (eDP requires the main link to be in the SLEEP state for a
minimum of 5us).

Bspec: 71477

v2: move display version check into _lnl_compute_alpm_param

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  3 ++
 drivers/gpu/drm/i915/display/intel_psr.c      | 29 +++++++++++++++++++
 2 files changed, 32 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index ff6cd30b2b76..9fa42a4503fe 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1714,6 +1714,9 @@ struct intel_psr {
 	struct {
 		u8 io_wake_lines;
 		u8 fast_wake_lines;
+
+		/* LNL and beyond */
+		u8 check_entry_lines;
 	} alpm_parameters;
 
 	ktime_t last_entry_attempt;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 4bca1107997f..7aedda0ca2d2 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1126,6 +1126,30 @@ static bool _compute_psr2_sdp_prior_scanline_indication(struct intel_dp *intel_d
 	return true;
 }
 
+static bool _lnl_compute_alpm_params(struct intel_dp *intel_dp,
+				     struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	int check_entry_lines;
+
+	if (DISPLAY_VER(i915) < 20)
+		return true;
+
+	/* ALPM Entry Check = 2 + CEILING( 5us /tline ) */
+	check_entry_lines = 2 +
+		intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode, 5);
+
+	if (check_entry_lines > 15)
+		return false;
+
+	if (i915->display.params.psr_safest_params)
+		check_entry_lines = 15;
+
+	intel_dp->psr.alpm_parameters.check_entry_lines = check_entry_lines;
+
+	return true;
+}
+
 static bool _compute_alpm_params(struct intel_dp *intel_dp,
 				 struct intel_crtc_state *crtc_state)
 {
@@ -1140,6 +1164,8 @@ static bool _compute_alpm_params(struct intel_dp *intel_dp,
 		 * it is not enough -> use 45 us.
 		 */
 		fast_wake_time = 45;
+
+		/* TODO: Check how we can use ALPM_CTL fast wake extended field */
 		max_wake_lines = 12;
 	} else {
 		io_wake_time = 50;
@@ -1156,6 +1182,9 @@ static bool _compute_alpm_params(struct intel_dp *intel_dp,
 	    fast_wake_lines > max_wake_lines)
 		return false;
 
+	if (!_lnl_compute_alpm_params(intel_dp, crtc_state))
+		return false;
+
 	if (i915->display.params.psr_safest_params)
 		io_wake_lines = fast_wake_lines = max_wake_lines;
 
-- 
2.34.1

