Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OP7nE68DqWlW0QAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Mar 2026 05:16:47 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F20C320AB6E
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Mar 2026 05:16:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C67110EAFA;
	Thu,  5 Mar 2026 04:16:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dVZNWs01";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9704610EAFA;
 Thu,  5 Mar 2026 04:16:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772684204; x=1804220204;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FqB0HaL9h5M2rRHY8JD775b2BP94RO68dybfbOfOebM=;
 b=dVZNWs01Fb6HEZfXu4e6gqYT7HQS3hu+gTbWIyqKao6nzYOHb+F4dMM6
 ojlaL1+Nzs+FabWAfJKT2guTsoaJbTn2FNehpjgiepd5b0KfbkAoAjhBn
 68FV9VV36F9DmNaqFKG1RevPYvvoD9K6KI97xdvR8HoILaP+KOFy3gzoO
 1dP6NF3a16Zn85+0p3hmKltynRi7MuZRRRY1NlFDb2eUoAkQ17HxjRSpL
 7422exhD6wL3Q06b09sY8wvAi+qyOKCZDN0q73cpDb4evFL6MENiYiVEi
 FOoFAWmUof+xdkzxha0UH9f6zacRL2MiAMehIdYgo0z34Inbrh2Oog5sa A==;
X-CSE-ConnectionGUID: z5ryHS31R2az8G4MxIdWmQ==
X-CSE-MsgGUID: PU2fLSYtSYmOh7COJLk1Cw==
X-IronPort-AV: E=McAfee;i="6800,10657,11719"; a="73674702"
X-IronPort-AV: E=Sophos;i="6.21,325,1763452800"; d="scan'208";a="73674702"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 20:16:44 -0800
X-CSE-ConnectionGUID: hp/SwFVfSTqzRyxAJogFGg==
X-CSE-MsgGUID: BvOQANVTRHSqch6PTnaErA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,325,1763452800"; d="scan'208";a="222705734"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 20:16:42 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, arun.r.murthy@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 2/5] drm/i915/dp: Add fields to store CMN_SDP_TL register
 state in crtc_state
Date: Thu,  5 Mar 2026 09:31:15 +0530
Message-ID: <20260305040118.2576312-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260305040118.2576312-1-ankit.k.nautiyal@intel.com>
References: <20260305040118.2576312-1-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: F20C320AB6E
X-Rspamd-Server: lfdr
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Action: no action

Xe3p_lpd introduces new register bits to program a common SDP
Transmission Line, which the hardware uses to position various
SDPs. It also adds a separate control register to stagger the different
SDPs (VSC EXT, PPS, GMP).

Add fields in struct intel_crtc_state to store the state of these new
registers. Add register readback and pipe config comparison for the new
fields.

Also add a display version check (HAS_CMN_SDP_TL) to gate access to the
new registers.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      |  1 +
 drivers/gpu/drm/i915/display/intel_display.c  |  6 ++++++
 .../drm/i915/display/intel_display_device.h   |  1 +
 .../drm/i915/display/intel_display_types.h    |  9 ++++++++
 drivers/gpu/drm/i915/display/intel_dp.c       | 21 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp.h       |  2 ++
 6 files changed, 40 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 94ae583e907f..bdbd89600bee 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4217,6 +4217,7 @@ static void intel_ddi_get_config(struct intel_encoder *encoder,
 	intel_read_dp_sdp(encoder, pipe_config, HDMI_PACKET_TYPE_GAMUT_METADATA);
 	intel_read_dp_sdp(encoder, pipe_config, DP_SDP_VSC);
 	intel_read_dp_sdp(encoder, pipe_config, DP_SDP_ADAPTIVE_SYNC);
+	intel_dp_cmn_sdp_transmission_line_get_config(pipe_config);
 
 	intel_audio_codec_get_config(encoder, pipe_config);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 27354585ba92..76eea9d23766 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5461,6 +5461,12 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	}
 	PIPE_CONF_CHECK_DP_VSC_SDP(vsc);
 
