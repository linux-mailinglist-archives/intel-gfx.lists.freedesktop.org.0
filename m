Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WEb5OnYaGGoBdQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2026 12:35:34 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 708A65F0A9C
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2026 12:35:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E21910EFBF;
	Thu, 28 May 2026 10:35:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Gg/dO7Is";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7EDB10EFBF;
 Thu, 28 May 2026 10:35:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779964531; x=1811500531;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DtDi94aYL8nL9Ye8Y2VaYzvEqFLaMT1+kQTxabgP2P0=;
 b=Gg/dO7IsqzNYc67Leh1cgN+ymIwSzsIaNwyulxGiVmX1OInhpmwmZye8
 dcYukUeailUa1KoqVlbeLdVH1eRzNWBunKirbhY8F45osGt7dIutDM8WF
 VvPURtLFW6ZVHTaUvJRDorc70vCcztuFQ/UGHs3lhNzxayCuduZYZ7EgW
 qtO+IO0QnbNubk9ryceZdSPTHUkkuPg1P+JeO+gfiROgUnNYRGe24VjTY
 HqjkYGZivqQ2SASnhMX/oJs3m4JXmMicIHCzpDAuQ+YUYRsi8Na1wgWlW
 Mo+NazSAuO/LslegL0rQQ5/KUZws1QmdIAqZ5vvqBOEDNxWNWk77qe517 Q==;
