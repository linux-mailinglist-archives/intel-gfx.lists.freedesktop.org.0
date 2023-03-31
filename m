Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF9506D1DC9
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Mar 2023 12:18:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 325C110F1B8;
	Fri, 31 Mar 2023 10:18:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87A3B10F1B4
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Mar 2023 10:18:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680257916; x=1711793916;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4gvktn0dscHG7DP3AQbKpVAlMuPMkQlXVzR55a7V2B4=;
 b=HSB02UhqppN/GRdl1maiGD8kuecpiWCZuTF9t4qGKv5iEWgMRZlDPNOa
 skTzwv1UGWSrbT2v8ryPEZ8kWaSEwvXzxwVmzUMjQ5zOR2bKD5i0qe+mC
 O/pkz+oVmMo4Kn2Xiq3d4uJ6zs2v71up/KW8vNQ8CUalAuJ8fEisfD0Ld
 a0gHKTAJFbFM8ghHoURaTOHjRJdpu/Cu2w2MTlnKNg/bDWnxUCKypZ3q6
 rGOK03rRuEImq2RNjGqJowh2xk8g33Uibdq++GN/F1stRkf55dQJK1Aqf
 NoVLPhgiBqrbMRBh84C3EMJ8liHCrW3ftDr/nADdhthb5Nflq8luiXj6B w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="340141787"
X-IronPort-AV: E=Sophos;i="5.98,307,1673942400"; d="scan'208";a="340141787"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2023 03:18:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="796068354"
X-IronPort-AV: E=Sophos;i="5.98,307,1673942400"; d="scan'208";a="796068354"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2023 03:18:34 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 31 Mar 2023 15:46:09 +0530
Message-Id: <20230331101613.936776-10-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230331101613.936776-1-ankit.k.nautiyal@intel.com>
References: <20230331101613.936776-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/13] drm/i915/dp_mst: Use output_format to get
 the final link bpp
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

The final link bpp used to calculate the m_n values depend on the
output_format. Though the output_format is set to RGB for MST case and
the link bpp will be same as the pipe bpp, for the sake of semantics,
lets calculate the m_n values with the link bpp, instead of pipe_bpp.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 2 +-
 drivers/gpu/drm/i915/display/intel_dp.h     | 1 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 5 ++++-
 3 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index e5903b5e511b..8d819b2963de 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -928,7 +928,7 @@ int intel_dp_min_bpp(enum intel_output_format output_format)
 		return 8 * 3;
 }
 
-static int intel_dp_output_bpp(enum intel_output_format output_format, int bpp)
+int intel_dp_output_bpp(enum intel_output_format output_format, int bpp)
 {
 	/*
 	 * bpp value was assumed to RGB format. And YCbCr 4:2:0 output
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index db86c2b71c1f..856172bfa13e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -140,5 +140,6 @@ void intel_dp_pcon_dsc_configure(struct intel_dp *intel_dp,
 void intel_dp_phy_test(struct intel_encoder *encoder);
 
 void intel_dp_wait_source_oui(struct intel_dp *intel_dp);
+int intel_dp_output_bpp(enum intel_output_format output_format, int bpp);
 
 #endif /* __INTEL_DP_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index daa1591a9ae8..fec3f310fc9b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -130,6 +130,7 @@ static int intel_dp_mst_compute_link_config(struct intel_encoder *encoder,
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
 	int slots = -EINVAL;
+	int link_bpp;
 
 	slots = intel_dp_mst_find_vcpi_slots_for_bpp(encoder, crtc_state, limits->max_bpp,
 						     limits->min_bpp, limits,
@@ -138,7 +139,9 @@ static int intel_dp_mst_compute_link_config(struct intel_encoder *encoder,
 	if (slots < 0)
 		return slots;
 
-	intel_link_compute_m_n(crtc_state->pipe_bpp,
+	link_bpp = intel_dp_output_bpp(crtc_state->output_format, crtc_state->pipe_bpp);
+
+	intel_link_compute_m_n(link_bpp,
 			       crtc_state->lane_count,
 			       adjusted_mode->crtc_clock,
 			       crtc_state->port_clock,
-- 
2.25.1

