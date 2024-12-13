Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2445C9F09C8
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2024 11:40:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C01E910EFB0;
	Fri, 13 Dec 2024 10:40:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UV1mkaMK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 755B410EFB0;
 Fri, 13 Dec 2024 10:40:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734086424; x=1765622424;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FktdqLGSc4ho4SVP73/q0lwQoHRV77x4DPrTXPPardw=;
 b=UV1mkaMKpU8lelGUggEJR0XJhNDDG2x3rzCYusaxzqMHvcpK5j/uIrMl
 uz2NSFocDPOB+wWxQALbwAi74HwjuZktkFITgvK/by6Al/CqXfGE8NQHr
 b+l5H3PtrCr2tixI+N154Cx5LWQPE9+JqWpQQLMDhAh9cCKQOCEcZlBr7
 3r/1qB68B2rkNQ1Z6GHBEQ32Go88oQa/ddwG5CE2pq/gK9xtlVKdebAly
 eLPe1gtxn9V4nLnG5a8s790z3Lk7KqvxujFBgHx2tyDesVCoTF8JHj1bQ
 Yk2eldUEaJiNMSoXN/RmWw0EARJGr/aT8o747aM5L9cbI6ewigxcLloww g==;
X-CSE-ConnectionGUID: 1qriNmVxSIGDGEzTuoSE1w==
X-CSE-MsgGUID: Wb5ulCprRoSO9eJN99MU5w==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="45945182"
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="45945182"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 02:40:24 -0800
X-CSE-ConnectionGUID: 814cA/WmRZebBk5s0MDbYA==
X-CSE-MsgGUID: w1Y9DBtUTWO/b6o+N7Mvww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,231,1728975600"; d="scan'208";a="127313682"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.159])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 02:40:22 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, imre.deak@intel.com, ville.syrjala@linux.intel.com,
 nagavenkata.srikanth.v@intel.com
Subject: [RFC v0 03/13] drm/i915/mst: drop connector parameter from
 intel_dp_mst_bw_overhead()
Date: Fri, 13 Dec 2024 12:39:47 +0200
Message-Id: <4ef456d1a936d5b517cbd22a8d9cde19a02c0ce8.1734085515.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1734085515.git.jani.nikula@intel.com>
References: <cover.1734085515.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

intel_dp_mst_bw_overhead() doesn't need the connector. Remove the
parameter.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 67b0e40a7888..b7e4c530f7a6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -139,7 +139,6 @@ static int intel_dp_mst_max_dpt_bpp(const struct intel_crtc_state *crtc_state,
 }
 
 static int intel_dp_mst_bw_overhead(const struct intel_crtc_state *crtc_state,
-				    const struct intel_connector *connector,
 				    bool ssc, int dsc_slice_count, int bpp_x16)
 {
 	const struct drm_display_mode *adjusted_mode =
@@ -278,9 +277,9 @@ static int mst_stream_find_vcpi_slots_for_bpp(struct intel_dp *intel_dp,
 		link_bpp_x16 = fxp_q4_from_int(dsc ? bpp :
 					       intel_dp_output_bpp(crtc_state->output_format, bpp));
 
-		local_bw_overhead = intel_dp_mst_bw_overhead(crtc_state, connector,
+		local_bw_overhead = intel_dp_mst_bw_overhead(crtc_state,
 							     false, dsc_slice_count, link_bpp_x16);
-		remote_bw_overhead = intel_dp_mst_bw_overhead(crtc_state, connector,
+		remote_bw_overhead = intel_dp_mst_bw_overhead(crtc_state,
 							      true, dsc_slice_count, link_bpp_x16);
 
 		intel_dp_mst_compute_m_n(crtc_state, connector,
-- 
2.39.5

