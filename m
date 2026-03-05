Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uKJwObIDqWlW0QAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Mar 2026 05:16:50 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C05E20AB7C
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Mar 2026 05:16:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F2B910EB03;
	Thu,  5 Mar 2026 04:16:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LcoEIJZE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A092210EB00;
 Thu,  5 Mar 2026 04:16:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772684208; x=1804220208;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pi52QWUodKZMPcNyVB05hqSbOLqDTlSt3+FhpIVgDbg=;
 b=LcoEIJZE6mbVnuA5BgT6A5fNIAI3UQim9dWgffzyLiqUuglZqRLErTma
 QlQOJUPiKUu1Mo0G08K2rsja8gk3aGf2AvK5ZyF8Wigl+v34mvAyEOTw+
 geWHLQ+v6WQ6OxtwvJxcwpGBBHnjKTB5zWkc9WfSSqIFlbg8NF560nXoC
 CgIJ0kzHkWdaOjPrAP9FzqEScuSiBRJHxQF96zfQCaMK5erj4hK7GlKwd
 MUKkAzyQu4RIXFMO0dM1xDaRYbMPVYp4zUAgf15aubhpb52jtoQ5hfTu6
 e4z6kvUnSGRWddOLtoe9NU+ff8y/z4wx1ZwJ6OrCi/vZXgYwFkLt3TdTU g==;
X-CSE-ConnectionGUID: HbIDnkqcSNuFkb78f+RaPg==
X-CSE-MsgGUID: NF04GChnScqXQ3txrSLZ8A==
X-IronPort-AV: E=McAfee;i="6800,10657,11719"; a="73674708"
X-IronPort-AV: E=Sophos;i="6.21,325,1763452800"; d="scan'208";a="73674708"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 20:16:48 -0800
X-CSE-ConnectionGUID: +HFauHGrRbS9VLCwvXhyXg==
X-CSE-MsgGUID: IKrPf4H7T7GvvCffTLCSrg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,325,1763452800"; d="scan'208";a="222705742"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 20:16:46 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, arun.r.murthy@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 4/5] drm/i915/dp: Introduce helpers to enable/disable CMN SDP
 Transmission line
Date: Thu,  5 Mar 2026 09:31:17 +0530
Message-ID: <20260305040118.2576312-5-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: 9C05E20AB7C
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

Introduce helpers to program or disable CMN_SDP_TL and stagger registers
using the state stored in crtc_state.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 29 +++++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp.h |  2 ++
 2 files changed, 31 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 9204a813639a..59a8fa5e5ba9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -7317,3 +7317,32 @@ void intel_dp_cmn_sdp_transmission_line_get_config(struct intel_crtc_state *crtc
 	crtc_state->cmn_sdp_tl.pps_stagger = REG_FIELD_GET(PPS_STAGGER_MASK, val);
 	crtc_state->cmn_sdp_tl.gmp_stagger = REG_FIELD_GET(GMP_STAGGER_MASK, val);
 }
+
+void intel_dp_cmn_sdp_transmission_line_enable(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+
+	if (!crtc_state->cmn_sdp_tl.enable)
+		return;
+
+	intel_de_write(display, CMN_SDP_TL_STGR_CTL(display, cpu_transcoder),
+		       GMP_STAGGER(crtc_state->cmn_sdp_tl.gmp_stagger) |
+		       PPS_STAGGER(crtc_state->cmn_sdp_tl.pps_stagger) |
+		       VSC_EXT_STAGGER(crtc_state->cmn_sdp_tl.vsc_ext_stagger));
+
+	intel_de_write(display, CMN_SDP_TL(display, cpu_transcoder),
+		       TRANSMISSION_LINE_ENABLE |
+		       BASE_TRANSMISSION_LINE(crtc_state->cmn_sdp_tl.transmission_line));
+}
+
+void intel_dp_cmn_sdp_transmission_line_disable(const struct intel_crtc_state *old_crtc_state)
+{
+	struct intel_display *display = to_intel_display(old_crtc_state);
+	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
+
+	if (!old_crtc_state->cmn_sdp_tl.enable)
+		return;
+
+	intel_de_write(display, CMN_SDP_TL(display, cpu_transcoder), 0);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index abb2fcdea352..ace7d142182f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -239,5 +239,7 @@ bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
 
 int intel_dp_emp_as_sdp_tl(const struct intel_crtc_state *crtc_state);
 void intel_dp_cmn_sdp_transmission_line_get_config(struct intel_crtc_state *crtc_state);
+void intel_dp_cmn_sdp_transmission_line_enable(const struct intel_crtc_state *crtc_state);
+void intel_dp_cmn_sdp_transmission_line_disable(const struct intel_crtc_state *old_crtc_state);
 
 #endif /* __INTEL_DP_H__ */
-- 
2.45.2

