Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FRZHCPYMO2p0PQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 00:47:18 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C082F6BA798
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 00:47:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="m6VHv1C/";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57B2910ED03;
	Tue, 23 Jun 2026 22:47:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B23010ED06;
 Tue, 23 Jun 2026 22:47:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782254836; x=1813790836;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NBF7so+wyvznmeAhZwiC9y3fyLb26XxyBANLwxB30vA=;
 b=m6VHv1C/ibDHNMw/aPKHpYqE1awFZCcACJO5YvT+ArbaRJ0mAdp0aSn5
 +/e3WeyudtwlJAD+xhfrs2ieR4wrRh1/sqEhZe9nfL7ScZzt7DUWJxulz
 TbGzI/x6C3rvj5ub0GCBoF1PFn6NFay8bbp5RFSmOesCUydS5ecPkspbL
 rIsd4Rw26bHxsCQolD4wqcsO5WDXzdcqY2GcTMyFoQ5c/ejltf69EjtIH
 TwvdREO48RaSgaNGAczUwSDOL4GvRpSKP3rE3FF8uwOgpvWfcLRcCdzid
 ADzeQwcfsgSipr2A5OcAs6UHK/vDhNwFejk6kG874qZUXn2pG7W2lquax g==;
X-CSE-ConnectionGUID: XAh60oz7SC2Lpc1xksPx9A==
X-CSE-MsgGUID: PY6EcN3+Q3uyh/G5oCUYrA==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="82775553"
X-IronPort-AV: E=Sophos;i="6.24,221,1774335600"; d="scan'208";a="82775553"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 15:47:16 -0700
X-CSE-ConnectionGUID: ETjnt8c6QVepbxywKs4/Dw==
X-CSE-MsgGUID: d2JGA2HZSLGcsyPdV9VsWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,221,1774335600"; d="scan'208";a="249497096"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa008.jf.intel.com with ESMTP; 23 Jun 2026 15:47:13 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 Luca Coelho <luciano.coelho@intel.com>,
 Nemesa Garg <nemesa.garg@intel.com>, Imre Deak <imre.deak@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v1 05/30] drm/i915/dp_link_caps: Move forced link param
 helpers to link caps
Date: Wed, 24 Jun 2026 00:45:54 +0200
Message-ID: <20260623224619.1949975-6-michal.grzelak@intel.com>
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
X-Rspamd-Queue-Id: C082F6BA798

From: Imre Deak <imre.deak@intel.com>

Move the helpers handling forced link parameters to intel_dp_link_caps.c.
Their functionality is part of the link capability logic and will be
updated to use the link capability state in follow-up changes.

Return the forced link rate and lane count through a
struct intel_dp_link_config, which is the canonical way the rest of the
link capability API will also accept and return link configurations.

Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c       | 39 ++++++++++---------
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 22 +++++++++++
 .../gpu/drm/i915/display/intel_dp_link_caps.h |  5 +++
 3 files changed, 47 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a34d3704a5667..7643fe079e15b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -364,17 +364,16 @@ int intel_dp_max_common_lane_count(struct intel_dp *intel_dp)
 	return intel_dp->max_common_lane_count;
 }
 
-static int forced_lane_count(struct intel_dp *intel_dp)
-{
-	return clamp(intel_dp->link.force_lane_count, 1, intel_dp_max_common_lane_count(intel_dp));
-}
-
 int intel_dp_max_lane_count(struct intel_dp *intel_dp)
 {
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
+	struct intel_dp_link_config forced_params;
 	int lane_count;
 
+	intel_dp_link_caps_get_forced_params(link_caps, &forced_params);
+
 	if (intel_dp->link.force_lane_count)
-		lane_count = forced_lane_count(intel_dp);
+		lane_count = forced_params.lane_count;
 	else
 		lane_count = intel_dp->link.max_lane_count;
 
@@ -391,8 +390,12 @@ int intel_dp_max_lane_count(struct intel_dp *intel_dp)
 
 static int intel_dp_min_lane_count(struct intel_dp *intel_dp)
 {
+	struct intel_dp_link_config forced_params;
+
+	intel_dp_link_caps_get_forced_params(intel_dp->link.caps, &forced_params);
+
 	if (intel_dp->link.force_lane_count)
-		return forced_lane_count(intel_dp);
+		return forced_params.lane_count;
 
 	return 1;
 }
@@ -1655,23 +1658,17 @@ static void intel_dp_print_rates(struct intel_dp *intel_dp)
 	drm_dbg_kms(display->drm, "common rates: %s\n", seq_buf_str(&s));
 }
 
