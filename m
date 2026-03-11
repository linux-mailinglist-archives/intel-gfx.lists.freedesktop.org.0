Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CDL/B3ZXsWmGtwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 12:52:22 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5F7C26330E
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 12:52:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4839D10E8CD;
	Wed, 11 Mar 2026 11:52:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d2dltbJx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5472B10E8CA;
 Wed, 11 Mar 2026 11:52:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773229938; x=1804765938;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WqqVdWBgp++cxnKGy2fl/Sjljs5edpfPTlDDzjB+x5g=;
 b=d2dltbJx3LeTuX3g5XZY52PFPR/ujT3Q/VTOsCtGOkU3IsQuoBfTFJnB
 uKCJ2l2j+cctRCY4isSl1Hyo3nsc6vpxbE0NjTTgSpMIyqDuqvCXKtcQ5
 yIZG0k7pFMFIMc6PhQEXA5fzE8J1r0bD3c0We+XpEMQ+cHM3nSUkOeG3z
 HWlEyZRkqZHcRyoReyw3ImEYQRc708vKOBG02aUNZvNla/ZAzrvSHPg7d
 t8+kV/12sywCJDndAq4OuRGSA8H+Qj+b0ejoRt9QWUM88JuB8u5ymB0uH
 Q5qq2E/edzNW8GCKkk8jh0p/bv0uMdSEzUP41Ai3NvQ0WejzDwLSQIpDx A==;
X-CSE-ConnectionGUID: zibnOzARThKI/mNKCTMtKQ==
X-CSE-MsgGUID: nBIA7QMjQ9KvlaLj1t1VvQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11725"; a="74205007"
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="74205007"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 04:52:18 -0700
X-CSE-ConnectionGUID: mbata52kTE+Trk31alXeCA==
X-CSE-MsgGUID: WC21nPvGSEWfeCZ+nTug8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="224602436"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 04:52:15 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 18/19] drm/i915/dp: Make provision for AS SDP version 1
Date: Wed, 11 Mar 2026 17:06:10 +0530
Message-ID: <20260311113611.3393194-19-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260311113611.3393194-1-ankit.k.nautiyal@intel.com>
References: <20260311113611.3393194-1-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: C5F7C26330E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Action: no action

Currently we are setting AS SDP version to 2 without checking if the sink
supports it or whether we need to send version 1.

For PR with Link ON, the AS SDP version V1 is used.
When using AS SDP Version 1, AS SDP payload and parity bytes
are all set to zeroes.

Add a helper to compute the AS SDP version based on sink support and
feature requirement.

If AS SDP V2 is supported we use V2, unless Panel Replay with Link On is
enabled, for which we use V1.
If AS SDP V1 is not supported, we always send V1, without the payload.

Bspec: 75639
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 24 +++++++++++++++++++++++-
 1 file changed, 23 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 4d0a7695be5a..6b45894e40e0 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5109,6 +5109,10 @@ static ssize_t intel_dp_as_sdp_pack(const struct drm_dp_as_sdp *as_sdp,
 	sdp->sdp_header.HB2 = as_sdp->revision;
 	sdp->sdp_header.HB3 = as_sdp->length;
 
+	/* No Payload Data bytes for Version 1 */
+	if (as_sdp->revision == 0x1)
+		return length;
+
 	/* Fill AS (Adaptive Sync) SDP Payload */
 	sdp->db[0] = as_sdp->mode;
 	sdp->db[1] = as_sdp->vtotal & 0xFF;
@@ -7330,6 +7334,19 @@ void intel_dp_mst_resume(struct intel_display *display)
 	}
 }
 
+static bool intel_dp_get_as_sdp_revision(struct intel_dp *intel_dp,
+					 struct intel_crtc_state *crtc_state)
+{
+	if (crtc_state->has_panel_replay &&
+	    !intel_alpm_is_alpm_aux_less(intel_dp, crtc_state))
+		return 1;
+
+	if (intel_dp->as_sdp_v2_supported)
+		return 2;
+
+	return 1;
+}
+
 static
 void intel_dp_as_sdp_compute_config_late(struct intel_dp *intel_dp,
 					 struct intel_crtc_state *crtc_state)
@@ -7345,7 +7362,12 @@ void intel_dp_as_sdp_compute_config_late(struct intel_dp *intel_dp,
 	as_sdp->sdp_type = DP_SDP_ADAPTIVE_SYNC;
 	as_sdp->length = 0x9;
 	as_sdp->duration_incr_ms = 0;
-	as_sdp->revision = 0x2;
+	as_sdp->revision = intel_dp_get_as_sdp_revision(intel_dp, crtc_state);
+
+	/* No payload data bytes for Version 1 */
+	if (as_sdp->revision == 1)
+		return;
+
 	as_sdp->vtotal = intel_vrr_vmin_vtotal(crtc_state);
 
 	if (crtc_state->cmrr.enable) {
-- 
2.45.2

