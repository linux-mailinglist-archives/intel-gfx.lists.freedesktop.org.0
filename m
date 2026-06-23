Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /KRkKRgNO2qQPQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 00:47:52 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 538726BA7E5
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 00:47:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=AkMhRqKS;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C2B610ED37;
	Tue, 23 Jun 2026 22:47:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2A3210ED35;
 Tue, 23 Jun 2026 22:47:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782254868; x=1813790868;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3wXWskK+DM/2oN2TXoxB034Fc2N+rWeeN1coaFdoi2U=;
 b=AkMhRqKSWUR2XOk4i/DoMvdsxDlXnJ4EAGRBk94fKmuRbbQNgOz+vP9T
 MsflQLEYvBec0EWPlnIekakmBz1IB0R3ZmeNMQt4bevn8pa0hqxhEb7WN
 IzUOQcXNz4RVNXEUD7i8kbbxu0QAvqEvXgQB3LDTfI+EP4pqB5/vXdAO8
 BVO52OsrrAJSXxTYrDqdqurNIxTAfSDEtH91liEZ+YF+X+5P5kDvJWpRz
 YvWs5vbzT2l2XIGMK/qaqG6p4X7WP9hJV0U+WIGMeB/5Y9NsF/nGQln/a
 RRqjNbI8cTmFor2gQhhtZO5rifizZnCu8K4/wb1CUdl8Uz9FpGGcSGI0C g==;
X-CSE-ConnectionGUID: hGy+Ny4dTsCSiP83ka51Zw==
X-CSE-MsgGUID: zbU3/99ZRoG/0ef63Pc5yg==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="82775604"
X-IronPort-AV: E=Sophos;i="6.24,221,1774335600"; d="scan'208";a="82775604"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 15:47:48 -0700
X-CSE-ConnectionGUID: gxYFUsh9SNatWu5iSggUKw==
X-CSE-MsgGUID: fa3qI9/BQMiQnRCTLST9Tw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,221,1774335600"; d="scan'208";a="249497147"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa008.jf.intel.com with ESMTP; 23 Jun 2026 15:47:46 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 Luca Coelho <luciano.coelho@intel.com>,
 Nemesa Garg <nemesa.garg@intel.com>, Imre Deak <imre.deak@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v1 21/30] drm/i915/dp_link_caps: Add helpers to get max link
 limits
Date: Wed, 24 Jun 2026 00:46:10 +0200
Message-ID: <20260623224619.1949975-22-michal.grzelak@intel.com>
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
X-Rspamd-Queue-Id: 538726BA7E5

From: Imre Deak <imre.deak@intel.com>

Add intel_dp_link_caps_get_max_limits() to query the current maximum
link limits (max bound over all allowed configurations) through the
link caps API instead of direct accesses.

