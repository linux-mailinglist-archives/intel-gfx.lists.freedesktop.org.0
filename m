Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6C3DA29DD8
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2025 01:18:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6354610E255;
	Thu,  6 Feb 2025 00:18:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aASVvjZ4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAC8110E255;
 Thu,  6 Feb 2025 00:16:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738800990; x=1770336990;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+kfNHrVnLG2Y458gOzBnhVwDq+aaYxu10fzYw3h1gmM=;
 b=aASVvjZ4pzrmEFvhw3vnoQmrxRMUAXMgBz5ShPX4t1p0G7ZxfaSBAPWl
 DmM7cnUTbnQOV8E55SXdgbKULo8wouOo1dTdTGlDhXJTOw8aJBSr4jFKw
 WqHlCzgXFNsRhqFykvwVT1kFqIHlYZ7Viv1dRrBPSpDc42ntEcRS6+H3v
 B38HjnJYz2d5X4Hp2eMDp0yEp8WfUyUVqVz4mHp7SwsUyeX8Df9hYVqe5
 JNiUdutt5Eg3T8816IXABIw3er3unz2UlTeG3eq5F+DiHyVXk47CXRoRJ
 06CuD/GzplCj+qjaTIKBoNsuovHvb2APuaBh1stBNqGP4smonw6mB9X/P g==;
X-CSE-ConnectionGUID: qgucJp5xRoGXxj6Oh/d9Zg==
X-CSE-MsgGUID: VvuvclHWSIOQV8cjUwr2Mg==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="43050020"
X-IronPort-AV: E=Sophos;i="6.13,262,1732608000"; d="scan'208";a="43050020"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 16:16:29 -0800
X-CSE-ConnectionGUID: sN6sREsxQyKBOHJ7f0nLQQ==
X-CSE-MsgGUID: JtBIL1n/SUmyyWe5L8TK9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="134293001"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 16:16:27 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Khaled Almahallawy <khaled.almahallawy@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2] drm/i915/dp_mst: Fix getting display pointer in
 intel_dp_mst_compute_min_hblank()
Date: Thu,  6 Feb 2025 02:17:26 +0200
Message-ID: <20250206001726.3021787-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250205232855.3017421-1-imre.deak@intel.com>
References: <20250205232855.3017421-1-imre.deak@intel.com>
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

The MST intel_connector::encoder pointer is NULL if the connector hasn't
been enabled before, so it can't be used to retrieve the display
pointer. Use instead the crtc_state and drop the unused connector
parameter.

v2: Use the crtc_state and drop the unused connector parameter.

Fixes: a5ebe00c2ace ("drm/i915/dp: Guarantee a minimum HBlank time")
Reported-and-tested-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
Closes: https://lore.kernel.org/all/16754ee4cd21d99c1e81c5953134b496dd07630f.camel@intel.com
Reviewed-by: Khaled Almahallawy <khaled.almahallawy@intel.com> #v1
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index f58d56a1ea03a..ae2db983eff92 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -210,11 +210,9 @@ static int intel_dp_mst_dsc_get_slice_count(const struct intel_connector *connec
 }
 
 static void intel_dp_mst_compute_min_hblank(struct intel_crtc_state *crtc_state,
-					    struct intel_connector *connector,
 					    int bpp_x16)
 {
-	struct intel_encoder *encoder = connector->encoder;
-	struct intel_display *display = to_intel_display(encoder);
+	struct intel_display *display = to_intel_display(crtc_state);
 	const struct drm_display_mode *adjusted_mode =
 					&crtc_state->hw.adjusted_mode;
 	int symbol_size = intel_dp_is_uhbr(crtc_state) ? 32 : 8;
@@ -301,7 +299,7 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
 		local_bw_overhead = intel_dp_mst_bw_overhead(crtc_state,
 							     false, dsc_slice_count, link_bpp_x16);
 
-		intel_dp_mst_compute_min_hblank(crtc_state, connector, link_bpp_x16);
+		intel_dp_mst_compute_min_hblank(crtc_state, link_bpp_x16);
 
 		intel_dp_mst_compute_m_n(crtc_state,
 					 local_bw_overhead,
-- 
2.44.2

