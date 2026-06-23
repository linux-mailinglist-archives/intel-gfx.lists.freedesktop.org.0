Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id AGztABkNO2qSPQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 00:47:53 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0EF36BA7E6
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 00:47:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=ZOCkCw8o;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C900210ED3A;
	Tue, 23 Jun 2026 22:47:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8E8410ED3A;
 Tue, 23 Jun 2026 22:47:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782254870; x=1813790870;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ss8Q9dL+saXhHoW9HAyqwq9DJnndouoGZQKdKNAf63w=;
 b=ZOCkCw8ogKoZDXzNLgUlHrZ6MQLHTBhWCD0sD+JEfQUvUSpa7VwcWLrU
 +IL7rB7fcIZv7nTDdKXblt+IrO9rtVLtWHDI1dKrgWsCjL1MXvEx+/gil
 +aIyiP+cBvoVaa8/0hKF5doWlAls6UZwgwkijySN+I7SFvgEkBqmbxISA
 JYWAaXN/RZmuZkXd9Q3k7115R9BAEXedCx1xj+m2zLJg1KtK+3My/gBeb
 4Ysn79WR7K+Pg5DTn8ZMApru/QfvQoYRTt+HLmimu/zROcnKv+rburvcU
 aAN4ISrZ1cZYzOxYqxHhdnjbt20Z29tezxljpDy6OaRtsr1zsR+jkA04e w==;
X-CSE-ConnectionGUID: O3VSCJwTQRavXuWRaAPy/g==
X-CSE-MsgGUID: IeMWOQFmRbugY+QST6nhdg==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="82775607"
X-IronPort-AV: E=Sophos;i="6.24,221,1774335600"; d="scan'208";a="82775607"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 15:47:50 -0700
X-CSE-ConnectionGUID: ss5c7Zb5S42Q9VYPlv6gMw==
X-CSE-MsgGUID: 1Rld167gSH6tpOkwSlxVcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,221,1774335600"; d="scan'208";a="249497150"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa008.jf.intel.com with ESMTP; 23 Jun 2026 15:47:48 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 Luca Coelho <luciano.coelho@intel.com>,
 Nemesa Garg <nemesa.garg@intel.com>, Imre Deak <imre.deak@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v1 22/30] drm/i915/dp_link_caps: Add helpers to set max link
 limits
Date: Wed, 24 Jun 2026 00:46:11 +0200
Message-ID: <20260623224619.1949975-23-michal.grzelak@intel.com>
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
X-Rspamd-Queue-Id: A0EF36BA7E6

From: Imre Deak <imre.deak@intel.com>

Add intel_dp_link_caps_set_max_limits() to set the current maximum link
limits (max bound over all allowed configurations) through the link caps
API instead of direct accesses.

This allows tracking the state internally within the link caps module.

Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 35 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_dp_link_caps.h |  2 ++
 .../drm/i915/display/intel_dp_link_training.c |  9 +++--
 3 files changed, 44 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index fa7dabc94ddf1..e568f00720d31 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -151,6 +151,15 @@ static int intel_dp_link_config_lane_count(const struct intel_dp_link_config_ent
 	return 1 << lc->lane_count_exp;
 }
 
+static void set_max_link_limits_no_update(struct intel_dp_link_caps *link_caps,
+					  const struct intel_dp_link_config *max_link_limits)
+{
+	struct intel_dp *intel_dp = link_caps->dp;
+
+	intel_dp->link.max_rate = max_link_limits->rate;
+	intel_dp->link.max_lane_count = max_link_limits->lane_count;
+}
+
 /**
  * intel_dp_link_caps_get_max_limits - get the current maximum link limits
  * @link_caps: link capabilities state
@@ -181,6 +190,32 @@ void intel_dp_link_caps_get_max_limits(struct intel_dp_link_caps *link_caps,
 	max_link_limits->lane_count = intel_dp->link.max_lane_count;
 }
 
+/**
+ * intel_dp_link_caps_set_max_limits - set the current maximum link limits
+ * @link_caps: link capabilities state
+ * @max_link_limits: new maximum link limits
+ *
+ * Set the current maximum rate and lane count limits to @max_link_limits,
+ * constraining the set of allowed configurations.
+ *
+ * Unlike intel_dp_link_caps_get_max_limits(), the caller must serialize
+ * this call against concurrent queries and updates to @link_caps, in line
+ * with the rest of the API.
+ *
+ * Return:
+ * - %true  if the @link_caps cached max limits value got updated with
+ *          @max_link_limits.
+ * - %false if @max_link_limits is invalid.
+ */
+bool intel_dp_link_caps_set_max_limits(struct intel_dp_link_caps *link_caps,
+				       const struct intel_dp_link_config *max_link_limits)
+{
+	set_max_link_limits_no_update(link_caps, max_link_limits);
+
+	/* TODO: validate max_link_limits */
+	return true;
+}
+
 static int intel_dp_link_config_bw(struct intel_dp *intel_dp,
 				   const struct intel_dp_link_config_entry *lc)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index 376dbd9bd5aba..c6c60b7888874 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -29,6 +29,8 @@ void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int *link_rate
 
 void intel_dp_link_caps_get_max_limits(struct intel_dp_link_caps *link_caps,
 				       struct intel_dp_link_config *max_link_limits);
+bool intel_dp_link_caps_set_max_limits(struct intel_dp_link_caps *link_caps,
+				       const struct intel_dp_link_config *max_link_limits);
 
 bool intel_dp_link_caps_update(struct intel_dp *intel_dp,
 			       const int *rates, int num_rates, int max_lane_count);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 7145f2d0ad6d3..9d9911ebad439 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1958,6 +1958,8 @@ static bool reduce_link_params(struct intel_dp *intel_dp, const struct intel_crt
 static int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
 						   const struct intel_crtc_state *crtc_state)
 {
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
+	struct intel_dp_link_config max_link_limits;
 	int new_link_rate;
 	int new_lane_count;
 
@@ -1983,8 +1985,11 @@ static int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
 	       crtc_state->lane_count, crtc_state->port_clock,
 	       new_lane_count, new_link_rate);
 
-	intel_dp->link.max_rate = new_link_rate;
-	intel_dp->link.max_lane_count = new_lane_count;
+	max_link_limits.rate = new_link_rate;
+	max_link_limits.lane_count = new_lane_count;
+
+	/* TODO: handle an update failure */
+	intel_dp_link_caps_set_max_limits(link_caps, &max_link_limits);
 
 	return 0;
 }
-- 
2.45.2

