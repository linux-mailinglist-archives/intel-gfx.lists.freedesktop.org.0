Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QOmWElTq1Wkd/QcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 07:40:36 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED9D73B74BA
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 07:40:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6107210E52C;
	Wed,  8 Apr 2026 05:40:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TtDcjQYY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D08310E52C;
 Wed,  8 Apr 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775626833; x=1807162833;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mhTFFiuVJ7nW8vVYHQEAOYbuLNKGLYKSjylBU042wU0=;
 b=TtDcjQYYjFxGrpjXKi9lR/jLpf9CxcUkV3pPJPYrkc9LEtSq5xrPMBJt
 Lz6qQkLuqNRNRvgza33gv+ZK7Myw80TFlU7mBEYAFoN3tgn1s1+NexMv2
 mOO+4mv38HbhyN5xd2BEc/5/gu8KsmOQtfsWN7cRpk2ckVkpvB7+eKY9F
 oSEKnjHWzH/m90gs1NJp0mnm0l9JII+OiHATn9SINynxhK6rKt+loWcru
 eEVKZAr8RDkSM5kks0krwAsBQPmxmBSKpb0jCYyC6fvC9sFGPK8H941PV
 YSDwp/zedd0eHhZwq5Cj/a+jv6oMZQ4UwD41pppIPe7sJw/TJHcl3e5Qb Q==;
X-CSE-ConnectionGUID: Ymby2XuARTutDChCVKPaew==
X-CSE-MsgGUID: sGL5O30FSJyc/PWaN+l/Ig==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="80194920"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="80194920"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 22:40:33 -0700
X-CSE-ConnectionGUID: afLOM2W8RgW18ZH5NY97VA==
X-CSE-MsgGUID: m6/HzViqQAyh6AyIjwcrHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="251518048"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa002.fm.intel.com with ESMTP; 07 Apr 2026 22:40:29 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: harry.wentland@amd.com, louis.chauvet@bootlin.com, mwen@igalia.com,
 contact@emersion.fr, alex.hung@amd.com, daniels@collabora.com,
 uma.shankar@intel.com, maarten.lankhorst@intel.com,
 pekka.paalanen@collabora.com, pranay.samala@intel.com,
 swati2.sharma@intel.com, chaitanya.kumar.borah@intel.com
Subject: [PATCH v2 08/13] drm/i915/color: Extract HDR post-CSC LUT programming
 to helper function
Date: Wed,  8 Apr 2026 10:45:09 +0530
Message-Id: <20260408051514.608781-9-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260408051514.608781-1-chaitanya.kumar.borah@intel.com>
References: <20260408051514.608781-1-chaitanya.kumar.borah@intel.com>
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: ED9D73B74BA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Pranay Samala <pranay.samala@intel.com>

Move HDR plane post-CSC LUT programming to improve code organization.

Also removes the segment 0 index register writes as it is not currently
programmed.

Signed-off-by: Pranay Samala <pranay.samala@intel.com>
Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 92 +++++++++++-----------
 1 file changed, 48 insertions(+), 44 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 7d670ae8325f..55e206abe5b1 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -4061,6 +4061,52 @@ xelpd_program_plane_pre_csc_lut(struct intel_dsb *dsb,
 		xelpd_load_sdr_pre_csc_lut(display, dsb, pipe, plane, pre_csc_lut);
 }
 
