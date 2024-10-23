Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 252959ABF51
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 08:51:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD99B10E762;
	Wed, 23 Oct 2024 06:51:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C+vKKQCX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F8DC10E755;
 Wed, 23 Oct 2024 06:51:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729666267; x=1761202267;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GOSLQFrto9/FQChA0hBj797apjxlZBkWEgfO8Dlu4G4=;
 b=C+vKKQCXze8Dj6OQgIBkodMohMlAfSHhp8dyb4uW25glm06qzxGNKLBi
 C6Mu4XAnykJSTe5Q41mgWXVA+R55C0sEDmMfZZHEIEXY9ivKK5/bmG/fg
 CZuz3f93aQnBHBcNXCMsJqYwLakGeThd2gKD0R7vxAoqsv8o2B2fXlM2P
 xwbWNFQ+JSMi9rkKMDzk9do6VNgelqIaDkOnxjAd5A5U3U+MsyT5VUJpa
 YkrKx+rwFRIZbIDZNmiSyYrYAvlv4401RxnDHxms+7JD6nCONWm73cgiE
 9bzUKpZLhCsQXI8vGwL0XBSn3xetpTxqj3DYa/v7D+/TZZy0Khjw7LSYC Q==;
X-CSE-ConnectionGUID: hHsGUVsWTxmTTwdVKGNaBA==
X-CSE-MsgGUID: PWNl4TzmRH2wq5slq8cw9Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11233"; a="32097509"
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208";a="32097509"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 23:51:07 -0700
X-CSE-ConnectionGUID: ZTSv828wTiKQNsXyr7t7Mg==
X-CSE-MsgGUID: gqHKhceVRbiYF4VlEzQhSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208";a="84691633"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 23:51:06 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	suraj.kandpal@intel.com
Subject: [PATCH 15/16] drm/i915/display: Adjust Pipe SRC Width for Odd Pixels
Date: Wed, 23 Oct 2024 12:22:56 +0530
Message-ID: <20241023065257.190035-16-ankit.k.nautiyal@intel.com>
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

Enhance the `intel_splitter_adjust_pipe_width` helper to account for
both pixel replication and odd pixels. When the display width is
divided among multiple pipes, extra pixels can make the pipe source
width odd. Since hardware expects an even width, an extra pixel is
added to each pipe to ensure even width.

The splitter hardware will remove these extra pixels.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 22 +++++++++++++++-----
 1 file changed, 17 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index bab1ab1236df..67dfada13eab 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2514,12 +2514,18 @@ void intel_encoder_get_config(struct intel_encoder *encoder,
 	intel_crtc_readout_derived_state(crtc_state);
 }
 
-static int intel_splitter_adjust_pipe_width(int width, int replicated_pixels)
+static int intel_splitter_adjust_pipe_width(int width, int replicated_pixels,
+					    bool has_odd_pixel, int num_pipes)
 {
-	/* Account for Pixel replication:
+	/* Account for Pixel replication + Odd pixel:
 	 * Pixel replication is required due to the rounding of slice_width (Hactive / slice_count).
 	 *
-	 * Splitter HW takes care of these by removing replicated pixels from the last pipe.
+	 * These extra pixels when added to the pipe source width, can make the pipe source width
+	 * odd. Since HW expects the pipe source width to be even, therefore one extra pixel needs
+	 * to be added to the pipe source width to make it even.
+	 *
+	 * Splitter HW takes care of these by removing odd pixel from each pipe and
+	 * replicated pixels from the last pipe.
 	 */
 
 	if (!replicated_pixels)
@@ -2527,7 +2533,11 @@ static int intel_splitter_adjust_pipe_width(int width, int replicated_pixels)
 
 	width += replicated_pixels;
 
-	return width;
+	if (!has_odd_pixel)
+		return width;
+
+	/* Account for one extra pixel for each pipe */
+	return width + num_pipes;
 }
 
 static void intel_joiner_compute_pipe_src(struct intel_crtc_state *crtc_state)
@@ -2539,7 +2549,9 @@ static void intel_joiner_compute_pipe_src(struct intel_crtc_state *crtc_state)
 		return;
 
 	width = intel_splitter_adjust_pipe_width(drm_rect_width(&crtc_state->pipe_src),
-						 crtc_state->dsc.replicated_pixels);
+						 crtc_state->dsc.replicated_pixels,
+						 crtc_state->dsc.has_odd_pixel,
+						 num_pipes);
 
 	height = drm_rect_height(&crtc_state->pipe_src);
 
-- 
2.45.2

