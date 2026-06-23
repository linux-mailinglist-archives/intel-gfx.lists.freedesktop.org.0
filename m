Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3K88OigNO2qoPQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 00:48:08 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98F346BA81D
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 00:48:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=dsG8Q3jL;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20D0810ED46;
	Tue, 23 Jun 2026 22:48:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBAD710ED4E;
 Tue, 23 Jun 2026 22:48:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782254884; x=1813790884;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=r7zKi1SwAFGJlOpAfaTSsilNt8SjEdoYy3XUuOrEZEU=;
 b=dsG8Q3jLcUt6gqFcV5nEccSh2THzXJRTkngqXjZSgQv9WOiGjdpz8/nd
 +XV/at7uSIa3zt7fN96r/ut7AyhuSBlUI80mjFLsj9fc7qbTp9s8gPUmx
 Zf6aP4VM1Zb60bGLasjJdnQMZIIkfjYSmGv3SBVQWupKE5zWvMU4ZiRHs
 58UcraVrG+zUMLjqXEqcw+GWCeAmg7gXy1tNCH7a7gMXecvidwg2XrQKA
 gTia4mHgFY1AfjWyYfWUawvLfBs5JTMpMAsBrrlKl7TPTU7RRZxG7UcSy
 EONBppHQypGrykovbyx6IBjrQB/Nc9Ugm6tIMvkn+rJLKauQmPVzIUZ+8 g==;
X-CSE-ConnectionGUID: qi8bH7XjSb6LnC9YQOwHsg==
X-CSE-MsgGUID: +E5QHLW2Q+GwMf7co/6QcQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="82775616"
X-IronPort-AV: E=Sophos;i="6.24,221,1774335600"; d="scan'208";a="82775616"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 15:48:04 -0700
X-CSE-ConnectionGUID: +LOolL9BQ4mEfsG7UGxRrg==
X-CSE-MsgGUID: wvGwb5lxRaKCPiD/XAe4Pw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,221,1774335600"; d="scan'208";a="249497179"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa008.jf.intel.com with ESMTP; 23 Jun 2026 15:48:02 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 Luca Coelho <luciano.coelho@intel.com>,
 Nemesa Garg <nemesa.garg@intel.com>, Imre Deak <imre.deak@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v1 29/30] drm/i915/dp_link_caps: s/lc/lce/
Date: Wed, 24 Jun 2026 00:46:18 +0200
Message-ID: <20260623224619.1949975-30-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260623224619.1949975-1-michal.grzelak@intel.com>
References: <20260623224619.1949975-1-michal.grzelak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 98F346BA81D

lc variable took it's name as an acronym from struct
intel_dp_link_config. Rename the variable into lce since the struct was
renamed into intel_dp_link_config_entry.

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 50 +++++++++----------
 1 file changed, 25 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 0917e7f51a26d..1c34ba6c49c35 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -144,14 +144,14 @@ void intel_dp_link_caps_get_forced_params(struct intel_dp_link_caps *link_caps,
 }
 
 static int intel_dp_link_config_rate(struct intel_dp_link_caps *link_caps,
-				     const struct intel_dp_link_config_entry *lc)
+				     const struct intel_dp_link_config_entry *lce)
 {
-	return intel_dp_common_rate(link_caps, lc->link_rate_idx);
+	return intel_dp_common_rate(link_caps, lce->link_rate_idx);
 }
 
-static int intel_dp_link_config_lane_count(const struct intel_dp_link_config_entry *lc)
+static int intel_dp_link_config_lane_count(const struct intel_dp_link_config_entry *lce)
 {
-	return 1 << lc->lane_count_exp;
+	return 1 << lce->lane_count_exp;
 }
 
 static void set_max_link_limits_no_update(struct intel_dp_link_caps *link_caps,
@@ -236,10 +236,10 @@ void intel_dp_link_caps_reset_max_limits(struct intel_dp_link_caps *link_caps)
 }
 
 static int intel_dp_link_config_bw(struct intel_dp_link_caps *link_caps,
-				   const struct intel_dp_link_config_entry *lc)
+				   const struct intel_dp_link_config_entry *lce)
 {
-	return drm_dp_max_dprx_data_rate(intel_dp_link_config_rate(link_caps, lc),
-					 intel_dp_link_config_lane_count(lc));
+	return drm_dp_max_dprx_data_rate(intel_dp_link_config_rate(link_caps, lce),
+					 intel_dp_link_config_lane_count(lce));
 }
 
 static int link_config_cmp_by_bw(const void *a, const void *b, const void *p)
