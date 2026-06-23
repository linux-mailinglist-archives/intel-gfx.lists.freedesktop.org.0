Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zG/uFSUNO2qmPQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 00:48:05 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 035F56BA817
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 00:48:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=AlxDMez4;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99C3910ED4D;
	Tue, 23 Jun 2026 22:48:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC06510ED4B;
 Tue, 23 Jun 2026 22:48:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782254882; x=1813790882;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=D88IXUnJFy8YvKWvyiVDDsS+RD2VA6z0e40Im8swI90=;
 b=AlxDMez4RKI0h/5H4h+sTxODn+YsFX16g1QwACbbH/hXzJu7RSYQfGY7
 aL2zvKLHr1ktnT3b/zcXn5/0qXVNrY1Qw6b3o9dFaxIEzO56+BZtdU+uu
 b0WRpdSU/mUNDUyAmJ4Ksf3ZVymCeDMidQStW0S0VcTHeeGS4o/OqjfDX
 0YswHq8Nw1BS3yh+C0XDESJMxWOJwLbUbiIq9cYctNCkknpD+Va726Ti/
 f88Y+IAvlswqh8fIkfb5V69S5c9u4L6MBBDZ/0JEnwJdkoteoFTltPv/x
 CCml50daj+4Q51BjjXhnsQ4X5ZzqwBngxpc8isqCXUvvVtJxS0Cz3SYF2 Q==;
X-CSE-ConnectionGUID: FF2KqhxFQXW6EoJ3E9IlJg==
X-CSE-MsgGUID: 6BoE/qe8TfGDZgtf12FlAA==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="82775614"
X-IronPort-AV: E=Sophos;i="6.24,221,1774335600"; d="scan'208";a="82775614"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 15:48:02 -0700
X-CSE-ConnectionGUID: QqXOQbsSSpWD3IxVciXRSw==
X-CSE-MsgGUID: 6qSkRr1pTxqUv1+lSLWMHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,221,1774335600"; d="scan'208";a="249497173"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa008.jf.intel.com with ESMTP; 23 Jun 2026 15:48:00 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 Luca Coelho <luciano.coelho@intel.com>,
 Nemesa Garg <nemesa.garg@intel.com>, Imre Deak <imre.deak@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v1 28/30] drm/i915/dp_link_caps: Pass link_caps to common rate
 helpers
Date: Wed, 24 Jun 2026 00:46:17 +0200
Message-ID: <20260623224619.1949975-29-michal.grzelak@intel.com>
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
X-Rspamd-Queue-Id: 035F56BA817

From: Imre Deak <imre.deak@intel.com>

Pass the link_caps pointer to the common rate helpers in
intel_dp_link_caps.c, as it holds the state with the relevant
information.

Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c       | 13 ++++++----
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 26 +++++++------------
 .../gpu/drm/i915/display/intel_dp_link_caps.h |  6 ++---
 .../drm/i915/display/intel_dp_link_training.c |  5 ++--
 .../gpu/drm/i915/display/intel_dp_tunnel.c    |  2 +-
 5 files changed, 25 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 07266f4e6835b..66346b74b2c04 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1551,14 +1551,15 @@ intel_dp_max_link_rate(struct intel_dp *intel_dp)
 		return forced_params.rate;
 
 	intel_dp_link_caps_get_max_limits(link_caps, &max_link_limits);
-	len = intel_dp_common_len_rate_limit(intel_dp, max_link_limits.rate);
+	len = intel_dp_common_len_rate_limit(link_caps, max_link_limits.rate);
 
-	return intel_dp_common_rate(intel_dp, len - 1);
+	return intel_dp_common_rate(link_caps, len - 1);
 }
 
 static int
 intel_dp_min_link_rate(struct intel_dp *intel_dp)
 {
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	struct intel_dp_link_config forced_params;
 
 	intel_dp_link_caps_get_forced_params(intel_dp->link.caps, &forced_params);
@@ -1566,7 +1567,7 @@ intel_dp_min_link_rate(struct intel_dp *intel_dp)
 	if (forced_params.rate)
 		return forced_params.rate;
 
-	return intel_dp_common_rate(intel_dp, 0);
+	return intel_dp_common_rate(link_caps, 0);
 }
 
 int intel_dp_rate_select(struct intel_dp *intel_dp, int rate)
