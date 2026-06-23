Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LnmvBQQNO2p9PQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 00:47:32 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 811F16BA7B5
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 00:47:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Pz9TKHpE;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15CBD10ED1F;
	Tue, 23 Jun 2026 22:47:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B32C810ED15;
 Tue, 23 Jun 2026 22:47:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782254848; x=1813790848;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dEcs6RRVUjPgL4pP7iEZyWSP8LHxjJ92fDp1hRtVe7M=;
 b=Pz9TKHpEJE4c2u6PwALVKorhHUYSuTVs8UwPwwZDAI6FOa6GgeNpDouf
 r2yZGhafsagV8fjL/dKl337LsQaSfHlmqJlTZOdyXsqGZ0PHsE4pPCwcN
 EKEuU3DM60en+27Ji6rohC37pF2Ll/3WWwmjBiuKk9mkyUA8NH7N3d1WJ
 nFjJZhLVHSDY8GZ6ojuxpxEWQOKIpb7T/nPAJFwiWF13NPyV7uBiD4CDs
 Wjgi6u+NJqBSHlDImmykZPx0xKRNqwoJyCvWzPWsRrjBQViWkmya6VfRi
 MpQYps/GLXis8yU1qxA+3z0+pwc0m1p8S2HSZMNVvMvgkkuEYUYVJrI0W w==;
X-CSE-ConnectionGUID: G1SpoJPBTiOUFfnCxTo1aQ==
X-CSE-MsgGUID: 10cosyYYQMmUKVsmi3Hi5A==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="82775576"
X-IronPort-AV: E=Sophos;i="6.24,221,1774335600"; d="scan'208";a="82775576"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 15:47:28 -0700
X-CSE-ConnectionGUID: h05yZqdjQNqdE1j/E7xv+Q==
X-CSE-MsgGUID: azQ9po5wS/OS2RG3KLvXAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,221,1774335600"; d="scan'208";a="249497116"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa008.jf.intel.com with ESMTP; 23 Jun 2026 15:47:26 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 Luca Coelho <luciano.coelho@intel.com>,
 Nemesa Garg <nemesa.garg@intel.com>, Imre Deak <imre.deak@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v1 11/30] drm/i915/dp_link_caps: Move link config tracking to
 link_caps
Date: Wed, 24 Jun 2026 00:46:00 +0200
Message-ID: <20260623224619.1949975-12-michal.grzelak@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 811F16BA7B5

From: Imre Deak <imre.deak@intel.com>

Move tracking of the link configurations from struct intel_dp to struct
intel_dp_link_caps.