+static void
+xelpd_load_hdr_post_csc_lut(struct intel_display *display,
+			    struct intel_dsb *dsb,
+			    enum pipe pipe,
+			    enum plane_id plane,
+			    const struct drm_color_lut32 *post_csc_lut)
+{
+	u32 lut_size = 32;
+	u32 lut_val;
+	int i;
+
+	intel_de_write_dsb(display, dsb, PLANE_POST_CSC_GAMC_INDEX_ENH(pipe, plane, 0),
+			   PLANE_PAL_PREC_AUTO_INCREMENT);
+
+	if (post_csc_lut) {
+		for (i = 0; i < lut_size; i++) {
+			lut_val = drm_color_lut32_extract(post_csc_lut[i].green, 24);
+
+			intel_de_write_dsb(display, dsb,
+					   PLANE_POST_CSC_GAMC_DATA_ENH(pipe, plane, 0),
+					   lut_val);
+		}
+
+		do {
+			intel_de_write_dsb(display, dsb,
+					   PLANE_POST_CSC_GAMC_DATA_ENH(pipe, plane, 0),
+					   (1 << 24));
+		} while (i++ < 34);
+	} else {
+		for (i = 0; i < lut_size; i++) {
+			lut_val = (i * ((1 << 24) - 1)) / (lut_size - 1);
+
+			intel_de_write_dsb(display, dsb,
+					   PLANE_POST_CSC_GAMC_DATA_ENH(pipe, plane, 0), lut_val);
+		}
+
+		do {
+			intel_de_write_dsb(display, dsb,
+					   PLANE_POST_CSC_GAMC_DATA_ENH(pipe, plane, 0),
+					   1 << 24);
+		} while (i++ < 34);
+	}
+
+	intel_de_write_dsb(display, dsb, PLANE_POST_CSC_GAMC_INDEX_ENH(pipe, plane, 0), 0);
+}
+
 static void
 xelpd_program_plane_post_csc_lut(struct intel_dsb *dsb,
 				 const struct intel_plane_state *plane_state)
@@ -4070,51 +4116,9 @@ xelpd_program_plane_post_csc_lut(struct intel_dsb *dsb,
 	enum pipe pipe = to_intel_plane(state->plane)->pipe;
 	enum plane_id plane = to_intel_plane(state->plane)->id;
 	const struct drm_color_lut32 *post_csc_lut = plane_state->hw.gamma_lut->data;
-	u32 i, lut_size, lut_val;
-
-	if (icl_is_hdr_plane(display, plane)) {
-		intel_de_write_dsb(display, dsb, PLANE_POST_CSC_GAMC_INDEX_ENH(pipe, plane, 0),
-				   PLANE_PAL_PREC_AUTO_INCREMENT);
-		/* TODO: Add macro */
-		intel_de_write_dsb(display, dsb, PLANE_POST_CSC_GAMC_SEG0_INDEX_ENH(pipe, plane, 0),
-				   PLANE_PAL_PREC_AUTO_INCREMENT);
-		if (post_csc_lut) {
-			lut_size = 32;
-			for (i = 0; i < lut_size; i++) {
-				lut_val = drm_color_lut32_extract(post_csc_lut[i].green, 24);
-
-				intel_de_write_dsb(display, dsb,
-						   PLANE_POST_CSC_GAMC_DATA_ENH(pipe, plane, 0),
-						   lut_val);
-			}
-
-			/* Segment 2 */
-			do {
-				intel_de_write_dsb(display, dsb,
-						   PLANE_POST_CSC_GAMC_DATA_ENH(pipe, plane, 0),
-						   (1 << 24));
-			} while (i++ < 34);
-		} else {
-			/*TODO: Add for segment 0 */
-			lut_size = 32;
-			for (i = 0; i < lut_size; i++) {
-				u32 v = (i * ((1 << 24) - 1)) / (lut_size - 1);
-
-				intel_de_write_dsb(display, dsb,
-						   PLANE_POST_CSC_GAMC_DATA_ENH(pipe, plane, 0), v);
-			}
-
-			do {
-				intel_de_write_dsb(display, dsb,
-						   PLANE_POST_CSC_GAMC_DATA_ENH(pipe, plane, 0),
-						   1 << 24);
-			} while (i++ < 34);
-		}
 
-		intel_de_write_dsb(display, dsb, PLANE_POST_CSC_GAMC_INDEX_ENH(pipe, plane, 0), 0);
-		intel_de_write_dsb(display, dsb,
-				   PLANE_POST_CSC_GAMC_SEG0_INDEX_ENH(pipe, plane, 0), 0);
-	}
+	if (icl_is_hdr_plane(display, plane))
+		xelpd_load_hdr_post_csc_lut(display, dsb, pipe, plane, post_csc_lut);
 }
 
 static void
-- 
2.25.1

