Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id OU4QKhANO2qGPQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 00:47:44 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 542026BA7D0
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 00:47:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="BFR83A/i";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFE3810ED2D;
	Tue, 23 Jun 2026 22:47:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAE3A10ED2E;
 Tue, 23 Jun 2026 22:47:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782254862; x=1813790862;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XWz3QbE05bvkTAPqdw+wNvqvE25FIG0BWN2scHt4uo8=;
 b=BFR83A/iVn7qjsQM/Sm48OtlFQTmrY1xwwCowewI+ILmZ1VYa5XYs7r6
 LOJE5Kw8Rq6ldX+cyusaOmRRNeqO7LSPHFrrjUeEdxJm5Li3yw691FVoj
 d1aJgasBH7clbkZmDCeIrrKl3EzToU/x88A/RQKi7DRJlLxSwpaEQ0DjL
 hIcaJW7akhgXzoxxTmDv5eWeAvlOH3fy69c7wI88aPPWcxMqqTceYf3pd
 1MxS4RBeUltKKL7zoKfz4BL4XKrkcCPLPPl9dBD1KiSew4nB1X9uVnt4S
 NfpaxNO5WUs40RLghpXJ2xy80NljE3IHp1QQzwe2K4BKd3XGpgjeWkNXN A==;
X-CSE-ConnectionGUID: ohe5sCZjQkiHCAMp7uW/8A==
X-CSE-MsgGUID: ErjhY4MST3uDmWbAc8DCtw==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="82775599"
X-IronPort-AV: E=Sophos;i="6.24,221,1774335600"; d="scan'208";a="82775599"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 15:47:42 -0700
X-CSE-ConnectionGUID: GB5W5yf4TrSmQ/f3pyM65g==
X-CSE-MsgGUID: KeaucXT2Qw2rFA10Se2l5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,221,1774335600"; d="scan'208";a="249497137"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa008.jf.intel.com with ESMTP; 23 Jun 2026 15:47:40 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 Luca Coelho <luciano.coelho@intel.com>,
 Nemesa Garg <nemesa.garg@intel.com>, Imre Deak <imre.deak@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v1 18/30] drm/i915/dp_link_caps: Move tracking of common rates
 to link_caps struct
Date: Wed, 24 Jun 2026 00:46:07 +0200
Message-ID: <20260623224619.1949975-19-michal.grzelak@intel.com>
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
X-Rspamd-Queue-Id: 542026BA7D0

From: Imre Deak <imre.deak@intel.com>