X-CSE-ConnectionGUID: e2l7qiuwTcmx8LyOf9BsPw==
X-CSE-MsgGUID: EPl/yNeoT6Ka2lyoeMDtmg==
X-IronPort-AV: E=McAfee;i="6800,10657,11799"; a="79837649"
X-IronPort-AV: E=Sophos;i="6.24,173,1774335600"; d="scan'208";a="79837649"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2026 03:35:27 -0700
X-CSE-ConnectionGUID: 8tr29bBVRM2vUa2DNS+EjA==
X-CSE-MsgGUID: zX8+/l3nT6uxY56gtSoLJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,173,1774335600"; d="scan'208";a="247458872"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.245.166])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2026 03:35:24 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 05/11] drn/i915/bw: s/num_points/num_qgv_points/
Date: Thu, 28 May 2026 13:34:52 +0300
Message-ID: <20260528103458.18069-6-ville.syrjala@linux.intel.com>
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:dkim,linux.intel.com:mid]
X-Rspamd-Queue-Id: 708A65F0A9C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Rename 'num_points' to 'num_qgv_points' to make it a bit
more specific. We already have the 'num_psf_points' counterpart.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 30 ++++++++++++-------------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 940f23e7dd4e..19717a45aee8 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -59,7 +59,7 @@ struct intel_psf_gv_point {
 struct intel_qgv_info {
 	struct intel_qgv_point points[I915_NUM_QGV_POINTS];
 	struct intel_psf_gv_point psf_points[I915_NUM_PSF_GV_POINTS];
-	u8 num_points;
+	u8 num_qgv_points;
 	u8 num_psf_points;
 	u8 t_bl;
 	u8 max_numchannels;
@@ -252,7 +252,7 @@ static int icl_get_qgv_points(struct intel_display *display,
 {
 	int i, ret;
 
-	qi->num_points = dram_info->num_qgv_points;
+	qi->num_qgv_points = dram_info->num_qgv_points;
 	qi->num_psf_points = dram_info->num_psf_gv_points;
 
 	if (DISPLAY_VER(display) >= 14) {
@@ -324,10 +324,10 @@ static int icl_get_qgv_points(struct intel_display *display,
 	}
 
 	if (drm_WARN_ON(display->drm,
-			qi->num_points > ARRAY_SIZE(qi->points)))
-		qi->num_points = ARRAY_SIZE(qi->points);
+			qi->num_qgv_points > ARRAY_SIZE(qi->points)))
+		qi->num_qgv_points = ARRAY_SIZE(qi->points);
 
-	for (i = 0; i < qi->num_points; i++) {
+	for (i = 0; i < qi->num_qgv_points; i++) {
 		struct intel_qgv_point *sp = &qi->points[i];
 
 		ret = intel_read_qgv_point_info(display, sp, i);
@@ -373,7 +373,7 @@ static int icl_sagv_max_dclk(const struct intel_qgv_info *qi)
 	u16 dclk = 0;
 	int i;
 
-	for (i = 0; i < qi->num_points; i++)
+	for (i = 0; i < qi->num_qgv_points; i++)
 		dclk = max(dclk, qi->points[i].dclk);
 
 	return dclk;
@@ -544,10 +544,10 @@ static int icl_get_bw_info(struct intel_display *display,
 		clpchgroup = (display_bw_params->deburst * qi.deinterleave / num_channels) << i;
 		bi->num_planes = (ipqdepth - clpchgroup) / clpchgroup + 1;
 
-		bi->num_qgv_points = qi.num_points;
+		bi->num_qgv_points = qi.num_qgv_points;
 		bi->num_psf_gv_points = qi.num_psf_points;
 
-		for (j = 0; j < qi.num_points; j++) {
+		for (j = 0; j < qi.num_qgv_points; j++) {
 			const struct intel_qgv_point *sp = &qi.points[j];
 			int ct, bw;
 
@@ -574,7 +574,7 @@ static int icl_get_bw_info(struct intel_display *display,
 	 * SAGV point, but we can't send PCode commands to restrict it
 	 * as it will fail and pointless anyway.
 	 */
-	if (qi.num_points == 1)
+	if (qi.num_qgv_points == 1)
 		display->sagv.status = I915_SAGV_NOT_CONTROLLED;
 	else
 		display->sagv.status = I915_SAGV_ENABLED;
@@ -647,10 +647,10 @@ static int tgl_get_bw_info(struct intel_display *display,
 				bi_next->num_planes = 0;
 		}
 
-		bi->num_qgv_points = qi.num_points;
+		bi->num_qgv_points = qi.num_qgv_points;
 		bi->num_psf_gv_points = qi.num_psf_points;
 
-		for (j = 0; j < qi.num_points; j++) {
+		for (j = 0; j < qi.num_qgv_points; j++) {
 			const struct intel_qgv_point *sp = &qi.points[j];
 			int ct, bw;
 
@@ -690,7 +690,7 @@ static int tgl_get_bw_info(struct intel_display *display,
 	 * SAGV point, but we can't send PCode commands to restrict it
 	 * as it will fail and pointless anyway.
 	 */
-	if (qi.num_points == 1)
+	if (qi.num_qgv_points == 1)
 		display->sagv.status = I915_SAGV_NOT_CONTROLLED;
 	else
 		display->sagv.status = I915_SAGV_ENABLED;
@@ -734,7 +734,7 @@ static int xe2_hpd_get_bw_info(struct intel_display *display,
 
 	display->bw.max[0].num_planes = U8_MAX;
 
-	for (i = 0; i < qi.num_points; i++) {
+	for (i = 0; i < qi.num_qgv_points; i++) {
 		const struct intel_qgv_point *sp = &qi.points[i];
 		int bw = tgl_peakbw(num_channels, qi.channel_width, sp->dclk);
 
@@ -748,7 +748,7 @@ static int xe2_hpd_get_bw_info(struct intel_display *display,
 	}
 
 	/* Bandwidth does not depend on # of planes; set all groups the same */
-	display->bw.max[0].num_qgv_points = qi.num_points;
+	display->bw.max[0].num_qgv_points = qi.num_qgv_points;
 	for (i = 1; i < ARRAY_SIZE(display->bw.max); i++)
 		display->bw.max[i] = display->bw.max[0];
 
@@ -756,7 +756,7 @@ static int xe2_hpd_get_bw_info(struct intel_display *display,
 	 * Xe2_HPD should always have exactly two QGV points representing
 	 * battery and plugged-in operation.
 	 */
-	drm_WARN_ON(display->drm, qi.num_points != 2);
+	drm_WARN_ON(display->drm, qi.num_qgv_points != 2);
 	display->sagv.status = I915_SAGV_ENABLED;
 
 	return 0;
-- 
2.53.0

