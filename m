Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GPVuBnFdnGmkEwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Feb 2026 15:00:17 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A64CA177977
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Feb 2026 15:00:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB68410E3F1;
	Mon, 23 Feb 2026 14:00:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d/AqyWDK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AE7010E3E2;
 Mon, 23 Feb 2026 14:00:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771855214; x=1803391214;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jN33Y9pcNncyIGU1GIc8V1mdV+9FTsJrJJR5oRkfGVk=;
 b=d/AqyWDKu05R7Q00Is2roc4Nt+3E222M8dx6Fh/ZqaZT99rtMqpeDfaQ
 nhfUEa2+yJpwAj4ZPM+6JtYPFgyHNqzJ2bNN0ZTiWPz2PODgQPsEx23Kl
 bbd5Svx0W9fuChJoBkJxPbXb78eoeH5nMa3iq+iIq/WvnB1NAcdQUn6Ls
 6dc7cLOJoj1pmu/0Ou09+V1xs2oqmHcaVdJ5xVUGVVwgGWbBB3DqBAXr+
 rX2XcgqRrYjSlcSMCoVUzr366DEgCxEv5ogjzFw/fokmvKfzPwR04Vtqs
 nvftBgO4IfbijtvZw3d4I08DuckMIQLbxkQvdA+DBwe/9X+CbiZD8hOTd Q==;
X-CSE-ConnectionGUID: ML7Q4Qf8QJGIiYaAeA3aOA==
X-CSE-MsgGUID: 4WMAzas3RMeg5fOvLa6Scg==
X-IronPort-AV: E=McAfee;i="6800,10657,11709"; a="72827044"
X-IronPort-AV: E=Sophos;i="6.21,306,1763452800"; d="scan'208";a="72827044"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 06:00:14 -0800
X-CSE-ConnectionGUID: 8IizGZRlSYyNDZ8kDmb67Q==
X-CSE-MsgGUID: F2jpTQsQRkeAi0dJUO/Exw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,306,1763452800"; d="scan'208";a="212961187"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 06:00:12 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 06/14] drm/i915/dp: Use version field of AS SDP data structure
Date: Mon, 23 Feb 2026 19:14:23 +0530
Message-ID: <20260223134431.1639308-7-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260223134431.1639308-1-ankit.k.nautiyal@intel.com>
References: <20260223134431.1639308-1-ankit.k.nautiyal@intel.com>
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
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: A64CA177977
X-Rspamd-Action: no action

Use the newly added version field of struct drm_dp_as_sdp instead of
current hardcoding.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 3 ++-
 drivers/gpu/drm/i915/display/intel_dp.c      | 7 +++----
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 33821cc2948b..309e28b15198 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4902,7 +4902,8 @@ static bool
 intel_compare_dp_as_sdp(const struct drm_dp_as_sdp *a,
 			const struct drm_dp_as_sdp *b)
 {
-	return a->vtotal == b->vtotal &&
+	return a->version == b->version &&
+		a->vtotal == b->vtotal &&
 		a->target_rr == b->target_rr &&
 		a->duration_incr_ms == b->duration_incr_ms &&
 		a->duration_decr_ms == b->duration_decr_ms &&
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 5abb56fb26f7..5d173553a646 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3136,6 +3136,7 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
 	as_sdp->sdp_type = DP_SDP_ADAPTIVE_SYNC;
 	as_sdp->length = 0x9;
 	as_sdp->duration_incr_ms = 0;
+	as_sdp->version = 0x2;
 	as_sdp->vtotal = intel_vrr_vmin_vtotal(crtc_state);
 
 	if (crtc_state->cmrr.enable) {
@@ -5001,7 +5002,7 @@ static ssize_t intel_dp_as_sdp_pack(const struct drm_dp_as_sdp *as_sdp,
 	/* Prepare AS (Adaptive Sync) SDP Header */
 	sdp->sdp_header.HB0 = 0;
 	sdp->sdp_header.HB1 = as_sdp->sdp_type;
-	sdp->sdp_header.HB2 = 0x02;
+	sdp->sdp_header.HB2 = as_sdp->version;
 	sdp->sdp_header.HB3 = as_sdp->length;
 
 	/* Fill AS (Adaptive Sync) SDP Payload */
@@ -5188,13 +5189,11 @@ int intel_dp_as_sdp_unpack(struct drm_dp_as_sdp *as_sdp,
 	if (sdp->sdp_header.HB1 != DP_SDP_ADAPTIVE_SYNC)
 		return -EINVAL;
 
-	if (sdp->sdp_header.HB2 != 0x02)
-		return -EINVAL;
-
 	if ((sdp->sdp_header.HB3 & 0x3F) != 9)
 		return -EINVAL;
 
 	as_sdp->length = sdp->sdp_header.HB3 & DP_ADAPTIVE_SYNC_SDP_LENGTH;
+	as_sdp->version = sdp->sdp_header.HB2;
 	as_sdp->mode = sdp->db[0] & DP_ADAPTIVE_SYNC_SDP_OPERATION_MODE;
 	as_sdp->vtotal = (sdp->db[2] << 8) | sdp->db[1];
 	as_sdp->target_rr = ((sdp->db[4] & 0x3) << 8) | sdp->db[3];
-- 
2.45.2

