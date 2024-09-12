Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAC8997680A
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 13:42:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D69510EB4F;
	Thu, 12 Sep 2024 11:42:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="URprUup4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A28A10EB4F
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2024 11:42:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726141321; x=1757677321;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NlzPR5+s4dfxqTIZhVyNhYf/HccGRSzagJ4w0W+oIPs=;
 b=URprUup4diles6q0cUBU994xqIXt+7CESmJ5OlT+O0F17GiruGcu9bmP
 wloqQXmoSHg1kMbGbJhqwqPV0u+kqR/oJsLV7dyz2tASywSO2MeW6bxwg
 DV3v29i5PDDHqQZ6gQna+UUPDElRtgjIUpEQbC4F4GIINy8n4sgWHGt9L
 TYfbdYEb2JSy3KxVheWIA6thKlAuaXdfqx9Twf7ykNfH2llmkUQE6Xoty
 /G6Nm3uhUDe5puXx5HQiK12wGF5ErjWVLBnNXnNlETWHGgYl9QYPclXiK
 oQ/SLgO+muCRaF2lGnu2bztEWq4aSl3/cpFNY+J9tUiTkCT0c2AOfhDjZ w==;
X-CSE-ConnectionGUID: fWA8ARw4Srub7dqcq8meeQ==
X-CSE-MsgGUID: 7teN6ZqySBC5MGIwrYZdlQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="25089222"
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="25089222"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 04:42:00 -0700
X-CSE-ConnectionGUID: FZe7yaiZRauBMuPxNjcBdA==
X-CSE-MsgGUID: CHrAdO2ERsCFbU66R5mRww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="67675424"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 04:41:52 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: suraj.kandpal@intel.com, jani.saarinen@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 1/4] drm/i915/display: Simplify intel_joiner_num_pipes and its
 usage
Date: Thu, 12 Sep 2024 17:13:27 +0530
Message-ID: <20240912114330.1244982-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240912114330.1244982-1-ankit.k.nautiyal@intel.com>
References: <20240912114330.1244982-1-ankit.k.nautiyal@intel.com>
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

Currently intel_joiner_num_pipes is used to get num of pipes wrt num of
pipes joined. Simplify this by returning 1 when no joiner is used and
update the checks for no joiner case.

v2: Rename the function to intel_crtc_num_joined_pipes and use helper
intel_crtc_joined_pipe_mask. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index fdf244a32b24..1d10fc998566 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -278,9 +278,9 @@ bool intel_crtc_is_joiner_primary(const struct intel_crtc_state *crtc_state)
 		crtc->pipe == joiner_primary_pipe(crtc_state);
 }
 
-static int intel_joiner_num_pipes(const struct intel_crtc_state *crtc_state)
+static int intel_crtc_num_joined_pipes(const struct intel_crtc_state *crtc_state)
 {
-	return hweight8(crtc_state->joiner_pipes);
+	return hweight8(intel_crtc_joined_pipe_mask(crtc_state));
 }
 
 u8 intel_crtc_joined_pipe_mask(const struct intel_crtc_state *crtc_state)
@@ -2347,9 +2347,9 @@ static void intel_crtc_compute_pixel_rate(struct intel_crtc_state *crtc_state)
 static void intel_joiner_adjust_timings(const struct intel_crtc_state *crtc_state,
 					struct drm_display_mode *mode)
 {
-	int num_pipes = intel_joiner_num_pipes(crtc_state);
+	int num_pipes = intel_crtc_num_joined_pipes(crtc_state);
 
-	if (num_pipes < 2)
+	if (num_pipes == 1)
 		return;
 
 	mode->crtc_clock /= num_pipes;
@@ -2411,7 +2411,7 @@ static void intel_crtc_readout_derived_state(struct intel_crtc_state *crtc_state
 	drm_mode_copy(mode, pipe_mode);
 	intel_mode_from_crtc_timings(mode, mode);
 	mode->hdisplay = drm_rect_width(&crtc_state->pipe_src) *
-		(intel_joiner_num_pipes(crtc_state) ?: 1);
+		intel_crtc_num_joined_pipes(crtc_state);
 	mode->vdisplay = drm_rect_height(&crtc_state->pipe_src);
 
 	/* Derive per-pipe timings in case joiner is used */
@@ -2431,10 +2431,10 @@ void intel_encoder_get_config(struct intel_encoder *encoder,
 
 static void intel_joiner_compute_pipe_src(struct intel_crtc_state *crtc_state)
 {
-	int num_pipes = intel_joiner_num_pipes(crtc_state);
+	int num_pipes = intel_crtc_num_joined_pipes(crtc_state);
 	int width, height;
 
-	if (num_pipes < 2)
+	if (num_pipes == 1)
 		return;
 
 	width = drm_rect_width(&crtc_state->pipe_src);
@@ -2891,11 +2891,11 @@ static void intel_get_transcoder_timings(struct intel_crtc *crtc,
 static void intel_joiner_adjust_pipe_src(struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	int num_pipes = intel_joiner_num_pipes(crtc_state);
+	int num_pipes = intel_crtc_num_joined_pipes(crtc_state);
 	enum pipe primary_pipe, pipe = crtc->pipe;
 	int width;
 
-	if (num_pipes < 2)
+	if (num_pipes == 1)
 		return;
 
 	primary_pipe = joiner_primary_pipe(crtc_state);
-- 
2.45.2