@@ -247,16 +247,16 @@ static int link_config_cmp_by_bw(const void *a, const void *b, const void *p)
 	struct intel_dp *intel_dp = (struct intel_dp *)p;	/* remove const */
 	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 
-	const struct intel_dp_link_config_entry *lc_a = a;
-	const struct intel_dp_link_config_entry *lc_b = b;
-	int bw_a = intel_dp_link_config_bw(link_caps, lc_a);
-	int bw_b = intel_dp_link_config_bw(link_caps, lc_b);
+	const struct intel_dp_link_config_entry *lce_a = a;
+	const struct intel_dp_link_config_entry *lce_b = b;
+	int bw_a = intel_dp_link_config_bw(link_caps, lce_a);
+	int bw_b = intel_dp_link_config_bw(link_caps, lce_b);
 
 	if (bw_a != bw_b)
 		return bw_a - bw_b;
 
-	return intel_dp_link_config_rate(link_caps, lc_a) -
-	       intel_dp_link_config_rate(link_caps, lc_b);
+	return intel_dp_link_config_rate(link_caps, lce_a) -
+	       intel_dp_link_config_rate(link_caps, lce_b);
 }
 
 /* Return %true if the supported link parameters have changed. */
@@ -265,7 +265,7 @@ bool intel_dp_link_caps_update(struct intel_dp_link_caps *link_caps,
 {
 	struct intel_dp *intel_dp = link_caps->dp;
 	struct intel_display *display = to_intel_display(intel_dp);
-	struct intel_dp_link_config_entry *lc;
+	struct intel_dp_link_config_entry *lce;
 	bool link_params_changed = false;
 	int num_common_lane_configs;
 	int i;
@@ -298,13 +298,13 @@ bool intel_dp_link_caps_update(struct intel_dp_link_caps *link_caps,
 
 	link_caps->num_configs = num_rates * num_common_lane_configs;
 
-	lc = &link_caps->configs[0];
+	lce = &link_caps->configs[0];
 	for (i = 0; i < link_caps->num_rates; i++) {
 		for (j = 0; j < num_common_lane_configs; j++) {
-			lc->lane_count_exp = j;
-			lc->link_rate_idx = i;
+			lce->lane_count_exp = j;
+			lce->link_rate_idx = i;
 
-			lc++;
+			lce++;
 		}
 	}
 
@@ -320,15 +320,15 @@ void intel_dp_link_config_get(struct intel_dp_link_caps *link_caps,
 			      int idx, int *link_rate, int *lane_count)
 {
 	struct intel_display *display = to_intel_display(link_caps->dp);
-	const struct intel_dp_link_config_entry *lc;
+	const struct intel_dp_link_config_entry *lce;
 
 	if (drm_WARN_ON(display->drm, idx < 0 || idx >= link_caps->num_configs))
 		idx = 0;
 
-	lc = &link_caps->configs[idx];
+	lce = &link_caps->configs[idx];
 
-	*link_rate = intel_dp_link_config_rate(link_caps, lc);
-	*lane_count = intel_dp_link_config_lane_count(lc);
+	*link_rate = intel_dp_link_config_rate(link_caps, lce);
+	*lane_count = intel_dp_link_config_lane_count(lce);
 }
 
 int intel_dp_link_config_index(struct intel_dp_link_caps *link_caps,
@@ -340,10 +340,10 @@ int intel_dp_link_config_index(struct intel_dp_link_caps *link_caps,
 	int i;
 
 	for (i = 0; i < link_caps->num_configs; i++) {
-		const struct intel_dp_link_config_entry *lc = &link_caps->configs[i];
+		const struct intel_dp_link_config_entry *lce = &link_caps->configs[i];
 
-		if (lc->lane_count_exp == lane_count_exp &&
-		    lc->link_rate_idx == link_rate_idx)
+		if (lce->lane_count_exp == lane_count_exp &&
+		    lce->link_rate_idx == link_rate_idx)
 			return i;
 	}
 
-- 
2.45.2

