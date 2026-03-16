Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OI+WLlX0t2mfXQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 13:15:17 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2837E2994BD
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 13:15:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9E3710E503;
	Mon, 16 Mar 2026 12:15:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lEZOOIER";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3553810E503;
 Mon, 16 Mar 2026 12:15:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773663315; x=1805199315;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=E6Nr9ma9PqAQb4BpYYU5RhvmZT4wSVKmbtsg5NLh3gY=;
 b=lEZOOIER/lJ23qx0RdEQlUAkiU9Fd0sXd5OshUhvzepcBdyagAUkkdTJ
 Egskpum2lPX5fVbbdrNoFWuR6/0inEbVK6rbQea70N172JB4QuBqi6LJp
 udJk2dIUuPCEIXxUv1uZE429QJOoYtZn9z4V4I76dfIqeUpmO8E/YAyhX
 QvGiyn4jhicPPXaI62qGI0Qhz+BnKGAiqj3Rbwwct7kYSLhFc8UzJgUr4
 0i1FQZuJtGJDONCw6fJR1YM9Ke8XFopJ9ZMnhfetzAOL6CM5ZFRJcoVzw
 V6DACKYeAB+2oJXSRM7bdZOqZQt8WU72p2bP4cLKX5uUgv1DDA+WlHqm0 A==;
X-CSE-ConnectionGUID: JhmNhvywRYuSe4ihTCwQ8g==
X-CSE-MsgGUID: wN4+5WLUT+KqN5sRha+pxg==
X-IronPort-AV: E=McAfee;i="6800,10657,11730"; a="74711438"
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="74711438"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 05:15:14 -0700
X-CSE-ConnectionGUID: QJA1QyZOQW6S1TIQFgfcZw==
X-CSE-MsgGUID: Tj/A1qW1S4C/b2PtpketVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="221846790"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.238])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 05:15:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Luca Coelho <luciano.coelho@intel.com>
Subject: [CI 1/5] drm/i915/dmc: simplify stepping info initialization
Date: Mon, 16 Mar 2026 14:14:58 +0200
Message-ID: <c9affb82fd3e9fb464778013bb7c8fab06232bfd.1773663208.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1773663208.git.jani.nikula@intel.com>
References: <cover.1773663208.git.jani.nikula@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 2837E2994BD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Having intel_get_stepping_info() return the pointer that was passed in
isn't necessary. Just use a pointer to the local variable instead.

The initialization to ** didn't make a difference, because it was always
overridden.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 90ba932d940a..41842ff7d90f 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -418,15 +418,12 @@ bool intel_dmc_has_payload(struct intel_display *display)
 	return has_dmc_id_fw(display, DMC_FW_MAIN);
 }
 
-static const struct stepping_info *
-intel_get_stepping_info(struct intel_display *display,
-			struct stepping_info *si)
+static void initialize_stepping_info(struct intel_display *display, struct stepping_info *si)
 {
 	const char *step_name = intel_step_name(INTEL_DISPLAY_STEP(display));
 
 	si->stepping = step_name[0];
 	si->substepping = step_name[1];
-	return si;
 }
 
 static void gen9_set_dc_state_debugmask(struct intel_display *display)
@@ -1274,8 +1271,7 @@ static int parse_dmc_fw(struct intel_dmc *dmc, const struct firmware *fw)
 	struct intel_css_header *css_header;
 	struct intel_package_header *package_header;
 	struct intel_dmc_header_base *dmc_header;
-	struct stepping_info display_info = { '*', '*'};
-	const struct stepping_info *si = intel_get_stepping_info(display, &display_info);
+	struct stepping_info si = {};
 	enum intel_dmc_id dmc_id;
 	u32 readcount = 0;
 	u32 r, offset;
@@ -1283,6 +1279,8 @@ static int parse_dmc_fw(struct intel_dmc *dmc, const struct firmware *fw)
 	if (!fw)
 		return -EINVAL;
 
+	initialize_stepping_info(display, &si);
+
 	/* Extract CSS Header information */
 	css_header = (struct intel_css_header *)fw->data;
 	r = parse_dmc_fw_css(dmc, css_header, fw->size);
@@ -1293,7 +1291,7 @@ static int parse_dmc_fw(struct intel_dmc *dmc, const struct firmware *fw)
 
 	/* Extract Package Header information */
 	package_header = (struct intel_package_header *)&fw->data[readcount];
-	r = parse_dmc_fw_package(dmc, package_header, si, fw->size - readcount);
+	r = parse_dmc_fw_package(dmc, package_header, &si, fw->size - readcount);
 	if (!r)
 		return -EINVAL;
 
-- 
2.47.3

