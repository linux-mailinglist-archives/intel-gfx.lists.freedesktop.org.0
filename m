Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9EABA7FEC4
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Apr 2025 13:15:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50DF510E66E;
	Tue,  8 Apr 2025 11:15:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ev1v2Swp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9C3D10E660;
 Tue,  8 Apr 2025 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744110954; x=1775646954;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oeR4BPqqEvE8DNlDLk2nJ4TqprGY2DUbvbrxNp+5n/s=;
 b=ev1v2SwpZG4kdQCrgMksDKV+bGL/InGNWx2X2IvVhGY1oqNLmcvNljE3
 rVajIkpOZuzo0zOOGZ1+26JpyPOcMv8jBE2b9u7a2Wfz/DwVXY8bPXmK/
 ZXBfDvaHYjAxWNXz29tFCAgWc+ds0OoFaCf1T7z/0WNN31yJJL69yQSsu
 QwnLEtTAl6vCfDA8YM7jMtb89D8ZptyzTUadSbT79KB931O0p+UrqMuY8
 /WTt45PxlkTNJxRRaOL7J4AYVXTTY4pTXvz3/P5UDuHJqExglkX/wSBIs
 ehG3qnrS+vatrIiN6lh0kdZtP66hJnKytWuXaPPuejDLDz7ifuNCIdrMI A==;
X-CSE-ConnectionGUID: 5wTXd1TUQk+jl6lTLZ4w0Q==
X-CSE-MsgGUID: rGFWmORLRrSfWhPrfI/78w==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="45655935"
X-IronPort-AV: E=Sophos;i="6.15,197,1739865600"; d="scan'208";a="45655935"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 04:15:54 -0700
X-CSE-ConnectionGUID: A1T37oQ3SvioHRcWMyO8FQ==
X-CSE-MsgGUID: 6rMMwa13QZiKWpgXfGJx4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,197,1739865600"; d="scan'208";a="133210015"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by orviesa004.jf.intel.com with ESMTP; 08 Apr 2025 04:15:52 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 chaitanya.kumar.borah@intel.com, animesh.manna@intel.com
Subject: [PATCH v2 09/11] drm/i915: Program DB LUT registers before vblank
Date: Tue,  8 Apr 2025 16:30:20 +0530
Message-Id: <20250408110022.1907802-10-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250408110022.1907802-1-chaitanya.kumar.borah@intel.com>
References: <20250408110022.1907802-1-chaitanya.kumar.borah@intel.com>
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

Double Buffered LUT registers can be programmed in the active region.
This patch implements the MMIO path for it. Program the registers after
evading vblank. The HW latches on to the registers after delayed vblank.
It takes around 1024 cdclk cycles(~one scanline) for this.

Following assumptions have been made while making this change

 - Current vblank evasion time is sufficient for programming
   the LUT registers.
 - Current guardband calculation would be sufficient for the HW
   to latch on to the new values

v2: move loading LUTs to commit_pipe_post_planes() since a vblank
    evasion failure for this is probably less drastic than
    for plane programming. (Ville)

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 58a84829fe58..398606f328e9 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6634,6 +6634,7 @@ static void commit_pipe_post_planes(struct intel_atomic_state *state,
 	struct intel_display *display = to_intel_display(state);
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
+	bool modeset = intel_crtc_needs_modeset(new_crtc_state);
 
 	drm_WARN_ON(display->drm, new_crtc_state->use_dsb);
 
@@ -6642,10 +6643,15 @@ static void commit_pipe_post_planes(struct intel_atomic_state *state,
 	 * get a catastrophic underrun even if the two operations
 	 * end up happening in two different frames.
 	 */
-	if (DISPLAY_VER(display) >= 9 &&
-	    !intel_crtc_needs_modeset(new_crtc_state))
+	if (DISPLAY_VER(display) >= 9 && !modeset)
 		skl_detach_scalers(NULL, new_crtc_state);
 
+	if (!modeset &&
+	    intel_crtc_needs_color_update(new_crtc_state) &&
+	    !intel_color_uses_dsb(new_crtc_state) &&
+	    HAS_DOUBLE_BUFFERED_LUT(display))
+		intel_color_load_luts(new_crtc_state);
+
 	if (intel_crtc_vrr_enabling(state, crtc))
 		intel_vrr_enable(new_crtc_state);
 }
-- 
2.25.1

