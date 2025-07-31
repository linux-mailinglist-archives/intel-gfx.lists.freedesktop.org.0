Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D874B16B7C
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Jul 2025 07:17:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D038910E701;
	Thu, 31 Jul 2025 05:16:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Wi4BlJbf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB5A910E701;
 Thu, 31 Jul 2025 05:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753939019; x=1785475019;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aUHOifLrF4JpcqaT3tCdMFd82UZuGymxnXQOTLVkU4Y=;
 b=Wi4BlJbfvoeFGV9zZbnhNziimMaQ96jbLSmfOa9XHcW1N6qBzcbOVHGh
 XWwFw5fvbIXr9NR9mm4G2XGRbHhPQK8Ykzxhn+0DZDakjxZxfzEzoNpmU
 +NQySBYdCvqWEdTGs/bQIZcwdUdi85uYMrGOHJOarG3gdmiJ83CA/NaqJ
 3SBbJPdIH7cLQi2YpUtPLYtaZt6NSvzq6jzqc+DabqRcQFoejTLtv5Pc2
 nWc/Wi6Bh5lQm5ovl+ju1FHkfdQH4d3q9DERvWDhHe5n9wUAdW1gE4Cvk
 XgzAyZODuSjOcFucvXEr3wv7v0++ZZiIm+8Sp3zlmQJhVYWHecly0Ctl1 A==;
X-CSE-ConnectionGUID: Jixwwt1hQX69o+qEaejKVw==
X-CSE-MsgGUID: sEVcesN0SHqrQqWLqzr7cQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11507"; a="67332430"
X-IronPort-AV: E=Sophos;i="6.16,353,1744095600"; d="scan'208";a="67332430"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2025 22:16:59 -0700
X-CSE-ConnectionGUID: hcFFx7uhQZKJtEpyiMwbDw==
X-CSE-MsgGUID: rEabHWOARweKEmRDU03lWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,353,1744095600"; d="scan'208";a="194154200"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa002.jf.intel.com with ESMTP; 30 Jul 2025 22:16:58 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ankit.k.nautiyal@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v3 3/3] drm/i915/edp: eDP Data Overrride
Date: Thu, 31 Jul 2025 10:46:46 +0530
Message-Id: <20250731051646.3009255-4-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250731051646.3009255-1-suraj.kandpal@intel.com>
References: <20250731051646.3009255-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
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

We need override certain link rates in favour of the next available
higher link rate. The Link rates that need to be overridden are
indicated by a mask in VBT. To make sure these modes are skipped we
don't add them in them in the sink rates array.

--v2
-Update the link rates after we have a final set of link rates [Ankit]
-Break this patch up [Ankit]
-Optimize the assingment during loop [Ankit]

--v3
-Add protection against broken VBTs [Jani]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 29 +++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 54d88f24b689..ca5c49ff4b29 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4277,6 +4277,33 @@ static void intel_edp_mso_init(struct intel_dp *intel_dp)
 	intel_dp->mso_pixel_overlap = mso ? info->mso_pixel_overlap : 0;
 }
 
+static void
+intel_edp_set_data_override_rates(struct intel_dp *intel_dp)
+{
+	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
+	int *sink_rates = intel_dp->sink_rates;
+	int i, j = 0;
+
+	if (!encoder->devdata || encoder->devdata->display->vbt.version < 263)
+		return;
+
+	/*
+	 * This means the VBT ends up asking us to override every possible rate
+	 * indicating the VBT is broken so skip this
+	 */
+	if (hweight32(devdata->child.edp_data_rate_override) >= 11)
+		return;
+
+	for (i = 0; i < intel_dp->num_sink_rates; i++) {
+		if (intel_bios_encoder_supports_edp_rate(encoder->devdata,
+							 intel_dp->sink_rates[i]))
+			continue;
+
+		sink_rates[j++] = intel_dp->sink_rates[i];
+	}
+	intel_dp->num_sink_rates = j;
+}
+
 static void
 intel_edp_set_sink_rates(struct intel_dp *intel_dp)
 {
@@ -4327,6 +4354,8 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
 		intel_dp->use_rate_select = true;
 	else
 		intel_dp_set_sink_rates(intel_dp);
+
+	intel_edp_set_data_override_rates(intel_dp);
 }
 
 static bool
-- 
2.34.1

