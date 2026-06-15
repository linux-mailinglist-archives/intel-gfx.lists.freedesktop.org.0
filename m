Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id R37dFs9hMGpSSQUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 22:34:23 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2991F689E29
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 22:34:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="ipVf6/kw";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2EF710E6AD;
	Mon, 15 Jun 2026 20:34:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33E2310E6AD;
 Mon, 15 Jun 2026 20:34:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781555661; x=1813091661;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=j56RMQuIwNretR9ManZWvpERiE149X8VYifqKz5+/ik=;
 b=ipVf6/kws8KgeyM2DkZFfgQNoYhPi0Duc76473o1khd5F0d0XUKAj/3p
 J5frOtYEgk1/sa1VA8h5jLKIXAyRGqkCW9t6EQPh7jeOg5YWyQ2q2og+L
 4yizA9nKLLyoBrtQnohmT4qeq5FpSBqQLov+OcwjpJQkYCQMNcbolAXcY
 92O3WUGjC/kxXNwkbu2+ihF2rBUQmDBDayy6UsKM8KvgxgERDPQze0kxg
 vE9DqvGhxS6WBE4U/ahWZAg8Dwfrk1t+89YOtFKIAhH3c8KDJgLxRc7Af
 ITZ/hQX39RTHpyDNqHJxCjRQCkoTs6HV53cnRB7ixucGW1s2UyYnVyauk w==;
X-CSE-ConnectionGUID: GvH7x1KlTIm4Yh9C+zl8qw==
X-CSE-MsgGUID: t442MabRTKiz2GtFqEAIjQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="93694587"
X-IronPort-AV: E=Sophos;i="6.24,207,1774335600"; d="scan'208";a="93694587"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 13:34:21 -0700
X-CSE-ConnectionGUID: 1HqwznclQdW2E4N2hLdGOQ==
X-CSE-MsgGUID: x83YQrQgTp2VGvmWBGjtng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,207,1774335600"; d="scan'208";a="252538528"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO
 vgovind2-mobl4.intel.com) ([10.245.245.246])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 13:34:19 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v3 4/7] drm/i915/bw: Extract icl_init_qgv_info()
Date: Mon, 15 Jun 2026 23:33:52 +0300
Message-ID: <20260615203355.218578-5-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260615203355.218578-1-vinod.govindapillai@intel.com>
References: <20260615203355.218578-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo
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
	RCPT_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vinod.govindapillai@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2991F689E29

Simplify the initialization of qgv points info by extracting
the code to initialize the qgv points info from dram info based
on the memory type.

v2: rebase after Ville's refactoring

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 20 +++++++++++++++-----
 1 file changed, 15 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 4557de85fade..6649220d81b4 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -246,12 +246,10 @@ static bool is_y_tile(struct intel_display *display)
 	return !HAS_4TILE(display);
 }
 
-static int icl_get_qgv_points(struct intel_display *display,
-			      const struct dram_info *dram_info,
-			      struct intel_qgv_info *qi)
+static int icl_init_qgv_info(struct intel_display *display,
+			     const struct dram_info *dram_info,
+			     struct intel_qgv_info *qi)
 {
-	int i, ret;
-
 	qi->num_qgv_points = dram_info->num_qgv_points;
 	qi->num_psf_points = dram_info->num_psf_gv_points;
 
@@ -323,6 +321,18 @@ static int icl_get_qgv_points(struct intel_display *display,
 		qi->max_numchannels = 1;
 	}
 
+	return 0;
+}
+
+static int icl_get_qgv_points(struct intel_display *display,
+			      const struct dram_info *dram_info,
+			      struct intel_qgv_info *qi)
+{
+	int i, ret;
+
+	if (icl_init_qgv_info(display, dram_info, qi))
+		return -EINVAL;
+
 	if (drm_WARN_ON(display->drm,
 			qi->num_qgv_points > ARRAY_SIZE(qi->points)))
 		qi->num_qgv_points = ARRAY_SIZE(qi->points);
-- 
2.43.0

