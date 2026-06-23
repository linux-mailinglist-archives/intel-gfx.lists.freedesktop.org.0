Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id m41NEO8MO2pwPQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 00:47:11 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD9076BA788
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 00:47:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=QHU3L5pT;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A37C10ECF8;
	Tue, 23 Jun 2026 22:47:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4496B10ECF5;
 Tue, 23 Jun 2026 22:47:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782254828; x=1813790828;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2wjEf8VZMvYbHkbyguA+DwGkwckjbzWklBdG9dI0aoc=;
 b=QHU3L5pTyAKw5KGN5IsqhobjiRjj9XT8h+yZrbo7egKqeJ5oh2zVe7zh
 5+V5J4+HU8V0Mams6EbtKmx1A6IYb4o55GtyFLZu+9rLNNU3VM9xqua8E
 xSBAZe8hGva63gPpJLXJsDi5PL/Nuuavewvv9j1mIaC7Co2xGesa7S72J
 Iw/fwmUGCIUPGvTfOdNHEY+thbDBWa5V/g5jYmrFzL4wgvTjLk39Tb1Wo
 mJv/aeGVBQZKmYA7SdkX0JKfYvX5xwJxGt4W17cu55ewc34uN67s6XtLj
 MicJCxkf/oCF3Qs2DMagSVsU6wBIRVApw9/CHn7aX3k5+dkvvNPgngkzN w==;
X-CSE-ConnectionGUID: Ugxf7OUyR3uX5nRzGgEdZg==
X-CSE-MsgGUID: 7ga8S5ozReqiuYlnBPGfDw==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="82775546"
X-IronPort-AV: E=Sophos;i="6.24,221,1774335600"; d="scan'208";a="82775546"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 15:47:08 -0700
X-CSE-ConnectionGUID: k9jWe/A5RiKA5GzAufyl8Q==
X-CSE-MsgGUID: EDCaKen7QmyPOEj/u7+g4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,221,1774335600"; d="scan'208";a="249497084"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa008.jf.intel.com with ESMTP; 23 Jun 2026 15:47:05 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 Luca Coelho <luciano.coelho@intel.com>,
 Nemesa Garg <nemesa.garg@intel.com>, Imre Deak <imre.deak@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v1 01/30] drm/i915/dp: Rename intel_dp_link_config to
 intel_dp_link_config_entry
Date: Wed, 24 Jun 2026 00:45:50 +0200
Message-ID: <20260623224619.1949975-2-michal.grzelak@intel.com>
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
X-Rspamd-Queue-Id: DD9076BA788

From: Imre Deak <imre.deak@intel.com>

Rename intel_dp_link_config to intel_dp_link_config_entry to prepare
for tracking a link configuration in both an internal packed and a
public unpacked format. A follow-up change will add
struct intel_dp_link_config representing the public unpacked format.

Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 .../gpu/drm/i915/display/intel_display_types.h   |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.c          | 16 ++++++++--------
 2 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index b0ce1b71ca27a..7fd7dfd420487 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1840,7 +1840,7 @@ struct intel_dp {
 #define INTEL_DP_LINK_RATE_IDX_BITS		(BITS_PER_TYPE(u8) - INTEL_DP_LANE_COUNT_EXP_BITS)
 #define INTEL_DP_MAX_LINK_CONFIGS		(DP_MAX_SUPPORTED_RATES * \
 						 INTEL_DP_MAX_SUPPORTED_LANE_CONFIGS)
-		struct intel_dp_link_config {
+		struct intel_dp_link_config_entry {
 			u8 link_rate_idx:INTEL_DP_LINK_RATE_IDX_BITS;
 			u8 lane_count_exp:INTEL_DP_LANE_COUNT_EXP_BITS;
 		} configs[INTEL_DP_MAX_LINK_CONFIGS];
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3569e61e7feea..00eb3f5103383 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -699,18 +699,18 @@ int intel_dp_rate_index(const int *rates, int len, int rate)
 }
 
 static int intel_dp_link_config_rate(struct intel_dp *intel_dp,
-				     const struct intel_dp_link_config *lc)
+				     const struct intel_dp_link_config_entry *lc)
 {
 	return intel_dp_common_rate(intel_dp, lc->link_rate_idx);
 }
 
-static int intel_dp_link_config_lane_count(const struct intel_dp_link_config *lc)
+static int intel_dp_link_config_lane_count(const struct intel_dp_link_config_entry *lc)
 {
 	return 1 << lc->lane_count_exp;
 }
 
 static int intel_dp_link_config_bw(struct intel_dp *intel_dp,
-				   const struct intel_dp_link_config *lc)
+				   const struct intel_dp_link_config_entry *lc)
 {
 	return drm_dp_max_dprx_data_rate(intel_dp_link_config_rate(intel_dp, lc),
 					 intel_dp_link_config_lane_count(lc));
@@ -719,8 +719,8 @@ static int intel_dp_link_config_bw(struct intel_dp *intel_dp,
 static int link_config_cmp_by_bw(const void *a, const void *b, const void *p)
 {
 	struct intel_dp *intel_dp = (struct intel_dp *)p;	/* remove const */
-	const struct intel_dp_link_config *lc_a = a;
-	const struct intel_dp_link_config *lc_b = b;
+	const struct intel_dp_link_config_entry *lc_a = a;
+	const struct intel_dp_link_config_entry *lc_b = b;
 	int bw_a = intel_dp_link_config_bw(intel_dp, lc_a);
 	int bw_b = intel_dp_link_config_bw(intel_dp, lc_b);
 
@@ -734,7 +734,7 @@ static int link_config_cmp_by_bw(const void *a, const void *b, const void *p)
 static void intel_dp_link_config_init(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	struct intel_dp_link_config *lc;
+	struct intel_dp_link_config_entry *lc;
 	int num_common_lane_configs;
 	int i;
 	int j;
@@ -769,7 +769,7 @@ static void intel_dp_link_config_init(struct intel_dp *intel_dp)
 void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int *link_rate, int *lane_count)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	const struct intel_dp_link_config *lc;
+	const struct intel_dp_link_config_entry *lc;
 
 	if (drm_WARN_ON(display->drm, idx < 0 || idx >= intel_dp->link.num_configs))
 		idx = 0;
@@ -788,7 +788,7 @@ int intel_dp_link_config_index(struct intel_dp *intel_dp, int link_rate, int lan
 	int i;
 
 	for (i = 0; i < intel_dp->link.num_configs; i++) {
-		const struct intel_dp_link_config *lc = &intel_dp->link.configs[i];
+		const struct intel_dp_link_config_entry *lc = &intel_dp->link.configs[i];
 
 		if (lc->lane_count_exp == lane_count_exp &&
 		    lc->link_rate_idx == link_rate_idx)
-- 
2.45.2

