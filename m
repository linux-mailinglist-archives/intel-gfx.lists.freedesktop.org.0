Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ngy9L9uZKWriaQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 19:07:39 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CB0766BDAC
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 19:07:39 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=UnKDgABG;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2B1B10E689;
	Wed, 10 Jun 2026 17:07:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0073810E67C;
 Wed, 10 Jun 2026 17:07:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781111257; x=1812647257;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=K3cAp/YE3fKS8wOWUttzdziEP0W478UUn4yh8c1YJxU=;
 b=UnKDgABGoVEx649OgF66P+nAXzYGd4h7DSRO9lGoVpiuDTS9r0Qcmc+P
 lsNGJRZF7soElBwYp2JHCOd3Ghkrb0iaTqvHJusKmWmPwEMhUujUcuVh9
 OsIV8AGJnPcCih/OEN9eIsYqrAl4HFSzq7FC4SWEbTJ8Dsz6T09hEFP/O
 Tdu1fVliyrhr0la0WsFpLI7YA3UOKo4Y9X2kIg3ggiU2rYFnxN8fPYanO
 yMpeZfOFXPYAHXNF1vM/HfwbQKHx6u7yeQ1vH8WKWmRHbtG8xa0iZx3xy
 2qrdC1wOu7G1kJi1Hwl12EzbkgTxQTB53LqK9N8oc3moXL1SmYPZwI0BE g==;
X-CSE-ConnectionGUID: iAJENZRESwi5TfnTM2vkmw==
X-CSE-MsgGUID: KhKU6jBpSCG2sa7kpfeTLg==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="82103723"
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="82103723"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 10:07:36 -0700
X-CSE-ConnectionGUID: NE3aCeGHQv2LVnTm2JRgIQ==
X-CSE-MsgGUID: LVEGl2s4Rx6baXxd2ibcKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="251325754"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.62])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 10:07:34 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 08/14] drm/i915/cdclk: Unify the pcode pre/post notify in
 bxt_set_cdclk()
Date: Wed, 10 Jun 2026 20:06:45 +0300
Message-ID: <20260610170652.5320-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260610170652.5320-1-ville.syrjala@linux.intel.com>
References: <20260610170652.5320-1-ville.syrjala@linux.intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,linux.intel.com:mid,linux.intel.com:from_mime,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3CB0766BDAC

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The control flow between the pcode pre and post notifications ibn
bxt_set_cdclk() is written in two different ways, even though
they end up doing the same thing. Unify the code.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 16 ++++++----------
 1 file changed, 6 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 659c1c0e3432..09981a112db4 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2237,7 +2237,7 @@ static void bxt_set_cdclk(struct intel_display *display,
 {
 	struct intel_cdclk_config mid_cdclk_config;
 	int cdclk = cdclk_config->cdclk;
-	int ret = 0;
+	int ret;
 
 	/*
 	 * Inform power controller of upcoming frequency change.
@@ -2246,7 +2246,7 @@ static void bxt_set_cdclk(struct intel_display *display,
 	 * this step.
 	 */
 	if (DISPLAY_VER(display) >= 14 || display->platform.dg2)
-		; /* NOOP */
+		ret = 0; /* NOOP */
 	else if (DISPLAY_VER(display) >= 11)
 		ret = intel_parent_pcode_request(display, SKL_PCODE_CDCLK_CONTROL,
 						 SKL_CDCLK_PREPARE_FOR_CHANGE,
@@ -2282,15 +2282,12 @@ static void bxt_set_cdclk(struct intel_display *display,
 	if (DISPLAY_VER(display) >= 20 && cdclk > display->cdclk.hw.cdclk)
 		xe2lpd_mdclk_cdclk_ratio_program(display, cdclk_config);
 
-	if (DISPLAY_VER(display) >= 14)
-		/*
-		 * NOOP - No Pcode communication needed for
-		 * Display versions 14 and beyond
-		 */;
-	else if (DISPLAY_VER(display) >= 11 && !display->platform.dg2)
+	if (DISPLAY_VER(display) >= 14 || display->platform.dg2)
+		ret = 0; /* NOOP */
+	else if (DISPLAY_VER(display) >= 11)
 		ret = intel_parent_pcode_write(display, SKL_PCODE_CDCLK_CONTROL,
 					       cdclk_config->voltage_level);
-	if (DISPLAY_VER(display) < 11) {
+	else
 		/*
 		 * The timeout isn't specified, the 2ms used here is based on
 		 * experiment.
@@ -2300,7 +2297,6 @@ static void bxt_set_cdclk(struct intel_display *display,
 		ret = intel_parent_pcode_write_timeout(display,
 						       HSW_PCODE_DE_WRITE_FREQ_REQ,
 						       cdclk_config->voltage_level, 2);
-	}
 	if (ret)
 		drm_err(display->drm,
 			"PCode CDCLK freq set failed, (err %d, freq %d)\n",
-- 
2.53.0

