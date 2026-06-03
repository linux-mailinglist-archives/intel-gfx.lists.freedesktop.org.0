Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id svovBfFEIGqNzgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 17:14:57 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EA32639045
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 17:14:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=W4G59aZp;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28DC610FF82;
	Wed,  3 Jun 2026 15:14:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC31E10FF82;
 Wed,  3 Jun 2026 15:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780499693; x=1812035693;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QyKYhemHxDBUR3FO9a/ScH/xl+MHrN/aPyPLkBzaSw4=;
 b=W4G59aZpT6volgQRzHy2e1fWE9bFAnzmIPAHR7OYoPSBO9LjHXEwq/Ih
 7t48UHf8saqG08p+00q0gwu++CuANAu8qkvxd/mZrk//jL7PsX7sz81QJ
 XmgO3/2Mt/u1wVBZg39R+TB0s6QR4qovSfxR/fX8c2hK8YURGJluf7hnQ
 CLRBfCELTQQ2lQ8eGOJnoiG29vJoGA52+8mfzEhKcG4K+jhQx3IIHL5xk
 nAt/cUhMNo/979q94FQIJaFfsrOhG8Fz+M6cwVv2Fbwu2F+MKSOe9plV4
 KZm5Yp0PYm5VEGzcDvzxE9829EoAhCdXCqNcKzhaxrmL/oGn5t4W11seR A==;
X-CSE-ConnectionGUID: LXaxmTBrTvGlPO4ekSGxMA==
X-CSE-MsgGUID: tQvdgNU/Q0KRdD0lbS/j/Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11806"; a="92421179"
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="92421179"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 08:14:53 -0700
X-CSE-ConnectionGUID: cPuaZEztTbq3VjMnTrpUtQ==
X-CSE-MsgGUID: xHffgHkmTMun9pzO33q5Gg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="244380806"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.189])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 08:14:53 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 3/8] drm/i915/color: reduce indent in
 xelpd_program_plane_pre_csc_lut()
Date: Wed,  3 Jun 2026 18:14:30 +0300
Message-ID: <ba09d28e1dfb74ecd7c06c3554df485dbcca9a8a.1780499355.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1780499355.git.jani.nikula@intel.com>
References: <cover.1780499355.git.jani.nikula@intel.com>
MIME-Version: 1.0
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8EA32639045

Return early for !icl_is_hdr_plane() to reduce indent.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>

---

'git show -w' for easy review
---
 drivers/gpu/drm/i915/display/intel_color.c | 63 +++++++++++-----------
 1 file changed, 32 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index cf910baa69f3..429eb6daa7d2 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -3970,45 +3970,46 @@ xelpd_program_plane_pre_csc_lut(struct intel_dsb *dsb,
 	int i, lut_size = 128;
 	u32 lut_val;
 
-	if (icl_is_hdr_plane(display, plane)) {
-		intel_de_write_dsb(display, dsb,
-				   PLANE_PRE_CSC_GAMC_INDEX_ENH(pipe, plane, 0),
-				   PLANE_PAL_PREC_AUTO_INCREMENT);
+	if (!icl_is_hdr_plane(display, plane))
+		return;
 
-		if (pre_csc_lut) {
-			for (i = 0; i < lut_size; i++) {
-				lut_val = drm_color_lut32_extract(pre_csc_lut[i].green, 24);
+	intel_de_write_dsb(display, dsb,
+			   PLANE_PRE_CSC_GAMC_INDEX_ENH(pipe, plane, 0),
+			   PLANE_PAL_PREC_AUTO_INCREMENT);
 
-				intel_de_write_dsb(display, dsb,
-						   PLANE_PRE_CSC_GAMC_DATA_ENH(pipe, plane, 0),
-						   lut_val);
-			}
+	if (pre_csc_lut) {
+		for (i = 0; i < lut_size; i++) {
+			lut_val = drm_color_lut32_extract(pre_csc_lut[i].green, 24);
 
-			/* Program the max register to clamp values > 1.0. */
-			/* TODO: Restrict to 0x7ffffff */
-			do {
-				intel_de_write_dsb(display, dsb,
-						   PLANE_PRE_CSC_GAMC_DATA_ENH(pipe, plane, 0),
-						   lut_val);
-			} while (i++ < 130);
-		} else {
-			for (i = 0; i < lut_size; i++) {
-				lut_val = (i * ((1 << 24) - 1)) / (lut_size - 1);
+			intel_de_write_dsb(display, dsb,
+					   PLANE_PRE_CSC_GAMC_DATA_ENH(pipe, plane, 0),
+					   lut_val);
+		}
 
-				intel_de_write_dsb(display, dsb,
-						   PLANE_PRE_CSC_GAMC_DATA_ENH(pipe, plane, 0),
-						   lut_val);
-			}
+		/* Program the max register to clamp values > 1.0. */
+		/* TODO: Restrict to 0x7ffffff */
+		do {
+			intel_de_write_dsb(display, dsb,
+					   PLANE_PRE_CSC_GAMC_DATA_ENH(pipe, plane, 0),
+					   lut_val);
+		} while (i++ < 130);
+	} else {
+		for (i = 0; i < lut_size; i++) {
+			lut_val = (i * ((1 << 24) - 1)) / (lut_size - 1);
 
-			do {
-				intel_de_write_dsb(display, dsb,
-						   PLANE_PRE_CSC_GAMC_DATA_ENH(pipe, plane, 0),
-						   1 << 24);
-			} while (i++ < 130);
+			intel_de_write_dsb(display, dsb,
+					   PLANE_PRE_CSC_GAMC_DATA_ENH(pipe, plane, 0),
+					   lut_val);
 		}
 
-		intel_de_write_dsb(display, dsb, PLANE_PRE_CSC_GAMC_INDEX_ENH(pipe, plane, 0), 0);
+		do {
+			intel_de_write_dsb(display, dsb,
+					   PLANE_PRE_CSC_GAMC_DATA_ENH(pipe, plane, 0),
+					   1 << 24);
+		} while (i++ < 130);
 	}
+
+	intel_de_write_dsb(display, dsb, PLANE_PRE_CSC_GAMC_INDEX_ENH(pipe, plane, 0), 0);
 }
 
 static void
-- 
2.47.3

