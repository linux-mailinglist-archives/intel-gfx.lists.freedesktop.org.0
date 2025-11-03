Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D080C2A142
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 06:30:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02CEE10E36C;
	Mon,  3 Nov 2025 05:30:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L1aiK4OR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6F7310E36C;
 Mon,  3 Nov 2025 05:30:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762147835; x=1793683835;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lnbxN5GpxyYyw2Yh9mm9ZHeB5tHGhGZ19kMonCsJajs=;
 b=L1aiK4ORj6uUfBY3TeduphjJSVC3ipydRa1p/g5yx7zOKiSUYFzL6D1q
 4dNqeGZJIW0U1O5/mh2vNk8QTnguGx1QSoDua0IVu4g7kJo9Q7GBD/2mo
 VMDpFgzAPmnwhKs2LBdlJphq/Yj+95czwbqm5Lx9N0MN4XMFTLY6nPEBl
 rZvz/xaiUVt962fji39aIFLtHu+EWT3xdhYfqREGUrUjpi2QVHlpq9vOR
 Cw8wap71Xvc5cgfGvHoQF0TBRxhd8lEo+pDlr6CCmvkEtAfBYUcSgLHLe
 Q5RMrHii279bmZJ0hYEvMfjxjGzG3DONfMC29lf6FjlWdY+QwPr4grClX g==;
X-CSE-ConnectionGUID: 5H6iz/IBSfSvTdETLeLGww==
X-CSE-MsgGUID: HGV/AoxwQIWaX51VA1/GsQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="64143874"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="64143874"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2025 21:30:35 -0800
X-CSE-ConnectionGUID: gk4BH4/WQ52b3xJkDWiVKQ==
X-CSE-MsgGUID: rb9c0pgVQXCq1ZRvOz5awQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,275,1754982000"; d="scan'208";a="186925367"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa008.jf.intel.com with ESMTP; 02 Nov 2025 21:30:33 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, uma.shankar@intel.com,
 ville.syrjala@linux.intel.com
Subject: [RESEND, 16/22] drm/i915/display: Wait for VRR PUSH status update
Date: Mon,  3 Nov 2025 10:59:56 +0530
Message-ID: <20251103053002.3002695-17-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251103053002.3002695-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20251103053002.3002695-1-mitulkumar.ajitkumar.golani@intel.com>
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
index b256517d58cf..faec325e7652 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7287,6 +7287,22 @@ static void intel_atomic_dsb_prepare(struct intel_atomic_state *state,
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
@@ -7371,6 +7387,13 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
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

