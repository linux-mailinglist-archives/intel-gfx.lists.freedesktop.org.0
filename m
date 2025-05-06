Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0A1CAAC897
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 16:49:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48E0A10E6BC;
	Tue,  6 May 2025 14:49:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CKtAcer6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20B4F10E6B9;
 Tue,  6 May 2025 14:49:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746542978; x=1778078978;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=k/3Cm3qBSE4kQUYbXULB1bDBvgYVlZea0Ikr+sLx42o=;
 b=CKtAcer6R5VXr1sOQXJf2/It1dJhrkgk+26smvpPxZqKRr7j1r6jgXgF
 7OBSHNmNNzuA/IF0fgR/ZpkMbKYwAhhSexhd5ASZEn8FnjWWob1zVPh+k
 /b9g5IWBGw/htJpXQjkLe0Lwv8wb+pMl7xMLYM7d87RgiYg9s8XacELdR
 WKB/t6aMZqEXwy0mBC5OwmlmLh1l1uOyaeb2dqIhrVBJHF/xQIgZKr1Mh
 z3pl5MWD6klHow31vCLPuVmaI/gkI7Tp8dOCZl9TZ/buAerkFJA4aeSiT
 EmwcQ6yVeg9ky47otfi9n3qQrt3oldYfh6lo7idxUw/BEq7YaDMhHcKuG g==;
X-CSE-ConnectionGUID: xpg5bafKSb6bs/DTGdOSTw==
X-CSE-MsgGUID: 8Txl/dl7T1ahZB0bWr4TZQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="47476964"
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="47476964"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 07:49:37 -0700
X-CSE-ConnectionGUID: q6JBGLkOTo2Z/C2PH6V0ZQ==
X-CSE-MsgGUID: oi64Q6TkQVqoNRbztE5wOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="135519549"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.171])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 07:49:35 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 3/3] drm/i915/alpm: Stop writing ALPM registers when PSR is
 enabled
Date: Tue,  6 May 2025 17:49:12 +0300
Message-ID: <20250506144912.1848606-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250506144912.1848606-1-jouni.hogander@intel.com>
References: <20250506144912.1848606-1-jouni.hogander@intel.com>
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

Currently we are seeing these on PTL:

xe 0000:00:02.0: [drm] *ERROR* Timeout waiting for DDI BUF A to get active

These seem to be caused by writing ALPM registers while Panel Replay is
enabled.

Fix this by writing ALPM registers only when Panel Replay is about to be
enabled.

v2: take into account disabled hw in old_crtc_state

Fixes: 172757acd6f6 ("drm/i915/lobf: Add lobf enablement in post plane update")
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 4d57bd517dfa..0d690d6716d8 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -472,10 +472,6 @@ void intel_alpm_post_plane_update(struct intel_atomic_state *state,
 		intel_atomic_get_old_crtc_state(state, crtc);
 	struct intel_encoder *encoder;
 
-	if ((!crtc_state->has_lobf ||
-	     crtc_state->has_lobf == old_crtc_state->has_lobf) && !crtc_state->has_psr)
-		return;
-
 	for_each_intel_encoder_mask(display->drm, encoder,
 				    crtc_state->uapi.encoder_mask) {
 		struct intel_dp *intel_dp;
@@ -485,6 +481,11 @@ void intel_alpm_post_plane_update(struct intel_atomic_state *state,
 
 		intel_dp = enc_to_intel_dp(encoder);
 
+		if ((!crtc_state->has_lobf && !intel_psr_needs_alpm(intel_dp, crtc_state)) ||
+		    ((old_crtc_state->has_lobf || intel_psr_needs_alpm(intel_dp, old_crtc_state)) &&
+		     old_crtc_state->hw.active))
+			continue;
+
 		if (intel_dp_is_edp(intel_dp)) {
 			intel_alpm_enable_sink(intel_dp, crtc_state);
 			intel_alpm_configure(intel_dp, crtc_state);
-- 
2.43.0

