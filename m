Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1298453C013
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jun 2022 22:56:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8485011373C;
	Thu,  2 Jun 2022 20:56:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3200113749
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jun 2022 20:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654203412; x=1685739412;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GOuoH6u+6j3hZcMrsJG+mCxb33BGCpi8J2tLVWcyH8k=;
 b=I59oUlo1bYIM4cqoYe7mbZh4vavK38HhFRQCB3FMAd2r6uXJUbkCf+Li
 i50pyVqrP48AH5w3P/IaiVOXa6+rTNA3/jyNeXNR3KvQgQmhd0PhgLbcu
 Nzo/3WCllgZpBW9nfhQQhb3+mVeLd6nb7Sb8cq4izu56Yhr3cxfsz93Aq
 s0ysSKmUIh5R2EsN7CGfmRMGCfUHtodEyICm9Uf13HKcIDZbis1S29qnI
 7keBNWctlnxW69DdepGTKwuXQKdb+CAJ7qSqCzZsmJgg6M2v/vlhVhc3z
 7LUg1sJ8iEHtR70Bu/1uic8a/NtElnUwYIjE/4OTSQ0YulFecYmFTFEpS w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10366"; a="255943120"
X-IronPort-AV: E=Sophos;i="5.91,272,1647327600"; d="scan'208";a="255943120"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2022 13:56:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,272,1647327600"; d="scan'208";a="577705088"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by orsmga007.jf.intel.com with SMTP; 02 Jun 2022 13:56:49 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 02 Jun 2022 23:56:49 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Jun 2022 23:56:49 +0300
Message-Id: <20220602205649.11283-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220601151907.18725-3-ville.syrjala@linux.intel.com>
References: <20220601151907.18725-3-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/3] drm/i915: Update eDP fast link training
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We're not parsing the 5.4 Gbps value for the old eDP fast link
training link rate, nor are we parsing the new fast link training
link rate field. Remedy both.

Also we'll now use the actual link rate instead of the DPCD BW
register value.

Note that we're not even using this information for anything
currently, so should perhaps just nuke it all unless someone
is planning on implementing fast link training finally...

v2: Stop using the DPCD BW values (Jani)
    *20 instead of *2 to get the rate in correct units (Jani)

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     | 32 ++++++++++++-------
 drivers/gpu/drm/i915/display/intel_vbt_defs.h |  1 +
 2 files changed, 21 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index c42b9e7d0dce..425e91d8cd2f 100644
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
+			edp->edp_fast_link_training_rate[panel_type] * 20;
+	} else {
+		switch (edp_link_params->rate) {
+		case EDP_RATE_1_62:
+			panel->vbt.edp.rate = 162000;
+			break;
+		case EDP_RATE_2_7:
+			panel->vbt.edp.rate = 270000;
+			break;
+		case EDP_RATE_5_4:
+			panel->vbt.edp.rate = 540000;
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