This allows tracking the state internally within the link caps module.

Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c       |  8 +++-
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 38 ++++++++++++++++++-
 .../gpu/drm/i915/display/intel_dp_link_caps.h |  3 ++
 .../drm/i915/display/intel_dp_link_training.c |  8 +++-
 4 files changed, 51 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0d7ec7a8898c9..3b3c31122452d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -357,15 +357,17 @@ static int intel_dp_get_max_common_lane_count(struct intel_dp *intel_dp)
 int intel_dp_max_lane_count(struct intel_dp *intel_dp)
 {
 	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
+	struct intel_dp_link_config max_link_limits;
 	struct intel_dp_link_config forced_params;
 	int lane_count;
 
+	intel_dp_link_caps_get_max_limits(link_caps, &max_link_limits);
 	intel_dp_link_caps_get_forced_params(link_caps, &forced_params);
 
 	if (forced_params.lane_count)
 		lane_count = forced_params.lane_count;
 	else
-		lane_count = intel_dp->link.max_lane_count;
+		lane_count = max_link_limits.lane_count;
 
 	switch (lane_count) {
 	case 1:
@@ -1539,6 +1541,7 @@ int
 intel_dp_max_link_rate(struct intel_dp *intel_dp)
 {
 	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
+	struct intel_dp_link_config max_link_limits;
 	struct intel_dp_link_config forced_params;
 	int len;
 
@@ -1547,7 +1550,8 @@ intel_dp_max_link_rate(struct intel_dp *intel_dp)
 	if (forced_params.rate)
 		return forced_params.rate;
 
-	len = intel_dp_common_len_rate_limit(intel_dp, intel_dp->link.max_rate);
+	intel_dp_link_caps_get_max_limits(link_caps, &max_link_limits);
+	len = intel_dp_common_len_rate_limit(intel_dp, max_link_limits.rate);
 
 	return intel_dp_common_rate(intel_dp, len - 1);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index b227c9a55f63b..fa7dabc94ddf1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -151,6 +151,36 @@ static int intel_dp_link_config_lane_count(const struct intel_dp_link_config_ent
 	return 1 << lc->lane_count_exp;
 }
 
+/**
+ * intel_dp_link_caps_get_max_limits - get the current maximum link limits
+ * @link_caps: link capabilities state
+ * @max_link_limits: returned maximum link limits
+ *
+ * Return the current maximum rate and lane count limits in
+ * @max_link_limits.
+ *
+ * These limits constrain the set of allowed configurations.
+ *
+ * The limits are set to the maximum common supported values after
+ * intel_dp_link_caps_reset() is called, and can later be modified by
+ * intel_dp_link_caps_set_max_limits(). The max rate and lane count
+ * parameters are independent limits, so the pair does not necessarily
+ * define a valid configuration.
+ *
+ * This function may be called without serializing against updates to
+ * @link_caps. However, without such serialization the returned value may be
+ * an out-of-sync (link rate, lane count) tuple, i.e. the parameters may
+ * belong to different update snapshots in time.
+ */
+void intel_dp_link_caps_get_max_limits(struct intel_dp_link_caps *link_caps,
+				       struct intel_dp_link_config *max_link_limits)
+{
+	struct intel_dp *intel_dp = link_caps->dp;
+
+	max_link_limits->rate = intel_dp->link.max_rate;
+	max_link_limits->lane_count = intel_dp->link.max_lane_count;
+}
+
 static int intel_dp_link_config_bw(struct intel_dp *intel_dp,
 				   const struct intel_dp_link_config_entry *lc)
 {
@@ -482,6 +512,7 @@ static int i915_dp_max_link_rate_show(void *data, u64 *val)
 	struct intel_connector *connector = to_intel_connector(data);
 	struct intel_display *display = to_intel_display(connector);
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	struct intel_dp_link_config max_link_limits;
 	int err;
 
 	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
@@ -490,7 +521,8 @@ static int i915_dp_max_link_rate_show(void *data, u64 *val)
 
 	intel_dp_flush_connector_commits(connector);
 
-	*val = intel_dp->link.max_rate;
+	intel_dp_link_caps_get_max_limits(intel_dp->link.caps, &max_link_limits);
+	*val = max_link_limits.rate;
 
 	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
 
@@ -503,6 +535,7 @@ static int i915_dp_max_lane_count_show(void *data, u64 *val)
 	struct intel_connector *connector = to_intel_connector(data);
 	struct intel_display *display = to_intel_display(connector);
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	struct intel_dp_link_config max_link_limits;
 	int err;
 
 	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
@@ -511,7 +544,8 @@ static int i915_dp_max_lane_count_show(void *data, u64 *val)
 
 	intel_dp_flush_connector_commits(connector);
 
-	*val = intel_dp->link.max_lane_count;
+	intel_dp_link_caps_get_max_limits(intel_dp->link.caps, &max_link_limits);
+	*val = max_link_limits.lane_count;
 
 	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index 9218cb5de2c71..376dbd9bd5aba 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -27,6 +27,9 @@ void intel_dp_link_caps_get_forced_params(struct intel_dp_link_caps *link_caps,
 int intel_dp_link_config_index(struct intel_dp *intel_dp, int link_rate, int lane_count);
 void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int *link_rate, int *lane_count);
 
+void intel_dp_link_caps_get_max_limits(struct intel_dp_link_caps *link_caps,
+				       struct intel_dp_link_config *max_link_limits);
+
 bool intel_dp_link_caps_update(struct intel_dp *intel_dp,
 			       const int *rates, int num_rates, int max_lane_count);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index ec9bd9b4c800b..7145f2d0ad6d3 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -2389,6 +2389,8 @@ void intel_dp_128b132b_sdp_crc16(struct intel_dp *intel_dp,
 bool intel_dp_link_params_valid(struct intel_dp *intel_dp, int link_rate,
 				u8 lane_count)
 {
+	struct intel_dp_link_config max_link_limits;
+
 	/*
 	 * FIXME: we need to synchronize the current link parameters with
 	 * hardware readout. Currently fast link training doesn't work on
@@ -2411,12 +2413,14 @@ bool intel_dp_link_params_valid(struct intel_dp *intel_dp, int link_rate,
 	 * configuration. Although that happens to be true for now, it will
 	 * stop being guaranteed once fallback depends only on disabled configs.
 	 */
+	intel_dp_link_caps_get_max_limits(intel_dp->link.caps, &max_link_limits);
+
 	if (link_rate == 0 ||
-	    link_rate > intel_dp->link.max_rate)
+	    link_rate > max_link_limits.rate)
 		return false;
 
 	if (lane_count == 0 ||
-	    lane_count > intel_dp_max_lane_count(intel_dp))
+	    lane_count > max_link_limits.lane_count)
 		return false;
 
 	return true;
-- 
2.45.2

