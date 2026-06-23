Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Mt8GLf4MO2p6PQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 00:47:26 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 646666BA7A8
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 00:47:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=PU31xEwW;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED93D10ED1A;
	Tue, 23 Jun 2026 22:47:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83EA710ED0E;
 Tue, 23 Jun 2026 22:47:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782254842; x=1813790842;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mffFPpIfZujzMp9RUXR59oc3J/lpWPIHJYwa5jEbhTg=;
 b=PU31xEwWH/Dx9oTc2DM4rnqFez44XULs+A5+f+2Fz4lAxOOB3nMS3aoE
 1fME0LC0e9zCT5jTjWUB2I4S5prafAlS7uYFVZiFftHvUbYr4ERM3wRUY
 SzffxQpAJxgkoXgNrebUrOFF63ATNxc3BmarKr2T/TaOFDcKLlnsVSlMY
 2V5iuQrkPa3VXRKZc6a1nmKqepCAXUWXsFEn5zkuReTh36RW0nMBaCaFJ
 6PzplKmKcPQ2SmgWfA1wewtQm6EBi9yEch4nClyvxizIIAhbQm0BIOli3
 7Bj6g2kJxT4HicwdSwQQboOlhFn8CTQnvZ5D5W4eHrNvMNEQv2rJrS8Pr A==;
X-CSE-ConnectionGUID: mI5Cho5ORymms8Qh1nkF0A==
X-CSE-MsgGUID: bwFfpyyQRjyQezuhJBiyBw==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="82775559"
X-IronPort-AV: E=Sophos;i="6.24,221,1774335600"; d="scan'208";a="82775559"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 15:47:22 -0700
X-CSE-ConnectionGUID: nuqzXLhzQ7CDJszncZWEOw==
X-CSE-MsgGUID: yCNn0fg2RECRgEg0Frmyqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,221,1774335600"; d="scan'208";a="249497107"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa008.jf.intel.com with ESMTP; 23 Jun 2026 15:47:19 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 Luca Coelho <luciano.coelho@intel.com>,
 Nemesa Garg <nemesa.garg@intel.com>, Imre Deak <imre.deak@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v1 08/30] drm/i915/dp_link_training: Use helpers to get forced
 link params
Date: Wed, 24 Jun 2026 00:45:57 +0200
Message-ID: <20260623224619.1949975-9-michal.grzelak@intel.com>
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
X-Rspamd-Queue-Id: 646666BA7A8

From: Imre Deak <imre.deak@intel.com>

Use intel_dp_link_caps_get_forced_params() in the link training fallback
code instead of directly accessing the state. This allows the link caps
module to track changes to forced parameters internally.

Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c | 22 ++++++++++++++-----
 1 file changed, 16 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index cbef3d45baf9c..61ada34ab9c8e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1850,18 +1850,22 @@ static bool reduce_link_params_in_bw_order(struct intel_dp *intel_dp,
 					   const struct intel_crtc_state *crtc_state,
 					   int *new_link_rate, int *new_lane_count)
 {
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
+	struct intel_dp_link_config forced_params;
 	int link_rate;
 	int lane_count;
 	int i;
 
+	intel_dp_link_caps_get_forced_params(link_caps, &forced_params);
+
 	i = intel_dp_link_config_index(intel_dp, crtc_state->port_clock, crtc_state->lane_count);
 	for (i--; i >= 0; i--) {
 		intel_dp_link_config_get(intel_dp, i, &link_rate, &lane_count);
 
-		if ((intel_dp->link.force_rate &&
-		     intel_dp->link.force_rate != link_rate) ||
-		    (intel_dp->link.force_lane_count &&
-		     intel_dp->link.force_lane_count != lane_count))
+		if ((forced_params.rate &&
+		     forced_params.rate != link_rate) ||
+		    (forced_params.lane_count &&
+		     forced_params.lane_count != lane_count))
 			continue;
 
 		break;
@@ -1878,10 +1882,13 @@ static bool reduce_link_params_in_bw_order(struct intel_dp *intel_dp,
 
 static int reduce_link_rate(struct intel_dp *intel_dp, int current_rate)
 {
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
+	struct intel_dp_link_config forced_params;
 	int rate_index;
 	int new_rate;
 
-	if (intel_dp->link.force_rate)
+	intel_dp_link_caps_get_forced_params(link_caps, &forced_params);
+	if (forced_params.rate)
 		return -1;
 
 	rate_index = intel_dp_rate_index(intel_dp->common_rates,
@@ -1902,7 +1909,10 @@ static int reduce_link_rate(struct intel_dp *intel_dp, int current_rate)
 
 static int reduce_lane_count(struct intel_dp *intel_dp, int current_lane_count)
 {
-	if (intel_dp->link.force_lane_count)
+	struct intel_dp_link_config forced_params;
+
+	intel_dp_link_caps_get_forced_params(intel_dp->link.caps, &forced_params);
+	if (forced_params.lane_count)
 		return -1;
 
 	if (current_lane_count == 1)
-- 
2.45.2

