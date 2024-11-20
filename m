Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 058029D35CD
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 09:47:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9888E10E6D3;
	Wed, 20 Nov 2024 08:47:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="At5GKFB0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0BED10E6D5
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2024 08:47:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732092474; x=1763628474;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ltoh536+NR88G9J/xvQlmy8dyv7QNT1JV3JJqIkOu1w=;
 b=At5GKFB0upRnLkWWYx7NwO6f1FOcVI5zjD+AI4DrIyP/O4DSTuqQz1WF
 QTeTbU4wAChy/iiwr1KfX2flNGzwhFFbUS2NUn7PepoJNzE3U0Gz9ou0R
 SwfT7PFD/NA3qAQ7ldX6pq+Zu0LE05lKUPgbPPEvASaWFTUI4tTdc6dnV
 9t+6g45v3OeY5087eDY6GJfhSkNioP8hoaNqo51rBDYsQ8ydoaUphv+T0
 ry+rRSbCo4etK+0bpRjVQcnkfokaPB7Hd+qKYfO3ajf0515233X6MsjnR
 7pDhtyJfTYMRJlhzoys1mhkh8hg5AiFCG4Azv6VLK8wGAO8MLdXbXRLLW A==;
X-CSE-ConnectionGUID: bja10lefTzexJ7p25nlKww==
X-CSE-MsgGUID: Hhd0z4hcTwiLnXina9hdYA==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="31887145"
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="31887145"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 00:47:54 -0800
X-CSE-ConnectionGUID: 0vAx2vj7SBCG+1/JBl+D2w==
X-CSE-MsgGUID: tICdlxyNQCOz7hkn/MNZRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="89956779"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa006.jf.intel.com with ESMTP; 20 Nov 2024 00:47:52 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, ville.syrjala@linux.intel.com,
 jani.nikula@intel.com
Subject: [PATCH v4 5/5] drm/i915/dp: Compute as_sdp based on if vrr possible
Date: Wed, 20 Nov 2024 14:19:48 +0530
Message-ID: <20241120084948.1834306-6-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20241120084948.1834306-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20241120084948.1834306-1-mitulkumar.ajitkumar.golani@intel.com>
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

Adaptive sync sdp param computation, we can configure during
full modeset as well when sink is having vrr support, where
it doesn't need dependency on vrr.enable status and can also
match vrr enable/disable fastset requirement.

--v2:
 - Separate the change from as_sdp.vtotal. [Ankit]

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index e39ae59370c0..bff9d2ec08e3 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2807,7 +2807,7 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
 
-	if (!crtc_state->vrr.enable || !intel_dp->as_sdp_supported)
+	if (!intel_vrr_possible(crtc_state) || !intel_dp->as_sdp_supported)
 		return;
 
 	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC);
-- 
2.46.0