@@ -1750,6 +1751,7 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
 				  const struct drm_connector_state *conn_state,
 				  const struct link_config_limits *limits)
 {
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	int bpp, i, lane_count, clock = intel_dp_mode_clock(pipe_config, conn_state);
 	int link_rate, link_avail;
 
@@ -1760,7 +1762,7 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
 			intel_dp_output_format_link_bpp_x16(pipe_config->output_format, bpp);
 
 		for (i = 0; i < intel_dp_link_caps_num_common_rates(intel_dp->link.caps); i++) {
-			link_rate = intel_dp_common_rate(intel_dp, i);
+			link_rate = intel_dp_common_rate(link_caps, i);
 			if (link_rate < limits->min_rate ||
 			    link_rate > limits->max_rate)
 				continue;
@@ -1984,12 +1986,13 @@ static int dsc_compute_link_config(struct intel_dp *intel_dp,
 				   const struct link_config_limits *limits,
 				   int dsc_bpp_x16)
 {
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	const struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
 	int link_rate, lane_count;
 	int i;
 
 	for (i = 0; i < intel_dp_link_caps_num_common_rates(intel_dp->link.caps); i++) {
-		link_rate = intel_dp_common_rate(intel_dp, i);
+		link_rate = intel_dp_common_rate(link_caps, i);
 		if (link_rate < limits->min_rate || link_rate > limits->max_rate)
 			continue;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index c5701f02fbf69..0917e7f51a26d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -60,19 +60,16 @@ struct intel_dp_link_caps {
 };
 
 /* Get length of common rates array potentially limited by max_rate. */
-int intel_dp_common_len_rate_limit(const struct intel_dp *intel_dp,
+int intel_dp_common_len_rate_limit(struct intel_dp_link_caps *link_caps,
 				   int max_rate)
 {
-	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
-
 	return intel_dp_rate_limit_len(link_caps->rates,
 				       link_caps->num_rates, max_rate);
 }
 
-int intel_dp_common_rate(struct intel_dp *intel_dp, int index)
+int intel_dp_common_rate(struct intel_dp_link_caps *link_caps, int index)
 {
-	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
-	struct intel_display *display = to_intel_display(intel_dp);
+	struct intel_display *display = to_intel_display(link_caps->dp);
 
 	if (drm_WARN_ON(display->drm,
 			index < 0 || index >= link_caps->num_rates))
@@ -89,11 +86,9 @@ int intel_dp_link_caps_common_rate_idx(struct intel_dp_link_caps *link_caps, int
 }
 
 /* Theoretical max between source and sink */
-int intel_dp_max_common_rate(struct intel_dp *intel_dp)
+int intel_dp_max_common_rate(struct intel_dp_link_caps *link_caps)
 {
-	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
-
-	return intel_dp_common_rate(intel_dp, link_caps->num_rates - 1);
+	return intel_dp_common_rate(link_caps, link_caps->num_rates - 1);
 }
 
 int intel_dp_link_caps_num_common_rates(struct intel_dp_link_caps *link_caps)
@@ -129,17 +124,16 @@ static int forced_lane_count(struct intel_dp_link_caps *link_caps)
 
 static int forced_link_rate(struct intel_dp_link_caps *link_caps)
 {
-	struct intel_dp *intel_dp = link_caps->dp;
 	int len;
 
 	if (!link_caps->forced_params.rate)
 		return 0;
 
-	len = intel_dp_common_len_rate_limit(intel_dp, link_caps->forced_params.rate);
+	len = intel_dp_common_len_rate_limit(link_caps, link_caps->forced_params.rate);
 	if (len == 0)
-		return intel_dp_common_rate(intel_dp, 0);
+		return intel_dp_common_rate(link_caps, 0);
 
-	return intel_dp_common_rate(intel_dp, len - 1);
+	return intel_dp_common_rate(link_caps, len - 1);
 }
 
 void intel_dp_link_caps_get_forced_params(struct intel_dp_link_caps *link_caps,
@@ -152,7 +146,7 @@ void intel_dp_link_caps_get_forced_params(struct intel_dp_link_caps *link_caps,
 static int intel_dp_link_config_rate(struct intel_dp_link_caps *link_caps,
 				     const struct intel_dp_link_config_entry *lc)
 {
-	return intel_dp_common_rate(link_caps->dp, lc->link_rate_idx);
+	return intel_dp_common_rate(link_caps, lc->link_rate_idx);
 }
 
 static int intel_dp_link_config_lane_count(const struct intel_dp_link_config_entry *lc)
@@ -169,7 +163,7 @@ static void set_max_link_limits_no_update(struct intel_dp_link_caps *link_caps,
 static void reset_max_link_limits_no_update(struct intel_dp_link_caps *link_caps)
 {
 	struct intel_dp_link_config max_link_limits = {
-		.rate = intel_dp_max_common_rate(link_caps->dp),
+		.rate = intel_dp_max_common_rate(link_caps),
 		.lane_count = intel_dp_link_caps_max_common_lane_count(link_caps),
 	};
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index 9256f02fed11e..af9028e7cb987 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -11,11 +11,11 @@ struct intel_dp;
 struct intel_dp_link_caps;
 struct intel_dp_link_config;
 
-int intel_dp_common_len_rate_limit(const struct intel_dp *intel_dp,
+int intel_dp_common_len_rate_limit(struct intel_dp_link_caps *link_caps,
 				   int max_rate);
-int intel_dp_common_rate(struct intel_dp *intel_dp, int index);
+int intel_dp_common_rate(struct intel_dp_link_caps *link_caps, int index);
 int intel_dp_link_caps_common_rate_idx(struct intel_dp_link_caps *link_caps, int rate);
-int intel_dp_max_common_rate(struct intel_dp *intel_dp);
+int intel_dp_max_common_rate(struct intel_dp_link_caps *link_caps);
 int intel_dp_link_caps_num_common_rates(struct intel_dp_link_caps *link_caps);
 int intel_dp_link_caps_max_common_lane_count(struct intel_dp_link_caps *link_caps);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 0d4a0bf1dac53..b521dd11b62a7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1898,7 +1898,7 @@ static int reduce_link_rate(struct intel_dp *intel_dp, int current_rate)
 	if (rate_index <= 0)
 		return -1;
 
-	new_rate = intel_dp_common_rate(intel_dp, rate_index - 1);
+	new_rate = intel_dp_common_rate(link_caps, rate_index - 1);
 
 	/* TODO: Make switching from UHBR to non-UHBR rates work. */
 	if (drm_dp_is_uhbr_rate(current_rate) != drm_dp_is_uhbr_rate(new_rate))
@@ -1925,6 +1925,7 @@ static bool reduce_link_params_in_rate_lane_order(struct intel_dp *intel_dp,
 						  const struct intel_crtc_state *crtc_state,
 						  int *new_link_rate, int *new_lane_count)
 {
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	int link_rate;
 	int lane_count;
 
@@ -1932,7 +1933,7 @@ static bool reduce_link_params_in_rate_lane_order(struct intel_dp *intel_dp,
 	link_rate = reduce_link_rate(intel_dp, crtc_state->port_clock);
 	if (link_rate < 0) {
 		lane_count = reduce_lane_count(intel_dp, crtc_state->lane_count);
-		link_rate = intel_dp_max_common_rate(intel_dp);
+		link_rate = intel_dp_max_common_rate(link_caps);
 	}
 
 	if (lane_count < 0)
diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
index 9d9d8d04742bc..76e9753766b9f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
@@ -58,7 +58,7 @@ static int kbytes_to_mbits(int kbytes)
 static int get_current_link_bw(struct intel_dp *intel_dp)
 {
 	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
-	int rate = intel_dp_max_common_rate(intel_dp);
+	int rate = intel_dp_max_common_rate(link_caps);
 	int lane_count = intel_dp_link_caps_max_common_lane_count(link_caps);
 
 	return intel_dp_max_link_data_rate(intel_dp, rate, lane_count);
-- 
2.45.2

