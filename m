Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QE6mJWNs3GmdQgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 06:09:07 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C3703E7288
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 06:09:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1C8010E314;
	Mon, 13 Apr 2026 04:09:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="algzgDhv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8964410E310;
 Mon, 13 Apr 2026 04:09:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776053344; x=1807589344;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PXwurDn0WVmvBRxTBJnCaRlEso31qf5oQ98cD9LQsVw=;
 b=algzgDhvs5XIC3piflqGGv7nIsgiCC4gvhBVsxGzHzPZdWeN2Yb4iTUy
 ySfbUFAsPuY9LRsuF7K3qmXU6KAY2Gquts9qQZF5hSWJQt2MFFQ/9QmWV
 x+hjiS+nMXKLk6ra2STuSSxkfPU/iJBYxDUgVjV/E41s6aXlxBhYOaFVC
 WgFozhEMgW3AjD752LJ6g8kyXJhdEKR0a3rKXOTvLljRDGi1AlHHOGsAw
 ZDpeMkFRcrvcafen22jsHkLVyhAx6qLD2G95mj3sbfBwjFWN0njCGuHLd
 4IO2TMdQZlqv910F595zNl0grAn8LuL18w+smeKvgusbGYk+5p0eqv4ff w==;
X-CSE-ConnectionGUID: bnyKzABISaGoanfRarApgA==
X-CSE-MsgGUID: JowtAOffQAu447f9J535Bw==
X-IronPort-AV: E=McAfee;i="6800,10657,11757"; a="80568787"
X-IronPort-AV: E=Sophos;i="6.23,176,1770624000"; d="scan'208";a="80568787"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2026 21:09:04 -0700
X-CSE-ConnectionGUID: yLhf4HDsT+yQWC2KGtXQrw==
X-CSE-MsgGUID: k8J9DEzkTliEGekJYTyO8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,176,1770624000"; d="scan'208";a="229546638"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2026 21:09:02 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, arun.r.murthy@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 10/12] drm/i915/dp: Introduce helpers to enable/disable CMN
 SDP Transmission line
Date: Mon, 13 Apr 2026 09:23:47 +0530
Message-ID: <20260413035349.1730312-11-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: 4C3703E7288
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Introduce helpers to program or disable CMN_SDP_TL and stagger registers
using the state stored in crtc_state.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 49 +++++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp.h |  2 +
 2 files changed, 51 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0644fa8a7800..b1168c147bc7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -7451,7 +7451,56 @@ int intel_dp_sdp_as_tl(const struct intel_crtc_state *crtc_state)
 	return crtc_state->dp_sdp_tl.as;
 }
 
+static int intel_dp_sdp_tl_to_stagger(const struct intel_crtc_state *crtc_state,
+				      u16 sdp_tl)
+{
+	return sdp_tl - crtc_state->dp_sdp_tl.cmn;
+}
+
 void intel_dp_sdp_transmission_line_get_config(struct intel_crtc_state *crtc_state)
 {
 	crtc_state->dp_sdp_tl.as = intel_vrr_read_emp_as_sdp_tl(crtc_state);
 }
+
+void intel_dp_cmn_sdp_transmission_line_enable(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	int gmp_stagger;
+	int pps_stagger;
+	int vsc_ext_stagger;
+
+	if (!crtc_state->dp_sdp_tl.cmn)
+		return;
+
+	gmp_stagger = intel_dp_sdp_tl_to_stagger(crtc_state, crtc_state->dp_sdp_tl.gmp);
+	pps_stagger = intel_dp_sdp_tl_to_stagger(crtc_state, crtc_state->dp_sdp_tl.pps);
+	vsc_ext_stagger = intel_dp_sdp_tl_to_stagger(crtc_state, crtc_state->dp_sdp_tl.vsc_ext);
+
+	if (drm_WARN_ON(display->drm, gmp_stagger < 0))
+		return;
+	if (drm_WARN_ON(display->drm, pps_stagger < 0))
+		return;
+	if (drm_WARN_ON(display->drm, vsc_ext_stagger < 0))
+		return;
+
+	intel_de_write(display, CMN_SDP_TL_STGR_CTL(display, cpu_transcoder),
+		       GMP_STAGGER(gmp_stagger) |
+		       PPS_STAGGER(pps_stagger) |
+		       VSC_EXT_STAGGER(vsc_ext_stagger));
+
+	intel_de_write(display, CMN_SDP_TL(display, cpu_transcoder),
+		       TRANSMISSION_LINE_ENABLE |
+		       BASE_TRANSMISSION_LINE(crtc_state->dp_sdp_tl.cmn));
+}
+
+void intel_dp_cmn_sdp_transmission_line_disable(const struct intel_crtc_state *old_crtc_state)
+{
+	struct intel_display *display = to_intel_display(old_crtc_state);
+	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
+
+	if (!old_crtc_state->dp_sdp_tl.cmn)
+		return;
+
+	intel_de_write(display, CMN_SDP_TL(display, cpu_transcoder), 0);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 614b3f1fb72d..efaa18cfb41c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -240,5 +240,7 @@ bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
 
 int intel_dp_sdp_as_tl(const struct intel_crtc_state *crtc_state);
 void intel_dp_sdp_transmission_line_get_config(struct intel_crtc_state *crtc_state);
+void intel_dp_cmn_sdp_transmission_line_enable(const struct intel_crtc_state *crtc_state);
+void intel_dp_cmn_sdp_transmission_line_disable(const struct intel_crtc_state *old_crtc_state);
 
 #endif /* __INTEL_DP_H__ */
-- 
2.45.2

