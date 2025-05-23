Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B812AC1D2E
	for <lists+intel-gfx@lfdr.de>; Fri, 23 May 2025 08:39:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CEFB10E7B4;
	Fri, 23 May 2025 06:39:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E3jPW6Jp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6032610E7B4;
 Fri, 23 May 2025 06:39:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747982362; x=1779518362;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IGfZTHHrF7wISou7LCJ7UMNkLKVqSg+42le49m0mubg=;
 b=E3jPW6JpMCW4nFJMQlXbsXPBYnFaMHIQBWvs2SU5taeRhkwsty0VOojc
 kOvAMeFlwdhxIcsK1Kh1v9vT2Pp8MC69WHFDqYafhmT6WeBTUMWkdzSGK
 QxJxvnI3gHVEvM9KeUGnG/yDaMikmSmtCZXQSmG4jXH4utaSX+Z8n09zx
 HtK8Lq1jlorYF+zBdyCQ9mCaOufbhClSk52fLSztQkrLUDgpOHYRD5IeW
 uWu8qbdfsbz7hwQxeJFmfKbDM9hA4mzWfZD9vm3AiuNHXIqkwyWZjQeZY
 haE8VPi8pzg0sASEMzUkjdABzVW6mKsEUEkbk4Kcfp5b7eqLJ/l8Y99ep w==;
X-CSE-ConnectionGUID: Bgft+ZPmR6mci1csyUCRbA==
X-CSE-MsgGUID: 7xXjeUwIREqzQmM0L3QcBw==
X-IronPort-AV: E=McAfee;i="6700,10204,11441"; a="67592283"
X-IronPort-AV: E=Sophos;i="6.15,308,1739865600"; d="scan'208";a="67592283"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 23:39:21 -0700
X-CSE-ConnectionGUID: r5wbfa/UR1CFtBIBHwjBag==
X-CSE-MsgGUID: 3TtljNccT/CzB79qXHiL/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,308,1739865600"; d="scan'208";a="171985342"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa001.fm.intel.com with ESMTP; 22 May 2025 23:39:19 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 animesh.manna@intel.com, chaitanya.kumar.borah@intel.com
Subject: [v8 09/11] drm/i915: Program DB LUT registers before vblank
Date: Fri, 23 May 2025 11:50:39 +0530
Message-Id: <20250523062041.166468-10-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250523062041.166468-1-chaitanya.kumar.borah@intel.com>
References: <20250523062041.166468-1-chaitanya.kumar.borah@intel.com>
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
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 128b2d865ac3..06f58c062b29 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6638,6 +6638,7 @@ static void commit_pipe_post_planes(struct intel_atomic_state *state,
 	struct intel_display *display = to_intel_display(state);
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
+	bool modeset = intel_crtc_needs_modeset(new_crtc_state);
 
 	drm_WARN_ON(display->drm, new_crtc_state->use_dsb);
 
@@ -6646,10 +6647,15 @@ static void commit_pipe_post_planes(struct intel_atomic_state *state,
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