Now that all users access the supported link rates via helpers, move
tracking of these rates from struct intel_dp to the link_caps state.

Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  3 --
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 51 +++++++++++--------
 2 files changed, 29 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 331a250f61dd0..f91776635fa36 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1834,9 +1834,6 @@ struct intel_dp {
 	bool use_rate_select;
 	/* Max sink lane count as reported by DP_MAX_LANE_COUNT */
 	int max_sink_lane_count;
-	/* intersection of source and sink rates */
-	int num_common_rates;
-	int common_rates[DP_MAX_SUPPORTED_RATES];
 	int max_common_lane_count;
 	struct {
 		/* TODO: move the rest of link specific fields to here */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 84d9636f4adb4..e28f7308283ce 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -22,6 +22,10 @@
 struct intel_dp_link_caps {
 	struct intel_dp *dp;
 
+	/* Rate, lane count caps common to source and sink. */
+	int num_rates;
+	int rates[DP_MAX_SUPPORTED_RATES];
+
 	/* common rate,lane_count configs in bw order */
 	int num_configs;
 #define INTEL_DP_MAX_LANE_COUNT			4
@@ -31,6 +35,7 @@ struct intel_dp_link_caps {
 #define INTEL_DP_MAX_LINK_CONFIGS		(DP_MAX_SUPPORTED_RATES * \
 						 INTEL_DP_MAX_SUPPORTED_LANE_CONFIGS)
 	struct intel_dp_link_config_entry {
+		/* index into rates[] */
 		u8 link_rate_idx:INTEL_DP_LINK_RATE_IDX_BITS;
 		u8 lane_count_exp:INTEL_DP_LANE_COUNT_EXP_BITS;
 	} configs[INTEL_DP_MAX_LINK_CONFIGS];
@@ -46,50 +51,52 @@ struct intel_dp_link_caps {
 int intel_dp_common_len_rate_limit(const struct intel_dp *intel_dp,
 				   int max_rate)
 {
-	return intel_dp_rate_limit_len(intel_dp->common_rates,
-				       intel_dp->num_common_rates, max_rate);
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
+
+	return intel_dp_rate_limit_len(link_caps->rates,
+				       link_caps->num_rates, max_rate);
 }
 
 int intel_dp_common_rate(struct intel_dp *intel_dp, int index)
 {
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	struct intel_display *display = to_intel_display(intel_dp);
 
 	if (drm_WARN_ON(display->drm,
-			index < 0 || index >= intel_dp->num_common_rates))
+			index < 0 || index >= link_caps->num_rates))
 		return 162000;
 
-	return intel_dp->common_rates[index];
+	return link_caps->rates[index];
 }
 
 int intel_dp_link_caps_common_rate_idx(struct intel_dp_link_caps *link_caps, int rate)
 {
-	struct intel_dp *intel_dp = link_caps->dp;
-
-	return intel_dp_rate_index(intel_dp->common_rates,
-				   intel_dp->num_common_rates,
+	return intel_dp_rate_index(link_caps->rates,
+				   link_caps->num_rates,
 				   rate);
 }
 
 /* Theoretical max between source and sink */
 int intel_dp_max_common_rate(struct intel_dp *intel_dp)
 {
-	return intel_dp_common_rate(intel_dp, intel_dp->num_common_rates - 1);
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
+
+	return intel_dp_common_rate(intel_dp, link_caps->num_rates - 1);
 }
 
 int intel_dp_link_caps_num_common_rates(struct intel_dp_link_caps *link_caps)
 {
-	return link_caps->dp->num_common_rates;
+	return link_caps->num_rates;
 }
 
 void intel_dp_link_caps_print_common_rates(struct intel_dp_link_caps *link_caps)
 {
-	struct intel_dp *intel_dp = link_caps->dp;
-	struct intel_display *display = to_intel_display(intel_dp);
+	struct intel_display *display = to_intel_display(link_caps->dp);
 	DECLARE_SEQ_BUF(s, 128);
 	int i;
 
-	for (i = 0; i < intel_dp->num_common_rates; i++)
-		seq_buf_printf(&s, "%s%d", i ? ", " : "", intel_dp->common_rates[i]);
+	for (i = 0; i < link_caps->num_rates; i++)
+		seq_buf_printf(&s, "%s%d", i ? ", " : "", link_caps->rates[i]);
 
 	drm_dbg_kms(display->drm, "common rates: %s\n", seq_buf_str(&s));
 }
@@ -175,7 +182,7 @@ bool intel_dp_link_caps_update(struct intel_dp *intel_dp,
 	if (drm_WARN_ON(display->drm, !is_power_of_2(intel_dp_max_common_lane_count(intel_dp))))
 		return false;
 
-	if (drm_WARN_ON(display->drm, num_rates > ARRAY_SIZE(intel_dp->common_rates)))
+	if (drm_WARN_ON(display->drm, num_rates > ARRAY_SIZE(link_caps->rates)))
 		return false;
 
 	num_common_lane_configs = ilog2(intel_dp_max_common_lane_count(intel_dp)) + 1;
@@ -185,17 +192,17 @@ bool intel_dp_link_caps_update(struct intel_dp *intel_dp,
 		return false;
 
 	/* TODO: Add a struct containing both rates and number of rates. */
-	static_assert(__same_type(rates[0], intel_dp->common_rates[0]));
-	if (num_rates != intel_dp->num_common_rates ||
-	    memcmp(rates, intel_dp->common_rates, num_rates * sizeof(rates[0])))
+	static_assert(__same_type(rates[0], link_caps->rates[0]));
+	if (num_rates != link_caps->num_rates ||
+	    memcmp(rates, link_caps->rates, num_rates * sizeof(rates[0])))
 		link_params_changed = true;
 
-	memcpy(intel_dp->common_rates, rates, num_rates * sizeof(rates[0]));
-	intel_dp->num_common_rates = num_rates;
+	memcpy(link_caps->rates, rates, num_rates * sizeof(rates[0]));
+	link_caps->num_rates = num_rates;
 	link_caps->num_configs = num_rates * num_common_lane_configs;
 
 	lc = &link_caps->configs[0];
-	for (i = 0; i < intel_dp->num_common_rates; i++) {
+	for (i = 0; i < link_caps->num_rates; i++) {
 		for (j = 0; j < num_common_lane_configs; j++) {
 			lc->lane_count_exp = j;
 			lc->link_rate_idx = i;
@@ -231,7 +238,7 @@ void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int *link_rate
 int intel_dp_link_config_index(struct intel_dp *intel_dp, int link_rate, int lane_count)
 {
 	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
-	int link_rate_idx = intel_dp_rate_index(intel_dp->common_rates, intel_dp->num_common_rates,
+	int link_rate_idx = intel_dp_rate_index(link_caps->rates, link_caps->num_rates,
 						link_rate);
 	int lane_count_exp = ilog2(lane_count);
 	int i;
-- 
2.45.2

