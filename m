Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF601A83458
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Apr 2025 01:02:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D36410E035;
	Wed,  9 Apr 2025 23:02:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BLQeiHyU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4752010E035
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Apr 2025 23:02:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744239736; x=1775775736;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=13nfdB6JDGDcqxrFK96liajgcESeN+yKAbKw+oAdkVs=;
 b=BLQeiHyUql0SPspq7ngt9/W01VMXjrYgVqRKkaasUw09SegbBHlw/lTU
 9iq+DX8Tw6hfk1B3MGRynV6RnIGAKQqQT6W1D2RsmJ1O4UWinrvI3DVV6
 UL5pgMtsCNWcP1fwtmT0/8YKI6e2ykDj2JNy16jfC2o9c/96cCIyQJusr
 EYKS54OqPb9UcjBw3MMb5+Sidv8kyDuEMyNKoGwTmTAlb5KUQ+Qx+xG0T
 T6Mp3UmluSG50BiFx6aLc2pTrm91uoHe/F5TutG3ulMB1K6Ngy6SyL/aj
 Pirc+WqKnxMFx3juKtNFROHgRwKE77pTFu8MD0SyNfHu5H3hsJBJZiXfD A==;
X-CSE-ConnectionGUID: FPxWaL+tStK8wUF47brx3w==
X-CSE-MsgGUID: LvgJbCH6RnaqQ5wGGfTY+A==
X-IronPort-AV: E=McAfee;i="6700,10204,11399"; a="55915878"
X-IronPort-AV: E=Sophos;i="6.15,201,1739865600"; d="scan'208";a="55915878"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 16:02:16 -0700
X-CSE-ConnectionGUID: YAodR0A4T+2eCSpuznYJ7Q==
X-CSE-MsgGUID: ZJuNSE1MTtGZ/J4kGy3Cqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,201,1739865600"; d="scan'208";a="159688532"
Received: from kialmah1-desk5.jf.intel.com ([10.23.33.174])
 by fmviesa001.fm.intel.com with ESMTP; 09 Apr 2025 16:02:15 -0700
From: Khaled Almahallawy <khaled.almahallawy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Khaled Almahallawy <khaled.almahallawy@intel.com>,
 Imre Deak <imre.deak@intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v3] drm/i915/display: Add link rate and lane count to
 i915_display_info
Date: Wed,  9 Apr 2025 16:02:14 -0700
Message-ID: <20250409230214.963999-1-khaled.almahallawy@intel.com>
X-Mailer: git-send-email 2.43.0
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

Adding link rate and lane count information to i915_display_info makes it
easier and faster to access this data compared to checking kernel logs.
This is particularly beneficial for individuals who are not familiar with
i915 in the following scenarios:

* Debugging DP tunnel bandwidth usage in the Thunderbolt driver.
* During USB4 certification, it is necessary to know the link rate used by
  the monitor to prove that the DP tunnel can handle required rates.
* In PHY CTS, when the connector probes are not mounted correctly,
  some display lanes may not appear in the DP Oscilloscope, leading to CTS
  failures.

This change provides validation teams with an easy way to identify and
troubleshoot issues.

v2: separate seq_printf line (Jani)
v3: separate output line (Jani)

Cc: Imre Deak <imre.deak@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 8f1f95637e09..ff7419ca7d56 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -555,6 +555,8 @@ static void intel_crtc_info(struct seq_file *m, struct intel_crtc *crtc)
 	seq_printf(m, "\tpipe src=" DRM_RECT_FMT ", dither=%s, bpp=%d\n",
 		   DRM_RECT_ARG(&crtc_state->pipe_src),
 		   str_yes_no(crtc_state->dither), crtc_state->pipe_bpp);
+	seq_printf(m, "\tport_clock=%d, lane_count=%d\n",
+		   crtc_state->port_clock, crtc_state->lane_count);
 
 	intel_scaler_info(m, crtc);
 
-- 
2.43.0

