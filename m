Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YFIrBNi2EGqFcwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 22:04:40 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BD9A5B9E1B
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 22:04:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDA4310F6A1;
	Fri, 22 May 2026 20:04:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D+jKqKfx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0AFC10E50E;
 Fri, 22 May 2026 20:04:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779480277; x=1811016277;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+fI7hzYOLABeqsUOtOcLDrqUP4cnN5VxwdSYs3Bh5tU=;
 b=D+jKqKfxk95bZSpOPsDe3MlLcAXSOtmnHP6dgRLE5dFIGOykdwFmvtU7
 6APdge8yaNcHRESFaaasecKXd6HeZY0N+aDziiQVl4WPdQqKrYvWZ8w/z
 uKQWLi3fOzhzESq4+CclgFkQ5S470m/8odtsXpRZBoXCv/ZvBNC6s942/
 kT6NozulKVkr3Gny5nQnG1pIctlmWUrasatDOgHtFeOQhVruNeatsS/0U
 KWzrecYrekcvGEINmgZCow4lbjtzsV2VECVhRJwy4zzJiX1vBUjJD43AV
 YwnaM+KxtEpAWY56PPKl7cVJA6ogsoTIZrJav+X5DiFbROn6mj9vKVbwz w==;
X-CSE-ConnectionGUID: USDa4UK9TGuffA4xk9jbXg==
X-CSE-MsgGUID: BLMZa8YbR6q1LM6Agtmlsw==
X-IronPort-AV: E=McAfee;i="6800,10657,11794"; a="80396819"
X-IronPort-AV: E=Sophos;i="6.24,163,1774335600"; d="scan'208";a="80396819"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 13:04:37 -0700
X-CSE-ConnectionGUID: nW7kfWezRo6m4YU6LJUvmg==
X-CSE-MsgGUID: tdH92XpeSUaFKXJ42awsNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,163,1774335600"; d="scan'208";a="234649169"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.71])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 13:04:35 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 10/10] drm/i915/bw: Do not consider tile4 as tileY
Date: Fri, 22 May 2026 23:03:46 +0300
Message-ID: <20260522200346.17377-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260522200346.17377-1-ville.syrjala@linux.intel.com>
References: <20260522200346.17377-1-ville.syrjala@linux.intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,intel.com:email,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 7BD9A5B9E1B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

For the purposes of memory bandwidth calculations tile4
should not be considered the same as tileY. Make it so.

This should not actually change anything as the affected
code only applies to pre-MTL integrated GPUs, which don't
have tile4.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 29 ++++++++++++++-----------
 1 file changed, 16 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 8256ad8bcc8b..30ac5b83d003 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -240,10 +240,15 @@ intel_read_qgv_point_info(struct intel_display *display,
 		return icl_pcode_read_qgv_point_info(display, sp, point);
 }
 
