Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0AqWGyyjCmqL4QQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 07:27:08 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 214AA5662A9
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 07:27:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E0EF10E67C;
	Mon, 18 May 2026 05:27:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PSEzPeXH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20E9D10E66C;
 Mon, 18 May 2026 05:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779082025; x=1810618025;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eXo7hB6qXOVfhbKfPewhKxC9sldOpCSB4wcE+wKNpbk=;
 b=PSEzPeXHajEBDvTZupNTUzyXKRNLIUMGIJ/qESK/tNcWAFvBsBdZ1hIl
 jYLxcfgXjS9tfKNmpADQaLt3zlZ9nwkWZPLNaV480c8SQdRDvrfSC8VRX
 okYLjHLq2aYurm8bPFi/UfnnJ6EUrJAB7eCivpIlEngNcJ6CIkH5ZAD+f
 SFvrzpK8UdDOTMZ13hP/vGuRrkX+RyO2Mg61STggFHyYLBa1pkAA8Rq9E
 jJuy9s1KAywNwfRpSd+69EteQKte7sWbZwGwOIOJPnBTg/VxlPzDMBl6v
 wujqDO5JfEARSPrbiH6pAs2cAUpsIR5uakfnxvLkK8RGB72PnKQvSP8ev w==;
X-CSE-ConnectionGUID: vrx9pDgOThKZWQJiwBXKYQ==
X-CSE-MsgGUID: P0EyIIVlTTWZ59BI5nHp8w==
X-IronPort-AV: E=McAfee;i="6800,10657,11789"; a="79064947"
X-IronPort-AV: E=Sophos;i="6.23,241,1770624000"; d="scan'208";a="79064947"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2026 22:27:04 -0700
X-CSE-ConnectionGUID: 6keNCs57S0CoT3whki/Q2A==
X-CSE-MsgGUID: h0Fqm04qRQSyuuOjaoQ8aw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,241,1770624000"; d="scan'208";a="243606223"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2026 22:27:03 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 10/12] drm/i915/dp: Compute and include coasting vtotal for AS
 SDP
Date: Mon, 18 May 2026 10:42:13 +0530
Message-ID: <20260518051216.2936634-11-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260518051216.2936634-1-ankit.k.nautiyal@intel.com>
References: <20260518051216.2936634-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
X-Rspamd-Queue-Id: 214AA5662A9
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action

DP v2.1 allows the source to temporarily suspend Adaptive-Sync SDP
transmission while Panel Replay is active when the sink supports
asynchronous video timing.

In such cases, the sink relies on the last transmitted AS SDP timing
information to maintain the refresh rate. To support this behavior,
compute and populate the coasting vtotal field in the AS SDP payload.

Include coasting vtotal in AS SDP packing, unpacking, and comparison,
and set it during late AS SDP configuration for PR with Aux-less ALPM
when asynchronous video timing is supported.

Note:
The coasting vtotal value is fully under driver control i.e. the HW does
not overwrite these payload bytes. HW only samples the PR_ALPM_CTL[AS SDP
Transmission in Active Disable] bit during PR active state and reflects it
in the AS SDP payload at the appropriate time.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  3 ++-
 drivers/gpu/drm/i915/display/intel_dp.c      | 19 +++++++++++++++++++
 2 files changed, 21 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 757a78c75bbf..043d1c667379 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4889,7 +4889,8 @@ intel_compare_dp_as_sdp(const struct drm_dp_as_sdp *a,
 		a->duration_incr_ms == b->duration_incr_ms &&
 		a->duration_decr_ms == b->duration_decr_ms &&
 		a->target_rr_divider == b->target_rr_divider &&
-		a->mode == b->mode;
+		a->mode == b->mode &&
+		a->coasting_vtotal == b->coasting_vtotal;
 }
 
 static bool
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index c1c6f394eb0b..69eb474fede7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5181,6 +5181,9 @@ static ssize_t intel_dp_as_sdp_pack(const struct drm_dp_as_sdp *as_sdp,
 	if (as_sdp->target_rr_divider)
 		sdp->db[4] |= 0x20;
 
+	sdp->db[7] = as_sdp->coasting_vtotal & 0xFF;
+	sdp->db[8] = (as_sdp->coasting_vtotal >> 8) & 0xFF;
+
 	return length;
 }
 
@@ -5365,6 +5368,7 @@ int intel_dp_as_sdp_unpack(struct drm_dp_as_sdp *as_sdp,
 	as_sdp->vtotal = (sdp->db[2] << 8) | sdp->db[1];
 	as_sdp->target_rr = ((sdp->db[4] & 0x3) << 8) | sdp->db[3];
 	as_sdp->target_rr_divider = sdp->db[4] & 0x20 ? true : false;
+	as_sdp->coasting_vtotal = (sdp->db[8] << 8) | sdp->db[7];
 
 	return 0;
 }
@@ -7471,6 +7475,21 @@ void intel_dp_as_sdp_compute_config_late(struct intel_dp *intel_dp,
 	} else {
 		as_sdp->mode = DP_AS_SDP_AVT_FIXED_VTOTAL;
 	}
+
+	/*
+	 * For Panel Replay with Async Video Timing support, the source can
+	 * disable sending the AS SDP during PR Active state. In that case,
+	 * the sink needs the coasting vtotal value to maintain the refresh
+	 * rate.
+	 *
+	 * #TODO:
+	 * If we ever advertise support for coasting at other refresh targets,
+	 * this logic could be revisited. For now, use the minimum refresh rate
+	 * as the only safe coasting value.
+	 */
+	if (intel_alpm_is_alpm_aux_less(intel_dp, crtc_state) &&
+	    intel_psr_pr_async_video_timing_supported(intel_dp))
+		as_sdp->coasting_vtotal = crtc_state->vrr.vmax;
 }
 
 static
-- 
2.45.2

