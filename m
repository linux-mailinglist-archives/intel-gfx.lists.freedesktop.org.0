Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D4209ABF4E
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 08:51:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 166CF10E764;
	Wed, 23 Oct 2024 06:51:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AC6KA+xx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19FF910E75C;
 Wed, 23 Oct 2024 06:51:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729666264; x=1761202264;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hv7YLVkJJKTT2VNLvv46icwwunGTkWFQjo7uFj9dvko=;
 b=AC6KA+xxlllnxAAUtDgnoB+iPzR6bwWtDH/ibozbf+qkNC62bFwOfHEr
 8eV0/oHdpqg1zYXtgAXdb3aSYjJ+7TUIZfW3bVBzxnKH/KrNQQ3VCKgUZ
 DHS66MAXYVlokvPOaYSEhM5Qa81lcYzPEQDWq//WeXtj/RebKNJPfzDim
 ZuM5H4fDQp7GYWT392I1P4idJmES+RbSMqjpZ+Ax9LykzrfskSTb/mTr9
 LZm8RoQxZJ9oEfzTI79/zMqc70VahZFqyV1PDBCzc6uuSGR0KpXnBixMk
 tBPZhBcSACh1aFO2E6MnAmS6fMYUpN8IOInwwh4ojLA4fAuSCNZ7dOPLT g==;
X-CSE-ConnectionGUID: YASatE9OTCuTMFypyyGiUg==
X-CSE-MsgGUID: 41FEN9wFTKGt3B2klJuMlQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11233"; a="32097495"
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208";a="32097495"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 23:51:04 -0700
X-CSE-ConnectionGUID: ajBn4doMQjmIWAoGGttiDQ==
X-CSE-MsgGUID: oJq4AuxnQMeXbLFPJmYpRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208";a="84691618"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 23:51:01 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	suraj.kandpal@intel.com
Subject: [PATCH 12/16] drm/i915/display: Account for pixel replication in
 pipe_src
Date: Wed, 23 Oct 2024 12:22:53 +0530
Message-ID: <20241023065257.190035-13-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241023065257.190035-1-ankit.k.nautiyal@intel.com>
References: <20241023065257.190035-1-ankit.k.nautiyal@intel.com>
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
index aa9e44970752..8065ed921952 100644
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

