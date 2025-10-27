Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75AD7C0F4BC
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Oct 2025 17:30:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B3B710E509;
	Mon, 27 Oct 2025 16:30:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PixhZXMO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FB7310E512;
 Mon, 27 Oct 2025 16:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761582605; x=1793118605;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=feOQOkWi894j4OpxYCVlENhVzjAR16MFqqFIMIskzMQ=;
 b=PixhZXMOu6/NEoF9tyJJ8MActXT4lFoND+9PDF2bBSOvl4ogg1f0ZnZS
 7P1FTd0pb/DQ7XQ14jz7KsIcdVM07mhLU3VYoYz7gPlC2/Q/S5IwBnOHf
 D31OerUKgO5zdFdbJbOfskVpLh7scUnfqynYcDBWUvxWPeIiWtA9McZG6
 GWrjKlUnYvK3M7eava3yXF0XkMYLzNy0EFuZWqQq46nfYfNwF0maJ52J6
 v8+R39f0920k2FQiLwY9Y5Bm0AHct2lGwl00p9cqWN+7PiOas4AbUv7zK
 3CE+tR7SZUs/lIb2FdEoyqaKyjz+gJbSyeyLl/dei64w849MU3EehRiLa A==;
X-CSE-ConnectionGUID: waGcI96AQDOubt4FC2ga8g==
X-CSE-MsgGUID: sq/4GqWKQnqMy4DpO6HxfQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="81299368"
X-IronPort-AV: E=Sophos;i="6.19,259,1754982000"; d="scan'208";a="81299368"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 09:30:05 -0700
X-CSE-ConnectionGUID: o3wkaZJQSJCfs7X9lGvo+Q==
X-CSE-MsgGUID: vYqpcpyWQ2GtATf9qJGUeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,259,1754982000"; d="scan'208";a="184785697"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa007.fm.intel.com with ESMTP; 27 Oct 2025 09:30:03 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, uma.shankar@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH v8 16/22] drm/i915/display: Wait for VRR PUSH status update
Date: Mon, 27 Oct 2025 21:59:21 +0530
Message-ID: <20251027162927.2655581-17-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251027162927.2655581-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20251027162927.2655581-1-mitulkumar.ajitkumar.golani@intel.com>
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

After VRR Push is sent, need to wait till flipline decision boundary
to get Push bit to get cleared.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 23 ++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 83a64b13dca3..ea4e1ec65db7 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7221,6 +7221,22 @@ static void intel_atomic_dsb_prepare(struct intel_atomic_state *state,
 	intel_color_prepare_commit(state, crtc);
 }
 
+static int
+dcb_vmin_vblank_start(struct intel_crtc_state *crtc_state)
+{
+	return (intel_vrr_dcb_vmin_vblank_start_next(crtc_state) < 0) ?
+		intel_vrr_dcb_vmin_vblank_start_final(crtc_state) :
+		intel_vrr_dcb_vmin_vblank_start_next(crtc_state);
+}
+
+static int
+dcb_vmax_vblank_start(struct intel_crtc_state *crtc_state)
+{
+	return (intel_vrr_dcb_vmax_vblank_start_next(crtc_state) < 0) ?
+		intel_vrr_dcb_vmax_vblank_start_final(crtc_state) :
+		intel_vrr_dcb_vmax_vblank_start_next(crtc_state);
+}
+
 static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 				    struct intel_crtc *crtc)
 {
@@ -7305,6 +7321,13 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 		intel_vrr_dcb_increment_flip_count(new_crtc_state, crtc);
 		intel_vrr_send_push(new_crtc_state->dsb_commit, new_crtc_state);
 		intel_dsb_wait_for_delayed_vblank(state, new_crtc_state->dsb_commit);
+
+		if (new_crtc_state->vrr.dc_balance.enable) {
+			intel_dsb_wait_scanline_in(state, new_crtc_state->dsb_commit,
+						   dcb_vmin_vblank_start(new_crtc_state),
+						   dcb_vmax_vblank_start(new_crtc_state));
+		}
+
 		intel_vrr_check_push_sent(new_crtc_state->dsb_commit,
 					  new_crtc_state);
 		intel_dsb_interrupt(new_crtc_state->dsb_commit);
-- 
2.48.1

