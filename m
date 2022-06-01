Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BEF3453A9DA
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jun 2022 17:19:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0742510E279;
	Wed,  1 Jun 2022 15:19:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CB7910E279
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jun 2022 15:19:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654096761; x=1685632761;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=zZThWgFmvvRZ19PyHuHBHgK1IReKATwsbi4+AyBHjyw=;
 b=UL0qbpfKfiJmAKOL3p9h0lUVpF8P8DIw+xFHxoPvFsSoO50+5Ra0sIFX
 5kpO2ZQLRw5sa4BbvwrW1biiLBG6AV+MCc11Y469J+TOmdjRVvrNmIt7d
 YTDWeXDzyJiqseJM1HlucIGJiJemMLfM2ajMlOx/OgOYy90k9owtkfFuv
 EenLjl8EozqJL0MDFu3WsdFckX5dNRmCIGWV+fwYJfGIeouFzlPGwl+oJ
 X64dPLnVVON368tActfX/kInMcF3jJOadFvg66jIxx6bCOx4E9HGoFiVU
 T82yHry8XFY6CIWhnEkhOzsPNA+lVkUYs7L01u70UXFZE4fRw48ydXo3+ g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10365"; a="256102390"
X-IronPort-AV: E=Sophos;i="5.91,268,1647327600"; d="scan'208";a="256102390"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2022 08:19:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,268,1647327600"; d="scan'208";a="612365611"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by orsmga001.jf.intel.com with SMTP; 01 Jun 2022 08:19:18 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 01 Jun 2022 18:19:17 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Jun 2022 18:19:07 +0300
Message-Id: <20220601151907.18725-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220601151907.18725-1-ville.syrjala@linux.intel.com>
References: <20220601151907.18725-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: Parse max link rate from the eDP
 BDB block
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The eDP BDB block has gained yet another max link rate field.
Let's parse it and consult it during the source rate filtering.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     |  4 ++++
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 23 +++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_vbt_defs.h |  1 +
 4 files changed, 27 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index d701854dc429..b35afd39413d 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -1461,6 +1461,10 @@ parse_edp(struct drm_i915_private *i915,
 
 	panel->vbt.edp.drrs_msa_timing_delay =
 		(edp->sdrrs_msa_timing_delay >> (panel_type * 2)) & 3;
+
+	if (i915->vbt.version >= 244)
+		panel->vbt.edp.max_link_rate =
+			edp->edp_max_port_link_rate[panel_type] * 2;
 }
 
 static void
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 9b44358e8d9e..8b0949b6dc75 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -300,6 +300,7 @@ struct intel_vbt_panel_data {
 	enum drrs_type drrs_type;
 
 	struct {
+		int max_link_rate;
 		int rate;
 		int lanes;
 		int preemphasis;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 03af93ef9e93..2b84d6fcba4a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -408,6 +408,26 @@ static int ehl_max_source_rate(struct intel_dp *intel_dp)
 	return 810000;
 }
 
+static int vbt_max_link_rate(struct intel_dp *intel_dp)
+{
+	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
+	struct intel_connector *connector = intel_dp->attached_connector;
+	int max_rate;
+
+	max_rate = intel_bios_dp_max_link_rate(encoder);
+
+	if (intel_dp_is_edp(intel_dp)) {
+		int edp_max_rate = connector->panel.vbt.edp.max_link_rate;
+
+		if (max_rate && edp_max_rate)
+			max_rate = min(max_rate, edp_max_rate);
+		else if (edp_max_rate)
+			max_rate = edp_max_rate;
+	}
+
+	return max_rate;
+}
+
 static void
 intel_dp_set_source_rates(struct intel_dp *intel_dp)
 {
@@ -429,7 +449,6 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
 		162000, 270000
 	};
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
-	struct intel_encoder *encoder = &dig_port->base;
 	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
 	const int *source_rates;
 	int size, max_rate = 0, vbt_max_rate;
@@ -465,7 +484,7 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
 		size = ARRAY_SIZE(g4x_rates);
 	}
 
-	vbt_max_rate = intel_bios_dp_max_link_rate(encoder);
+	vbt_max_rate = vbt_max_link_rate(intel_dp);
 	if (max_rate && vbt_max_rate)
 		max_rate = min(max_rate, vbt_max_rate);
 	else if (vbt_max_rate)
diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index 58aee0a040cf..f8e5097222f2 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -697,6 +697,7 @@ struct bdb_edp {
 	u16 apical_enable;					/* 203 */
 	struct edp_apical_params apical_params[16];		/* 203 */
 	u16 edp_fast_link_training_rate[16];			/* 224 */
+	u16 edp_max_port_link_rate[16];				/* 244 */
 } __packed;
 
 /*
-- 
2.35.1

