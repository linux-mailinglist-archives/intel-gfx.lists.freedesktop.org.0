Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0GQoFsYbemlS2QEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 15:23:02 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09FB0A2B26
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 15:23:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 913D510E6F5;
	Wed, 28 Jan 2026 14:23:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ORyXT1dQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85E4E10E6F7;
 Wed, 28 Jan 2026 14:22:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769610178; x=1801146178;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wt/Dn6/HCeHSZ4s5LoIVTYs9CyprqnGN7swIps+Tjt0=;
 b=ORyXT1dQeuj7fVq7eeAlltj8V7a/6lgmApnPQgd2nsLRtKfLOXX7GkFc
 rTIX1YvHj1cBJkdVSWSCgan65RMenqq3gIYrbItJ+lB/9M2nPN0LqiUoE
 5gCjN4TRqnMq8+6iPkJHhE7WD6WDZSz5aU5GQM7g9CdiOXvBQgqWBQM7+
 WT4f/bjWv9F4FssCAgtelHeTPkj4TEIKm7V70bUi+5X5BmkspdNlykcza
 WjrUwMFkRyrbKIAb3yMetUhuH/+d/vIzewcM3A1pA6Q+JZcHT5tjtx/ax
 0ZaFbuYgvUiQf9Y0ZUDEQjRNwZgt+HxSyk6me1j5dfDv/6fHF5Wix+O/s A==;
X-CSE-ConnectionGUID: npwQBQV/Shqi8cdUKWtRjw==
X-CSE-MsgGUID: cyYzUxG8TcathOpA8EuF4A==
X-IronPort-AV: E=McAfee;i="6800,10657,11684"; a="58400946"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="58400946"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 06:22:58 -0800
X-CSE-ConnectionGUID: YNzCVtFFQxGOmrQQtwJ40A==
X-CSE-MsgGUID: 4qyCreDoSrq4K5J8ha+qbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="245881408"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 06:22:56 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, imre.deak@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 14/16] drm/i915/dp: Add helpers for joiner candidate loops
Date: Wed, 28 Jan 2026 19:36:34 +0530
Message-ID: <20260128140636.3527799-15-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260128140636.3527799-1-ankit.k.nautiyal@intel.com>
References: <20260128140636.3527799-1-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 09FB0A2B26
X-Rspamd-Action: no action

Introduce for_each_joiner_candidate(), intel_dp_pick_joiner_candidate() and
intel_dp_joiner_candidate_valid() to remove duplicated joiner enumeration
and validity checks across DP SST and MST paths.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 37 ++++++++-------------
 drivers/gpu/drm/i915/display/intel_dp.h     | 31 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 37 ++++++++-------------
 3 files changed, 59 insertions(+), 46 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index c1ff92367808..9eba8f90bc90 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1529,23 +1529,19 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	 * Because of this dependency cycle, the only correct approach is to iterate
 	 * over candidate pipe counts and evaluate each combination.
 	 */
