Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEE94A22868
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2025 06:19:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8103110E8E5;
	Thu, 30 Jan 2025 05:19:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kYXW3TsY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6319410E8E8;
 Thu, 30 Jan 2025 05:19:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738214365; x=1769750365;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xNns2YmvWNhfpFzZmzWclQzUevBmKbkHHwWGBzwShNk=;
 b=kYXW3TsYYSEBnAXBEP4QHRo6FgEjDiKUdRK6Nj5dbyH1U6U3anKba0d+
 2hzOhJWjudAt21EqniL2RW4KO9CwpcryX76PohYB+N9pSXj8AxAxTmYV/
 I4DzViaioxQgCHZVjyBnRYOWGB1ED1rTrP6Dx13bo7lIkjE0Z947TWqWN
 re57YrB5aAkOXeISYMeqLkmnolv8wHPaMC4LY7HeZnSzWwMWipkncx7BY
 nJ9Q2SkRCJU0g5BsnT8cHtHPDBAUvh0INeOgvOLW5EibxuFnDKTDJ50ZG
 xFasrhmxOILOHO5nChVJAtX2eJyZ8snXdVsxPiewDq/p/z12eDpSiTGD7 w==;
X-CSE-ConnectionGUID: Hhfz/F1LRJuwM/BVqJ/k+g==
X-CSE-MsgGUID: C0SAyr7iRb2KD2K77fFL6g==
X-IronPort-AV: E=McAfee;i="6700,10204,11330"; a="50133484"
X-IronPort-AV: E=Sophos;i="6.13,244,1732608000"; d="scan'208";a="50133484"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 21:19:24 -0800
X-CSE-ConnectionGUID: uGo319omR2apGQO3HJLiDA==
X-CSE-MsgGUID: ySrImJzmQAO4+PzmVZ3/bg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,244,1732608000"; d="scan'208";a="109060364"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa006.fm.intel.com with ESMTP; 29 Jan 2025 21:19:22 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH v6 5/6] drm/i915/dp: Compute as_sdp based on if vrr possible
Date: Thu, 30 Jan 2025 10:46:08 +0530
Message-ID: <20250130051609.1796524-6-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250130051609.1796524-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250130051609.1796524-1-mitulkumar.ajitkumar.golani@intel.com>
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
index f876dbeb6121..80214a559013 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2826,7 +2826,7 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
 
-	if (!crtc_state->vrr.enable || !intel_dp->as_sdp_supported)
+	if (!intel_vrr_possible(crtc_state) || !intel_dp->as_sdp_supported)
 		return;
 
 	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC);
-- 
2.48.1

