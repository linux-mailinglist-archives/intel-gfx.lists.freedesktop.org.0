Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id gdSIMB0NO2qZPQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 00:47:57 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57E0B6BA7F6
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 00:47:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=WRm3zrLR;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB32810ED41;
	Tue, 23 Jun 2026 22:47:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A42A210ED3B;
 Tue, 23 Jun 2026 22:47:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782254874; x=1813790874;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=o0Ewy4nh58TZ7Grq+QBAQvVBae7KlwASnMnvX+VErTY=;
 b=WRm3zrLRdQDZ5Qf99y096h1LHHC5MBfAOvfKTXweVw8F7WwOt6Hkt/Bs
 IMOTjZ+wZ00k185T4FXqAlJZiD9AptrFIZ+y7Y+jyyDqhJyacfT1NmhXb
 XPaRo5+uO4u3nwrPAeAflOy0mCIEZTWSGxw9A7o5OL5g+pvqTal1TDwDJ
 dbEu2ASt/7vPhaOrV+kpN227SB+Kf8wVInTih7yH5trhT0NBLzjfIlgiI
 OMjyqPAC2n29+mdcCGvkfqYGw8rPri/3UFRG2oxRFd6o7mkuLpjH+rPB/
 ezdMZFGJrD8L0t4bArSm6mJnNmTdfEPoF+g59q1YPQ0/I2T2EdnOosgE4 Q==;
X-CSE-ConnectionGUID: 2B8j7SLIQDSbIwld7osLJg==
X-CSE-MsgGUID: O3YjfoKbSYSwgKIqfJhfhQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="82775610"
X-IronPort-AV: E=Sophos;i="6.24,221,1774335600"; d="scan'208";a="82775610"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 15:47:54 -0700
X-CSE-ConnectionGUID: YgwLraVpRhSQQX0/sf0V1A==
X-CSE-MsgGUID: /9CCH6ByQ++BxSrYrHnluw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,221,1774335600"; d="scan'208";a="249497156"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa008.jf.intel.com with ESMTP; 23 Jun 2026 15:47:52 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 Luca Coelho <luciano.coelho@intel.com>,
 Nemesa Garg <nemesa.garg@intel.com>, Imre Deak <imre.deak@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v1 24/30] drm/i915/dp_link_caps: Add helper to reset link_caps
 state
Date: Wed, 24 Jun 2026 00:46:13 +0200
Message-ID: <20260623224619.1949975-25-michal.grzelak@intel.com>
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
X-Rspamd-Queue-Id: 57E0B6BA7F6

From: Imre Deak <imre.deak@intel.com>

Add a helper to reset the link_caps state, removing all restrictions
except user-forced parameters, re-allowing all supported
configurations. Currently this only resets the maximum link limits,
but follow-up changes will also re-enable configurations previously
disabled on a per-configuration basis by fallback or other logic.

Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c        |  3 +--
 .../gpu/drm/i915/display/intel_dp_link_caps.c  | 18 ++++++++++++++++++
 .../gpu/drm/i915/display/intel_dp_link_caps.h  |  1 +
 3 files changed, 20 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3b3c31122452d..b63c6f047f83a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3610,8 +3610,7 @@ void intel_dp_set_link_params(struct intel_dp *intel_dp,
 
 void intel_dp_reset_link_params(struct intel_dp *intel_dp)
 {
-	intel_dp->link.max_lane_count = intel_dp_link_caps_max_common_lane_count(intel_dp->link.caps);
-	intel_dp->link.max_rate = intel_dp_max_common_rate(intel_dp);
+	intel_dp_link_caps_reset(intel_dp->link.caps);
 	intel_dp->link.mst_probed_lane_count = 0;
 	intel_dp->link.mst_probed_rate = 0;
 	intel_dp_link_training_reset(intel_dp->link.training);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index ae10200bdd934..9b7da5a64ee25 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -351,6 +351,24 @@ int intel_dp_link_config_index(struct intel_dp *intel_dp, int link_rate, int lan
 	return -1;
 }
 
+/**
+ * intel_dp_link_caps_reset - reset link capability restrictions
+ * @link_caps: link capabilities state
+ *
+ * Reset all current restrictions except for the user requested forced
+ * parameters, thus updating the set of allowed configurations and the
+ * derived maximum link information accordingly.
+ *
+ * This function is regularly called after a sink is connected, either
+ * for the first time to the connector or after a previous sink was
+ * disconnected from it, and intel_dp_link_caps_update() was called.
+ */
+void intel_dp_link_caps_reset(struct intel_dp_link_caps *link_caps)
+{
+	/* TODO: Update the maximum link information. */
+	reset_max_link_limits_no_update(link_caps);
+}
+
 static int i915_dp_force_link_rate_show(struct seq_file *m, void *data)
 {
 	struct intel_connector *connector = to_intel_connector(m->private);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index 7baeb4359d2d4..fa45a46723059 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -35,6 +35,7 @@ void intel_dp_link_caps_reset_max_limits(struct intel_dp_link_caps *link_caps);
 
 bool intel_dp_link_caps_update(struct intel_dp *intel_dp,
 			       const int *rates, int num_rates, int max_lane_count);
+void intel_dp_link_caps_reset(struct intel_dp_link_caps *link_caps);
 
 void intel_dp_link_caps_debugfs_add(struct intel_connector *connector);
 
-- 
2.45.2

