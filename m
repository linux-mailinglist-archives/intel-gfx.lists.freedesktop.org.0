Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id j2pcLyANO2qfPQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 00:48:00 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D8656BA804
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 00:48:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=eZo3zZrg;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EED1210ED47;
	Tue, 23 Jun 2026 22:47:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA85110ED46;
 Tue, 23 Jun 2026 22:47:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782254878; x=1813790878;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fxL5K59sFnsZ5+7c0Tky7x5pQoRWPNNGKZcG0xQG0SQ=;
 b=eZo3zZrg2yj+SlfOh0Q+rxk3ZCgvP4TS2dlHA92VUYGsUuvYT0UyOtbd
 xT5nsQbzX6yuEkYJFtSp2uHmiBOKNOvQxTHkLFjDT4OZganlcpvdyDDht
 EehPohAiEoZY8w8WoWOhwDCo37f1XgKf9IDekvF9ywJz+EsUk8xv4S0IE
 tPrMPfKGb143WMBoQ3X+dckzErmUdFVTBU6NlVc0HBur75PkOt28hdHfC
 Ceu0QAI5/3t9yjGFoYWmgip7rDnpiIaMxat53MAQORT0k5lMWO/HNyPm6
 CWbfplUf+oCIIJX3aKOkzcYTalZTw7NwMeZHZp1iqlqMTQDPoXs/XTb9J A==;
X-CSE-ConnectionGUID: j1NWxLGLQgG3krqOZIo9wQ==
X-CSE-MsgGUID: KlqnYHTATISVf8ZnnO9Lyw==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="82775612"
X-IronPort-AV: E=Sophos;i="6.24,221,1774335600"; d="scan'208";a="82775612"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 15:47:58 -0700
X-CSE-ConnectionGUID: h2+9aEDSTI+SVAQ4ZRn/ag==
X-CSE-MsgGUID: J6soQy1zRf+opQafnVsNww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,221,1774335600"; d="scan'208";a="249497166"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa008.jf.intel.com with ESMTP; 23 Jun 2026 15:47:56 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 Luca Coelho <luciano.coelho@intel.com>,
 Nemesa Garg <nemesa.garg@intel.com>, Imre Deak <imre.deak@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v1 26/30] drm/i915/dp_link_caps: Pass link_caps to static
 functions
Date: Wed, 24 Jun 2026 00:46:15 +0200
Message-ID: <20260623224619.1949975-27-michal.grzelak@intel.com>
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
X-Rspamd-Queue-Id: 6D8656BA804

From: Imre Deak <imre.deak@intel.com>

Pass the link_caps pointer to static functions in intel_dp_link_caps.c,
as it holds the state with the relevant information.

Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 37 ++++++++++---------
 1 file changed, 19 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 43427e7cf422a..fc1061149ef2e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -118,10 +118,8 @@ int intel_dp_link_caps_max_common_lane_count(struct intel_dp_link_caps *link_cap
 	return link_caps->max_lane_count;
 }
 
-static int forced_lane_count(struct intel_dp *intel_dp)
+static int forced_lane_count(struct intel_dp_link_caps *link_caps)
 {
-	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
-
 	if (!link_caps->forced_params.lane_count)
 		return 0;
 
@@ -129,9 +127,9 @@ static int forced_lane_count(struct intel_dp *intel_dp)
 		     1, intel_dp_link_caps_max_common_lane_count(link_caps));
 }
 
