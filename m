Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76B8BB1184F
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Jul 2025 08:16:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF80610E44A;
	Fri, 25 Jul 2025 06:15:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O0SRRNHZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2461E10E448;
 Fri, 25 Jul 2025 06:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753424158; x=1784960158;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iUM+WXdCTtWGVAy/DBC7Tx/SLPsZf6RfR4IT3daj63Y=;
 b=O0SRRNHZ5Neon/DXTn8MExAEXlDlsmYoBgGl+YE6VWRbhBAZPDwuYNb/
 549RfpXuyXQPSaFqtGc2mMnQ2vLZoYGx3gHRuTKz7oEogTcuZikzA9jXl
 J0rA4krhOmxB9xCUcTebUVXzgNZx2EpWaaJhJwizVJ2xH51VYN+h5m1jV
 RoTJBSMO9cBb4+bPz2+6OYKKbckvrqVRspZ/Zf+5wOpycPSW0ZQ2UAV9N
 XZz3iCt9WhaRv69rlm60m3Ob4Ob6z+RC+bZ1JUMdAtVRmqxNl+DTYsVGQ
 QdCaHZCc5L0AgXIloV2rHap0on1vu/gUl51T5yy4Iyu1iHvW1qKYZyy1r Q==;
X-CSE-ConnectionGUID: csjTWzVdSlOG6OeosjJdyg==
X-CSE-MsgGUID: 0zv3aC/aSI+v57aLYr+Cjw==
X-IronPort-AV: E=McAfee;i="6800,10657,11501"; a="55609361"
X-IronPort-AV: E=Sophos;i="6.16,338,1744095600"; d="scan'208";a="55609361"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2025 23:15:58 -0700
X-CSE-ConnectionGUID: KaQDSLXoQ+yztdycuA3S8g==
X-CSE-MsgGUID: h3mFhwgUQHy8NCk1wa6z5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,338,1744095600"; d="scan'208";a="164973831"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa005.fm.intel.com with ESMTP; 24 Jul 2025 23:15:56 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 3/3] drm/i915/edp: eDP Data Overrride
Date: Fri, 25 Jul 2025 11:45:48 +0530
Message-Id: <20250725061548.2704697-4-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250725061548.2704697-1-suraj.kandpal@intel.com>
References: <20250725061548.2704697-1-suraj.kandpal@intel.com>
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

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 54d88f24b689..040344949b8f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4277,6 +4277,23 @@ static void intel_edp_mso_init(struct intel_dp *intel_dp)
 	intel_dp->mso_pixel_overlap = mso ? info->mso_pixel_overlap : 0;
 }
 
+static void
+intel_edp_set_data_override_rates(struct intel_dp *intel_dp)
+{
+	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
+	int *sink_rates = intel_dp->sink_rates;
+	int i, j = 0;
+
+	for (i = 0; i < intel_dp->num_sink_rates; i++) {
+		if (intel_bios_need_edp_data_override(encoder->devdata,
+						      intel_dp->sink_rates[i]))
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
@@ -4327,6 +4344,8 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
 		intel_dp->use_rate_select = true;
 	else
 		intel_dp_set_sink_rates(intel_dp);
+
+	intel_edp_set_data_override_rates(intel_dp);
 }
 
 static bool
-- 
2.34.1

