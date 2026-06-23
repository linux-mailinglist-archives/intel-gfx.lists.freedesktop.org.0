Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9IqbGAgNO2qBPQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 00:47:36 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F01A6BA7C1
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 00:47:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=OmydISS0;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9180B10ED20;
	Tue, 23 Jun 2026 22:47:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8365310ED20;
 Tue, 23 Jun 2026 22:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782254854; x=1813790854;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sQ8zEsD8q/lT+ryQTZCS035wUd8fZVpyZBgEXf37bW4=;
 b=OmydISS0WGE+hfBJp5pjwFdDb9oxREDjRNaGqR7tgXETfG/qI4ETmnjO
 3cHnYR3ruAtuya7le3d02hKvuvcvF4rnKtTGUMfbLlPBwFDUe4js+ACt4
 7cbdeY+UyAdrvquMWTSlxuxVcOSACCH13xH72HF3ITCNCTg8bzqpeZaSk
 /mgb2Qgj+30oIPJcXAcXIGtUGygcjg2Hn+PbAQj/kwX2Zp+s2EuOERgMn
 UzAEZWa4ujYMVJVmx5Naj/L2cAMJd6W2QrMnbS7C2eoGNngf+7q/UQuro
 YlIjsu8CN3F/otAoIxRKYm3RvoDI9zGp+mW9vwbbppksmvfyKLu45IbFG w==;
X-CSE-ConnectionGUID: EOFtfkhyRG2tGrwoanJFaQ==
X-CSE-MsgGUID: h9vzFmc5QSOePvgfMH2slA==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="82775590"
X-IronPort-AV: E=Sophos;i="6.24,221,1774335600"; d="scan'208";a="82775590"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 15:47:34 -0700
X-CSE-ConnectionGUID: XZAegqZnRsmxTWYLsKH8aw==
X-CSE-MsgGUID: K+tnI7toTcu5JPt+3ZkUQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,221,1774335600"; d="scan'208";a="249497125"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa008.jf.intel.com with ESMTP; 23 Jun 2026 15:47:31 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 Luca Coelho <luciano.coelho@intel.com>,
 Nemesa Garg <nemesa.garg@intel.com>, Imre Deak <imre.deak@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v1 14/30] drm/i915/dp_link_caps: Pass supported link rates to
 link caps update
Date: Wed, 24 Jun 2026 00:46:03 +0200
Message-ID: <20260623224619.1949975-15-michal.grzelak@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0F01A6BA7C1

From: Imre Deak <imre.deak@intel.com>

Pass the supported link rates explicitly to intel_dp_link_caps_update().
This prepares for tracking these capabilities internally within the
link caps module.

Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c       | 28 ++++---------------
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 28 +++++++++++++++----
 .../gpu/drm/i915/display/intel_dp_link_caps.h |  5 +++-
 3 files changed, 33 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 635e3ede0d41e..d2b9b6fce2b32 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -698,36 +698,20 @@ static void intel_dp_get_common_rates(struct intel_dp *intel_dp,
 	}
 }
 
-static bool intel_dp_set_common_rates(struct intel_dp *intel_dp)
-{
-	int num_old_common_rates = intel_dp->num_common_rates;
-	int old_common_rates[DP_MAX_SUPPORTED_RATES];
-
-	/* TODO: Add a struct containing both rates and number of rates. */
-	static_assert(__same_type(old_common_rates[0], intel_dp->common_rates[0]) &&
-		      sizeof(old_common_rates) == sizeof(intel_dp->common_rates));
-	memcpy(old_common_rates, intel_dp->common_rates,
-	       num_old_common_rates * sizeof(old_common_rates[0]));
-
-	intel_dp_get_common_rates(intel_dp, intel_dp->common_rates, &intel_dp->num_common_rates);
-
-	return num_old_common_rates != intel_dp->num_common_rates ||
-	       memcmp(old_common_rates, intel_dp->common_rates,
-		      num_old_common_rates * sizeof(old_common_rates[0]));
-}
-
 /* Return %true if any common link param changed. */
 static bool intel_dp_set_common_link_params(struct intel_dp *intel_dp)
 {
+	int num_common_rates;
+	int common_rates[DP_MAX_SUPPORTED_RATES];
 	bool params_changed = false;
 
-	if (intel_dp_set_common_rates(intel_dp))
-		params_changed = true;
-
 	if (intel_dp_set_max_common_lane_count(intel_dp))
 		params_changed = true;
 
-	intel_dp_link_caps_update(intel_dp);
+	intel_dp_get_common_rates(intel_dp, common_rates, &num_common_rates);
+	if (intel_dp_link_caps_update(intel_dp,
+				      common_rates, num_common_rates))
+		params_changed = true;
 
 	return params_changed;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 2074952931738..679d59cc256c9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -8,6 +8,7 @@
 #include <linux/log2.h>
 #include <linux/slab.h>
 #include <linux/sort.h>
+#include <linux/string.h>
 #include <linux/types.h>
 
 #include <drm/drm_print.h>
@@ -131,25 +132,39 @@ static int link_config_cmp_by_bw(const void *a, const void *b, const void *p)
 	       intel_dp_link_config_rate(intel_dp, lc_b);
 }
 
