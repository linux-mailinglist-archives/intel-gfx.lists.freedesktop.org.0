Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id IcG9IRcNO2qMPQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 00:47:51 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34A936BA7D9
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 00:47:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=RUhcBtSx;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65A0E10ED39;
	Tue, 23 Jun 2026 22:47:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD8AB10ED30;
 Tue, 23 Jun 2026 22:47:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782254866; x=1813790866;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ukIdY/mUGMn6axDHEvSvKcvrTtUQ0kpT0om7x217erY=;
 b=RUhcBtSxC2jbUWvFA3skhs752Pww31Ri9IPWZYspAMyXMQPnjHtyc+QA
 Po+Mt+nIfkJQEefFCSdmUCrPIpi6Y9ipGA8688uEsg2k/5nxjCYZmNm9l
 lDVpkOrdIDQXbEdeXWGi1nuUXyfT4KHapqD/1gT0Oh7rA1tSSroGaFzHI
 ES6xuc6ydnXRGzXMu1Unm7NziiBXlLzLHNHjMtWhmaa709KxRT/izNjLg
 BIL/ldbzfJDkDl77hCw34NbuPav3mvV/hXNHaRTVCQdVzrNnko++do/Te
 UELZL/nkHH+KM+9mL2miPTLIBxqm4D0dx5wnnTzYLv9A+wjUx594HzIs4 g==;
X-CSE-ConnectionGUID: uoJ35xoiRt+CrJMTWek/GQ==
X-CSE-MsgGUID: 3G8yAfB9QtCsWjFVaXBH6A==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="82775601"
X-IronPort-AV: E=Sophos;i="6.24,221,1774335600"; d="scan'208";a="82775601"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 15:47:46 -0700
X-CSE-ConnectionGUID: ADUzdhEqSHKQOnk3tc6Paw==
X-CSE-MsgGUID: KoEgmNpGRAWPY/sEkDD+ow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,221,1774335600"; d="scan'208";a="249497143"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa008.jf.intel.com with ESMTP; 23 Jun 2026 15:47:44 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 Luca Coelho <luciano.coelho@intel.com>,
 Nemesa Garg <nemesa.garg@intel.com>, Imre Deak <imre.deak@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v1 20/30] drm/i915/dp_link_caps: Use max common lane count
 from link_caps
Date: Wed, 24 Jun 2026 00:46:09 +0200
Message-ID: <20260623224619.1949975-21-michal.grzelak@intel.com>
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
X-Rspamd-Queue-Id: 34A936BA7D9

From: Imre Deak <imre.deak@intel.com>

