Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eMxnNXgaGGoBdQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2026 12:35:36 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 890E95F0AA3
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2026 12:35:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E30C10EFBA;
	Thu, 28 May 2026 10:35:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ODui27SW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4868E10EFBA;
 Thu, 28 May 2026 10:35:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779964532; x=1811500532;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6EPHEfSO9lXVcMM025/rzEIKYUqQ6N0PJHYUrmHptas=;
 b=ODui27SWIpvPFt0L4D1FRB8rnRtjJyMGUD1yjgbwro4xLrUiw7xkNhoH
 nNCuSIZGlo5vmvkrDKhZYLYTfSkD41t5LGUrnuwEoiTvyd2byW6C4yEeA
 cpJazR1TRy14f05qxhTU5TTDW1YLOU4h4LhrZx+z3amFkklwSWNyZizhU
 MagylWhttpzo1JWmE+Qf8RkYfDvJh8nNJMPXulpLQmophsqfk4QCwda3S
 OeMr8e4PuXz4K2SvZJyDmRpcL35eNPn7xu7trui5wQP7ZjkSa7jKvlJUg
 QTdObxNjS8vMwPosv2O3qvWDD95pzA5T0O/HgekmZqAUn60Iq6QDxrVoH w==;
X-CSE-ConnectionGUID: vSFdxXgoQTmawvIiF4cDEg==
X-CSE-MsgGUID: 2+xOcAWPT+ijAtrFt/Hifw==
X-IronPort-AV: E=McAfee;i="6800,10657,11799"; a="79837659"
X-IronPort-AV: E=Sophos;i="6.24,173,1774335600"; d="scan'208";a="79837659"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2026 03:35:29 -0700
X-CSE-ConnectionGUID: OH4p9UctThKphzRuQridZA==
X-CSE-MsgGUID: a6VccllBQFKq7csE3J1r9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,173,1774335600"; d="scan'208";a="247458883"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.245.166])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2026 03:35:28 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 06/11] drm/i915/bw: Move num_{qgv,
 psf}_points out from the plane group
Date: Thu, 28 May 2026 13:34:53 +0300
Message-ID: <20260528103458.18069-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260528103458.18069-1-ville.syrjala@linux.intel.com>
References: <20260528103458.18069-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-0.988];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,linux.intel.com:mid]
X-Rspamd-Queue-Id: 890E95F0AA3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We only have a single num_{qgv,psf}_points value, there is no
need to replicate it in each plane group.