-	for (num_pipes = 0; num_pipes < I915_MAX_PIPES; num_pipes++) {
+	for_each_joiner_candidate(num_pipes) {
 		int dsc_slice_count = 0;
 
 		status = MODE_CLOCK_HIGH;
 
-		if (num_pipes == 0) {
-			if (!connector->force_joined_pipes)
-				continue;
-			num_joined_pipes = connector->force_joined_pipes;
-		} else {
-			num_joined_pipes = num_pipes;
-		}
-
-		if (!intel_dp_can_join(display, num_joined_pipes))
+		if (!intel_dp_pick_joiner_candidate(num_pipes,
+						    connector->force_joined_pipes,
+						    &num_joined_pipes))
 			continue;
 
-		if (mode->hdisplay > num_joined_pipes * intel_dp_max_hdisplay_per_pipe(display))
+		if (!intel_dp_joiner_candidate_valid(display,
+						     mode->hdisplay,
+						     num_joined_pipes))
 			continue;
 
 		status = intel_pfit_mode_valid(display, mode, output_format, num_joined_pipes);
@@ -2938,20 +2934,15 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 	    !intel_dp_supports_fec(intel_dp, connector, crtc_state))
 		return -EINVAL;
 
-	for (num_pipes = 0; num_pipes < I915_MAX_PIPES; num_pipes++) {
-		if (num_pipes == 0) {
-			if (!connector->force_joined_pipes)
-				continue;
-			num_joined_pipes = connector->force_joined_pipes;
-		} else {
-			num_joined_pipes = num_pipes;
-		}
-
-		if (!intel_dp_can_join(display, num_joined_pipes))
+	for_each_joiner_candidate(num_pipes) {
+		if (!intel_dp_pick_joiner_candidate(num_pipes,
+						    connector->force_joined_pipes,
+						    &num_joined_pipes))
 			continue;
 
-		if (adjusted_mode->hdisplay >
-		    num_joined_pipes * intel_dp_max_hdisplay_per_pipe(display))
+		if (!intel_dp_joiner_candidate_valid(display,
+						     adjusted_mode->hdisplay,
+						     num_joined_pipes))
 			continue;
 
 		/*
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index beef480b7672..111a5d4b3992 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -234,4 +234,35 @@ bool intel_dp_dotclk_valid(struct intel_display *display,
 			   int dsc_slice_count,
 			   int num_joined_pipes);
 
+#define for_each_joiner_candidate(__num_pipes) \
+	for ((__num_pipes) = 0; (__num_pipes) < (I915_MAX_PIPES); (__num_pipes)++)
+
+static inline bool intel_dp_pick_joiner_candidate(int num_pipes,
+						  int force_joined_pipes,
+						  int *num_joined_pipes)
+{
+	if (num_pipes == 0) {
+		if (!force_joined_pipes)
+			return false;
+		*num_joined_pipes = force_joined_pipes;
+	} else {
+		*num_joined_pipes = num_pipes;
+	}
+
+	return true;
+}
+
+static inline bool intel_dp_joiner_candidate_valid(struct intel_display *display,
+						   int hdisplay,
+						   int num_joined_pipes)
+{
+	if (!intel_dp_can_join(display, num_joined_pipes))
+		return false;
+
+	if (hdisplay > num_joined_pipes * intel_dp_max_hdisplay_per_pipe(display))
+		return false;
+
+	return true;
+}
+
 #endif /* __INTEL_DP_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index bdf2f09fa03e..005efcb5d2bf 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -701,24 +701,19 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->has_pch_encoder = false;
 
-	for (num_pipes = 0; num_pipes < I915_MAX_PIPES; num_pipes++) {
+	for_each_joiner_candidate(num_pipes) {
 		int dsc_slice_count = 0;
 
 		ret = -EINVAL;
 
-		if (num_pipes == 0) {
-			if (!connector->force_joined_pipes)
-				continue;
-			num_joined_pipes = connector->force_joined_pipes;
-		} else {
-			num_joined_pipes = num_pipes;
-		}
-
-		if (!intel_dp_can_join(display, num_joined_pipes))
+		if (!intel_dp_pick_joiner_candidate(num_pipes,
+						    connector->force_joined_pipes,
+						    &num_joined_pipes))
 			continue;
 
-		if (adjusted_mode->hdisplay >
-		    num_joined_pipes * intel_dp_max_hdisplay_per_pipe(display))
+		if (!intel_dp_joiner_candidate_valid(display,
+						     adjusted_mode->hdisplay,
+						     num_joined_pipes))
 			continue;
 
 		if (num_joined_pipes > 1)
@@ -1535,23 +1530,19 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 		return 0;
 	}
 
-	for (num_pipes = 0; num_pipes < I915_MAX_PIPES; num_pipes++) {
+	for_each_joiner_candidate(num_pipes) {
 		int dsc_slice_count = 0;
 
 		*status = MODE_CLOCK_HIGH;
 
-		if (num_pipes == 0) {
-			if (!connector->force_joined_pipes)
-				continue;
-			num_joined_pipes = connector->force_joined_pipes;
-		} else {
-			num_joined_pipes = num_pipes;
-		}
-
-		if (!intel_dp_can_join(display, num_joined_pipes))
+		if (!intel_dp_pick_joiner_candidate(num_pipes,
+						    connector->force_joined_pipes,
+						    &num_joined_pipes))
 			continue;
 
-		if (mode->hdisplay > num_joined_pipes * intel_dp_max_hdisplay_per_pipe(display))
+		if (!intel_dp_joiner_candidate_valid(display,
+						     mode->hdisplay,
+						     num_joined_pipes))
 			continue;
 
 		if (intel_dp_has_dsc(connector) &&
-- 
2.45.2

