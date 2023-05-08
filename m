Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ADAD6FB09F
	for <lists+intel-gfx@lfdr.de>; Mon,  8 May 2023 14:52:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63EA210E282;
	Mon,  8 May 2023 12:52:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A648110E281
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 May 2023 12:51:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683550318; x=1715086318;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iAadFXnkWqcQNACvR6t+jtKxjs0cQRsVzqc4Lxvyz2A=;
 b=E1ygNn0IsVHAruQT+G2jvbnZ4p+tjV792wnD34g6btFcyFJaBFl915hv
 B/+qYhTidC5WH583pZ54PQ0QJ9EcUNX/H7z73YkaypAzJ13zIEWiLW4rK
 pOCwioUN+0HlJEU1GDsqbmgpgW8/JJ8zDjX6HtGbx09vAMScOeF6v7ZR6
 ID7+5QYmpD6S/wxmQ+uc3Kd7LYQVhAzxEf+UgfDZddk9K+4i6mk8vrUjp
 iDAEinf2P544WeAOvEFe1U2lsNzKIr7XL7fQDmBrUyvGAdG+igtMdAJdu
 HUFaBJ3TiwEc3hc14ux4OmExG/sbpVAG/xChCAacd8FU37g3TjlK5Jrce Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10703"; a="329994807"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="329994807"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2023 05:51:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10703"; a="842675320"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="842675320"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2023 05:51:56 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 May 2023 18:17:11 +0530
Message-Id: <20230508124715.2242478-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230508124715.2242478-1-ankit.k.nautiyal@intel.com>
References: <20230508124715.2242478-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/6] drm/i915/dp_mst: Use output_format to get
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
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 2 +-
 drivers/gpu/drm/i915/display/intel_dp.h     | 1 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 5 ++++-
 3 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 263c30948117..67d09c49de6f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -946,7 +946,7 @@ int intel_dp_min_bpp(enum intel_output_format output_format)
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
index ee28bb89bffe..2c2d258a3a77 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -155,6 +155,7 @@ static int intel_dp_mst_compute_link_config(struct intel_encoder *encoder,
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
 	int slots = -EINVAL;
+	int link_bpp;
 
 	slots = intel_dp_mst_find_vcpi_slots_for_bpp(encoder, crtc_state, limits->max_bpp,
 						     limits->min_bpp, limits,
@@ -163,7 +164,9 @@ static int intel_dp_mst_compute_link_config(struct intel_encoder *encoder,
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