+static bool is_y_tile(struct intel_display *display)
+{
+	/* assume Y tile may be used if supported */
+	return !HAS_4TILE(display);
+}
+
 static int icl_get_qgv_points(struct intel_display *display,
 			      const struct dram_info *dram_info,
-			      struct intel_qgv_info *qi,
-			      bool is_y_tile)
+			      struct intel_qgv_info *qi)
 {
 	int i, ret;
 
@@ -282,16 +287,16 @@ static int icl_get_qgv_points(struct intel_display *display,
 	} else if (DISPLAY_VER(display) >= 12) {
 		switch (dram_info->type) {
 		case INTEL_DRAM_DDR4:
-			qi->t_bl = is_y_tile ? 8 : 4;
+			qi->t_bl = is_y_tile(display) ? 8 : 4;
 			qi->max_numchannels = 2;
 			qi->channel_width = 64;
-			qi->deinterleave = is_y_tile ? 1 : 2;
+			qi->deinterleave = is_y_tile(display) ? 1 : 2;
 			break;
 		case INTEL_DRAM_DDR5:
-			qi->t_bl = is_y_tile ? 16 : 8;
+			qi->t_bl = is_y_tile(display) ? 16 : 8;
 			qi->max_numchannels = 4;
 			qi->channel_width = 32;
-			qi->deinterleave = is_y_tile ? 1 : 2;
+			qi->deinterleave = is_y_tile(display) ? 1 : 2;
 			break;
 		case INTEL_DRAM_LPDDR4:
 			if (display->platform.rocketlake) {
@@ -306,7 +311,7 @@ static int icl_get_qgv_points(struct intel_display *display,
 			qi->t_bl = 16;
 			qi->max_numchannels = 8;
 			qi->channel_width = 16;
-			qi->deinterleave = is_y_tile ? 2 : 4;
+			qi->deinterleave = is_y_tile(display) ? 2 : 4;
 			break;
 		default:
 			qi->t_bl = 16;
@@ -512,7 +517,6 @@ static int icl_get_bw_info(struct intel_display *display,
 			   const struct intel_display_bw_params *display_bw_params)
 {
 	struct intel_qgv_info qi = {};
-	bool is_y_tile = true; /* assume y tile may be used */
 	int num_channels = max_t(u8, 1, dram_info->num_channels);
 	int ipqdepth, ipqdepthpch = 16;
 	int dclk_max;
@@ -520,7 +524,7 @@ static int icl_get_bw_info(struct intel_display *display,
 	int num_groups = ARRAY_SIZE(display->bw.max);
 	int i, ret;
 
-	ret = icl_get_qgv_points(display, dram_info, &qi, is_y_tile);
+	ret = icl_get_qgv_points(display, dram_info, &qi);
 	if (ret) {
 		drm_dbg_kms(display->drm,
 			    "Failed to get memory subsystem information, ignoring bandwidth limits");
@@ -530,7 +534,7 @@ static int icl_get_bw_info(struct intel_display *display,
 	dclk_max = icl_sagv_max_dclk(&qi);
 	maxdebw = min(soc_bw_params->deprogbwlimit * 1000, dclk_max * 16 * 6 / 10);
 	ipqdepth = min(ipqdepthpch, display_bw_params->displayrtids / num_channels);
-	qi.deinterleave = DIV_ROUND_UP(num_channels, is_y_tile ? 4 : 2);
+	qi.deinterleave = DIV_ROUND_UP(num_channels, is_y_tile(display) ? 4 : 2);
 
 	for (i = 0; i < num_groups; i++) {
 		struct intel_bw_info *bi = &display->bw.max[i];
@@ -589,7 +593,6 @@ static int tgl_get_bw_info(struct intel_display *display,
 			   const struct intel_display_bw_params *display_bw_params)
 {
 	struct intel_qgv_info qi = {};
-	bool is_y_tile = true; /* assume y tile may be used */
 	int num_channels = max_t(u8, 1, dram_info->num_channels);
 	int ipqdepth, ipqdepthpch = 16;
 	int maxdebw, peakbw;
@@ -597,7 +600,7 @@ static int tgl_get_bw_info(struct intel_display *display,
 	int num_groups = ARRAY_SIZE(display->bw.max);
 	int i, ret;
 
-	ret = icl_get_qgv_points(display, dram_info, &qi, is_y_tile);
+	ret = icl_get_qgv_points(display, dram_info, &qi);
 	if (ret) {
 		drm_dbg_kms(display->drm,
 			    "Failed to get memory subsystem information, ignoring bandwidth limits");
@@ -728,7 +731,7 @@ static int xe2_hpd_get_bw_info(struct intel_display *display,
 	int peakbw, maxdebw;
 	int ret, i;
 
-	ret = icl_get_qgv_points(display, dram_info, &qi, true);
+	ret = icl_get_qgv_points(display, dram_info, &qi);
 	if (ret) {
 		drm_dbg_kms(display->drm,
 			    "Failed to get memory subsystem information, ignoring bandwidth limits");
-- 
2.52.0

