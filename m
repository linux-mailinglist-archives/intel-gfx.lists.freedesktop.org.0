Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iBgkJ+rgE2qzGwcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2026 07:40:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4579F5C5FE6
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2026 07:40:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B625710E3F0;
	Mon, 25 May 2026 05:40:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ivjUAv1t";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA09410E3ED;
 Mon, 25 May 2026 05:40:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779687650; x=1811223650;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VAddU59+bV4OCs4G5S3Jr84R2nLR9lUqK1x7vyvzIIA=;
 b=ivjUAv1tb0U4xnGzH7OXoZ/uQW2l6IPAtq5sfeBNV6D5Obsw4R3J5ME9
 Uw3SfqfZM/6BKeDv1v2p0nqbRSToLZTbG/bQeNbaOH+mdlKEAb+sMAAyb
 t26aT91J7drj0UWs0m2iyU5BVYFfvSbiTwbdsqR9t5xyCoKnrs0uIZjlK
 xrnTnJcuVDRpTKw03KlPs8A5RLWLnvT3OIiuYR9L4oc0BHmyEdPbr/zG+
 41nB39UyHfyV4Xk47qyX8TBj8PR8tDbGZVRL8vUYSu6VkDmCBtjTSVu4U
 NUG/cVvLR1woVrEG9cyqbLUsNLEIGQejxA/fhrlO6r5IClh1Onwqz9V3S w==;
X-CSE-ConnectionGUID: vg919gJXTxqLqQsbDNO0Rw==
X-CSE-MsgGUID: YOhbCIcBQkSZdcw2HJDUyQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11796"; a="68030805"
X-IronPort-AV: E=Sophos;i="6.24,167,1774335600"; d="scan'208";a="68030805"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2026 22:40:50 -0700
X-CSE-ConnectionGUID: 0IN+JC/HSwuoJsNqzdvQnQ==
X-CSE-MsgGUID: OJA0Ys5uTYCPnVaioEFE4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,167,1774335600"; d="scan'208";a="237306566"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2026 22:40:48 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 09/11] drm/i915/dp: Compute and include coasting vtotal for AS
 SDP
Date: Mon, 25 May 2026 10:52:33 +0530
Message-ID: <20260525052235.560741-10-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260525052235.560741-1-ankit.k.nautiyal@intel.com>
References: <20260525052235.560741-1-ankit.k.nautiyal@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 4579F5C5FE6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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
 drivers/gpu/drm/i915/display/intel_dp.c      | 20 ++++++++++++++++++++
 2 files changed, 22 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 6c8935f69db1..514c2e5c28cd 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4892,7 +4892,8 @@ intel_compare_dp_as_sdp(const struct drm_dp_as_sdp *a,
 		a->duration_incr_ms == b->duration_incr_ms &&
 		a->duration_decr_ms == b->duration_decr_ms &&
 		a->target_rr_divider == b->target_rr_divider &&
-		a->mode == b->mode;
+		a->mode == b->mode &&
+		a->coasting_vtotal == b->coasting_vtotal;
 }
 
 static bool
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 6aac52750798..a3aa0dadf0e1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3216,6 +3216,22 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
 	} else {
 		as_sdp->mode = DP_AS_SDP_AVT_FIXED_VTOTAL;
 	}
+
+	/*
+	 * For Panel Replay with Async Video Timing support, the source can
+	 * disable sending the AS SDP during PR Active state. In that case,
+	 * the sink needs the coasting vtotal value to maintain the refresh
+	 * rate. The HW only samples this on PR_ALPM_CTL[AS SDP Transmission
+	 * in Active Disable], which we never program, so providing the value
+	 * unconditionally when the sink advertises the capability is safe.
+	 *
+	 * #TODO:
+	 * If we ever advertise support for coasting at other refresh targets,
+	 * this logic could be revisited. For now, use the minimum refresh rate
+	 * as the only safe coasting value.
+	 */
+	if (intel_psr_pr_async_video_timing_supported(intel_dp))
+		as_sdp->coasting_vtotal = crtc_state->vrr.vmax;
 }
 
 static void intel_dp_compute_vsc_sdp(struct intel_dp *intel_dp,
@@ -5195,6 +5211,9 @@ static ssize_t intel_dp_as_sdp_pack(const struct drm_dp_as_sdp *as_sdp,
 	if (as_sdp->target_rr_divider)
 		sdp->db[4] |= 0x20;
 
+	sdp->db[7] = as_sdp->coasting_vtotal & 0xFF;
+	sdp->db[8] = (as_sdp->coasting_vtotal >> 8) & 0xFF;
+
 	return length;
 }
 
@@ -5379,6 +5398,7 @@ int intel_dp_as_sdp_unpack(struct drm_dp_as_sdp *as_sdp,
 	as_sdp->vtotal = (sdp->db[2] << 8) | sdp->db[1];
 	as_sdp->target_rr = ((sdp->db[4] & 0x3) << 8) | sdp->db[3];
 	as_sdp->target_rr_divider = sdp->db[4] & 0x20 ? true : false;
+	as_sdp->coasting_vtotal = (sdp->db[8] << 8) | sdp->db[7];
 
 	return 0;
 }
-- 
2.45.2

