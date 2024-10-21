Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A5D09A687F
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2024 14:32:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B05810E4CF;
	Mon, 21 Oct 2024 12:32:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iWCjJLlW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 464A410E4C8;
 Mon, 21 Oct 2024 12:32:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729513939; x=1761049939;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZbPJcOveEqMemRpcqFimp/L0w96Wd3SN5h1DqKlOJf4=;
 b=iWCjJLlWVksXdTKDR7gx19AWUGychiK9UB2QgnEX7opOIehCF5J95ZjX
 INutjznz/EwrP4fXSWh1Saw9PsSGbtsPwAAIdwyBUnTIt8MDQiy0BWyqb
 AaMspoZ3ToIU6HfdteU2Rdx26Hw660e+v+NMev0WMMOaVArPpFuCzaBfd
 SIqSGrwSxCWOXl/Qffcu4qsA9oROXO37tb1+ogqY8oKXntOz+sNbA5zes
 jtjuzoQXuSGW2UPaSJLnRUPVwGh0OLMyuwxm29eVEUXWpCcoPuvoBICVA
 6GT9WyT+R/3FZQKelTGZZE1QzE5aM77sUbtQFuIUIjb2AwLPl9HSp6aW2 Q==;
X-CSE-ConnectionGUID: p+mfPnBYTRuzIxp0x6+4RQ==
X-CSE-MsgGUID: JhEgeaKKTPiNnr5BibAJZA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="46459646"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="46459646"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 05:32:19 -0700
X-CSE-ConnectionGUID: 5e5+TdtqSkGJjhAS5VzcCA==
X-CSE-MsgGUID: 1WQYr4QVS5ijKtgb5/VblA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,220,1725346800"; d="scan'208";a="79866102"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 05:32:17 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	suraj.kandpal@intel.com
Subject: [PATCH 12/16] drm/i915/display: Account for pixel replication in
 pipe_src
Date: Mon, 21 Oct 2024 18:04:10 +0530
Message-ID: <20241021123414.3993899-13-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241021123414.3993899-1-ankit.k.nautiyal@intel.com>
References: <20241021123414.3993899-1-ankit.k.nautiyal@intel.com>
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

With DSC pixel replication, extra pixels are added in the last slice
of the last pipe. Due to this the total hactive gets increased by few
pixels. Adjust the computation for pipe source width to account for
pixel replication.

These extra pixels will be take care by the Splitter logic in
hardware.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 20 +++++++++++++++++++-
 1 file changed, 19 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 1b772f58998e..de682fec45cd 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2514,6 +2514,22 @@ void intel_encoder_get_config(struct intel_encoder *encoder,
 	intel_crtc_readout_derived_state(crtc_state);
 }
 
+static int intel_splitter_adjust_pipe_width(int width, int replicated_pixels)
+{
+	/* Account for Pixel replication:
+	 * Pixel replication is required due to the rounding of slice_width (Hactive / slice_count).
+	 *
+	 * Splitter HW takes care of these by removing replicated pixels from the last pipe.
+	 */
+
+	if (!replicated_pixels)
+		return width;
+
+	width += replicated_pixels;
+
+	return width;
+}
+
 static void intel_joiner_compute_pipe_src(struct intel_crtc_state *crtc_state)
 {
 	int num_pipes = intel_crtc_num_joined_pipes(crtc_state);
@@ -2522,7 +2538,9 @@ static void intel_joiner_compute_pipe_src(struct intel_crtc_state *crtc_state)
 	if (num_pipes == 1)
 		return;
 
-	width = drm_rect_width(&crtc_state->pipe_src);
+	width = intel_splitter_adjust_pipe_width(drm_rect_width(&crtc_state->pipe_src),
+						 crtc_state->dsc.replicated_pixels);
+
 	height = drm_rect_height(&crtc_state->pipe_src);
 
 	drm_rect_init(&crtc_state->pipe_src, 0, 0,
-- 
2.45.2

