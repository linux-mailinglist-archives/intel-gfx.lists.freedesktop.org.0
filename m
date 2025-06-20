Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89194AE1B45
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Jun 2025 14:55:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C14BB10EB56;
	Fri, 20 Jun 2025 12:55:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ipdlV3j5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5E4910EB56;
 Fri, 20 Jun 2025 12:55:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750424105; x=1781960105;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Fwo+EdXf2SH2l39lP0hx4Td5RvCJDah3eZkZhC6BpWM=;
 b=ipdlV3j5UPn4pLNIXhCQOTjdJT/2t9zxI8opbuyM+tIKiR7HM/D/3KxZ
 jH5jnl/Zk/PhdYmaQ8bfZxuXyj6Z37RXx/QykMC1/m7tpDdWvAH4WVyex
 jtQWPxmgKksKlxnDx5Fy8myVrzQZHPTiUR9HRPUgpkF4s9YL8TYMf920b
 ta2x/AFA5Y0o5RGm6Gmgol9Ma2UaWH3jJfh2//9gXoxuCmuAeksy0t4Cs
 VjeHsW4zcSOSRs8j/L9dQdAk9qR6tQ7v3/170gFDlACno2H5zNckBzlKH
 NLM+XJKBfNOOjw5eCEVqxGlWSJJ0l16kL9ICDx2fnnkzJiHDJOwvIPeo1 g==;
X-CSE-ConnectionGUID: 36JHNpDBSTaPH8ETl3T70w==
X-CSE-MsgGUID: olKRY682QkeDQfNpqv+qrw==
X-IronPort-AV: E=McAfee;i="6800,10657,11469"; a="63738794"
X-IronPort-AV: E=Sophos;i="6.16,251,1744095600"; d="scan'208";a="63738794"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2025 05:55:04 -0700
X-CSE-ConnectionGUID: OksLOttjSSaX2NzAfvvduw==
X-CSE-MsgGUID: qC89Smu5Rje5Ny2BXz0GLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,251,1744095600"; d="scan'208";a="151216197"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2025 05:55:03 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jani.nikula@linux.intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 2/2] drm/i915/dp: Add device specific quirk to limit eDP rate
 to HBR2
Date: Fri, 20 Jun 2025 18:14:17 +0530
Message-ID: <20250620124417.2041233-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250620124417.2041233-1-ankit.k.nautiyal@intel.com>
References: <20250620124417.2041233-1-ankit.k.nautiyal@intel.com>
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

Some ICL/TGL platforms with combo PHY ports can theoretically support HBR3,
but in practice, signal integrity issues may prevent stable operation.
While some systems include a Parade PS8461 mux chip to mitigate jitter and
enable HBR3, there is no reliable way to detect its presence.
Additionally, many systems have broken or missing VBT entries, making it
unsafe to rely on VBT for link rate limits.

To address this, introduce a device specific quirk to limit the eDP link
rate to be capped at HBR2 (540000 kHz), overriding any higher advertised
rates from the sink or DPCD.

Currently the quirk is added for Dell XPS 13 7390 2-in-1 which is
reported in gitlab issue#5969.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5969
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 42 +++++++++++++++++----
 drivers/gpu/drm/i915/display/intel_quirks.c |  9 +++++
 drivers/gpu/drm/i915/display/intel_quirks.h |  1 +
 3 files changed, 45 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 74f331ae97ff..4441fef4f853 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -173,10 +173,25 @@ int intel_dp_link_symbol_clock(int rate)
 
 static int max_dprx_rate(struct intel_dp *intel_dp)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
+	int max_rate;
+
 	if (intel_dp_tunnel_bw_alloc_is_enabled(intel_dp))
-		return drm_dp_tunnel_max_dprx_rate(intel_dp->tunnel);
+		max_rate = drm_dp_tunnel_max_dprx_rate(intel_dp->tunnel);
+	else
+		max_rate = drm_dp_bw_code_to_link_rate(intel_dp->dpcd[DP_MAX_LINK_RATE]);
+
+	/*
+	 * Some platforms with combo PHY ports may not reliably support HBR3
+	 * due to signal integrity limitations, despite advertising it.
+	 * Cap the link rate to HBR2 to avoid unstable configurations for the
+	 * known machines.
+	 */
+	if (max_rate >= 810000 &&
+	    intel_has_quirk(display, QUIRK_EDP_LIMIT_RATE_HBR2))
+		max_rate = 540000;
 
