Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id roCyEhgNO2qPPQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 00:47:52 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBC116BA7E0
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 00:47:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Q8vaUMym;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBFF310ED3C;
	Tue, 23 Jun 2026 22:47:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A612E10ED2A;
 Tue, 23 Jun 2026 22:47:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782254860; x=1813790860;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/XfMo8sTOFmeaSgpoZ5CMU/Nb1r2F9Hx2dCZAkVfI0M=;
 b=Q8vaUMyml/gt26yN459DenBkZOXxq8iFE+T3UupOTHU9kV4+CyGrxJ6E
 8cfGUQjJTp0OdvbjEg6X0i7hy391yjG2H0sfuuEHaFswS42L4TTXwasN/
 RY775bp/ac0XR6kkZ/q+DWwX7TTnNHd+RkN+ha8VH/ek2Kwy/nrvyx1hI
 TqD7aLF7xAm13psBZX5vJC5ScfUEWIZdVO9JRbLj9QlsO6GbGgmOPTkbi
 tyw/fYAXGSqTXrOzeW3BGcWl8DR7qLAXRxv8WN9q6wCxYYLsJv8czxE2y
 7TpkrbfaxibAF9Uqzk+gG/IQzqT/NWVFI8v6SQB/NU2ufgcI4Nnd5R1mE Q==;
X-CSE-ConnectionGUID: s531LSyETyyBT4jlgEvM1Q==
X-CSE-MsgGUID: /yxQr/kXRKOw6ga5BSkkcQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="82775597"
X-IronPort-AV: E=Sophos;i="6.24,221,1774335600"; d="scan'208";a="82775597"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 15:47:40 -0700
X-CSE-ConnectionGUID: OAmp1ieYQYiLpjFNoct9Bg==
X-CSE-MsgGUID: WdMsDtiVSv+QEj2REf63NA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,221,1774335600"; d="scan'208";a="249497134"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa008.jf.intel.com with ESMTP; 23 Jun 2026 15:47:38 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 Luca Coelho <luciano.coelho@intel.com>,
 Nemesa Garg <nemesa.garg@intel.com>, Imre Deak <imre.deak@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v1 17/30] drm/i915/dp_link_caps: Add helper to get common rate
 index
Date: Wed, 24 Jun 2026 00:46:06 +0200
Message-ID: <20260623224619.1949975-18-michal.grzelak@intel.com>
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
X-Rspamd-Queue-Id: EBC116BA7E0

From: Imre Deak <imre.deak@intel.com>

Add intel_dp_link_caps_common_rate_idx() to look up supported link rates
tracked by the link_caps module by rate. This prepares for tracking these
capabilities internally within the link caps module.

Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_link_caps.c     | 9 +++++++++
 drivers/gpu/drm/i915/display/intel_dp_link_caps.h     | 1 +
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 5 ++---
 drivers/gpu/drm/i915/display/intel_dp_test.c          | 7 ++++---
 4 files changed, 16 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 09b60a0cd6fbb..84d9636f4adb4 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -61,6 +61,15 @@ int intel_dp_common_rate(struct intel_dp *intel_dp, int index)
 	return intel_dp->common_rates[index];
 }
 
+int intel_dp_link_caps_common_rate_idx(struct intel_dp_link_caps *link_caps, int rate)
+{
+	struct intel_dp *intel_dp = link_caps->dp;
+
+	return intel_dp_rate_index(intel_dp->common_rates,
+				   intel_dp->num_common_rates,
+				   rate);
+}
+
 /* Theoretical max between source and sink */
 int intel_dp_max_common_rate(struct intel_dp *intel_dp)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index 3413f6f760453..7d7d3d11ba3fe 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -14,6 +14,7 @@ struct intel_dp_link_config;
 int intel_dp_common_len_rate_limit(const struct intel_dp *intel_dp,
 				   int max_rate);
 int intel_dp_common_rate(struct intel_dp *intel_dp, int index);
+int intel_dp_link_caps_common_rate_idx(struct intel_dp_link_caps *link_caps, int rate);
 int intel_dp_max_common_rate(struct intel_dp *intel_dp);
 int intel_dp_link_caps_num_common_rates(struct intel_dp_link_caps *link_caps);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 61ada34ab9c8e..ec9bd9b4c800b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1891,9 +1891,8 @@ static int reduce_link_rate(struct intel_dp *intel_dp, int current_rate)
 	if (forced_params.rate)
 		return -1;
 
-	rate_index = intel_dp_rate_index(intel_dp->common_rates,
-					 intel_dp->num_common_rates,
-					 current_rate);
+	rate_index = intel_dp_link_caps_common_rate_idx(link_caps,
+							current_rate);
 
 	if (rate_index <= 0)
 		return -1;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_test.c b/drivers/gpu/drm/i915/display/intel_dp_test.c
index ba44769c9cfbe..da7632536dace 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_test.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_test.c
@@ -14,6 +14,7 @@
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
+#include "intel_dp_link_caps.h"
 #include "intel_dp_link_training.h"
 #include "intel_dp_mst.h"
 #include "intel_dp_test.h"
@@ -32,6 +33,7 @@ void intel_dp_test_compute_config(struct intel_dp *intel_dp,
 				  struct intel_crtc_state *pipe_config,
 				  struct link_config_limits *limits)
 {
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	struct intel_display *display = to_intel_display(intel_dp);
 
 	/* For DP Compliance we override the computed bpp for the pipe */
@@ -54,9 +56,8 @@ void intel_dp_test_compute_config(struct intel_dp *intel_dp,
 		 */
 		if (intel_dp_link_params_valid(intel_dp, intel_dp->compliance.test_link_rate,
 					       intel_dp->compliance.test_lane_count)) {
-			index = intel_dp_rate_index(intel_dp->common_rates,
-						    intel_dp->num_common_rates,
-						    intel_dp->compliance.test_link_rate);
+			index = intel_dp_link_caps_common_rate_idx(link_caps,
+								   intel_dp->compliance.test_link_rate);
 			if (index >= 0) {
 				limits->min_rate = intel_dp->compliance.test_link_rate;
 				limits->max_rate = intel_dp->compliance.test_link_rate;
-- 
2.45.2

