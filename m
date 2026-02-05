Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4Mq7G0NahGl92gMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 09:52:19 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 074EBF00F6
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 09:52:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56B4D10E809;
	Thu,  5 Feb 2026 08:52:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lk6HPBOa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4118610E802;
 Thu,  5 Feb 2026 08:52:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770281535; x=1801817535;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xCHuLYu++abPio9ZHmT4EULJVWy/9oZ5znZrqEmrADU=;
 b=lk6HPBOaiT9Gasa7m0+zVjjyXbW+YLCB/yd6ZtDa/GZguf0KD3QdyEGE
 lAfFgsUCtLe6f1ewvTV0h8N1OKyU6EsxYXA1GxmGJpgpW1RJcG0BKkcqZ
 VnoHJYKZ38JxApg/O0zQu6N9Rsn5xprJoTkuazwgEnB+CrJ0IQMrvfPdC
 oXs3XeJNnCLDcibrgSoRMEEy3ZDWJ4fws7jQIuL2WmE8RhqTBBoyDPF0+
 qnp9JsKdBjgZiFWvwUBd/zlWAlu9RFmD1YNMbiyclepo0UoFfYDi7x9Sf
 NJenHq/zsr7LBrAL+AUFV3KdbF97NZ5D2eBnq6oR1jgIuiD5GEnqj5RXK Q==;
X-CSE-ConnectionGUID: wzphVDW+RUKbnmSncAXi8A==
X-CSE-MsgGUID: 7U9gUAujSTuKzifqBlXYeQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="71377292"
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="71377292"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 00:52:13 -0800
X-CSE-ConnectionGUID: iWBRBmI0TjukXztZKvKY1A==
X-CSE-MsgGUID: /0763hKgTG+sM179uiHW+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="233380094"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 00:52:11 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, imre.deak@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 2/2] drm/i915/dp: Restore the missing check for
 intel_dp_has_joiner
Date: Thu,  5 Feb 2026 14:06:23 +0530
Message-ID: <20260205083623.793902-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260205083623.793902-1-ankit.k.nautiyal@intel.com>
References: <20260205083623.793902-1-ankit.k.nautiyal@intel.com>
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
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.999];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 074EBF00F6
X-Rspamd-Action: no action

Commit ad121a62d566 ("drm/i915/dp: Rework pipe joiner logic in mode_valid")
replaced intel_dp_num_joined_pipes() with an explicit joiner candidate
iteration. The previous code implicitly checked for DP joiner capability
via intel_dp_has_joiner(), but this check was lost during the refactor.

Restore the missing intel_dp_has_joiner() check in intel_dp_can_join() so
that DP specific joiner conditions are taken into account.

This change also requires propagating struct intel_dp * from the callers
down to the new check.

Fixes: ad121a62d566 ("drm/i915/dp: Rework pipe joiner logic in mode_valid")
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 16 +++++++++++-----
 drivers/gpu/drm/i915/display/intel_dp.h     |  7 ++++---
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  4 ++--
 3 files changed, 17 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 4f5b89f80e55..3021c64d0f85 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1397,9 +1397,14 @@ bool intel_dp_has_dsc(const struct intel_connector *connector)
 }
 
 static
-bool intel_dp_can_join(struct intel_display *display,
+bool intel_dp_can_join(struct intel_dp *intel_dp,
 		       int num_joined_pipes)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
+
+	if (num_joined_pipes > 1 && !intel_dp_has_joiner(intel_dp))
+		return false;
+
 	switch (num_joined_pipes) {
 	case 1:
 		return true;
@@ -1496,7 +1501,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	 * over candidate pipe counts and evaluate each combination.
 	 */
 	status = MODE_CLOCK_HIGH;
-	for_each_joiner_candidate(connector, mode, num_joined_pipes) {
+	for_each_joiner_candidate(intel_dp, connector, mode, num_joined_pipes) {
 		int dsc_slice_count = 0;
 
 		status = intel_pfit_mode_valid(display, mode, output_format, num_joined_pipes);
@@ -2895,7 +2900,7 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 	    !intel_dp_supports_fec(intel_dp, connector, crtc_state))
 		return -EINVAL;
 
-	for_each_joiner_candidate(connector, adjusted_mode, num_joined_pipes) {
+	for_each_joiner_candidate(intel_dp, connector, adjusted_mode, num_joined_pipes) {
 		/*
 		 * NOTE:
 		 * The crtc_state->joiner_pipes should have been set at the end
@@ -7213,13 +7218,14 @@ int intel_dp_sdp_min_guardband(const struct intel_crtc_state *crtc_state,
 	return sdp_guardband;
 }
 
-bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
+bool intel_dp_joiner_candidate_valid(struct intel_dp *intel_dp,
+				     struct intel_connector *connector,
 				     int hdisplay,
 				     int num_joined_pipes)
 {
 	struct intel_display *display = to_intel_display(connector);
 
-	if (!intel_dp_can_join(display, num_joined_pipes))
+	if (!intel_dp_can_join(intel_dp, num_joined_pipes))
 		return false;
 
 	if (hdisplay > num_joined_pipes * intel_dp_max_hdisplay_per_pipe(display))
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index cbd7fcd3789f..37302ebe1cf9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -227,12 +227,13 @@ bool intel_dp_dotclk_valid(struct intel_display *display,
 			   int htotal,
 			   int dsc_slice_count,
 			   int num_joined_pipes);
-bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
+bool intel_dp_joiner_candidate_valid(struct intel_dp *intel_dp,
+				     struct intel_connector *connector,
 				     int hdisplay,
 				     int num_joined_pipes);
 
-#define for_each_joiner_candidate(__connector, __mode, __num_joined_pipes) \
+#define for_each_joiner_candidate(__intel_dp, __connector, __mode, __num_joined_pipes) \
 	for ((__num_joined_pipes) = 1; (__num_joined_pipes) <= (I915_MAX_PIPES); (__num_joined_pipes)++) \
-		for_each_if(intel_dp_joiner_candidate_valid(__connector, (__mode)->hdisplay, __num_joined_pipes))
+		for_each_if(intel_dp_joiner_candidate_valid(__intel_dp, __connector, (__mode)->hdisplay, __num_joined_pipes))
 
 #endif /* __INTEL_DP_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 29713075e413..b2d3f35edd78 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -720,7 +720,7 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->has_pch_encoder = false;
 
-	for_each_joiner_candidate(connector, adjusted_mode, num_joined_pipes) {
+	for_each_joiner_candidate(intel_dp, connector, adjusted_mode, num_joined_pipes) {
 		if (num_joined_pipes > 1)
 			pipe_config->joiner_pipes = GENMASK(crtc->pipe + num_joined_pipes - 1,
 							    crtc->pipe);
@@ -1524,7 +1524,7 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 	}
 
 	*status = MODE_CLOCK_HIGH;
-	for_each_joiner_candidate(connector, mode, num_joined_pipes) {
+	for_each_joiner_candidate(intel_dp, connector, mode, num_joined_pipes) {
 		int dsc_slice_count = 0;
 
 		if (intel_dp_has_dsc(connector) &&
-- 
2.45.2

