Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7337DA783AB
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Apr 2025 22:54:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7FCC10E66D;
	Tue,  1 Apr 2025 20:54:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FyBAkPfe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E0B310E66D
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Apr 2025 20:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743540874; x=1775076874;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=HhbNs1O2H27qz60dzX5BFRfKgy/Z9tgDpqMSSRD0fLI=;
 b=FyBAkPfezJHD8ONi5HOp7CxgB8hmT70svZxBw+ARVa3XmP1EWgmHo04V
 0kiEuwTR2vjmsVEEeGH4AdK0wETe6UjOXL6d/G88GV7xvm3FAkO426WUs
 g8o2Vdl2ngsQpgI2ejzcZJwqkVRv44/FPvBuoRNLf7zpbxsAXsMdxMckS
 bwc9rZ/OD3muz8PeNMlggzDzEDpIGer0HcsUzEu4VZ8puJeajum19r1F+
 DW0Ft2EacGDLsJ1JVvNM7oM7SKZ873jj86b0txPchRfNPxLGBqfCYZaOz
 l3yGWbMn1mTYb9Tt8n24wd/WkDqrprKBisxqr6I0zuhT2rGMb2jo6wzpG A==;
X-CSE-ConnectionGUID: D+8ej+mhTweycEaPuhH2ig==
X-CSE-MsgGUID: LWTtpO7eS0ONWrwHydjejg==
X-IronPort-AV: E=McAfee;i="6700,10204,11391"; a="55518419"
X-IronPort-AV: E=Sophos;i="6.14,294,1736841600"; d="scan'208";a="55518419"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2025 13:54:33 -0700
X-CSE-ConnectionGUID: pBEtMH9FQ/ikt8kEQ3nGBA==
X-CSE-MsgGUID: d9bz41V0S82eWfd7OwRn3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,294,1736841600"; d="scan'208";a="131491891"
Received: from kialmah1-desk5.jf.intel.com ([10.23.33.174])
 by orviesa004.jf.intel.com with ESMTP; 01 Apr 2025 13:54:33 -0700
From: Khaled Almahallawy <khaled.almahallawy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Khaled Almahallawy <khaled.almahallawy@intel.com>,
 Imre Deak <imre.deak@intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2] drm/i915/display: Add link rate and lane count to
 i915_display_info
Date: Tue,  1 Apr 2025 13:54:31 -0700
Message-ID: <20250401205431.502423-1-khaled.almahallawy@intel.com>
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

Cc: Imre Deak <imre.deak@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 4c784bb7e14b..44df22bd7a18 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -552,9 +552,11 @@ static void intel_crtc_info(struct seq_file *m, struct intel_crtc *crtc)
 	seq_printf(m, "\tpipe__mode=" DRM_MODE_FMT "\n",
 		   DRM_MODE_ARG(&crtc_state->hw.pipe_mode));
 
-	seq_printf(m, "\tpipe src=" DRM_RECT_FMT ", dither=%s, bpp=%d\n",
+	seq_printf(m, "\tpipe src=" DRM_RECT_FMT ", dither=%s, bpp=%d",
 		   DRM_RECT_ARG(&crtc_state->pipe_src),
 		   str_yes_no(crtc_state->dither), crtc_state->pipe_bpp);
+	seq_printf(m, ", port_clock=%d, lane_count=%d\n",
+		   crtc_state->port_clock, crtc_state->lane_count);
 
 	intel_scaler_info(m, crtc);
 
-- 
2.43.0

