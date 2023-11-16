Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81EA67EE164
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Nov 2023 14:19:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E051210E5EB;
	Thu, 16 Nov 2023 13:18:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31F5110E5E4
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Nov 2023 13:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700140733; x=1731676733;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=fYZ8WicssfxLXgWlmCflTh6lJkl6vAQulfHp93iVrBY=;
 b=gwPolT2cXZiSB0oCtp80DsGu6meTJE5mdtfmAZlGtdXE0fzJRufxBL7N
 Y/sU1XOMGbmwmokVz0ceAf4uWCgGGMqQodbK65sZM63GpBQpyfrXNv97t
 NUU+U5s7ev4JAIgG9bgF3E1TIC4HVcylxcBKjgZovL+tmXaeHkwEjXewA
 nkJWArupyRR5C71yEhX8/c06fCTEwfq70OmjO1lwyUICGzZyskuVbz+cC
 AY3YH+VTOxPJvceNvNAzJd7G/5HA+Cx4Wfgmp9Cm2bl/zkW4wCynxm8rL
 /VZ65HCfUWyVEBY9bERWyymoe40VUn6QFj7aoa9AM5VJsYJyrU6Og8wKJ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="422177170"
X-IronPort-AV: E=Sophos;i="6.04,308,1695711600"; d="scan'208";a="422177170"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 05:18:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="938834358"
X-IronPort-AV: E=Sophos;i="6.04,308,1695711600"; d="scan'208";a="938834358"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 05:18:52 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Nov 2023 15:18:37 +0200
Message-Id: <20231116131841.1588781-8-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231116131841.1588781-1-imre.deak@intel.com>
References: <20231116131841.1588781-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 07/11] drm/i915/dp_mst: Calculate the BW
 overhead in intel_dp_mst_find_vcpi_slots_for_bpp()
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

The next patch will calculate the PBN value directly from the pixel data
rate and the BW allocation overhead, not requiring the data, link M/N
and TU values for this. To prepare for that move the calculation of BW
overheads from intel_dp_mst_compute_m_n() to
intel_dp_mst_find_vcpi_slots_for_bpp().

While at it store link_bpp in a .4 fixed point format.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 27 ++++++++++++++-------
 1 file changed, 18 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index e5d6b811c22ef..a5ddd1781969d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -108,15 +108,12 @@ static int intel_dp_mst_bw_overhead(const struct intel_crtc_state *crtc_state,
 
 static void intel_dp_mst_compute_m_n(const struct intel_crtc_state *crtc_state,
 				     const struct intel_connector *connector,
-				     bool ssc, bool dsc,
+				     int overhead,
 				     int bpp_x16,
 				     struct intel_link_m_n *m_n)
 {
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
-	int overhead = intel_dp_mst_bw_overhead(crtc_state,
-						connector,
-						ssc, dsc, bpp_x16);
 
 	intel_link_compute_m_n(bpp_x16, crtc_state->lane_count,
 			       adjusted_mode->crtc_clock,
@@ -171,7 +168,9 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
 
 	for (bpp = max_bpp; bpp >= min_bpp; bpp -= step) {
 		struct intel_link_m_n remote_m_n;
-		int link_bpp;
+		int local_bw_overhead;
+		int remote_bw_overhead;
+		int link_bpp_x16;
 
 		drm_dbg_kms(&i915->drm, "Trying bpp %d\n", bpp);
 
@@ -179,12 +178,22 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
 		if (ret)
 			continue;
 
-		link_bpp = dsc ? bpp :
-			intel_dp_output_bpp(crtc_state->output_format, bpp);
+		link_bpp_x16 = to_bpp_x16(dsc ? bpp :
+					  intel_dp_output_bpp(crtc_state->output_format, bpp));
 
-		intel_dp_mst_compute_m_n(crtc_state, connector, false, dsc, to_bpp_x16(link_bpp),
+		local_bw_overhead = intel_dp_mst_bw_overhead(crtc_state, connector,
+							     false, dsc, link_bpp_x16);
+		remote_bw_overhead = intel_dp_mst_bw_overhead(crtc_state, connector,
+							      true, dsc, link_bpp_x16);
+
+		intel_dp_mst_compute_m_n(crtc_state, connector,
+					 local_bw_overhead,
+					 link_bpp_x16,
 					 &crtc_state->dp_m_n);
-		intel_dp_mst_compute_m_n(crtc_state, connector, true, dsc, to_bpp_x16(link_bpp),
+
+		intel_dp_mst_compute_m_n(crtc_state, connector,
+					 remote_bw_overhead,
+					 link_bpp_x16,
 					 &remote_m_n);
 
 		/*
-- 
2.39.2

