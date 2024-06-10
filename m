Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A02A0901BD5
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2024 09:22:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FAAA10E318;
	Mon, 10 Jun 2024 07:22:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QtEXzfds";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6187C10E2F6
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2024 07:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718004125; x=1749540125;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nGgkZZTMOjvtO7IH+MVWA5GD2vTfIyvSd4nRe5HYyyc=;
 b=QtEXzfds2ibYGGeAHljSEyts8fYEgr9qX570FE2EldJ4kh2vLF1j8NNR
 /W8K9g54H3hfP1ceXjhj0ajhXF1PglZdU4mFlWDZ7vKEKsCtcXTpN2E/g
 yPr53aLYCplAKK+ehlgEzev82/ROx/0mic3M6H+d4WqjMNJGAxeA+iDVl
 A70gUa1pjbS5sYRR8HilzU7ZSgSw/RK0no9UNqL88OLYkpeBLyZJOwFPk
 1QEkLGPw9c0gjr5rtobYn3V2D0JL3+e2pzTgeK5cHc9mcE6nqSZEr0KHj
 EE/GP8R/XGgTHQ1xM8qGqy0w5nTd6QqtRpnlD9DaYcKrJyDeQj+RE+vcT Q==;
X-CSE-ConnectionGUID: r8vsQO4cS4Wov8ga6TfJvQ==
X-CSE-MsgGUID: XB+1snoVQW2UJg993SifFw==
X-IronPort-AV: E=McAfee;i="6600,9927,11098"; a="14526414"
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="14526414"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 00:22:05 -0700
X-CSE-ConnectionGUID: R/BBqx8OSf+w84GKe1PmJA==
X-CSE-MsgGUID: JMrbXOEVTM6kOQ+JPlRqTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="43407648"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa003.fm.intel.com with ESMTP; 10 Jun 2024 00:22:04 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com
Subject: [PATCH v16 8/9] drm/i915/display: Compute vrr vsync params
Date: Mon, 10 Jun 2024 12:52:01 +0530
Message-ID: <20240610072203.24956-9-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240610072203.24956-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20240610072203.24956-1-mitulkumar.ajitkumar.golani@intel.com>
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

Compute vrr vsync params in case of FAVT as well instead of
only to AVT mode of operation.

--v2:
- Remove redundant computation for vrr_vsync_start
and vrr_vsync_end(Ankit).

--v3:
- vrr.enable and cmrr.enable check together is not required as both
will be true at the same point in time. (Ankit)
- Replace vrr.enable flag to cmrr.enable, mistakenly added. (Ankit)

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 19b364074de0..4ad99a54aa83 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -175,14 +175,15 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	if (crtc_state->uapi.vrr_enabled) {
 		crtc_state->vrr.enable = true;
 		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
-		if (intel_dp_as_sdp_supported(intel_dp)) {
-			crtc_state->vrr.vsync_start =
-				(crtc_state->hw.adjusted_mode.crtc_vtotal -
-					crtc_state->hw.adjusted_mode.vsync_start);
-			crtc_state->vrr.vsync_end =
-				(crtc_state->hw.adjusted_mode.crtc_vtotal -
-					crtc_state->hw.adjusted_mode.vsync_end);
-		}
+	}
+
+	if (intel_dp_as_sdp_supported(intel_dp)) {
+		crtc_state->vrr.vsync_start =
+			(crtc_state->hw.adjusted_mode.crtc_vtotal -
+			 crtc_state->hw.adjusted_mode.vsync_start);
+		crtc_state->vrr.vsync_end =
+			(crtc_state->hw.adjusted_mode.crtc_vtotal -
+			 crtc_state->hw.adjusted_mode.vsync_end);
 	}
 }
 
-- 
2.45.2

