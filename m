Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SG67FVps3GnVQgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 06:08:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B7713E726A
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 06:08:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90DF010E30F;
	Mon, 13 Apr 2026 04:08:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lzBBdXxR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5927C10E30B;
 Mon, 13 Apr 2026 04:08:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776053336; x=1807589336;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+ukucw3cEKHtj2d3oaTmK7uDl2TNafK3WquXUk8nRac=;
 b=lzBBdXxR7Xv9ECzRKYuBCs5PiTdhNQbUGUWzQqgwKhIRCcQAD3ie7Nw0
 MXbH4BqNovH/dcg8jcaZtL/UHrfUz505unNJKO4NH43Tw89EUYY/GX1qa
 +bydiYIKBKTOaLGuI/UEHevSBqf2RtOugpMgcvvsjGp87dh0rLJyyeyCz
 AQHx+2kpMiPo5dWrnkGMPLrSyqXZwA9ieV6YPWgPdVNXIdsRuBqM18Tgb
 7yx1wcKcekp8prmmzZXY2Ny9waX1IhK6HnlVYhaPL6iV+Rh0aWimMdGgj
 dy/Q0nfSRSc1LTjB/92tctlZeoq3MJVEdbhY1Tu9EU72FIywvr/Z27gTe g==;
X-CSE-ConnectionGUID: auwz41r/So2zFm+xBbPJYw==
X-CSE-MsgGUID: P4b3tLQcQ2musHUnK44v/w==
X-IronPort-AV: E=McAfee;i="6800,10657,11757"; a="80568777"
X-IronPort-AV: E=Sophos;i="6.23,176,1770624000"; d="scan'208";a="80568777"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2026 21:08:56 -0700
X-CSE-ConnectionGUID: wOwUXxiCTtaSlHEb7DdQEw==
X-CSE-MsgGUID: dg0xhIj4T9y5DvRB5b/oJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,176,1770624000"; d="scan'208";a="229546616"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2026 21:08:54 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, arun.r.murthy@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 06/12] drm/i915/dp: Store and use AS SDP transmission line
 from crtc state
Date: Mon, 13 Apr 2026 09:23:43 +0530
Message-ID: <20260413035349.1730312-7-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260413035349.1730312-1-ankit.k.nautiyal@intel.com>
References: <20260413035349.1730312-1-ankit.k.nautiyal@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 0B7713E726A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The driver currently computes the Adaptive Sync SDP transmission line
directly at programming time. Instead, compute and store the
AS SDP transmission line in the crtc state and use it when programming the
EMP_AS_SDP_TL register.

We get the clear picture about the SDPs and guardband only in
intel_dp_sdp_compute_config_late() therefore we must configure the
AS SDP transmission line at this point when AS SDP is enabled in
crtc_state.

This prepares the ground for supporting programmable transmission lines
for additional DP SDPs.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c  | 44 +++++++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_dp.h  |  1 +
 3 files changed, 38 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index ebefa889bc8c..344eef812e6b 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4217,6 +4217,7 @@ static void intel_ddi_get_config(struct intel_encoder *encoder,
 	intel_read_dp_sdp(encoder, pipe_config, HDMI_PACKET_TYPE_GAMUT_METADATA);
 	intel_read_dp_sdp(encoder, pipe_config, DP_SDP_VSC);
 	intel_read_dp_sdp(encoder, pipe_config, DP_SDP_ADAPTIVE_SYNC);
+	intel_dp_sdp_transmission_line_get_config(pipe_config);
 
 	intel_audio_codec_get_config(encoder, pipe_config);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index fd668babd641..0644fa8a7800 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -7317,6 +7317,34 @@ void intel_dp_mst_resume(struct intel_display *display)
 	}
 }
 
+static
+int intel_dp_sdp_compute_as_tl(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+
+	if (!HAS_EMP_AS_SDP_TL(display))
+		return 0;
+
+	if (!(crtc_state->infoframes.enable &
+	      intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC)))
+		return 0;
+
+	/*
+	 * EMP_AS_SDP_TL defines the T1 position as the default AS SDP
+	 * Transmission Line, which corresponds to the start of the
+	 * VSYNC pulse.
+	 *
+	 * Use the T1 position for now.
+	 */
+	return crtc_state->vrr.vsync_start;
+}
+
+static
+void intel_dp_sdp_tl_compute_config_late(struct intel_crtc_state *crtc_state)
+{
+	crtc_state->dp_sdp_tl.as = intel_dp_sdp_compute_as_tl(crtc_state);
+}
+
 static
 int intel_dp_sdp_compute_config_late(struct intel_crtc_state *crtc_state)
 {
@@ -7330,6 +7358,8 @@ int intel_dp_sdp_compute_config_late(struct intel_crtc_state *crtc_state)
 		return -EINVAL;
 	}
 
+	intel_dp_sdp_tl_compute_config_late(crtc_state);
+
 	return 0;
 }
 
@@ -7418,12 +7448,10 @@ bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
 
 int intel_dp_sdp_as_tl(const struct intel_crtc_state *crtc_state)
 {
-	/*
-	 * EMP_AS_SDP_TL defines the T1 position as the default AS SDP
-	 * Transmission Line, which corresponds to the start of the
-	 * VSYNC pulse.
-	 *
-	 * Use the T1 position for now.
-	 */
-	return crtc_state->vrr.vsync_start;
+	return crtc_state->dp_sdp_tl.as;
+}
+
+void intel_dp_sdp_transmission_line_get_config(struct intel_crtc_state *crtc_state)
+{
+	crtc_state->dp_sdp_tl.as = intel_vrr_read_emp_as_sdp_tl(crtc_state);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 7024fd0ace0a..614b3f1fb72d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -239,5 +239,6 @@ bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
 		for_each_if(intel_dp_joiner_candidate_valid(__connector, (__mode)->hdisplay, __num_joined_pipes))
 
 int intel_dp_sdp_as_tl(const struct intel_crtc_state *crtc_state);
+void intel_dp_sdp_transmission_line_get_config(struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_DP_H__ */
-- 
2.45.2