-void intel_dp_link_caps_update(struct intel_dp *intel_dp)
+/* Return %true if the supported link parameters have changed. */
+bool intel_dp_link_caps_update(struct intel_dp *intel_dp,
+			       const int *rates, int num_rates)
 {
 	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_dp_link_config_entry *lc;
+	bool link_params_changed = false;
 	int num_common_lane_configs;
 	int i;
 	int j;
 
 	if (drm_WARN_ON(display->drm, !is_power_of_2(intel_dp_max_common_lane_count(intel_dp))))
-		return;
+		return false;
+
+	if (drm_WARN_ON(display->drm, num_rates > ARRAY_SIZE(intel_dp->common_rates)))
+		return false;
 
 	num_common_lane_configs = ilog2(intel_dp_max_common_lane_count(intel_dp)) + 1;
 
-	if (drm_WARN_ON(display->drm, intel_dp->num_common_rates * num_common_lane_configs >
+	if (drm_WARN_ON(display->drm, num_rates * num_common_lane_configs >
 				    ARRAY_SIZE(link_caps->configs)))
-		return;
+		return false;
 
-	link_caps->num_configs = intel_dp->num_common_rates * num_common_lane_configs;
+	/* TODO: Add a struct containing both rates and number of rates. */
+	static_assert(__same_type(rates[0], intel_dp->common_rates[0]));
+	if (num_rates != intel_dp->num_common_rates ||
+	    memcmp(rates, intel_dp->common_rates, num_rates * sizeof(rates[0])))
+		link_params_changed = true;
+
+	memcpy(intel_dp->common_rates, rates, num_rates * sizeof(rates[0]));
+	intel_dp->num_common_rates = num_rates;
+	link_caps->num_configs = num_rates * num_common_lane_configs;
 
 	lc = &link_caps->configs[0];
 	for (i = 0; i < intel_dp->num_common_rates; i++) {
@@ -165,6 +180,9 @@ void intel_dp_link_caps_update(struct intel_dp *intel_dp)
 	       sizeof(link_caps->configs[0]),
 	       link_config_cmp_by_bw, NULL,
 	       intel_dp);
+
+	/* TODO: Also detect a change in the max lane count. */
+	return link_params_changed;
 }
 
 void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int *link_rate, int *lane_count)
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index aed2122a05d24..09e580bc5c9b3 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -4,6 +4,8 @@
 #ifndef __INTEL_DP_LINK_CAPS_H__
 #define __INTEL_DP_LINK_CAPS_H__
 
+#include <linux/types.h>
+
 struct intel_connector;
 struct intel_dp;
 struct intel_dp_link_caps;
@@ -20,7 +22,8 @@ void intel_dp_link_caps_get_forced_params(struct intel_dp_link_caps *link_caps,
 int intel_dp_link_config_index(struct intel_dp *intel_dp, int link_rate, int lane_count);
 void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int *link_rate, int *lane_count);
 
-void intel_dp_link_caps_update(struct intel_dp *intel_dp);
+bool intel_dp_link_caps_update(struct intel_dp *intel_dp,
+			       const int *rates, int num_rates);
 
 void intel_dp_link_caps_debugfs_add(struct intel_connector *connector);
 
-- 
2.45.2

