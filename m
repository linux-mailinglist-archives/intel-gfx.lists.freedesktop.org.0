Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CJdgN1zq1Wk//QcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 07:40:44 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7697E3B74D1
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 07:40:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDC0E10E531;
	Wed,  8 Apr 2026 05:40:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W/uIIjYo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AD0710E52B;
 Wed,  8 Apr 2026 05:40:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775626837; x=1807162837;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pBx/ijj8cesZIlFYKPeREVPo5bLNJWZxLWKc8c5sIAU=;
 b=W/uIIjYojebWENjMPDD+yAFPjrASM85DZCTeGgLkzNHmaF9RQ/kFWqep
 cQe7AYCRJh9Xhv2GF/oF8xplisJZdYNhk7ARRSeJtZC9PWfbR88JTRCfD
 QlQaaxnpnrrkpy0JkVT1P9noD1xSFZJL8aVDZRjJc6OXs92+FZhQSjYXW
 Ft+48O8jWdWp9I1szFGLPFAC+8bS8fsdssHLT4xqmIn0tUzA07CB63NJO
 YHn4FJD/JNW/sEOPzbG70etGq52BWGKPnGQZKl849/lc70PzXbSdwAeZk
 06ISZB5iiq5A+GwvN0ZWxbqxGGe0hUowvX1/ivHnMAns32Onzy4xSH01l w==;
X-CSE-ConnectionGUID: izi+cHANQuuvkNf2I37PjQ==
X-CSE-MsgGUID: 9hbUNnJXSoK9n+JLG/ny4Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="80194928"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="80194928"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 22:40:37 -0700
X-CSE-ConnectionGUID: fuoK7Q8PSiuqS4pQDTGfCg==
X-CSE-MsgGUID: O+Z0H0cZT+yJi0N9CW3PuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="251518061"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa002.fm.intel.com with ESMTP; 07 Apr 2026 22:40:33 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: harry.wentland@amd.com, louis.chauvet@bootlin.com, mwen@igalia.com,
 contact@emersion.fr, alex.hung@amd.com, daniels@collabora.com,
 uma.shankar@intel.com, maarten.lankhorst@intel.com,
 pekka.paalanen@collabora.com, pranay.samala@intel.com,
 swati2.sharma@intel.com, chaitanya.kumar.borah@intel.com
Subject: [PATCH v2 09/13] drm/i915/color: Program Plane Post CSC registers for
 SDR planes
Date: Wed,  8 Apr 2026 10:45:10 +0530
Message-Id: <20260408051514.608781-10-chaitanya.kumar.borah@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 7697E3B74D1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Pranay Samala <pranay.samala@intel.com>

Implement plane post-CSC LUT support for SDR planes.

Signed-off-by: Pranay Samala <pranay.samala@intel.com>
Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 53 ++++++++++++++++++++++
 1 file changed, 53 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 55e206abe5b1..57f574f452b3 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -4107,6 +4107,57 @@ xelpd_load_hdr_post_csc_lut(struct intel_display *display,
 	intel_de_write_dsb(display, dsb, PLANE_POST_CSC_GAMC_INDEX_ENH(pipe, plane, 0), 0);
 }
 
+static void
+xelpd_load_sdr_post_csc_lut(struct intel_display *display,
+			    struct intel_dsb *dsb,
+			    enum pipe pipe,
+			    enum plane_id plane,
+			    const struct drm_color_lut32 *post_csc_lut)
+{
+	u32 lut_size = 32;
+	u32 lut_val;
+	int i;
+
+	/*
+	 * First 3 planes are HDR, so reduce by 3 to get to the right
+	 * SDR plane offset
+	 */
+	plane = plane - 3;
+	intel_de_write_dsb(display, dsb, PLANE_POST_CSC_GAMC_INDEX(pipe, plane, 0),
+			   PLANE_PAL_PREC_AUTO_INCREMENT);
+
+	if (post_csc_lut) {
+		for (i = 0; i < lut_size; i++) {
+			lut_val = drm_color_lut32_extract(post_csc_lut[i].green, 16);
+
+			intel_de_write_dsb(display, dsb,
+					   PLANE_POST_CSC_GAMC_DATA(pipe, plane, 0),
+					   lut_val);
+		}
+
+		do {
+			intel_de_write_dsb(display, dsb,
+					   PLANE_POST_CSC_GAMC_DATA(pipe, plane, 0),
+					   (1 << 16));
+		} while (i++ < 34);
+	} else {
+		for (i = 0; i < lut_size; i++) {
+			lut_val = (i * ((1 << 16) - 1)) / (lut_size - 1);
+
+			intel_de_write_dsb(display, dsb,
+					   PLANE_POST_CSC_GAMC_DATA(pipe, plane, 0), lut_val);
+		}
+
+		do {
+			intel_de_write_dsb(display, dsb,
+					   PLANE_POST_CSC_GAMC_DATA(pipe, plane, 0),
+					   1 << 16);
+		} while (i++ < 34);
+	}
+
+	intel_de_write_dsb(display, dsb, PLANE_POST_CSC_GAMC_INDEX(pipe, plane, 0), 0);
+}
+
 static void
 xelpd_program_plane_post_csc_lut(struct intel_dsb *dsb,
 				 const struct intel_plane_state *plane_state)
@@ -4119,6 +4170,8 @@ xelpd_program_plane_post_csc_lut(struct intel_dsb *dsb,
 
 	if (icl_is_hdr_plane(display, plane))
 		xelpd_load_hdr_post_csc_lut(display, dsb, pipe, plane, post_csc_lut);
+	else
+		xelpd_load_sdr_post_csc_lut(display, dsb, pipe, plane, post_csc_lut);
 }
 
 static void
-- 
2.25.1