Convert all users of intel_dp_max_common_lane_count() to query the
maximum common lane count via the link capability API, in common with
the link rate queries.

Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 1 -
 drivers/gpu/drm/i915/display/intel_dp.c            | 9 +--------
 drivers/gpu/drm/i915/display/intel_dp.h            | 1 -
 drivers/gpu/drm/i915/display/intel_dp_link_caps.c  | 7 ++++++-
 drivers/gpu/drm/i915/display/intel_dp_link_caps.h  | 1 +
 drivers/gpu/drm/i915/display/intel_dp_tunnel.c     | 3 ++-
 6 files changed, 10 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index f91776635fa36..8610c6e967ec8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1834,7 +1834,6 @@ struct intel_dp {
 	bool use_rate_select;
 	/* Max sink lane count as reported by DP_MAX_LANE_COUNT */
 	int max_sink_lane_count;
-	int max_common_lane_count;
 	struct {
 		/* TODO: move the rest of link specific fields to here */
 		bool active;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 2873b2df29f84..0d7ec7a8898c9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -354,11 +354,6 @@ static int intel_dp_get_max_common_lane_count(struct intel_dp *intel_dp)
 	return min3(source_max, sink_max, lane_max);
 }
 
-int intel_dp_max_common_lane_count(struct intel_dp *intel_dp)
-{
-	return intel_dp->max_common_lane_count;
-}
-
 int intel_dp_max_lane_count(struct intel_dp *intel_dp)
 {
 	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
@@ -701,8 +696,6 @@ static bool intel_dp_set_common_link_params(struct intel_dp *intel_dp)
 	int common_rates[DP_MAX_SUPPORTED_RATES];
 	bool params_changed = false;
 
-	intel_dp->max_common_lane_count = intel_dp_get_max_common_lane_count(intel_dp);
-
 	intel_dp_get_common_rates(intel_dp, common_rates, &num_common_rates);
 	if (intel_dp_link_caps_update(intel_dp,
 				      common_rates, num_common_rates,
@@ -3613,7 +3606,7 @@ void intel_dp_set_link_params(struct intel_dp *intel_dp,
 
 void intel_dp_reset_link_params(struct intel_dp *intel_dp)
 {
-	intel_dp->link.max_lane_count = intel_dp_max_common_lane_count(intel_dp);
+	intel_dp->link.max_lane_count = intel_dp_link_caps_max_common_lane_count(intel_dp->link.caps);
 	intel_dp->link.max_rate = intel_dp_max_common_rate(intel_dp);
 	intel_dp->link.mst_probed_lane_count = 0;
 	intel_dp->link.mst_probed_rate = 0;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index fdf9bd88859e7..f776bec7c4254 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -106,7 +106,6 @@ int intel_dp_max_link_rate(struct intel_dp *intel_dp);
 int intel_dp_max_lane_count(struct intel_dp *intel_dp);
 int intel_dp_config_required_rate(const struct intel_crtc_state *crtc_state);
 int intel_dp_rate_select(struct intel_dp *intel_dp, int rate);
-int intel_dp_max_common_lane_count(struct intel_dp *intel_dp);
 int intel_dp_rate_index(const int *rates, int len, int rate);
 void intel_dp_update_sink_caps(struct intel_dp *intel_dp);
 void intel_dp_reset_link_params(struct intel_dp *intel_dp);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index bb727bcf4de18..b227c9a55f63b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -102,6 +102,11 @@ void intel_dp_link_caps_print_common_rates(struct intel_dp_link_caps *link_caps)
 	drm_dbg_kms(display->drm, "common rates: %s\n", seq_buf_str(&s));
 }
 
+int intel_dp_link_caps_max_common_lane_count(struct intel_dp_link_caps *link_caps)
+{
+	return link_caps->max_lane_count;
+}
+
 static int forced_lane_count(struct intel_dp *intel_dp)
 {
 	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
@@ -110,7 +115,7 @@ static int forced_lane_count(struct intel_dp *intel_dp)
 		return 0;
 
 	return clamp(link_caps->forced_params.lane_count,
-		     1, intel_dp_max_common_lane_count(intel_dp));
+		     1, intel_dp_link_caps_max_common_lane_count(link_caps));
 }
 
 static int forced_link_rate(struct intel_dp *intel_dp)
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index e2f53eb167a8e..9218cb5de2c71 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -17,6 +17,7 @@ int intel_dp_common_rate(struct intel_dp *intel_dp, int index);
 int intel_dp_link_caps_common_rate_idx(struct intel_dp_link_caps *link_caps, int rate);
 int intel_dp_max_common_rate(struct intel_dp *intel_dp);
 int intel_dp_link_caps_num_common_rates(struct intel_dp_link_caps *link_caps);
+int intel_dp_link_caps_max_common_lane_count(struct intel_dp_link_caps *link_caps);
 
 void intel_dp_link_caps_print_common_rates(struct intel_dp_link_caps *link_caps);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
index c82adfcce01d0..9d9d8d04742bc 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
@@ -57,8 +57,9 @@ static int kbytes_to_mbits(int kbytes)
 
 static int get_current_link_bw(struct intel_dp *intel_dp)
 {
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	int rate = intel_dp_max_common_rate(intel_dp);
-	int lane_count = intel_dp_max_common_lane_count(intel_dp);
+	int lane_count = intel_dp_link_caps_max_common_lane_count(link_caps);
 
 	return intel_dp_max_link_data_rate(intel_dp, rate, lane_count);
 }
-- 
2.45.2

