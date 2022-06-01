Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC3E853A9DB
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jun 2022 17:19:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D87CF10EB51;
	Wed,  1 Jun 2022 15:19:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F7C910EBE9
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jun 2022 15:19:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654096764; x=1685632764;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=GAa57bkd4Kk6siWZAtoG41p05rJC+VwE/gmktvklrMg=;
 b=XBb2nvmpDH1HrZEsYEI15VRydOdbifuV+mJRTzGQhvYzdoDDp9pwP/0p
 qY5mQ5RN0COSyZ99USBE37jT7kWnG5yGJRLOyVc+x4iZzSqksXINOatBg
 +TAM+urlTTV1ZR551h2lxnGfOskEEoOB9uFrHH1BmYDaio/HypPuy1nJi
 v9rGPBAKJe1ksxFWWyeuydvmFq+/FlkmlpQPDFvzrj27WPwLPlYu1lFGG
 R/ZQvRHkR7Drz/GhDXXUwsCdLfnwjTrRG/QIGtMs+erTIZgFROHIgYIWL
 Mu0o+qObvg18SHT1oslyXUPOjIdSLoyd+1DsEwmrmfaVwkOKsoI6diKYZ A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10365"; a="257693272"
X-IronPort-AV: E=Sophos;i="5.91,268,1647327600"; d="scan'208";a="257693272"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2022 08:19:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,268,1647327600"; d="scan'208";a="552355692"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by orsmga006.jf.intel.com with SMTP; 01 Jun 2022 08:19:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 01 Jun 2022 18:19:14 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Jun 2022 18:19:06 +0300
Message-Id: <20220601151907.18725-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220601151907.18725-1-ville.syrjala@linux.intel.com>
References: <20220601151907.18725-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: Update eDP fast link training
 link rate parsing
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

We're not parsing the 5.4 Gbps value for the old eDP fast link
training link rate, nor are we parsing the new fast link training
link rate field. Remedy both.

Note that we're not even using this information for anything
currently, so should perhaps just nuke it all unless someone
is planning on implementing fast link training finally...

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     | 32 ++++++++++++-------
 drivers/gpu/drm/i915/display/intel_vbt_defs.h |  1 +
 2 files changed, 21 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index c42b9e7d0dce..d701854dc429 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -1367,18 +1367,26 @@ parse_edp(struct drm_i915_private *i915,
 
 	panel->vbt.edp.pps = *edp_pps;
 
-	switch (edp_link_params->rate) {
-	case EDP_RATE_1_62:
-		panel->vbt.edp.rate = DP_LINK_BW_1_62;
-		break;
-	case EDP_RATE_2_7:
-		panel->vbt.edp.rate = DP_LINK_BW_2_7;
-		break;
-	default:
-		drm_dbg_kms(&i915->drm,
-			    "VBT has unknown eDP link rate value %u\n",
-			     edp_link_params->rate);
-		break;
+	if (i915->vbt.version >= 224) {
+		panel->vbt.edp.rate =
+			edp->edp_fast_link_training_rate[panel_type] * 2;
+	} else {
+		switch (edp_link_params->rate) {
+		case EDP_RATE_1_62:
+			panel->vbt.edp.rate = DP_LINK_BW_1_62;
+			break;
+		case EDP_RATE_2_7:
+			panel->vbt.edp.rate = DP_LINK_BW_2_7;
+			break;
+		case EDP_RATE_5_4:
+			panel->vbt.edp.rate = DP_LINK_BW_5_4;
+			break;
+		default:
+			drm_dbg_kms(&i915->drm,
+				    "VBT has unknown eDP link rate value %u\n",
+				    edp_link_params->rate);
+			break;
+		}
 	}
 
 	switch (edp_link_params->lanes) {
diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index 14f1e1cc92c5..58aee0a040cf 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -638,6 +638,7 @@ struct bdb_sdvo_panel_dtds {
 #define EDP_30BPP	2
 #define EDP_RATE_1_62	0
 #define EDP_RATE_2_7	1
+#define EDP_RATE_5_4	2
 #define EDP_LANE_1	0
 #define EDP_LANE_2	1
 #define EDP_LANE_4	3
-- 
2.35.1