-	return drm_dp_bw_code_to_link_rate(intel_dp->dpcd[DP_MAX_LINK_RATE]);
+	return max_rate;
 }
 
 static int max_dprx_lane_count(struct intel_dp *intel_dp)
@@ -4252,6 +4267,8 @@ static void intel_edp_mso_init(struct intel_dp *intel_dp)
 static void
 intel_edp_set_sink_rates(struct intel_dp *intel_dp)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
+
 	intel_dp->num_sink_rates = 0;
 
 	if (intel_dp->edp_dpcd[0] >= DP_EDP_14) {
@@ -4262,10 +4279,7 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
 				 sink_rates, sizeof(sink_rates));
 
 		for (i = 0; i < ARRAY_SIZE(sink_rates); i++) {
-			int val = le16_to_cpu(sink_rates[i]);
-
-			if (val == 0)
-				break;
+			int rate;
 
 			/* Value read multiplied by 200kHz gives the per-lane
 			 * link rate in kHz. The source rates are, however,
@@ -4273,7 +4287,21 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
 			 * back to symbols is
 			 * (val * 200kHz)*(8/10 ch. encoding)*(1/8 bit to Byte)
 			 */
-			intel_dp->sink_rates[i] = (val * 200) / 10;
+			rate = le16_to_cpu(sink_rates[i]) * 200 / 10;
+
+			if (rate == 0)
+				break;
+
+			/*
+			 * Some platforms cannot reliably drive HBR3 rates due to PHY limitations,
+			 * even if the sink advertises support. Reject any sink rates above HBR2 on
+			 * the known machines for stable output.
+			 */
+			if (rate >= 810000 &&
+			    intel_has_quirk(display, QUIRK_EDP_LIMIT_RATE_HBR2))
+				break;
+
+			intel_dp->sink_rates[i] = rate;
 		}
 		intel_dp->num_sink_rates = i;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_quirks.c b/drivers/gpu/drm/i915/display/intel_quirks.c
index a32fae510ed2..d2e16b79d6be 100644
--- a/drivers/gpu/drm/i915/display/intel_quirks.c
+++ b/drivers/gpu/drm/i915/display/intel_quirks.c
@@ -80,6 +80,12 @@ static void quirk_fw_sync_len(struct intel_dp *intel_dp)
 	drm_info(display->drm, "Applying Fast Wake sync pulse count quirk\n");
 }
 
+static void quirk_edp_limit_rate_hbr2(struct intel_display *display)
+{
+	intel_set_quirk(display, QUIRK_EDP_LIMIT_RATE_HBR2);
+	drm_info(display->drm, "Applying eDP Limit rate to HBR2 quirk\n");
+}
+
 struct intel_quirk {
 	int device;
 	int subsystem_vendor;
@@ -231,6 +237,9 @@ static struct intel_quirk intel_quirks[] = {
 	{ 0x3184, 0x1019, 0xa94d, quirk_increase_ddi_disabled_time },
 	/* HP Notebook - 14-r206nv */
 	{ 0x0f31, 0x103c, 0x220f, quirk_invert_brightness },
+
+	/* Dell XPS 13 7390 2-in-1 */
+	{ 0x8a12, 0x1028, 0x08b0, quirk_edp_limit_rate_hbr2 },
 };
 
 static const struct intel_dpcd_quirk intel_dpcd_quirks[] = {
diff --git a/drivers/gpu/drm/i915/display/intel_quirks.h b/drivers/gpu/drm/i915/display/intel_quirks.h
index cafdebda7535..06da0e286c67 100644
--- a/drivers/gpu/drm/i915/display/intel_quirks.h
+++ b/drivers/gpu/drm/i915/display/intel_quirks.h
@@ -20,6 +20,7 @@ enum intel_quirk_id {
 	QUIRK_LVDS_SSC_DISABLE,
 	QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK,
 	QUIRK_FW_SYNC_LEN,
+	QUIRK_EDP_LIMIT_RATE_HBR2,
 };
 
 void intel_init_quirks(struct intel_display *display);
-- 
2.45.2