+	PIPE_CONF_CHECK_BOOL(cmn_sdp_tl.enable);
+	PIPE_CONF_CHECK_I(cmn_sdp_tl.transmission_line);
+	PIPE_CONF_CHECK_I(cmn_sdp_tl.vsc_ext_stagger);
+	PIPE_CONF_CHECK_I(cmn_sdp_tl.pps_stagger);
+	PIPE_CONF_CHECK_I(cmn_sdp_tl.gmp_stagger);
+
 	PIPE_CONF_CHECK_X(sync_mode_slaves_mask);
 	PIPE_CONF_CHECK_I(master_transcoder);
 	PIPE_CONF_CHECK_X(joiner_pipes);
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index e84c190dcc4f..43e259761048 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -154,6 +154,7 @@ struct intel_display_platforms {
 #define HAS_CASF(__display)		(DISPLAY_VER(__display) >= 20)
 #define HAS_CDCLK_CRAWL(__display)	(DISPLAY_INFO(__display)->has_cdclk_crawl)
 #define HAS_CDCLK_SQUASH(__display)	(DISPLAY_INFO(__display)->has_cdclk_squash)
+#define HAS_CMN_SDP_TL(__display)	(DISPLAY_VER(__display) >= 35)
 #define HAS_CMRR(__display)		(DISPLAY_VER(__display) >= 20)
 #define HAS_CMTG(__display)		(!(__display)->platform.dg2 && DISPLAY_VER(__display) >= 13)
 #define HAS_CUR_FBC(__display)		(!HAS_GMCH(__display) && IS_DISPLAY_VER(__display, 7, 13))
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 8a2b37c7bccf..474d6e2ae34b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1298,6 +1298,15 @@ struct intel_crtc_state {
 		struct drm_dp_as_sdp as_sdp;
 	} infoframes;
 
+	struct {
+		/* Common SDP Transmission line */
+		bool enable;
+		int transmission_line;
+		int vsc_ext_stagger;
+		int pps_stagger;
+		int gmp_stagger;
+	} cmn_sdp_tl;
+
 	u8 eld[MAX_ELD_BYTES];
 
 	/* HDMI scrambling status */
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 025e906b63a9..86390553800d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -7287,3 +7287,24 @@ bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
 
 	return true;
 }
+
+void intel_dp_cmn_sdp_transmission_line_get_config(struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	u32 val;
+
+	if (!HAS_CMN_SDP_TL(display))
+		return;
+
+	val = intel_de_read(display, CMN_SDP_TL(display, cpu_transcoder));
+
+	crtc_state->cmn_sdp_tl.enable = val & TRANSMISSION_LINE_ENABLE;
+	crtc_state->cmn_sdp_tl.transmission_line = REG_FIELD_GET(BASE_TRANSMISSION_LINE_MASK, val);
+
+	val = intel_de_read(display, CMN_SDP_TL_STGR_CTL(display, cpu_transcoder));
+
+	crtc_state->cmn_sdp_tl.vsc_ext_stagger = REG_FIELD_GET(VSC_EXT_STAGGER_MASK, val);
+	crtc_state->cmn_sdp_tl.pps_stagger = REG_FIELD_GET(PPS_STAGGER_MASK, val);
+	crtc_state->cmn_sdp_tl.gmp_stagger = REG_FIELD_GET(GMP_STAGGER_MASK, val);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index b0bbd5981f57..24df234a43d3 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -237,4 +237,6 @@ bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
 	for ((__num_joined_pipes) = 1; (__num_joined_pipes) <= (I915_MAX_PIPES); (__num_joined_pipes)++) \
 		for_each_if(intel_dp_joiner_candidate_valid(__connector, (__mode)->hdisplay, __num_joined_pipes))
 
+void intel_dp_cmn_sdp_transmission_line_get_config(struct intel_crtc_state *crtc_state);
+
 #endif /* __INTEL_DP_H__ */
-- 
2.45.2

