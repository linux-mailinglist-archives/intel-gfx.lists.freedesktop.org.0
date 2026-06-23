Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QBMFEfQMO2pzPQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 00:47:16 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3F616BA793
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 00:47:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=XUQlT8Qi;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B98610ECFE;
	Tue, 23 Jun 2026 22:47:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F3CF10ECFC;
 Tue, 23 Jun 2026 22:47:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782254834; x=1813790834;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lUsa8DGu8023ZZbOa95+EqkjIgpvZWGzLAmtPiYOpLQ=;
 b=XUQlT8QiwYV/BzcGK4LpNhOJq7OFtmYbNBIoY0+23XHC6DEh2Z05VS87
 T4mr3vRZH0Nk1GtutgyLANqA6F/xAgMhedaNyuuUG8vrcg4slYiV+5z1k
 TToGMOPHya056PYRl08zw65A6wLoKIIUF6V29GvMk74S6culSlKF13jlR
 QDizr1341eAhuFqFB3K7ehu6sLxKACepODJBt+H7l9A+5ATrjRgWiEV9y
 Hge24eimKy4vaUIrU6u66wvvsHCqLag+B8eGJepysIcdVkioc6kLdYX0p
 Epq/h0kXjhgb9R8Gz/v65sEcypb5CvR83wsWtf5LC/aCs//CFQvowbN8Y Q==;
X-CSE-ConnectionGUID: yUnszQUuTzKrKm9BjABx9g==
X-CSE-MsgGUID: ESH3cTtLT4Oss8ooEY61pQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="82775551"
X-IronPort-AV: E=Sophos;i="6.24,221,1774335600"; d="scan'208";a="82775551"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 15:47:14 -0700
X-CSE-ConnectionGUID: P0rXLhzvQBGP56bTKdFArQ==
X-CSE-MsgGUID: zgvzRHdyRSSEYe7T3XGg/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,221,1774335600"; d="scan'208";a="249497093"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa008.jf.intel.com with ESMTP; 23 Jun 2026 15:47:11 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 Luca Coelho <luciano.coelho@intel.com>,
 Nemesa Garg <nemesa.garg@intel.com>, Imre Deak <imre.deak@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v1 04/30] drm/i915/dp_link_caps: Move common rate helpers to
 link caps
Date: Wed, 24 Jun 2026 00:45:53 +0200
Message-ID: <20260623224619.1949975-5-michal.grzelak@intel.com>
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
X-Rspamd-Queue-Id: E3F616BA793

From: Imre Deak <imre.deak@intel.com>

Move the helpers handling common link rates to intel_dp_link_caps.c.
Their functionality is part of the link capability logic and will be
updated to use the link capability state in follow-up changes.

Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c       | 27 +----------------
 drivers/gpu/drm/i915/display/intel_dp.h       |  3 +-
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 30 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_dp_link_caps.h |  5 ++++
 .../drm/i915/display/intel_dp_link_training.c |  1 +
 .../gpu/drm/i915/display/intel_dp_tunnel.c    |  1 +
 6 files changed, 39 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index fa095c4db7fe6..a34d3704a5667 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -314,7 +314,7 @@ static void intel_dp_set_max_sink_lane_count(struct intel_dp *intel_dp)
 }
 
 /* Get length of rates array potentially limited by max_rate. */
-static int intel_dp_rate_limit_len(const int *rates, int len, int max_rate)
+int intel_dp_rate_limit_len(const int *rates, int len, int max_rate)
 {
 	int i;
 
@@ -327,31 +327,6 @@ static int intel_dp_rate_limit_len(const int *rates, int len, int max_rate)
 	return 0;
 }
 
