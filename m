Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D84A7E214
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Apr 2025 16:39:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2536010E4B5;
	Mon,  7 Apr 2025 14:39:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Sd12agiE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F64F10E4B5;
 Mon,  7 Apr 2025 14:39:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744036770; x=1775572770;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zQGmlc8UiKc49JpF1XzbGnLj9SyemC5RexX1Hd4s5Z8=;
 b=Sd12agiEm0pJ7D7Z6BIPKXW8AIty1lOMebg549tZmOT1vUTfPvQYHMWX
 yN/JafuJgRflHnjLvzyEu2VLCHaoNKe9SUQo6QUBOMMbOv7rdrLkSB4ch
 Xwig8tyoA2EIKa8uOXTeUClpp3seoJULrh/KwRNAFQwd6oPyvXhH1C7sg
 nVCaVi1jIRZxyJxqrYtxe1h0mPozBUeD8b1RFx22ZavRtPS9xgtrVII/j
 ggQISVFzcTVckEyyc5tidUC9eqsJF8SFzCjy9TkIzLPsoMsv+YzlfhTFl
 D3U+fbG8DswkaJgEA9D483YYav/1oZTVZ5cz0FaIfdE1fkkk/1aTtpxf2 w==;
X-CSE-ConnectionGUID: A8A2kNZSSVOCVh05DsuH7g==
X-CSE-MsgGUID: b2hXkaRwQjGAvrG8pXB5/Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="44572457"
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="44572457"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 07:39:30 -0700
X-CSE-ConnectionGUID: DFs4YFY1T3yAl7Nt3Bp7zg==
X-CSE-MsgGUID: VBqX91yITOeIwiI5bKOaIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="158963752"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa001.fm.intel.com with ESMTP; 07 Apr 2025 07:39:28 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 chaitanya.kumar.borah@intel.com, animesh.manna@intel.com
Subject: [PATCH 09/11] drm/i915: Program DB LUT registers before vblank
Date: Mon,  7 Apr 2025 19:53:57 +0530
Message-Id: <20250407142359.1398410-10-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250407142359.1398410-1-chaitanya.kumar.borah@intel.com>
References: <20250407142359.1398410-1-chaitanya.kumar.borah@intel.com>
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

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 85e28b4c9e66..df9c992d2939 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6725,10 +6725,12 @@ static void intel_pre_update_crtc(struct intel_atomic_state *state,
 static void intel_update_crtc(struct intel_atomic_state *state,
 			      struct intel_crtc *crtc)
 {
+	struct intel_display *display = to_intel_display(crtc);
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
 	struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
+	bool modeset = intel_crtc_needs_modeset(new_crtc_state);
 
 	if (new_crtc_state->use_dsb) {
 		intel_crtc_prepare_vblank_event(new_crtc_state, &crtc->dsb_event);
@@ -6738,6 +6740,12 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 		/* Perform vblank evasion around commit operation */
 		intel_pipe_update_start(state, crtc);
 
+		if (!modeset &&
+		    intel_crtc_needs_color_update(new_crtc_state) &&
+		    !new_crtc_state->dsb_color &&
+		    HAS_DOUBLE_BUFFERED_LUT(display))
+			intel_color_load_luts(new_crtc_state);
+
 		if (new_crtc_state->dsb_commit)
 			intel_dsb_commit(new_crtc_state->dsb_commit, false);
 
-- 
2.25.1

