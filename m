Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA1CB2BB61
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Aug 2025 10:06:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37F0A10E548;
	Tue, 19 Aug 2025 08:06:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Xac8cL/g";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3253410E54D;
 Tue, 19 Aug 2025 08:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755590782; x=1787126782;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LKSVc1nAtfr9yyrTdGKBFjxvjEB9ukHu4koi6h4jWmY=;
 b=Xac8cL/gLhekDFZd7g2uJzM2P1xRfDEIabdLn9E6l0iDOIsVbimfehXN
 mjtq+D8SdBzEQPshVyN23RqWNjfgvMXQqpzLHdD0Is//tOXEOVJOfhTnZ
 nLtykZIDbpg4JDUIX3VSZkJIsFWhiqERbVJV2a+GvbCakaIRFJxHxaWFj
 do9gUXgYcfscGKT0ajCaKpLCYR8UedvoQtCPStkmeik9oVTS6yQtynqUm
 Knr1qNtrJ/PXuSiWXrobzG51VYRErxO/sX3QAoO55VoUOZW6dWSlhJ9tC
 DOATYnH3ycQWJ25qTZgi49wyDtDHneoilGJMKePFFvJhFPO2OImfUA56m Q==;
X-CSE-ConnectionGUID: vW93rlckSuSWBK03hLurPQ==
X-CSE-MsgGUID: EYSMXsTuTiyP0ZtGT4vyNA==
X-IronPort-AV: E=McAfee;i="6800,10657,11526"; a="68923528"
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="68923528"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 01:06:22 -0700
X-CSE-ConnectionGUID: SC8JrVIMQyG3HJ4Pj+Oq5Q==
X-CSE-MsgGUID: TIpHZoY3QlOqXzOjIbdhzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="204932833"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa001.jf.intel.com with ESMTP; 19 Aug 2025 01:06:20 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ankit.k.nautiyal@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v5 3/3] drm/i915/edp: eDP Data Overrride
Date: Tue, 19 Aug 2025 13:36:02 +0530
Message-Id: <20250819080602.84826-4-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250819080602.84826-1-suraj.kandpal@intel.com>
References: <20250819080602.84826-1-suraj.kandpal@intel.com>
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

--v4
-Fix build errors
-Create a seprate function to check if edp data override is selected
and using the correct vbt

--v5
-Use correct number to check the num of edp rates [Ankit]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 15 ++++++++++++++-
 drivers/gpu/drm/i915/display/intel_bios.h |  2 ++
 drivers/gpu/drm/i915/display/intel_dp.c   | 22 ++++++++++++++++++++++
 3 files changed, 38 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 444ed54f7c35..05a74c3bc9af 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2521,11 +2521,24 @@ int intel_bios_dp_max_lane_count(const struct intel_bios_encoder_data *devdata)
 bool
 intel_bios_encoder_reject_edp_rate(const struct intel_bios_encoder_data *devdata,
 				   int rate)
+{
+	return devdata->child.edp_data_rate_override & edp_rate_override_mask(rate);
+}
+
+bool
+intel_bios_vbt_supports_edp_data_override(const struct intel_bios_encoder_data *devdata)
 {
 	if (!devdata || devdata->display->vbt.version < 263)
 		return false;
 
-	return devdata->child.edp_data_rate_override & edp_rate_override_mask(rate);
+	/*
+	 * This means the VBT ends up asking us to override every possible rate
+	 * indicating the VBT is broken so skip this
+	 */
+	if (hweight32(devdata->child.edp_data_rate_override) >= BDB_263_VBT_EDP_NUM_RATES)
+		return false;
+
+	return true;
 }
 
 static void sanitize_device_type(struct intel_bios_encoder_data *devdata,
diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
index 781e08f7eeb2..d24660bcc7f3 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.h
+++ b/drivers/gpu/drm/i915/display/intel_bios.h
@@ -276,5 +276,7 @@ void intel_bios_for_each_encoder(struct intel_display *display,
 					      const struct intel_bios_encoder_data *devdata));
 
 void intel_bios_debugfs_register(struct intel_display *display);
+bool
+intel_bios_vbt_supports_edp_data_override(const struct intel_bios_encoder_data *devdata);
 
 #endif /* _INTEL_BIOS_H_ */
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 54d88f24b689..f6fad42182ae 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4277,6 +4277,26 @@ static void intel_edp_mso_init(struct intel_dp *intel_dp)
 	intel_dp->mso_pixel_overlap = mso ? info->mso_pixel_overlap : 0;
 }
 
+static void
+intel_edp_set_data_override_rates(struct intel_dp *intel_dp)
+{
+	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
+	int *sink_rates = intel_dp->sink_rates;
+	int i, j = 0;
+
+	if (!intel_bios_vbt_supports_edp_data_override(encoder->devdata))
+		return;
+
+	for (i = 0; i < intel_dp->num_sink_rates; i++) {
+		if (intel_bios_encoder_reject_edp_rate(encoder->devdata,
+						       intel_dp->sink_rates[i]))
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
@@ -4327,6 +4347,8 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
 		intel_dp->use_rate_select = true;
 	else
 		intel_dp_set_sink_rates(intel_dp);
+
+	intel_edp_set_data_override_rates(intel_dp);
 }
 
 static bool
-- 
2.34.1

