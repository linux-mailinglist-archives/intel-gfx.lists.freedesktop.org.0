Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBED497534C
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2024 15:12:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7264110EA17;
	Wed, 11 Sep 2024 13:12:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m37HTgWH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFC4110EA17
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2024 13:12:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726060338; x=1757596338;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/lqrKZfmQPXnZg+6IqEz7Tfh6kcjZy85/K3Uy1+k4+E=;
 b=m37HTgWHoKm3m23wr66Y/6IHPHZtTPsZsS9x57Dn1sX83d8nNVARc21o
 I1YJ40aDPlosbWsYGFnZ8eScO3eSvYyEBYdcCcN/umyFVqCLHxBC/vkJc
 LbYNLL+F3WHHTHvr4FJ0PqjRv5G520JaWmwugrN3R0aL//xlAO98WFRtF
 IC+Xpl+bkZYFfVrJuWZj5WHr+S00mnh+hv1/XxpQbrj8Xsa/9uRMSRmQ8
 wJU1yEOux7kLKrvLo634Yw+6aNaM37RnJy3Jr0HUCDuTSLWTufJrSOR1R
 mhxvz2SPDHT0fJL/RsMRKYyhHrUcTTgN43EnKsXRAJFHq10K1rYIuMZgf A==;
X-CSE-ConnectionGUID: CAW8Y9JiS8m8jIDQ6w9sRw==
X-CSE-MsgGUID: aYtldA+mSuqLQOaD9BiTrQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="36244355"
X-IronPort-AV: E=Sophos;i="6.10,220,1719903600"; d="scan'208";a="36244355"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 06:12:18 -0700
X-CSE-ConnectionGUID: GsGnsWiWQtO4utD05zT6eQ==
X-CSE-MsgGUID: bA+/tbQ5SXerkus91aoxEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,220,1719903600"; d="scan'208";a="67380917"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 06:12:16 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: suraj.kandpal@intel.com, jani.saarinen@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 06/19] drm/i915/display: Simplify intel_joiner_num_pipes and
 its usage
Date: Wed, 11 Sep 2024 18:43:36 +0530
Message-ID: <20240911131349.933814-7-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240911131349.933814-1-ankit.k.nautiyal@intel.com>
References: <20240911131349.933814-1-ankit.k.nautiyal@intel.com>
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

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 486bade9e927..4751ee20216d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -280,7 +280,7 @@ bool intel_crtc_is_joiner_primary(const struct intel_crtc_state *crtc_state)
 
 static int intel_joiner_num_pipes(const struct intel_crtc_state *crtc_state)
 {
-	return hweight8(crtc_state->joiner_pipes);
+	return hweight8(crtc_state->joiner_pipes) ?: 1;
 }
 
 u8 intel_crtc_joined_pipe_mask(const struct intel_crtc_state *crtc_state)
@@ -2347,7 +2347,7 @@ static void intel_joiner_adjust_timings(const struct intel_crtc_state *crtc_stat
 {
 	int num_pipes = intel_joiner_num_pipes(crtc_state);
 
-	if (num_pipes < 2)
+	if (num_pipes == 1)
 		return;
 
 	mode->crtc_clock /= num_pipes;
@@ -2409,7 +2409,7 @@ static void intel_crtc_readout_derived_state(struct intel_crtc_state *crtc_state
 	drm_mode_copy(mode, pipe_mode);
 	intel_mode_from_crtc_timings(mode, mode);
 	mode->hdisplay = drm_rect_width(&crtc_state->pipe_src) *
-		(intel_joiner_num_pipes(crtc_state) ?: 1);
+		intel_joiner_num_pipes(crtc_state);
 	mode->vdisplay = drm_rect_height(&crtc_state->pipe_src);
 
 	/* Derive per-pipe timings in case joiner is used */
@@ -2432,7 +2432,7 @@ static void intel_joiner_compute_pipe_src(struct intel_crtc_state *crtc_state)
 	int num_pipes = intel_joiner_num_pipes(crtc_state);
 	int width, height;
 
-	if (num_pipes < 2)
+	if (num_pipes == 1)
 		return;
 
 	width = drm_rect_width(&crtc_state->pipe_src);
@@ -2893,7 +2893,7 @@ static void intel_joiner_adjust_pipe_src(struct intel_crtc_state *crtc_state)
 	enum pipe primary_pipe, pipe = crtc->pipe;
 	int width;
 
-	if (num_pipes < 2)
+	if (num_pipes == 1)
 		return;
 
 	primary_pipe = joiner_primary_pipe(crtc_state);
-- 
2.45.2

