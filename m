Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MPbJD4VEqGlOrwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 15:41:09 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8913201C2A
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 15:41:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34EE210EA17;
	Wed,  4 Mar 2026 14:41:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YsI0Rpxl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BA8F10EA17;
 Wed,  4 Mar 2026 14:41:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772635264; x=1804171264;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2Y/V/7yUsk04r5vZ5pcBjOI5wra+iAEBgRFVkeJwh50=;
 b=YsI0RpxlBSUDDOe8ZN9wCR1wS5Q7abSWlQz9M2Vkhe/U+mN+Plw+7Ue8
 JjjU1sHOFrOH1ugMm3CNLwcJtYD3+jRmT2RciTZl26O3f9hwQNASgG6dT
 HjRd+IK76ckAoZBdOiN455Bbm68186kyghsjrhMyMyaPHPUKb+djqnxtd
 PG5VUCvdUngsxDBMzuExKCmpYN4cLn8hD6tDWYFDL6X7PFE1Mj4ZW22i+
 8Pm5trGK4fPpaNbPc+AcDV0g5PkgcbEhApsaZMQ6TDr1DhHimC/ZX2PkO
 iIoA7vbT8jfVa/3uZmaSZMrCGNkL0CGSZ6KuN8/jRvzoxCKVYvTmC6M2O Q==;
X-CSE-ConnectionGUID: NrwHSFuKQ5qokId7dGQXxw==
X-CSE-MsgGUID: EDziYwSORvm8DAZYZ+MEqg==
X-IronPort-AV: E=McAfee;i="6800,10657,11719"; a="84330027"
X-IronPort-AV: E=Sophos;i="6.21,324,1763452800"; d="scan'208";a="84330027"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 06:41:04 -0800
X-CSE-ConnectionGUID: DMDLuAFRRq6oMaMepNu9LQ==
X-CSE-MsgGUID: nL/QBTrPSKOMIPgVacPu9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,324,1763452800"; d="scan'208";a="218479328"
Received: from krybak-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.84])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 06:41:03 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/8] drm/i915/dmc: simplify stepping info initialization
Date: Wed,  4 Mar 2026 16:40:46 +0200
Message-ID: <a64ab4311a047d8e244192ea68f369b5d3c79e32.1772635152.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1772635152.git.jani.nikula@intel.com>
References: <cover.1772635152.git.jani.nikula@intel.com>
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
X-Rspamd-Queue-Id: E8913201C2A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Action: no action

Having intel_get_stepping_info() return the pointer that was passed in
isn't necessary. Just use a pointer to the local variable instead.

The initialization to ** didn't make a difference, because it was always
overridden.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index c3b411259a0c..4e763f2f17c7 100644
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

