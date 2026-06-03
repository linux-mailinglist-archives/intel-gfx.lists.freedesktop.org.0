Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id dsRxIgJFIGqazgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 17:15:14 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 590C4639063
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 17:15:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=YvWCh1Nn;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E681110FFC6;
	Wed,  3 Jun 2026 15:15:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59CA410FFB7;
 Wed,  3 Jun 2026 15:15:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780499711; x=1812035711;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mDyjtrMQ1W4U4SBqcTuOMV4apOEGpe0PeZvahxaERIc=;
 b=YvWCh1NnPsjajXLWOaB4KPpbgBRLNyANI1/fGCd43QR0l0zHAOMTWSzJ
 IRoEcl1LLMbRahruL7r2TUoJST46qXM3ZG4NXsySpfeKwoScvPcypT5KY
 6liry1wXa5j48MsNbXL86VJhsLfZsVRMaG1+Uvk0JmyFlQJTsO5nWsk0e
 xv179Lt2mv3zDt2Yared4aJGL6m2wea/wxHtNeCVbotw6xZzQzF+SvpVc
 swsoazvLGPaLmK22XszdKKZ9nQW5rxnoDtVxd9qDLlc99LGPjMTU3GpcA
 yJmDzHzkEkA52btWlfRFsvXz+NMMs+pNQvkwbjL6BPYO8BdP3xxU9xPu9 A==;
X-CSE-ConnectionGUID: tatksD3kTjCUNquw3kwSkw==
X-CSE-MsgGUID: 67taIOC2QU6UK8lFuYU6wQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11806"; a="91886801"
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="91886801"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 08:15:11 -0700
X-CSE-ConnectionGUID: cgl56I+LQLyRIwrnfd8YgQ==
X-CSE-MsgGUID: d7PFkhN+SKqSV3mZs/kvow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="240089376"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.189])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 08:15:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 7/8] drm/i915/color: deduplicate loops in
 xelpd_program_plane_pre_csc_lut()
Date: Wed,  3 Jun 2026 18:14:34 +0300
Message-ID: <b943121a358dab0b04c9766baba8295f12ae53fc.1780499355.git.jani.nikula@intel.com>
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
X-Rspamd-Queue-Id: 590C4639063

Now that the pre_csc_lut and non-pre_csc_lut paths look similar,
deduplicate the loops and just determine the value based on pre_csc_lut
vs. not.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>

---

'git show -w' for easy review
---
 drivers/gpu/drm/i915/display/intel_color.c | 21 ++++++++-------------
 1 file changed, 8 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 5c09c5dd361e..9f9ba0cf58a1 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -3977,27 +3977,22 @@ xelpd_program_plane_pre_csc_lut(struct intel_dsb *dsb,
 			   PLANE_PRE_CSC_GAMC_INDEX_ENH(pipe, plane, 0),
 			   PLANE_PAL_PREC_AUTO_INCREMENT);
 
-	if (pre_csc_lut) {
-		for (i = 0; i < lut_size + 3; i++) {
+	for (i = 0; i < lut_size + 3; i++) {
+		if (pre_csc_lut) {
 			if (i < lut_size)
 				lut_val = drm_color_lut32_extract(pre_csc_lut[i].green, 24);
 			/* else duplicate last lut_val */
-
-			intel_de_write_dsb(display, dsb,
-					   PLANE_PRE_CSC_GAMC_DATA_ENH(pipe, plane, 0),
-					   lut_val);
-		}
-	} else {
-		for (i = 0; i < lut_size + 3; i++) {
+		} else {
 			if (i < lut_size)
 				lut_val = (i * ((1 << 24) - 1)) / (lut_size - 1);
 			else
 				lut_val = 1 << 24;
-
-			intel_de_write_dsb(display, dsb,
-					   PLANE_PRE_CSC_GAMC_DATA_ENH(pipe, plane, 0),
-					   lut_val);
 		}
+
+		intel_de_write_dsb(display, dsb,
+				   PLANE_PRE_CSC_GAMC_DATA_ENH(pipe, plane, 0),
+				   lut_val);
+
 	}
 
 	intel_de_write_dsb(display, dsb, PLANE_PRE_CSC_GAMC_INDEX_ENH(pipe, plane, 0), 0);
-- 
2.47.3

