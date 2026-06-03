Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id KVT7OPlEIGqUzgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 17:15:05 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8145063905B
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 17:15:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=CQIMhmS5;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1358010FFC0;
	Wed,  3 Jun 2026 15:15:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FC5B10FFC2;
 Wed,  3 Jun 2026 15:15:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780499702; x=1812035702;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iX+dJuZGdc4DHv7UdPJUXLpQlOjTsSgdsArACdh2EWo=;
 b=CQIMhmS5GqLt+p7hVkygvtwsdc8P6P9YM0H+qPV1wQmb+dUToHBev+yO
 Jg5JZugAxVoiYiDkqrfu5SitNtj0jr1/3nKBs9jH0hYX9Ray6+cY4eEds
 hcpHbxbbq0TalMX5So4sSM57G5RiNdBdMjjW/pE/1CeP1q+HZcdDg3ErX
 o6K1e0lGI3uWwOQANaj2y4EgVGseo3zh8QRi8lyo8+ioSrvm7hS7SBF5f
 04slNixod/t76AV9j0O/0l+LfkmZXRqP0LGq6b5xZmIRccYb8R0UxVvIe
 lEqNlFcRF6sH1UVfIcPSaYnCKi7FXv4wouA3dTINT0ikZXAIhMhpbsGk2 A==;
X-CSE-ConnectionGUID: XkpSHxdfTJKbqI4nXBp8Rw==
X-CSE-MsgGUID: d91NMQjPQTOiJB+ozXMOIA==
X-IronPort-AV: E=McAfee;i="6800,10657,11806"; a="92421189"
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="92421189"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 08:15:02 -0700
X-CSE-ConnectionGUID: BMx9xj8KRbKVwZz5oTR09Q==
X-CSE-MsgGUID: QJ6aqJc7RtONgWCT/ekPuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="244380881"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.189])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 08:15:01 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 5/8] drm/i915/color: join loops in
 xelpd_program_plane_pre_csc_lut()
Date: Wed,  3 Jun 2026 18:14:32 +0300
Message-ID: <6d4f8bb713a998c199606c079bed924458f04f54.1780499355.git.jani.nikula@intel.com>
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
X-Rspamd-Queue-Id: 8145063905B

Use single for loops instead of two. Especially switching from a
for-loop to a do-while-loop with the same loop index is confusing, and
it's hard to figure out the end index. Define the end in terms of
lut_size; there's three more entries after the first 128.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 27 ++++++++--------------
 1 file changed, 9 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 5209a4cdd14d..48f09c73e513 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -3978,35 +3978,26 @@ xelpd_program_plane_pre_csc_lut(struct intel_dsb *dsb,
 			   PLANE_PAL_PREC_AUTO_INCREMENT);
 
 	if (pre_csc_lut) {
-		for (i = 0; i < lut_size; i++) {
-			lut_val = drm_color_lut32_extract(pre_csc_lut[i].green, 24);
+		for (i = 0; i < lut_size + 3; i++) {
+			if (i < lut_size)
+				lut_val = drm_color_lut32_extract(pre_csc_lut[i].green, 24);
+			/* else duplicate last lut_val */
 
 			intel_de_write_dsb(display, dsb,
 					   PLANE_PRE_CSC_GAMC_DATA_ENH(pipe, plane, 0),
 					   lut_val);
 		}
-
-		/* Program the max register to clamp values > 1.0. */
-		/* TODO: Restrict to 0x7ffffff */
-		do {
-			intel_de_write_dsb(display, dsb,
-					   PLANE_PRE_CSC_GAMC_DATA_ENH(pipe, plane, 0),
-					   lut_val);
-		} while (i++ < 130);
 	} else {
-		for (i = 0; i < lut_size; i++) {
-			lut_val = (i * ((1 << 24) - 1)) / (lut_size - 1);
+		for (i = 0; i < lut_size + 3; i++) {
+			if (i < lut_size)
+				lut_val = (i * ((1 << 24) - 1)) / (lut_size - 1);
+			else
+				lut_val = 1 << 24;
 
 			intel_de_write_dsb(display, dsb,
 					   PLANE_PRE_CSC_GAMC_DATA_ENH(pipe, plane, 0),
 					   lut_val);
 		}
-
-		do {
-			intel_de_write_dsb(display, dsb,
-					   PLANE_PRE_CSC_GAMC_DATA_ENH(pipe, plane, 0),
-					   1 << 24);
-		} while (i++ < 130);
 	}
 
 	intel_de_write_dsb(display, dsb, PLANE_PRE_CSC_GAMC_INDEX_ENH(pipe, plane, 0), 0);
-- 
2.47.3

