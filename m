Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id JDlZKSMNO2qkPQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 00:48:03 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 541036BA811
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 00:48:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=MJ51Eg0U;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC04F10ED49;
	Tue, 23 Jun 2026 22:48:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5F6410ED48;
 Tue, 23 Jun 2026 22:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782254880; x=1813790880;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xw+PHyERKy6daySy7BN2SKtPyMtVdRlF3Ck5vlIVn8E=;
 b=MJ51Eg0U1basLpGnporo4B63EpHUy/gW9z/DNezOv1CPjAxQDx3l41tI
 vwuyYqUg/WE+PBrTsUpzhFMeEqHp5qAb09hCNr9VxRyeON/c161AkkCHv
 x91LEDnLrn8HqHzZzvh900IqKA917xfVZyqfxPQokdqNGhXD4ntOnb5Pz
 Ot3AxNGP87RCgoPnjDr41Eusk9QM5I5HN89vVqg+nCdFLOoeyFCW6iR1X
 /NNe3KRUjPYqwj2edh8fBRl1nOFvIoCCVPLNsyc15dTbNFV15Vjxw9YR9
 K0FQ9TUsp/FDrI+DMdrTzmX0fCaEHUYdmoFuIDctRgVG+AJPzBKNSoGrx A==;
X-CSE-ConnectionGUID: kBiz2f+kS2OuQ5dWkmOmJw==
X-CSE-MsgGUID: kDFjZTcoQgax9/846DJx6A==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="82775613"
X-IronPort-AV: E=Sophos;i="6.24,221,1774335600"; d="scan'208";a="82775613"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 15:48:00 -0700
X-CSE-ConnectionGUID: MRgUk9A0QPmIhOsncHwS1w==
X-CSE-MsgGUID: rr+opEgaR/ulJPonGUpt7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,221,1774335600"; d="scan'208";a="249497169"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa008.jf.intel.com with ESMTP; 23 Jun 2026 15:47:58 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 Luca Coelho <luciano.coelho@intel.com>,
 Nemesa Garg <nemesa.garg@intel.com>, Imre Deak <imre.deak@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v1 27/30] drm/i915/dp_link_caps: Pass link_caps to config
 update/lookup helpers
Date: Wed, 24 Jun 2026 00:46:16 +0200
Message-ID: <20260623224619.1949975-28-michal.grzelak@intel.com>
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
X-Rspamd-Queue-Id: 541036BA811

From: Imre Deak <imre.deak@intel.com>

Pass the link_caps pointer to the update/lookup helpers in
intel_dp_link_caps.c, as it holds the state with the relevant
information.

Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c            |  2 +-
 drivers/gpu/drm/i915/display/intel_dp_link_caps.c  | 14 +++++++-------
 drivers/gpu/drm/i915/display/intel_dp_link_caps.h  |  8 +++++---
 .../gpu/drm/i915/display/intel_dp_link_training.c  |  5 +++--
 4 files changed, 16 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index b63c6f047f83a..07266f4e6835b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -699,7 +699,7 @@ static bool intel_dp_set_common_link_params(struct intel_dp *intel_dp)
 	bool params_changed = false;
 
 	intel_dp_get_common_rates(intel_dp, common_rates, &num_common_rates);
-	if (intel_dp_link_caps_update(intel_dp,
+	if (intel_dp_link_caps_update(intel_dp->link.caps,
 				      common_rates, num_common_rates,
 				      intel_dp_get_max_common_lane_count(intel_dp)))
 		params_changed = true;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index fc1061149ef2e..c5701f02fbf69 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -266,10 +266,10 @@ static int link_config_cmp_by_bw(const void *a, const void *b, const void *p)
 }
 
 /* Return %true if the supported link parameters have changed. */
-bool intel_dp_link_caps_update(struct intel_dp *intel_dp,
+bool intel_dp_link_caps_update(struct intel_dp_link_caps *link_caps,
 			       const int *rates, int num_rates, int max_lane_count)
 {
-	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
+	struct intel_dp *intel_dp = link_caps->dp;
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_dp_link_config_entry *lc;
 	bool link_params_changed = false;
@@ -322,10 +322,10 @@ bool intel_dp_link_caps_update(struct intel_dp *intel_dp,
 	return link_params_changed;
 }
 
-void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int *link_rate, int *lane_count)
+void intel_dp_link_config_get(struct intel_dp_link_caps *link_caps,
+			      int idx, int *link_rate, int *lane_count)
 {
-	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
-	struct intel_display *display = to_intel_display(intel_dp);
+	struct intel_display *display = to_intel_display(link_caps->dp);
 	const struct intel_dp_link_config_entry *lc;
 
 	if (drm_WARN_ON(display->drm, idx < 0 || idx >= link_caps->num_configs))
@@ -337,9 +337,9 @@ void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int *link_rate
 	*lane_count = intel_dp_link_config_lane_count(lc);
 }
 
-int intel_dp_link_config_index(struct intel_dp *intel_dp, int link_rate, int lane_count)
+int intel_dp_link_config_index(struct intel_dp_link_caps *link_caps,
+			       int link_rate, int lane_count)
 {
-	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	int link_rate_idx = intel_dp_rate_index(link_caps->rates, link_caps->num_rates,
 						link_rate);
 	int lane_count_exp = ilog2(lane_count);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index fa45a46723059..9256f02fed11e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -24,8 +24,10 @@ void intel_dp_link_caps_print_common_rates(struct intel_dp_link_caps *link_caps)
 void intel_dp_link_caps_get_forced_params(struct intel_dp_link_caps *link_caps,
 					  struct intel_dp_link_config *forced_params);
 
-int intel_dp_link_config_index(struct intel_dp *intel_dp, int link_rate, int lane_count);
-void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int *link_rate, int *lane_count);
+int intel_dp_link_config_index(struct intel_dp_link_caps *link_caps,
+			       int link_rate, int lane_count);
+void intel_dp_link_config_get(struct intel_dp_link_caps *link_caps,
+			      int idx, int *link_rate, int *lane_count);
 
 void intel_dp_link_caps_get_max_limits(struct intel_dp_link_caps *link_caps,
 				       struct intel_dp_link_config *max_link_limits);
@@ -33,7 +35,7 @@ bool intel_dp_link_caps_set_max_limits(struct intel_dp_link_caps *link_caps,
 				       const struct intel_dp_link_config *max_link_limits);
 void intel_dp_link_caps_reset_max_limits(struct intel_dp_link_caps *link_caps);
 
-bool intel_dp_link_caps_update(struct intel_dp *intel_dp,
+bool intel_dp_link_caps_update(struct intel_dp_link_caps *link_caps,
 			       const int *rates, int num_rates, int max_lane_count);
 void intel_dp_link_caps_reset(struct intel_dp_link_caps *link_caps);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 9d9911ebad439..0d4a0bf1dac53 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1858,9 +1858,10 @@ static bool reduce_link_params_in_bw_order(struct intel_dp *intel_dp,
 
 	intel_dp_link_caps_get_forced_params(link_caps, &forced_params);
 
-	i = intel_dp_link_config_index(intel_dp, crtc_state->port_clock, crtc_state->lane_count);
+	i = intel_dp_link_config_index(intel_dp->link.caps,
+				       crtc_state->port_clock, crtc_state->lane_count);
 	for (i--; i >= 0; i--) {
-		intel_dp_link_config_get(intel_dp, i, &link_rate, &lane_count);
+		intel_dp_link_config_get(intel_dp->link.caps, i, &link_rate, &lane_count);
 
 		if ((forced_params.rate &&
 		     forced_params.rate != link_rate) ||
-- 
2.45.2

