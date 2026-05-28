Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WNqbDmIaGGoBdQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2026 12:35:14 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EEC85F0A6D
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2026 12:35:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91A5E10EFC0;
	Thu, 28 May 2026 10:35:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gO4JYFMw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 033D210EFC0;
 Thu, 28 May 2026 10:35:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779964512; x=1811500512;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yDeeVmQkX42QA3RAhjQ1NGhTCehM/n5odcopU476yqU=;
 b=gO4JYFMw8g6AHJrq87LwSGAvR5I8L7w9FxP01sKPCDnZuCNsn53TCSt1
 xCe5UizLqJw8C2MJBKvmVmhpd/t9lYZINSOPeSOyhSjmei1vNGoxac6nV
 63q/f7SjdXVETREuZg//kpdOXTWhhXtG5G8exn+4pO0qDAeW3KsEkkRnY
 3Pn07GxzlSJDFWh74tkoG92HTXBYPIQG1P+zRcoxL+3NEraLy7DVV6SqU
 mPkHPSuWHi4Q02HEZ++An91gJ/MSHnoHOe00kw55HJBtFE6MpvlWWEdGS
 ed15cshSqcGbyRhj4ywBAaVLL6FDR0+xT5WeMWlfTi4N3xzLORsOGGP8y Q==;
X-CSE-ConnectionGUID: Cpn6snKrRWCWk2dHe8kyzw==
X-CSE-MsgGUID: TPJm4gKQQveL2Payd/rt8w==
X-IronPort-AV: E=McAfee;i="6800,10657,11799"; a="98221225"
X-IronPort-AV: E=Sophos;i="6.24,173,1774335600"; d="scan'208";a="98221225"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2026 03:35:12 -0700
X-CSE-ConnectionGUID: X2XVSRoET4eeJgbGIOS7nA==
X-CSE-MsgGUID: OrDb/KgST2+Divp0uT1B1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,173,1774335600"; d="scan'208";a="241682319"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.245.166])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2026 03:35:11 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 02/11] drm/i915/bw: Streamline dg2_get_bw_info()
Date: Thu, 28 May 2026 13:34:49 +0300
Message-ID: <20260528103458.18069-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260528103458.18069-1-ville.syrjala@linux.intel.com>
References: <20260528103458.18069-1-ville.syrjala@linux.intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:dkim,linux.intel.com:mid]
X-Rspamd-Queue-Id: 0EEC85F0A6D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Make dg2_get_bw_info() look a bit more like xe2_hpd_get_bw_info()
so that we don't have so many different ways of writing the same
stuff (namely the "set all plane groups to the same value" part).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 22 ++++++----------------
 1 file changed, 6 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index d0ceffc93f36..887628144864 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -699,25 +699,15 @@ static int tgl_get_bw_info(struct intel_display *display,
 
 static void dg2_get_bw_info(struct intel_display *display)
 {
-	unsigned int deratedbw = display->platform.dg2_g11 ? 38000 : 50000;
-	int num_groups = ARRAY_SIZE(display->bw.max);
 	int i;
 
-	/*
-	 * DG2 doesn't have SAGV or QGV points, just a constant max bandwidth
-	 * that doesn't depend on the number of planes enabled. So fill all the
-	 * plane group with constant bw information for uniformity with other
-	 * platforms. DG2-G10 platforms have a constant 50 GB/s bandwidth,
-	 * whereas DG2-G11 platforms have 38 GB/s.
-	 */
-	for (i = 0; i < num_groups; i++) {
-		struct intel_bw_info *bi = &display->bw.max[i];
+	display->bw.max[0].deratedbw[0] = display->platform.dg2_g11 ? 38000 : 50000;
 
-		bi->num_planes = 1;
-		/* Need only one dummy QGV point per group */
-		bi->num_qgv_points = 1;
-		bi->deratedbw[0] = deratedbw;
-	}
+	/* Bandwidth does not depend on # of planes; set all groups the same */
+	display->bw.max[0].num_planes = 1;
+	display->bw.max[0].num_qgv_points = 1;
+	for (i = 1; i < ARRAY_SIZE(display->bw.max); i++)
+		display->bw.max[i] = display->bw.max[0];
 
 	display->sagv.status = I915_SAGV_NOT_CONTROLLED;
 }
-- 
2.53.0

