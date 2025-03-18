Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 509E6A67F38
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Mar 2025 23:04:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8310310E4CB;
	Tue, 18 Mar 2025 22:04:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fohN1Rfj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47DF710E4CB
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Mar 2025 22:04:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742335444; x=1773871444;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yBGLzjrQFGlRVFWTLdF3mrf1P1AWK6VrVdDBsqvPkic=;
 b=fohN1RfjnyuoY3rqA3xc4E3BCpLiFwww3qwrkrAs4ou59eUUB16S1+UP
 1bWBczCe63iJwan0/3Syrc8Jnbd5JT1uMzN39Ed4tOAeHNdiHEvgTpJPB
 vfL1WHh3SzfhYuqeUpOtFCtKC6fApEX7+TKN+pf0Kzc65D1I0f7eLCloN
 KZ1WHiO25wlbITq2esk27NYJO4lHBRNBWA/ou1DNl/LUwjFGwwGdRlldV
 ZK9dEkRMqpIfzmKwmoplJ5w7AtsASoUcS0baLbnt5xl1iurjAZdQpnvWr
 J+IxBwtaX50PMN4nICtnFQeA1Izt8mdfdRQmst2rBxK1Kq2nnanN4Q9pw g==;
X-CSE-ConnectionGUID: Tcf2zvesT3+JEcOssLAfBw==
X-CSE-MsgGUID: 0koHCHu/QQCSIRy98ZpgPg==
X-IronPort-AV: E=McAfee;i="6700,10204,11377"; a="31078007"
X-IronPort-AV: E=Sophos;i="6.14,258,1736841600"; d="scan'208";a="31078007"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2025 15:04:04 -0700
X-CSE-ConnectionGUID: BWp8kym6S1y9EEQ6Gzmw7A==
X-CSE-MsgGUID: rgPzxpw0TN2LU6E+TGDHyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,258,1736841600"; d="scan'208";a="153235449"
Received: from kialmah1-desk5.jf.intel.com ([10.23.33.174])
 by orviesa002.jf.intel.com with ESMTP; 18 Mar 2025 15:04:04 -0700
From: Khaled Almahallawy <khaled.almahallawy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Khaled Almahallawy <khaled.almahallawy@intel.com>,
 Imre Deak <imre.deak@intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH] drm/i915/display: Add link rate and lane count to
 i915_display_info
Date: Tue, 18 Mar 2025 15:04:01 -0700
Message-ID: <20250318220401.3904871-1-khaled.almahallawy@intel.com>
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

Cc: Imre Deak <imre.deak@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index fdedf65bee53..bda7751472e2 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -551,9 +551,10 @@ static void intel_crtc_info(struct seq_file *m, struct intel_crtc *crtc)
 	seq_printf(m, "\tpipe__mode=" DRM_MODE_FMT "\n",
 		   DRM_MODE_ARG(&crtc_state->hw.pipe_mode));
 
-	seq_printf(m, "\tpipe src=" DRM_RECT_FMT ", dither=%s, bpp=%d\n",
+	seq_printf(m, "\tpipe src=" DRM_RECT_FMT ", dither=%s, bpp=%d, port_clock=%d, lane_count=%d\n",
 		   DRM_RECT_ARG(&crtc_state->pipe_src),
-		   str_yes_no(crtc_state->dither), crtc_state->pipe_bpp);
+		   str_yes_no(crtc_state->dither), crtc_state->pipe_bpp,
+		   crtc_state->port_clock, crtc_state->lane_count);
 
 	intel_scaler_info(m, crtc);
 
-- 
2.43.0

