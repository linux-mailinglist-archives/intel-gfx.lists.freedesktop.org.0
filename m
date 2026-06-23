Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id cKZuLPkMO2p4PQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 00:47:21 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2839E6BA79E
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 00:47:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=aXQXgI0U;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FCCE10ED0D;
	Tue, 23 Jun 2026 22:47:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4904610ED00;
 Tue, 23 Jun 2026 22:47:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782254838; x=1813790838;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=S2EpKZZT8t3e4nd7qeUAOmzcLw3YzGR57eS5lMyUpZs=;
 b=aXQXgI0UNslqe6KdPzIe76grXW/LfNfSsvdBkSnJ62n3Ybm6MVdUOh7G
 OOFmSTd1ODohMROjNZWT166rMVM766uIVg9x9CjbTr88K2tcKIf3L8Ele
 24xzGYrmtr3HmxXCmN2Koa7y+h8xT2Gd71T6VkqTsStd77bap2AFP4PIf
 V8NJ7PE9+CCMEpo8XAH+FwtU0R9BIygE5ri6E05inEcN5G6zF79B314w7
 1Aafb3GmvCzW85z8S3QtA+0T61lDB3JyswZmCMtSqIvFeJCAzyAg3jrYP
 nDimLhnfFRsGNTCs3eLaB6dDsz+aPdhCdXSoGEDYpktTiRaGR2g7UJ6O7 w==;
X-CSE-ConnectionGUID: opFUxlN9TWikE8klPbcRjQ==
X-CSE-MsgGUID: teu5N8EZT4WZ6f89u+dPjA==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="82775557"
X-IronPort-AV: E=Sophos;i="6.24,221,1774335600"; d="scan'208";a="82775557"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 15:47:18 -0700
X-CSE-ConnectionGUID: 128oTw9hTPiVRTq1lcNS6A==
X-CSE-MsgGUID: hOgUXxsQTemQ/9fY1hbkRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,221,1774335600"; d="scan'208";a="249497099"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa008.jf.intel.com with ESMTP; 23 Jun 2026 15:47:15 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 Luca Coelho <luciano.coelho@intel.com>,
 Nemesa Garg <nemesa.garg@intel.com>, Imre Deak <imre.deak@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v1 06/30] drm/i915/dp: Simplify querying of forced link
 parameters
Date: Wed, 24 Jun 2026 00:45:55 +0200
Message-ID: <20260623224619.1949975-7-michal.grzelak@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2839E6BA79E

From: Imre Deak <imre.deak@intel.com>

Simplify querying the forced link rate and lane count by
performing the zero checks inside the helpers, allowing callers
to use the returned values directly.

Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c           | 8 ++++----
 drivers/gpu/drm/i915/display/intel_dp_link_caps.c | 9 ++++++++-
 2 files changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7643fe079e15b..c4ad386acc6db 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -372,7 +372,7 @@ int intel_dp_max_lane_count(struct intel_dp *intel_dp)
 
 	intel_dp_link_caps_get_forced_params(link_caps, &forced_params);
 
-	if (intel_dp->link.force_lane_count)
+	if (forced_params.lane_count)
 		lane_count = forced_params.lane_count;
 	else
 		lane_count = intel_dp->link.max_lane_count;
@@ -394,7 +394,7 @@ static int intel_dp_min_lane_count(struct intel_dp *intel_dp)
 
 	intel_dp_link_caps_get_forced_params(intel_dp->link.caps, &forced_params);
 
-	if (intel_dp->link.force_lane_count)
+	if (forced_params.lane_count)
 		return forced_params.lane_count;
 
 	return 1;
@@ -1667,7 +1667,7 @@ intel_dp_max_link_rate(struct intel_dp *intel_dp)
 
 	intel_dp_link_caps_get_forced_params(link_caps, &forced_params);
 
-	if (intel_dp->link.force_rate)
+	if (forced_params.rate)
 		return forced_params.rate;
 
 	len = intel_dp_common_len_rate_limit(intel_dp, intel_dp->link.max_rate);
@@ -1682,7 +1682,7 @@ intel_dp_min_link_rate(struct intel_dp *intel_dp)
 
 	intel_dp_link_caps_get_forced_params(intel_dp->link.caps, &forced_params);
 
-	if (intel_dp->link.force_rate)
+	if (forced_params.rate)
 		return forced_params.rate;
 
 	return intel_dp_common_rate(intel_dp, 0);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 1d3a3ff007a03..e39e6c99ec25f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -43,13 +43,20 @@ int intel_dp_max_common_rate(struct intel_dp *intel_dp)
 
 static int forced_lane_count(struct intel_dp *intel_dp)
 {
+	if (!intel_dp->link.force_lane_count)
+		return 0;
+
 	return clamp(intel_dp->link.force_lane_count, 1, intel_dp_max_common_lane_count(intel_dp));
 }
 
 static int forced_link_rate(struct intel_dp *intel_dp)
 {
-	int len = intel_dp_common_len_rate_limit(intel_dp, intel_dp->link.force_rate);
+	int len;
+
+	if (!intel_dp->link.force_rate)
+		return 0;
 
+	len = intel_dp_common_len_rate_limit(intel_dp, intel_dp->link.force_rate);
 	if (len == 0)
 		return intel_dp_common_rate(intel_dp, 0);
 
-- 
2.45.2

