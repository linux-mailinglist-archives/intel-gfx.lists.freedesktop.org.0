Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78C2C53C019
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jun 2022 22:57:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6F89113750;
	Thu,  2 Jun 2022 20:57:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6826D113749
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jun 2022 20:57:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654203447; x=1685739447;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=W5hS4xVdq23otcPt5thdpPPr8FQ+F7tvlHZNS8y6/fM=;
 b=OKDYXlSuXfAxUCEYgrq1ZYxxTuX3P/dKAmsgF8mFyxMstoUJrxnWTGG1
 e+T2H7LgFBbcopk+TCOdEeRGUqKIb9cT1e29xPcH8zd0Ltb/sJLrLwLtB
 Cd9gtlfqqEjCvKy0RKnDQm+4zW7x9Ai0RwRuAzqXWxDzgEHc5kxXkPsLA
 wPiJM4K2FqvqAOB3ESZt/brITCyCYPxpClnRSgPweC2qBsEMT+wDpHosl
 bCMKfd7AKK+NzrLWs0P35ErvgAmfwa1m3tyDcqsTODNSZUrXnQyPGAqri
 lB6ffsapoVNSOoSyajgDhMxLNcwObcJKSO1k+i1911i8MUFuJZBzce9C+ w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10366"; a="255943206"
X-IronPort-AV: E=Sophos;i="5.91,272,1647327600"; d="scan'208";a="255943206"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2022 13:57:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,272,1647327600"; d="scan'208";a="553028345"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by orsmga006.jf.intel.com with SMTP; 02 Jun 2022 13:57:24 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 02 Jun 2022 23:57:23 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Jun 2022 23:57:23 +0300
Message-Id: <20220602205723.11341-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220601151907.18725-4-ville.syrjala@linux.intel.com>
References: <20220601151907.18725-4-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/3] drm/i915: Parse max link rate from the
 eDP BDB block
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The eDP BDB block has gained yet another max link rate field.
Let's parse it and consult it during the source rate filtering.

v2: *20 instead of *2 to get the correct units (Jani)

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     |  4 ++++
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 23 +++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_vbt_defs.h |  1 +
 4 files changed, 27 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 425e91d8cd2f..aaea27fe5d16 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -1461,6 +1461,10 @@ parse_edp(struct drm_i915_private *i915,
 
 	panel->vbt.edp.drrs_msa_timing_delay =
 		(edp->sdrrs_msa_timing_delay >> (panel_type * 2)) & 3;
+
+	if (i915->vbt.version >= 244)
+		panel->vbt.edp.max_link_rate =
+			edp->edp_max_port_link_rate[panel_type] * 20;
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
index 03af93ef9e93..8ff875ab3b37 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -408,6 +408,26 @@ static int ehl_max_source_rate(struct intel_dp *intel_dp)
 	return 810000;
 }
 
+static int vbt_max_link_rate(struct intel_dp *intel_dp)
+{
+	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
+	int max_rate;
+
+	max_rate = intel_bios_dp_max_link_rate(encoder);
+
+	if (intel_dp_is_edp(intel_dp)) {
+		struct intel_connector *connector = intel_dp->attached_connector;
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

