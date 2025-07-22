Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5239DB0D187
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Jul 2025 07:56:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E24E810E2F4;
	Tue, 22 Jul 2025 05:56:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YlcAq8rx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7B7C10E5EE;
 Tue, 22 Jul 2025 05:56:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753163795; x=1784699795;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nqPvjJbB9j2/1Vq/6gGyNmHQNhxLemCUuyOT6HRxHp8=;
 b=YlcAq8rxTzF8Mv9MWkntpaRhFJnM1iXvwx45z93GmJvS29mIR6P/C6ld
 6lXU0WLsUufAQBYdco6xGsLkPTcpRwkG/iacSNvOAfDKKiBkr/cPCw4MP
 uKYia8LvyV3/3Ui2jBMscWzXcUvjAHO05OFhDQRF1HkIfno6uTexvXoch
 wMwHS/rGnlfxvQPXX3qolMZPd2+PCIPJMadF/Q3pFijfCUgbVDnfNbL+l
 ilTF1zVxUXqzY5wxmqBeeqRADA35czTMrxsRg9lEvMMufX5weDnFDdFUx
 nwQ/2Q+mHtW9AJMpfN4P61mY1i9ugY952ot3B3Tw75gC+PJVawzyCd6j9 w==;
X-CSE-ConnectionGUID: YndOLQB0TuePeam+pMrxcw==
X-CSE-MsgGUID: zHFkXnEOSTSah4h3PKs6zQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11499"; a="66468575"
X-IronPort-AV: E=Sophos;i="6.16,330,1744095600"; d="scan'208";a="66468575"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2025 22:56:34 -0700
X-CSE-ConnectionGUID: UBL7mQ1/TUqsptd17+eT/w==
X-CSE-MsgGUID: tcIWN9tJRhensFa2GtZv6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,330,1744095600"; d="scan'208";a="196116084"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa001.jf.intel.com with ESMTP; 21 Jul 2025 22:56:33 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 2/2] drm/i915/edp: eDP Data Overrride
Date: Tue, 22 Jul 2025 11:26:24 +0530
Message-Id: <20250722055624.2251656-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250722055624.2251656-1-suraj.kandpal@intel.com>
References: <20250722055624.2251656-1-suraj.kandpal@intel.com>
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

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 56 +++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_bios.h |  2 +
 drivers/gpu/drm/i915/display/intel_dp.c   | 11 +++--
 3 files changed, 66 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 8337ebe0f2c8..e68f71c0575a 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2480,6 +2480,53 @@ static int parse_bdb_216_dp_max_link_rate(const int vbt_max_link_rate)
 	}
 }
 
+static bool parse_bdb_263_edp_data_override(const u32 edp_data_override_mask, int rate)
+{
+	u32 val;
+
+	switch (rate) {
+	default:
+	case 2000000:
+		val = BDB_263_VBT_EDP_LINK_RATE_20;
+		break;
+	case 1350000:
+		val = BDB_263_VBT_EDP_LINK_RATE_13_5;
+		break;
+	case 1000000:
+		val = BDB_263_VBT_EDP_LINK_RATE_10;
+		break;
+	case 810000:
+		val = BDB_263_VBT_EDP_LINK_RATE_8_1;
+		break;
+	case 675000:
+		val = BDB_263_VBT_EDP_LINK_RATE_6_75;
+		break;
+	case 540000:
+		val = BDB_263_VBT_EDP_LINK_RATE_5_4;
+		break;
+	case 432000:
+		val = BDB_263_VBT_EDP_LINK_RATE_4_32;
+		break;
+	case 324000:
+		val = BDB_263_VBT_EDP_LINK_RATE_3_24;
+		break;
+	case 270000:
+		val = BDB_263_VBT_EDP_LINK_RATE_2_7;
+		break;
+	case 243000:
+		val = BDB_263_VBT_EDP_LINK_RATE_2_43;
+		break;
+	case 216000:
+		val = BDB_263_VBT_EDP_LINK_RATE_2_16;
+		break;
+	case 162000:
+		val = BDB_263_VBT_EDP_LINK_RATE_1_62;
+		break;
+	}
+
+	return edp_data_override_mask & val;
+}
+
 int intel_bios_dp_max_link_rate(const struct intel_bios_encoder_data *devdata)
 {
 	if (!devdata || devdata->display->vbt.version < 216)
@@ -2499,6 +2546,15 @@ int intel_bios_dp_max_lane_count(const struct intel_bios_encoder_data *devdata)
 	return devdata->child.dp_max_lane_count + 1;
 }
 
+bool
+intel_bios_edp_data_override(const struct intel_bios_encoder_data *devdata, int rate)
+{
+	if (!devdata || devdata->display->vbt.version < 263)
+		return false;
+
+	return parse_bdb_263_edp_data_override(devdata->child.edp_data_override, rate);
+}
+
 static void sanitize_device_type(struct intel_bios_encoder_data *devdata,
 				 enum port port)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
index 6cd7a011b8c4..b554fff96082 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.h
+++ b/drivers/gpu/drm/i915/display/intel_bios.h
@@ -274,5 +274,7 @@ void intel_bios_for_each_encoder(struct intel_display *display,
 					      const struct intel_bios_encoder_data *devdata));
 
 void intel_bios_debugfs_register(struct intel_display *display);
+bool
+intel_bios_edp_data_override(const struct intel_bios_encoder_data *devdata, int rate);
 
 #endif /* _INTEL_BIOS_H_ */
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 6d4e0fa0c054..0a227822b46a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4275,12 +4275,13 @@ static void
 intel_edp_set_sink_rates(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
+	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 
 	intel_dp->num_sink_rates = 0;
 
 	if (intel_dp->edp_dpcd[0] >= DP_EDP_14) {
 		__le16 sink_rates[DP_MAX_SUPPORTED_RATES];
-		int i;
+		int i, j = 0;
 
 		drm_dp_dpcd_read(&intel_dp->aux, DP_SUPPORTED_LINK_RATES,
 				 sink_rates, sizeof(sink_rates));
@@ -4308,9 +4309,13 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
 			    intel_has_quirk(display, QUIRK_EDP_LIMIT_RATE_HBR2))
 				break;
 
-			intel_dp->sink_rates[i] = rate;
+			if (intel_bios_edp_data_override(encoder->devdata, rate))
+				continue;
+
+			intel_dp->sink_rates[j] = rate;
+			j++;
 		}
-		intel_dp->num_sink_rates = i;
+		intel_dp->num_sink_rates = j;
 	}
 
 	/*
-- 
2.34.1

