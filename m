Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1583CB16F05
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Jul 2025 11:51:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A123910E75D;
	Thu, 31 Jul 2025 09:51:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GrgDVLw1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9707310E75B;
 Thu, 31 Jul 2025 09:51:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753955461; x=1785491461;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zJPp75bV75O4tju6LnXQ577UpLrgGtb5B4fS7R+SWLA=;
 b=GrgDVLw1BDAbV0c0Wtp6ZwCnemH8wpBE8dWSSoGBEPue87PeN4m28UFf
 HvEgDeHf8a/AQFlEHXUlx9xQiMLSZjg6J/53ndeYKgx1SgEwRIO+4rpUL
 os8LGSQvs4R22YXxn1thhWkocI/hBreLHSlC7NPsvCeNKr1b7tooABrJN
 tj5Qq88VHBYjdmtMgq847l3oMq0CKySmN4qd8VgFDGbHIQ9fidYzB4w3w
 FyaCXxI9328S1Vy1S20jHHLRRJ/PvVfAXmURIQ+IQn5sKD3eiIZb9fvGn
 QOKYzj1hXQHBgQTd8q14sKJay1FYWlin5k4JRYyXYDvajpkhw+LXXAKkQ g==;
X-CSE-ConnectionGUID: 9bBtBB8rSKGRli6YjSXQjA==
X-CSE-MsgGUID: AeseKklBSiGBZaLJ5fahAA==
X-IronPort-AV: E=McAfee;i="6800,10657,11507"; a="66840357"
X-IronPort-AV: E=Sophos;i="6.16,353,1744095600"; d="scan'208";a="66840357"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 02:51:00 -0700
X-CSE-ConnectionGUID: PaCdlGLrRGGEBYy819PsHg==
X-CSE-MsgGUID: WnWQUrOmTi2AoLX3Y9MZmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,353,1744095600"; d="scan'208";a="167708340"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa004.jf.intel.com with ESMTP; 31 Jul 2025 02:50:59 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ankit.k.nautiyal@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v4 3/3] drm/i915/edp: eDP Data Overrride
Date: Thu, 31 Jul 2025 15:20:50 +0530
Message-Id: <20250731095049.3026988-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250731051646.3009255-4-suraj.kandpal@intel.com>
References: <20250731051646.3009255-4-suraj.kandpal@intel.com>
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

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 17 +++++++++++++++--
 drivers/gpu/drm/i915/display/intel_bios.h |  2 ++
 drivers/gpu/drm/i915/display/intel_dp.c   | 22 ++++++++++++++++++++++
 3 files changed, 39 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 7adb7c4b0432..5d9126a0219e 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2519,12 +2519,25 @@ int intel_bios_dp_max_lane_count(const struct intel_bios_encoder_data *devdata)
 }
 
 bool
-intel_bios_encoder_supports_edp_rate(const struct intel_bios_encoder_data *devdata,
-				     int rate)
+intel_bios_vbt_supports_edp_data_override(const struct intel_bios_encoder_data *devdata)
 {
 	if (!devdata || devdata->display->vbt.version < 263)
 		return false;
 
+	/*
+	 * This means the VBT ends up asking us to override every possible rate
+	 * indicating the VBT is broken so skip this
+	 */
+	if (hweight32(devdata->child.edp_data_rate_override) >= 11)
+		return false;
+
+	return true;
+}
+
+bool
+intel_bios_encoder_supports_edp_rate(const struct intel_bios_encoder_data *devdata,
+				     int rate)
+{
 	return devdata->child.edp_data_rate_override & edp_rate_override_mask(rate);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
index a4abaa89a682..d244caef2275 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.h
+++ b/drivers/gpu/drm/i915/display/intel_bios.h
@@ -276,5 +276,7 @@ void intel_bios_for_each_encoder(struct intel_display *display,
 					      const struct intel_bios_encoder_data *devdata));
 
 void intel_bios_debugfs_register(struct intel_display *display);
+bool
+intel_bios_vbt_supports_edp_data_override(const struct intel_bios_encoder_data *devdata);
 
 #endif /* _INTEL_BIOS_H_ */
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 54d88f24b689..7e905e912aef 100644
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