-static int forced_link_rate(struct intel_dp *intel_dp)
-{
-	int len = intel_dp_common_len_rate_limit(intel_dp, intel_dp->link.force_rate);
-
-	if (len == 0)
-		return intel_dp_common_rate(intel_dp, 0);
-
-	return intel_dp_common_rate(intel_dp, len - 1);
-}
-
 int
 intel_dp_max_link_rate(struct intel_dp *intel_dp)
 {
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
+	struct intel_dp_link_config forced_params;
 	int len;
 
+	intel_dp_link_caps_get_forced_params(link_caps, &forced_params);
+
 	if (intel_dp->link.force_rate)
-		return forced_link_rate(intel_dp);
+		return forced_params.rate;
 
 	len = intel_dp_common_len_rate_limit(intel_dp, intel_dp->link.max_rate);
 
@@ -1681,8 +1678,12 @@ intel_dp_max_link_rate(struct intel_dp *intel_dp)
 static int
 intel_dp_min_link_rate(struct intel_dp *intel_dp)
 {
+	struct intel_dp_link_config forced_params;
+
+	intel_dp_link_caps_get_forced_params(intel_dp->link.caps, &forced_params);
+
 	if (intel_dp->link.force_rate)
-		return forced_link_rate(intel_dp);
+		return forced_params.rate;
 
 	return intel_dp_common_rate(intel_dp, 0);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 37ffd714c6a42..1d3a3ff007a03 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -41,6 +41,28 @@ int intel_dp_max_common_rate(struct intel_dp *intel_dp)
 	return intel_dp_common_rate(intel_dp, intel_dp->num_common_rates - 1);
 }
 
+static int forced_lane_count(struct intel_dp *intel_dp)
+{
+	return clamp(intel_dp->link.force_lane_count, 1, intel_dp_max_common_lane_count(intel_dp));
+}
+
+static int forced_link_rate(struct intel_dp *intel_dp)
+{
+	int len = intel_dp_common_len_rate_limit(intel_dp, intel_dp->link.force_rate);
+
+	if (len == 0)
+		return intel_dp_common_rate(intel_dp, 0);
+
+	return intel_dp_common_rate(intel_dp, len - 1);
+}
+
+void intel_dp_link_caps_get_forced_params(struct intel_dp_link_caps *link_caps,
+					  struct intel_dp_link_config *forced_params)
+{
+	forced_params->rate = forced_link_rate(link_caps->dp);
+	forced_params->lane_count = forced_lane_count(link_caps->dp);
+}
+
 struct intel_dp_link_caps *intel_dp_link_caps_init(struct intel_dp *intel_dp)
 {
 	struct intel_dp_link_caps *link_caps;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index 3248777d1287f..61dbce86ee3d0 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -5,12 +5,17 @@
 #define __INTEL_DP_LINK_CAPS_H__
 
 struct intel_dp;
+struct intel_dp_link_caps;
+struct intel_dp_link_config;
 
 int intel_dp_common_len_rate_limit(const struct intel_dp *intel_dp,
 				   int max_rate);
 int intel_dp_common_rate(struct intel_dp *intel_dp, int index);
 int intel_dp_max_common_rate(struct intel_dp *intel_dp);
 
+void intel_dp_link_caps_get_forced_params(struct intel_dp_link_caps *link_caps,
+					  struct intel_dp_link_config *forced_params);
+
 struct intel_dp_link_caps *intel_dp_link_caps_init(struct intel_dp *intel_dp);
 void intel_dp_link_caps_cleanup(struct intel_dp_link_caps *link_caps);
 
-- 
2.45.2