Previous changes moved the helpers operating on configurations to the
link caps module, so the state can now be kept internal to that module.

Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 .../drm/i915/display/intel_display_types.h    | 12 -------
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 36 ++++++++++++++-----
 2 files changed, 27 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index c76ae741e2620..331a250f61dd0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1841,18 +1841,6 @@ struct intel_dp {
 	struct {
 		/* TODO: move the rest of link specific fields to here */
 		bool active;
-		/* common rate,lane_count configs in bw order */
-		int num_configs;
-#define INTEL_DP_MAX_LANE_COUNT			4
-#define INTEL_DP_MAX_SUPPORTED_LANE_CONFIGS	(ilog2(INTEL_DP_MAX_LANE_COUNT) + 1)
-#define INTEL_DP_LANE_COUNT_EXP_BITS		order_base_2(INTEL_DP_MAX_SUPPORTED_LANE_CONFIGS)
-#define INTEL_DP_LINK_RATE_IDX_BITS		(BITS_PER_TYPE(u8) - INTEL_DP_LANE_COUNT_EXP_BITS)
-#define INTEL_DP_MAX_LINK_CONFIGS		(DP_MAX_SUPPORTED_RATES * \
-						 INTEL_DP_MAX_SUPPORTED_LANE_CONFIGS)
-		struct intel_dp_link_config_entry {
-			u8 link_rate_idx:INTEL_DP_LINK_RATE_IDX_BITS;
-			u8 lane_count_exp:INTEL_DP_LANE_COUNT_EXP_BITS;
-		} configs[INTEL_DP_MAX_LINK_CONFIGS];
 		/* Max lane count for the current link */
 		int max_lane_count;
 		/* Max rate for the current link */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 6a37ba8c35e27..05ec933c74407 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -3,10 +3,12 @@
  * Copyright © 2026 Intel Corporation
  */
 
+#include <linux/bitops.h>
 #include <linux/debugfs.h>
 #include <linux/log2.h>
 #include <linux/slab.h>
 #include <linux/sort.h>
+#include <linux/types.h>
 
 #include <drm/drm_print.h>
 
@@ -18,6 +20,19 @@
 struct intel_dp_link_caps {
 	struct intel_dp *dp;
 
+	/* common rate,lane_count configs in bw order */
+	int num_configs;
+#define INTEL_DP_MAX_LANE_COUNT			4
+#define INTEL_DP_MAX_SUPPORTED_LANE_CONFIGS	(ilog2(INTEL_DP_MAX_LANE_COUNT) + 1)
+#define INTEL_DP_LANE_COUNT_EXP_BITS		order_base_2(INTEL_DP_MAX_SUPPORTED_LANE_CONFIGS)
+#define INTEL_DP_LINK_RATE_IDX_BITS		(BITS_PER_TYPE(u8) - INTEL_DP_LANE_COUNT_EXP_BITS)
+#define INTEL_DP_MAX_LINK_CONFIGS		(DP_MAX_SUPPORTED_RATES * \
+						 INTEL_DP_MAX_SUPPORTED_LANE_CONFIGS)
+	struct intel_dp_link_config_entry {
+		u8 link_rate_idx:INTEL_DP_LINK_RATE_IDX_BITS;
+		u8 lane_count_exp:INTEL_DP_LANE_COUNT_EXP_BITS;
+	} configs[INTEL_DP_MAX_LINK_CONFIGS];
+
 	/*
 	 * Forced parameters requested via debugfs. Remains set across sink
 	 * disconnects.
@@ -118,6 +133,7 @@ static int link_config_cmp_by_bw(const void *a, const void *b, const void *p)
 
 void intel_dp_link_config_init(struct intel_dp *intel_dp)
 {
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_dp_link_config_entry *lc;
 	int num_common_lane_configs;
@@ -130,12 +146,12 @@ void intel_dp_link_config_init(struct intel_dp *intel_dp)
 	num_common_lane_configs = ilog2(intel_dp_max_common_lane_count(intel_dp)) + 1;
 
 	if (drm_WARN_ON(display->drm, intel_dp->num_common_rates * num_common_lane_configs >
-				    ARRAY_SIZE(intel_dp->link.configs)))
+				    ARRAY_SIZE(link_caps->configs)))
 		return;
 
-	intel_dp->link.num_configs = intel_dp->num_common_rates * num_common_lane_configs;
+	link_caps->num_configs = intel_dp->num_common_rates * num_common_lane_configs;
 
-	lc = &intel_dp->link.configs[0];
+	lc = &link_caps->configs[0];
 	for (i = 0; i < intel_dp->num_common_rates; i++) {
 		for (j = 0; j < num_common_lane_configs; j++) {
 			lc->lane_count_exp = j;
@@ -145,21 +161,22 @@ void intel_dp_link_config_init(struct intel_dp *intel_dp)
 		}
 	}
 
-	sort_r(intel_dp->link.configs, intel_dp->link.num_configs,
-	       sizeof(intel_dp->link.configs[0]),
+	sort_r(link_caps->configs, link_caps->num_configs,
+	       sizeof(link_caps->configs[0]),
 	       link_config_cmp_by_bw, NULL,
 	       intel_dp);
 }
 
 void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int *link_rate, int *lane_count)
 {
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	struct intel_display *display = to_intel_display(intel_dp);
 	const struct intel_dp_link_config_entry *lc;
 
-	if (drm_WARN_ON(display->drm, idx < 0 || idx >= intel_dp->link.num_configs))
+	if (drm_WARN_ON(display->drm, idx < 0 || idx >= link_caps->num_configs))
 		idx = 0;
 
-	lc = &intel_dp->link.configs[idx];
+	lc = &link_caps->configs[idx];
 
 	*link_rate = intel_dp_link_config_rate(intel_dp, lc);
 	*lane_count = intel_dp_link_config_lane_count(lc);
@@ -167,13 +184,14 @@ void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int *link_rate
 
 int intel_dp_link_config_index(struct intel_dp *intel_dp, int link_rate, int lane_count)
 {
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	int link_rate_idx = intel_dp_rate_index(intel_dp->common_rates, intel_dp->num_common_rates,
 						link_rate);
 	int lane_count_exp = ilog2(lane_count);
 	int i;
 
-	for (i = 0; i < intel_dp->link.num_configs; i++) {
-		const struct intel_dp_link_config_entry *lc = &intel_dp->link.configs[i];
+	for (i = 0; i < link_caps->num_configs; i++) {
+		const struct intel_dp_link_config_entry *lc = &link_caps->configs[i];
 
 		if (lc->lane_count_exp == lane_count_exp &&
 		    lc->link_rate_idx == link_rate_idx)
-- 
2.45.2