And drop the somewhat misplaced comments about pcode behaviour
from {icl,tgl}_max_bw_index() while at it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c       | 52 ++++++++-----------
 .../gpu/drm/i915/display/intel_display_core.h |  4 +-
 2 files changed, 25 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 19717a45aee8..6495924d0be8 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -155,8 +155,8 @@ static int adls_pcode_read_psf_gv_point_info(struct intel_display *display,
 
 static u16 icl_qgv_points_mask(struct intel_display *display)
 {
-	unsigned int num_psf_gv_points = display->bw.max[0].num_psf_gv_points;
-	unsigned int num_qgv_points = display->bw.max[0].num_qgv_points;
+	unsigned int num_psf_gv_points = display->bw.num_psf_gv_points;
+	unsigned int num_qgv_points = display->bw.num_qgv_points;
 	u16 qgv_points = 0, psf_points = 0;
 
 	/*
@@ -536,6 +536,9 @@ static int icl_get_bw_info(struct intel_display *display,
 	ipqdepth = min(ipqdepthpch, display_bw_params->displayrtids / num_channels);
 	qi.deinterleave = DIV_ROUND_UP(num_channels, is_y_tile(display) ? 4 : 2);
 
+	display->bw.num_qgv_points = qi.num_qgv_points;
+	display->bw.num_psf_gv_points = qi.num_psf_points;
+
 	for (i = 0; i < num_groups; i++) {
 		struct intel_bw_info *bi = &display->bw.max[i];
 		int clpchgroup;
@@ -544,9 +547,6 @@ static int icl_get_bw_info(struct intel_display *display,
 		clpchgroup = (display_bw_params->deburst * qi.deinterleave / num_channels) << i;
 		bi->num_planes = (ipqdepth - clpchgroup) / clpchgroup + 1;
 
-		bi->num_qgv_points = qi.num_qgv_points;
-		bi->num_psf_gv_points = qi.num_psf_points;
-
 		for (j = 0; j < qi.num_qgv_points; j++) {
 			const struct intel_qgv_point *sp = &qi.points[j];
 			int ct, bw;
@@ -629,6 +629,9 @@ static int tgl_get_bw_info(struct intel_display *display,
 	 */
 	clperchgroup = 4 * (8 / num_channels) * qi.deinterleave;
 
+	display->bw.num_qgv_points = qi.num_qgv_points;
+	display->bw.num_psf_gv_points = qi.num_psf_points;
+
 	display->bw.max[0].num_planes = U8_MAX;
 
 	for (i = 0; i < num_groups; i++) {
@@ -647,9 +650,6 @@ static int tgl_get_bw_info(struct intel_display *display,
 				bi_next->num_planes = 0;
 		}
 
-		bi->num_qgv_points = qi.num_qgv_points;
-		bi->num_psf_gv_points = qi.num_psf_points;
-
 		for (j = 0; j < qi.num_qgv_points; j++) {
 			const struct intel_qgv_point *sp = &qi.points[j];
 			int ct, bw;
@@ -702,11 +702,12 @@ static void dg2_get_bw_info(struct intel_display *display)
 {
 	int i;
 
+	display->bw.num_qgv_points = 1;
+
 	display->bw.max[0].num_planes = U8_MAX;
 	display->bw.max[0].deratedbw[0] = display->platform.dg2_g11 ? 38000 : 50000;
 
 	/* Bandwidth does not depend on # of planes; set all groups the same */
-	display->bw.max[0].num_qgv_points = 1;
 	for (i = 1; i < ARRAY_SIZE(display->bw.max); i++)
 		display->bw.max[i] = display->bw.max[0];
 
@@ -732,6 +733,8 @@ static int xe2_hpd_get_bw_info(struct intel_display *display,
 	peakbw = tgl_peakbw(num_channels, qi.channel_width, icl_sagv_max_dclk(&qi));
 	maxdebw = min(soc_bw_params->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 100);
 
+	display->bw.num_qgv_points = qi.num_qgv_points;
+
 	display->bw.max[0].num_planes = U8_MAX;
 
 	for (i = 0; i < qi.num_qgv_points; i++) {
@@ -748,7 +751,6 @@ static int xe2_hpd_get_bw_info(struct intel_display *display,
 	}
 
 	/* Bandwidth does not depend on # of planes; set all groups the same */
-	display->bw.max[0].num_qgv_points = qi.num_qgv_points;
 	for (i = 1; i < ARRAY_SIZE(display->bw.max); i++)
 		display->bw.max[i] = display->bw.max[0];
 
@@ -767,6 +769,9 @@ static unsigned int icl_max_bw_index(struct intel_display *display,
 {
 	int i;
 
+	if (qgv_point >= display->bw.num_qgv_points)
+		return UINT_MAX;
+
 	/*
 	 * Let's return max bw for 0 planes
 	 */
@@ -776,13 +781,6 @@ static unsigned int icl_max_bw_index(struct intel_display *display,
 		const struct intel_bw_info *bi =
 			&display->bw.max[i];
 
-		/*
-		 * Pcode will not expose all QGV points when
-		 * SAGV is forced to off/min/med/max.
-		 */
-		if (qgv_point >= bi->num_qgv_points)
-			return UINT_MAX;
-
 		if (num_planes >= bi->num_planes)
 			return i;
 	}
@@ -795,17 +793,13 @@ static unsigned int tgl_max_bw_index(struct intel_display *display,
 {
 	int i;
 
+	if (qgv_point >= display->bw.num_qgv_points)
+		return UINT_MAX;
+
 	for (i = ARRAY_SIZE(display->bw.max) - 1; i >= 0; i--) {
 		const struct intel_bw_info *bi =
 			&display->bw.max[i];
 
-		/*
-		 * Pcode will not expose all QGV points when
-		 * SAGV is forced to off/min/med/max.
-		 */
-		if (qgv_point >= bi->num_qgv_points)
-			return UINT_MAX;
-
 		if (num_planes <= bi->num_planes)
 			return i;
 	}
@@ -941,7 +935,7 @@ intel_atomic_get_bw_state(struct intel_atomic_state *state)
 static unsigned int icl_max_bw_qgv_point_mask(struct intel_display *display,
 					      int num_active_planes)
 {
-	unsigned int num_qgv_points = display->bw.max[0].num_qgv_points;
+	unsigned int num_qgv_points = display->bw.num_qgv_points;
 	unsigned int max_bw_point = 0;
 	unsigned int max_bw = 0;
 	int i;
@@ -977,7 +971,7 @@ static u16 icl_prepare_qgv_points_mask(struct intel_display *display,
 
 static unsigned int icl_max_bw_psf_gv_point_mask(struct intel_display *display)
 {
-	unsigned int num_psf_gv_points = display->bw.max[0].num_psf_gv_points;
+	unsigned int num_psf_gv_points = display->bw.num_psf_gv_points;
 	unsigned int max_bw_point_mask = 0;
 	unsigned int max_bw = 0;
 	int i;
@@ -1082,7 +1076,7 @@ static int mtl_find_qgv_points(struct intel_display *display,
 			       struct intel_bw_state *new_bw_state)
 {
 	unsigned int best_rate = UINT_MAX;
-	unsigned int num_qgv_points = display->bw.max[0].num_qgv_points;
+	unsigned int num_qgv_points = display->bw.num_qgv_points;
 	unsigned int qgv_peak_bw  = 0;
 	int i;
 	int ret;
@@ -1153,8 +1147,8 @@ static int icl_find_qgv_points(struct intel_display *display,
 			       const struct intel_bw_state *old_bw_state,
 			       struct intel_bw_state *new_bw_state)
 {
-	unsigned int num_psf_gv_points = display->bw.max[0].num_psf_gv_points;
-	unsigned int num_qgv_points = display->bw.max[0].num_qgv_points;
+	unsigned int num_psf_gv_points = display->bw.num_psf_gv_points;
+	unsigned int num_qgv_points = display->bw.num_qgv_points;
 	u16 psf_points = 0;
 	u16 qgv_points = 0;
 	int i;
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 09ce25a6d4b1..f13fa810ccca 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -329,10 +329,10 @@ struct intel_display {
 			unsigned int psf_bw[I915_NUM_PSF_GV_POINTS];
 			/* Peak BW for each QGV point */
 			unsigned int peakbw[I915_NUM_QGV_POINTS];
-			u8 num_qgv_points;
-			u8 num_psf_gv_points;
 			u8 num_planes;
 		} max[6];
+		u8 num_qgv_points;
+		u8 num_psf_gv_points;
 	} bw;
 
 	struct {
-- 
2.53.0

