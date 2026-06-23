Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id lWfNG/8MO2p7PQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 00:47:27 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C0596BA7AD
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 00:47:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=GX0r9Bk5;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9694C10ED17;
	Tue, 23 Jun 2026 22:47:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8031710ED15;
 Tue, 23 Jun 2026 22:47:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782254844; x=1813790844;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0z0HaPB9Hs68KKIr6/LlZUs6W9qDMUe/ysfkkiHruyo=;
 b=GX0r9Bk5zlD2gbTB1cvYpR4c3wuqmwnoCP3wrNgqN6DXREVmPQMTRWwi
 gFUUS7edLAGjqYKCWSeY27J/Va6zcHJ6HOjSdR5+8zOMeA8pQsa0dp1sU
 X4qn3IK+raeJwda0CVm4lI3dD7skT79G+FGRVEp4MyWmGnWSFavedP/8n
 icIeRAsv0VhIdtcmfl/FHVeEIQ1cRyxTpap3LLJWSzwPVIZmzTPNhtHx/
 IB4/n+2fY5uufSMW9XAK/wUM9SdW++B1TggBGU0VDk6/lEnUQkLrOhWsk
 4BSnUG7XFY9TBCtcYhflxgMkeBHGZUzi8hCeaYf6KRB8tdJ12fbxlUR7/ w==;
X-CSE-ConnectionGUID: j+1Eno7gT2mHrCvi1LmvAA==
X-CSE-MsgGUID: V+w5pzhpTnyidk4Ljux/aQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="82775563"
X-IronPort-AV: E=Sophos;i="6.24,221,1774335600"; d="scan'208";a="82775563"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 15:47:24 -0700
X-CSE-ConnectionGUID: Hi41egqYTDOZFW6mCW1D4g==
X-CSE-MsgGUID: JE3ysWVdSLmd4HK0wP75ig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,221,1774335600"; d="scan'208";a="249497110"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa008.jf.intel.com with ESMTP; 23 Jun 2026 15:47:21 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 Luca Coelho <luciano.coelho@intel.com>,
 Nemesa Garg <nemesa.garg@intel.com>, Imre Deak <imre.deak@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v1 09/30] drm/i915/dp_link_caps: Move forced link params to
 link_caps
Date: Wed, 24 Jun 2026 00:45:58 +0200
Message-ID: <20260623224619.1949975-10-michal.grzelak@intel.com>
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
X-Rspamd-Queue-Id: 1C0596BA7AD

From: Imre Deak <imre.deak@intel.com>

Move tracking of the forced link parameters from struct intel_dp to
struct intel_dp_link_caps.

Previous changes made all users access these parameters through the link
caps helpers, so the state can now be kept internal to the link caps
module.

Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  2 --
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 30 ++++++++++++++-----
 2 files changed, 22 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 2b32e8467e62c..c76ae741e2620 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1865,8 +1865,6 @@ struct intel_dp {
 		 */
 		int mst_probed_lane_count;
 		int mst_probed_rate;
-		int force_lane_count;
-		int force_rate;
 		struct intel_dp_link_training *training;
 		struct intel_dp_link_caps *caps;
 	} link;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index ea90e84500a89..8ecdc01af70eb 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -15,6 +15,12 @@
 
 struct intel_dp_link_caps {
 	struct intel_dp *dp;
+
+	/*
+	 * Forced parameters requested via debugfs. Remains set across sink
+	 * disconnects.
+	 */
+	struct intel_dp_link_config forced_params;
 };
 
 /* Get length of common rates array potentially limited by max_rate. */
@@ -44,20 +50,24 @@ int intel_dp_max_common_rate(struct intel_dp *intel_dp)
 
 static int forced_lane_count(struct intel_dp *intel_dp)
 {
-	if (!intel_dp->link.force_lane_count)
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
+
+	if (!link_caps->forced_params.lane_count)
 		return 0;
 
-	return clamp(intel_dp->link.force_lane_count, 1, intel_dp_max_common_lane_count(intel_dp));
+	return clamp(link_caps->forced_params.lane_count,
+		     1, intel_dp_max_common_lane_count(intel_dp));
 }
 
 static int forced_link_rate(struct intel_dp *intel_dp)
 {
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	int len;
 
-	if (!intel_dp->link.force_rate)
+	if (!link_caps->forced_params.rate)
 		return 0;
 
-	len = intel_dp_common_len_rate_limit(intel_dp, intel_dp->link.force_rate);
+	len = intel_dp_common_len_rate_limit(intel_dp, link_caps->forced_params.rate);
 	if (len == 0)
 		return intel_dp_common_rate(intel_dp, 0);
 
@@ -76,6 +86,7 @@ static int i915_dp_force_link_rate_show(struct seq_file *m, void *data)
 	struct intel_connector *connector = to_intel_connector(m->private);
 	struct intel_display *display = to_intel_display(connector);
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	int current_rate = -1;
 	int force_rate;
 	int err;
@@ -90,7 +101,7 @@ static int i915_dp_force_link_rate_show(struct seq_file *m, void *data)
 	if (intel_dp->link.active)
 		current_rate = intel_dp->link_rate;
 
-	force_rate = intel_dp->link.force_rate;
+	force_rate = link_caps->forced_params.rate;
 
 	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
 
@@ -150,6 +161,7 @@ static ssize_t i915_dp_force_link_rate_write(struct file *file,
 	struct intel_connector *connector = to_intel_connector(m->private);
 	struct intel_display *display = to_intel_display(connector);
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	int rate;
 	int err;
 
@@ -164,7 +176,7 @@ static ssize_t i915_dp_force_link_rate_write(struct file *file,
 	intel_dp_flush_connector_commits(connector);
 
 	intel_dp_reset_link_params(intel_dp);
-	intel_dp->link.force_rate = rate;
+	link_caps->forced_params.rate = rate;
 
 	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
 
@@ -179,6 +191,7 @@ static int i915_dp_force_lane_count_show(struct seq_file *m, void *data)
 	struct intel_connector *connector = to_intel_connector(m->private);
 	struct intel_display *display = to_intel_display(connector);
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	int current_lane_count = -1;
 	int force_lane_count;
 	int err;
@@ -192,7 +205,7 @@ static int i915_dp_force_lane_count_show(struct seq_file *m, void *data)
 
 	if (intel_dp->link.active)
 		current_lane_count = intel_dp->lane_count;
-	force_lane_count = intel_dp->link.force_lane_count;
+	force_lane_count = link_caps->forced_params.lane_count;
 
 	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
 
@@ -256,6 +269,7 @@ static ssize_t i915_dp_force_lane_count_write(struct file *file,
 	struct intel_connector *connector = to_intel_connector(m->private);
 	struct intel_display *display = to_intel_display(connector);
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	int lane_count;
 	int err;
 
@@ -270,7 +284,7 @@ static ssize_t i915_dp_force_lane_count_write(struct file *file,
 	intel_dp_flush_connector_commits(connector);
 
 	intel_dp_reset_link_params(intel_dp);
-	intel_dp->link.force_lane_count = lane_count;
+	link_caps->forced_params.lane_count = lane_count;
 
 	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
 
-- 
2.45.2

