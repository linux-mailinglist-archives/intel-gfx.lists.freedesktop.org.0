Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BEF19E3675
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2024 10:24:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E49C010EC9F;
	Wed,  4 Dec 2024 09:24:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hU9EMP2I";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C809810EC96;
 Wed,  4 Dec 2024 09:24:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733304258; x=1764840258;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nVW3LfEQcj42u4tHsQKb+Y/6dxwnTScTzV9c0kLh0+o=;
 b=hU9EMP2I8h+XnNGgP022Qvdp17Y6pin/oM6mODxBIJS2L4ATDoWrwEgR
 Vb4scYKDkJ3l5fZA7fAQV/8vq7cbPqpx3zDMpoFNp7KNxY8sWotUyqe8/
 krtl7tapCk3gFDS9a0e3a1dNoPrD4eBHnNa/4iOrX2heANjXCY/VTj5K/
 Nqiz8A4q39dEc9NmYHndkWZqcyfV+oPVtut356cRcusc8pDmkwZPEf0jE
 TZj9rN9avGBKvW9EqxQ5+u+Tvi3lWuOhNc7fzmdN/G3NBJDD+1pa1Iy7f
 WaSHy1pT3yd74JkpUYh1tz0GkCHSoCEw5LPiKbxsKXC7NPJcCHHrAqOS/ w==;
X-CSE-ConnectionGUID: je5N/kYVSwyWoEdTrqOJTQ==
X-CSE-MsgGUID: cgzT7fZbStCAQIuzQ0bH0A==
X-IronPort-AV: E=McAfee;i="6700,10204,11275"; a="44038472"
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="44038472"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 01:24:18 -0800
X-CSE-ConnectionGUID: Ea8ewc+SRZmxVj8AnMGmCQ==
X-CSE-MsgGUID: vtI5iFqoSNKl4PZXq5pLQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="93555169"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 01:24:16 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.nikula@linux.intel.com, imre.deak@intel.com
Subject: [PATCH 11/14] drm/i915/dp_mst: Refactor pipe_bpp limits with dsc for
 mst
Date: Wed,  4 Dec 2024 14:56:39 +0530
Message-ID: <20241204092642.1835807-12-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241204092642.1835807-1-ankit.k.nautiyal@intel.com>
References: <20241204092642.1835807-1-ankit.k.nautiyal@intel.com>
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

Similar to DP, set the dsc limits->pipe.max/min_bpp early for MST too.
Use the limits while computing the compressed bpp.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.h     |  3 +++
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 11 +++++------
 3 files changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index fe0957e028bc..c5740b8d2315 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2504,7 +2504,7 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
 	return true;
 }
 
-static void
+void
 intel_dp_dsc_compute_pipe_bpp_limits(struct intel_dp *intel_dp,
 				     struct link_config_limits *limits)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 4895b52d41e8..45b37d322565 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -200,6 +200,9 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
 					const struct intel_crtc_state *crtc_state,
 					bool dsc,
 					struct link_config_limits *limits);
+void
+intel_dp_dsc_compute_pipe_bpp_limits(struct intel_dp *intel_dp,
+				     struct link_config_limits *limits);
 
 void intel_dp_get_dsc_sink_cap(u8 dpcd_rev, struct intel_connector *connector);
 bool intel_dp_has_gamut_metadata_dip(struct intel_encoder *encoder);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 795594191717..667006918bfd 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -365,14 +365,10 @@ static int mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
 	int i, num_bpc;
 	u8 dsc_bpc[3] = {};
 	int min_bpp, max_bpp, sink_min_bpp, sink_max_bpp;
-	int dsc_max_bpc, dsc_min_bpc;
 	int min_compressed_bpp, max_compressed_bpp;
 
-	dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(display);
-	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc();
-
-	max_bpp = min(dsc_max_bpc * 3, limits->pipe.max_bpp);
-	min_bpp = max(dsc_min_bpc * 3, limits->pipe.min_bpp);
+	max_bpp = limits->pipe.max_bpp;
+	min_bpp = limits->pipe.min_bpp;
 
 	num_bpc = drm_dp_dsc_sink_supported_input_bpcs(connector->dp.dsc_dpcd,
 						       dsc_bpc);
@@ -574,6 +570,9 @@ mst_stream_compute_config_limits(struct intel_dp *intel_dp,
 
 	intel_dp_test_compute_config(intel_dp, crtc_state, limits);
 
+	if (dsc)
+		intel_dp_dsc_compute_pipe_bpp_limits(intel_dp, limits);
+
 	if (!intel_dp_compute_config_link_bpp_limits(intel_dp,
 						     crtc_state,
 						     dsc,
-- 
2.45.2