-static int forced_link_rate(struct intel_dp *intel_dp)
+static int forced_link_rate(struct intel_dp_link_caps *link_caps)
 {
-	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
+	struct intel_dp *intel_dp = link_caps->dp;
 	int len;
 
 	if (!link_caps->forced_params.rate)
@@ -147,14 +145,14 @@ static int forced_link_rate(struct intel_dp *intel_dp)
 void intel_dp_link_caps_get_forced_params(struct intel_dp_link_caps *link_caps,
 					  struct intel_dp_link_config *forced_params)
 {
-	forced_params->rate = forced_link_rate(link_caps->dp);
-	forced_params->lane_count = forced_lane_count(link_caps->dp);
+	forced_params->rate = forced_link_rate(link_caps);
+	forced_params->lane_count = forced_lane_count(link_caps);
 }
 
-static int intel_dp_link_config_rate(struct intel_dp *intel_dp,
+static int intel_dp_link_config_rate(struct intel_dp_link_caps *link_caps,
 				     const struct intel_dp_link_config_entry *lc)
 {
-	return intel_dp_common_rate(intel_dp, lc->link_rate_idx);
+	return intel_dp_common_rate(link_caps->dp, lc->link_rate_idx);
 }
 
 static int intel_dp_link_config_lane_count(const struct intel_dp_link_config_entry *lc)
@@ -243,26 +241,28 @@ void intel_dp_link_caps_reset_max_limits(struct intel_dp_link_caps *link_caps)
 	reset_max_link_limits_no_update(link_caps);
 }
 
-static int intel_dp_link_config_bw(struct intel_dp *intel_dp,
+static int intel_dp_link_config_bw(struct intel_dp_link_caps *link_caps,
 				   const struct intel_dp_link_config_entry *lc)
 {
-	return drm_dp_max_dprx_data_rate(intel_dp_link_config_rate(intel_dp, lc),
+	return drm_dp_max_dprx_data_rate(intel_dp_link_config_rate(link_caps, lc),
 					 intel_dp_link_config_lane_count(lc));
 }
 
 static int link_config_cmp_by_bw(const void *a, const void *b, const void *p)
 {
 	struct intel_dp *intel_dp = (struct intel_dp *)p;	/* remove const */
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
+
 	const struct intel_dp_link_config_entry *lc_a = a;
 	const struct intel_dp_link_config_entry *lc_b = b;
-	int bw_a = intel_dp_link_config_bw(intel_dp, lc_a);
-	int bw_b = intel_dp_link_config_bw(intel_dp, lc_b);
+	int bw_a = intel_dp_link_config_bw(link_caps, lc_a);
+	int bw_b = intel_dp_link_config_bw(link_caps, lc_b);
 
 	if (bw_a != bw_b)
 		return bw_a - bw_b;
 
-	return intel_dp_link_config_rate(intel_dp, lc_a) -
-	       intel_dp_link_config_rate(intel_dp, lc_b);
+	return intel_dp_link_config_rate(link_caps, lc_a) -
+	       intel_dp_link_config_rate(link_caps, lc_b);
 }
 
 /* Return %true if the supported link parameters have changed. */
@@ -333,7 +333,7 @@ void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int *link_rate
 
 	lc = &link_caps->configs[idx];
 
-	*link_rate = intel_dp_link_config_rate(intel_dp, lc);
+	*link_rate = intel_dp_link_config_rate(link_caps, lc);
 	*lane_count = intel_dp_link_config_lane_count(lc);
 }
 
@@ -414,8 +414,9 @@ static int i915_dp_force_link_rate_show(struct seq_file *m, void *data)
 	return 0;
 }
 
-static int parse_link_rate(struct intel_dp *intel_dp, const char __user *ubuf, size_t len)
+static int parse_link_rate(struct intel_dp_link_caps *link_caps, const char __user *ubuf, size_t len)
 {
+	struct intel_dp *intel_dp = link_caps->dp;
 	char *kbuf;
 	const char *p;
 	int rate;
@@ -458,7 +459,7 @@ static ssize_t i915_dp_force_link_rate_write(struct file *file,
 	int rate;
 	int err;
 
-	rate = parse_link_rate(intel_dp, ubuf, len);
+	rate = parse_link_rate(link_caps, ubuf, len);
 	if (rate < 0)
 		return rate;
 
-- 
2.45.2

