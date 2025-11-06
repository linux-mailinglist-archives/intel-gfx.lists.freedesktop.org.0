Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64ADEC39051
	for <lists+intel-gfx@lfdr.de>; Thu, 06 Nov 2025 04:47:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BB7210E322;
	Thu,  6 Nov 2025 03:47:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qodg99SU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08D6210E312;
 Thu,  6 Nov 2025 03:47:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762400858; x=1793936858;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YycdKmHQsdXAyNU4XVm3KliEnJBSl9aWJBun19x6knk=;
 b=Qodg99SU/ORxLz6vN8uekCcNHhVFHWfv9vFdawZFCxQNVMq83BlyxziD
 PFIt1PZtsCZhwVxFqXeu1ntbqJPvfMd0YEvItotdaN3EihcNgW4Odiwo+
 rBOtDjjtJ1i8gPTYHKGl9R1aSmXdI6/Bnm04mhdUQgeDgRdDUNptn7VY8
 K9Pt38mOGhz95fk/SyAoHAALEU1QkkGOn2QT2y6o5KZpFhVjStrwE8gEK
 wnJUAOPrQxNog14Be06mfeKoEaSdr/I6Lk/ZT4rM8ZVInprrXWknvAVFA
 NE6zlEI4tlgHuE/7J33zJ6xjM+Rr5cYdl3LSPzdiOyH0W0l6PAImh9Mx5 Q==;
X-CSE-ConnectionGUID: tl+SRAG7RZ2Oa4V6YOYvmg==
X-CSE-MsgGUID: BPJYrSjUQFKhElD4AE+C0A==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="63539960"
X-IronPort-AV: E=Sophos;i="6.19,283,1754982000"; d="scan'208";a="63539960"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 19:47:38 -0800
X-CSE-ConnectionGUID: 0jpCHsqGQC+hA7sVrzu0VA==
X-CSE-MsgGUID: MLuGa3K1QZyhGvRi34+O5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,283,1754982000"; d="scan'208";a="187806853"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa008.jf.intel.com with ESMTP; 05 Nov 2025 19:47:36 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 2/2] drm/i915/ddi: Set common SDP transmission line
Date: Thu,  6 Nov 2025 09:17:29 +0530
Message-Id: <20251106034729.259128-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251106034729.259128-1-suraj.kandpal@intel.com>
References: <20251106034729.259128-1-suraj.kandpal@intel.com>
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

From: Arun R Murthy <arun.r.murthy@intel.com>

Set common base transmission line for eDP/DP (VSC EXT, PPS, GMP) and the
corresponding stagerring is set to hardware defaults.

Bspec: 74384, 74385
Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 41 ++++++++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 733ef4559131..b696947e286a 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2621,6 +2621,43 @@ static void mtl_port_buf_ctl_io_selection(struct intel_encoder *encoder)
 		     XELPDP_PORT_BUF_IO_SELECT_TBT, val);
 }
 
+static void intel_dp_set_common_sdp_transmission_line(const struct intel_crtc_state *crtc_state,
+						      bool enable)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	u32 val = 0;
+	bool is_as_sdp_vrr = false;
+
+	if (DISPLAY_VER(display) < 35)
+		return;
+
+	/* Disable common sdp transmission line */
+	if (!enable) {
+		intel_de_rmw(display, CMN_SDP_TL(display, cpu_transcoder),
+			     TRANSMISSION_LINE_ENABLE, 0);
+		return;
+	}
+	/* Re-visit: Program the staggering to defaults for now */
+	intel_de_rmw(display, CMN_SDP_TL_STGR_CTL(display, cpu_transcoder),
+		     GMP_STAGGER_MASK | PPS_STAGGER_MASK |
+		     VSC_EXT_STAGGER_MASK,
+		     GMP_STAGGER(GMP_STAGGER_DEFAULT) |
+		     PPS_STAGGER(PPS_STAGGER_DEFAULT) |
+		     VSC_EXT_STAGGER(VSC_EXT_STAGGER_DEFAULT));
+
+	is_as_sdp_vrr  = crtc_state->infoframes.enable &
+			 intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC);
+	val = is_as_sdp_vrr ? crtc_state->vrr.vsync_start :
+			      crtc_state->vrr.guardband - 1;
+
+	intel_de_rmw(display, CMN_SDP_TL(display, cpu_transcoder),
+		     TRANSMISSION_LINE_ENABLE |
+		     BASE_TRANSMISSION_LINE_MASK,
+		     TRANSMISSION_LINE_ENABLE |
+		     BASE_TRANSMISSION_LINE(val));
+}
+
 static void mtl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 				  struct intel_encoder *encoder,
 				  const struct intel_crtc_state *crtc_state,
@@ -2727,6 +2764,9 @@ static void mtl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	/* 6.o Configure and enable FEC if needed */
 	intel_ddi_enable_fec(encoder, crtc_state);
 
+	/* Re-visit: Program the SDP base transmission line and stagger defaults */
+	intel_dp_set_common_sdp_transmission_line(crtc_state, true);
+
 	/* 7.a 128b/132b SST. */
 	if (!is_mst && intel_dp_is_uhbr(crtc_state)) {
 		/* VCPID 1, start slot 0 for 128b/132b, tu slots */
@@ -3116,6 +3156,7 @@ static void intel_ddi_buf_disable(struct intel_encoder *encoder,
 			     DP_TP_CTL_ENABLE, 0);
 	}
 
+	intel_dp_set_common_sdp_transmission_line(crtc_state, false);
 	intel_ddi_disable_fec(encoder, crtc_state);
 
 	if (DISPLAY_VER(display) < 14)
-- 
2.34.1