-/* Get length of common rates array potentially limited by max_rate. */
-static int intel_dp_common_len_rate_limit(const struct intel_dp *intel_dp,
-					  int max_rate)
-{
-	return intel_dp_rate_limit_len(intel_dp->common_rates,
-				       intel_dp->num_common_rates, max_rate);
-}
-
-int intel_dp_common_rate(struct intel_dp *intel_dp, int index)
-{
-	struct intel_display *display = to_intel_display(intel_dp);
-
-	if (drm_WARN_ON(display->drm,
-			index < 0 || index >= intel_dp->num_common_rates))
-		return 162000;
-
-	return intel_dp->common_rates[index];
-}
-
-/* Theoretical max between source and sink */
-int intel_dp_max_common_rate(struct intel_dp *intel_dp)
-{
-	return intel_dp_common_rate(intel_dp, intel_dp->num_common_rates - 1);
-}
-
 int intel_dp_max_source_lane_count(struct intel_digital_port *dig_port)
 {
 	int vbt_max_lanes = intel_bios_dp_max_lane_count(dig_port->base.devdata);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 92ce048523267..8cc6ea04e000c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -100,14 +100,13 @@ void intel_edp_backlight_off(const struct drm_connector_state *conn_state);
 void intel_edp_fixup_vbt_bpp(struct intel_encoder *encoder, int pipe_bpp);
 void intel_dp_mst_suspend(struct intel_display *display);
 void intel_dp_mst_resume(struct intel_display *display);
+int intel_dp_rate_limit_len(const int *rates, int len, int max_rate);
 int intel_dp_max_source_lane_count(struct intel_digital_port *dig_port);
 int intel_dp_max_link_rate(struct intel_dp *intel_dp);
 int intel_dp_max_lane_count(struct intel_dp *intel_dp);
 int intel_dp_config_required_rate(const struct intel_crtc_state *crtc_state);
 int intel_dp_rate_select(struct intel_dp *intel_dp, int rate);
-int intel_dp_max_common_rate(struct intel_dp *intel_dp);
 int intel_dp_max_common_lane_count(struct intel_dp *intel_dp);
-int intel_dp_common_rate(struct intel_dp *intel_dp, int index);
 int intel_dp_rate_index(const int *rates, int len, int rate);
 int intel_dp_link_config_index(struct intel_dp *intel_dp, int link_rate, int lane_count);
 void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int *link_rate, int *lane_count);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 63989d97effd7..37ffd714c6a42 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -5,12 +5,42 @@
 
 #include <linux/slab.h>
 
+#include <drm/drm_print.h>
+
+#include "intel_display_core.h"
+#include "intel_display_types.h"
+#include "intel_dp.h"
 #include "intel_dp_link_caps.h"
 
 struct intel_dp_link_caps {
 	struct intel_dp *dp;
 };
 
+/* Get length of common rates array potentially limited by max_rate. */
+int intel_dp_common_len_rate_limit(const struct intel_dp *intel_dp,
+				   int max_rate)
+{
+	return intel_dp_rate_limit_len(intel_dp->common_rates,
+				       intel_dp->num_common_rates, max_rate);
+}
+
+int intel_dp_common_rate(struct intel_dp *intel_dp, int index)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+
+	if (drm_WARN_ON(display->drm,
+			index < 0 || index >= intel_dp->num_common_rates))
+		return 162000;
+
+	return intel_dp->common_rates[index];
+}
+
+/* Theoretical max between source and sink */
+int intel_dp_max_common_rate(struct intel_dp *intel_dp)
+{
+	return intel_dp_common_rate(intel_dp, intel_dp->num_common_rates - 1);
+}
+
 struct intel_dp_link_caps *intel_dp_link_caps_init(struct intel_dp *intel_dp)
 {
 	struct intel_dp_link_caps *link_caps;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index 050b279463d6e..3248777d1287f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -6,6 +6,11 @@
 
 struct intel_dp;
 
+int intel_dp_common_len_rate_limit(const struct intel_dp *intel_dp,
+				   int max_rate);
+int intel_dp_common_rate(struct intel_dp *intel_dp, int index);
+int intel_dp_max_common_rate(struct intel_dp *intel_dp);
+
 struct intel_dp_link_caps *intel_dp_link_caps_init(struct intel_dp *intel_dp);
 void intel_dp_link_caps_cleanup(struct intel_dp_link_caps *link_caps);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 97cb407d084cd..b915cfdeabd0e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -33,6 +33,7 @@
 #include "intel_display_types.h"
 #include "intel_display_utils.h"
 #include "intel_dp.h"
+#include "intel_dp_link_caps.h"
 #include "intel_dp_link_training.h"
 #include "intel_dp_mst.h"
 #include "intel_encoder.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
index d6bd1f7e01e18..c82adfcce01d0 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
@@ -11,6 +11,7 @@
 #include "intel_display_limits.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
+#include "intel_dp_link_caps.h"
 #include "intel_dp_link_training.h"
 #include "intel_dp_mst.h"
 #include "intel_dp_tunnel.h"
-- 
2.45.2

