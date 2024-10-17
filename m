Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 455829A1D0D
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2024 10:21:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC5C510E7C9;
	Thu, 17 Oct 2024 08:21:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZYFKi/dh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B2F410E7C6;
 Thu, 17 Oct 2024 08:21:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729153310; x=1760689310;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LexmVTzSMkdg8kpZB11S9FwxM8LzwiTfCDa1dHlORUA=;
 b=ZYFKi/dhU5b7mcXJSfwH+pqKYZ8eD8QdBdCJRFOgbWLMMhbbNDd67XMM
 T/SKKVoI1MPKEcWFYf5fhKgbteu4ZeCaW2NqGvbI69En7md0G7K+C+upW
 DtcRrMP8aBlaGSmWk8s+6E9c/lHE/dOKDIzWnI35m4hrD8ij9Y98tSCw+
 l9KL6kCGdvyTu1ZMywwetO2vHLL+vC3+uzI4USqdENs4/bq0l0tanMERT
 TJr6A+69ppcCgCjDCovEpDUw9Yc1krOjo2hflQoETt/Hmi3gYZoChxrP7
 ZiD6x3SVDNT9w8p6JxYyWKYhtcP2z4bAGavxpSrNNKOFAy7zJNGSYVzt/ A==;
X-CSE-ConnectionGUID: eSNp7BoEQCCnUYP0HaBwXw==
X-CSE-MsgGUID: sPOCloHQQcOrCQPKnsApkw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="28724885"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="28724885"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2024 01:21:50 -0700
X-CSE-ConnectionGUID: secfTX1uRy6hrXnlTIOsQQ==
X-CSE-MsgGUID: 9kFujOaaSXWsCuH4jUzKeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,210,1725346800"; d="scan'208";a="78086265"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2024 01:21:48 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	suraj.kandpal@intel.com
Subject: [PATCH 08/10] drm/i915/display: Account for pixel replication in
 pipe_src
Date: Thu, 17 Oct 2024 13:53:46 +0530
Message-ID: <20241017082348.3413727-9-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241017082348.3413727-1-ankit.k.nautiyal@intel.com>
References: <20241017082348.3413727-1-ankit.k.nautiyal@intel.com>
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

Furthermore if the pipe source width is odd, add one more to make
the pipe source width even, as per the Bspec.

These extra pixels will be take care by the Splitter logic in
hardware.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 30 ++++++++++++++++++--
 1 file changed, 28 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 20bb27aa880b..4f6fbee1ca7c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2514,15 +2514,41 @@ void intel_encoder_get_config(struct intel_encoder *encoder,
 	intel_crtc_readout_derived_state(crtc_state);
 }
 
+static int intel_splitter_adjust_pipe_width(int width, int pixel_replication_count, int num_pipes)
+{
+	int pipe_src_width;
+
+	/*
+	 * With ultrajoiner and 12 DSC slices case, addition of extra pixels (padding)
+	 * is required.
+	 * Pixel replication is required due to the rounding of slice_width (Hactive / slice_count)
+	 * One extra pixel is added if the pipe src width becomes odd, to make it even.
+	 *
+	 * Splitter HW takes care of these by removing odd pixel from each pipe.
+	 * It removes replicated pixels from the last pipe.
+	 */
+	width += pixel_replication_count;
+
+	pipe_src_width = width / num_pipes;
+
+	if (pipe_src_width % 2 == 0)
+		return width;
+
+	return width + num_pipes;
+}
+
 static void intel_joiner_compute_pipe_src(struct intel_crtc_state *crtc_state)
 {
 	int num_pipes = intel_crtc_num_joined_pipes(crtc_state);
 	int width, height;
+	int pixel_replication_count = crtc_state->dsc.pixel_replication_count;
 
-	if (num_pipes == 1)
+	if (num_pipes == 1 && !pixel_replication_count)
 		return;
 
-	width = drm_rect_width(&crtc_state->pipe_src);
+	width = intel_splitter_adjust_pipe_width(drm_rect_width(&crtc_state->pipe_src),
+						 pixel_replication_count, num_pipes);
+
 	height = drm_rect_height(&crtc_state->pipe_src);
 
 	drm_rect_init(&crtc_state->pipe_src, 0, 0,
-- 
2.45.2

