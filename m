Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC5D94D1F45
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Mar 2022 18:41:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FBE410E35E;
	Tue,  8 Mar 2022 17:41:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BABA10E35E
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Mar 2022 17:41:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646761305; x=1678297305;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=tmLOArO7znCaTlFL8SJ7uv6xN5ktnAcYXs/sNwFFN/w=;
 b=FEmxMw6grdzRauwp+CRkbGERQ0fogmKnAiUGRXZCYW6RGDwDtUsG0kjV
 Mt2fbmGIADqlDQSB1IUpcZk4MiGdlGdzObwebq8V8xvNT6fP4XCxeGQ+P
 k+dId/1CX6UdEl2ye7sy4xuE2Kk2mCxr7g1YGZWu8WzsZwDRaWS6mweR9
 XcYR10t8m5BCPedegg6sgMW6hYVBP6W1U8EkoKr2Pop1Bkd7/BChncxSj
 c205RpBO6rAo1nrwB0ZM74t3rwIBKdTIKLBEvUbDnohi/eW2oHJ9mnrRw
 I78I/E+GdLRv4ONwzkz4N3UrPA2Vcr9zBMvEi3chhfxSA6zgpadCrax++ w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10280"; a="341191369"
X-IronPort-AV: E=Sophos;i="5.90,165,1643702400"; d="scan'208";a="341191369"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2022 09:32:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,165,1643702400"; d="scan'208";a="641835262"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga002.fm.intel.com with SMTP; 08 Mar 2022 09:32:39 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 08 Mar 2022 19:32:39 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Mar 2022 19:32:27 +0200
Message-Id: <20220308173230.4182-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220308173230.4182-1-ville.syrjala@linux.intel.com>
References: <20220308173230.4182-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/6] drm/i915: Treat SAGV block time 0 as SAGV
 disabled
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

For modern platforms the spec explicitly states that a
SAGV block time of zero means that SAGV is not supported.
Let's extend that to all platforms. Supposedly there should
be no systems where this isn't true, and it'll allow us to:
- use the same code regardless of older vs. newer platform
- wm latencies already treat 0 as disabled, so this fits well
  with other related code
- make it a bit more clear when SAGV is used vs. not
- avoid overflows from adding U32_MAX with a u16 wm0 latency value

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 21c37115c36e..906501d6b298 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -3682,7 +3682,7 @@ intel_sagv_block_time(struct drm_i915_private *dev_priv)
 				     &val, NULL);
 		if (ret) {
 			drm_dbg_kms(&dev_priv->drm, "Couldn't read SAGV block time!\n");
-			return -1;
+			return 0;
 		}
 
 		return val;
@@ -3691,8 +3691,7 @@ intel_sagv_block_time(struct drm_i915_private *dev_priv)
 	} else if (DISPLAY_VER(dev_priv) == 9 && !IS_LP(dev_priv)) {
 		return 30;
 	} else {
-		/* Default to an unusable block time */
-		return -1;
+		return 0;
 	}
 }
 
@@ -3704,7 +3703,7 @@ static void intel_sagv_init(struct drm_i915_private *i915)
 		    str_yes_no(intel_has_sagv(i915)), i915->sagv_block_time_us);
 
 	if (!intel_has_sagv(i915))
-		i915->sagv_block_time_us = -1;
+		i915->sagv_block_time_us = 0;
 }
 
 /*
@@ -5651,7 +5650,7 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 	result->min_ddb_alloc = max(min_ddb_alloc, blocks) + 1;
 	result->enable = true;
 
-	if (DISPLAY_VER(dev_priv) < 12)
+	if (DISPLAY_VER(dev_priv) < 12 && dev_priv->sagv_block_time_us)
 		result->can_sagv = latency >= dev_priv->sagv_block_time_us;
 }
 
@@ -5684,7 +5683,10 @@ static void tgl_compute_sagv_wm(const struct intel_crtc_state *crtc_state,
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 	struct skl_wm_level *sagv_wm = &plane_wm->sagv.wm0;
 	struct skl_wm_level *levels = plane_wm->wm;
-	unsigned int latency = dev_priv->wm.skl_latency[0] + dev_priv->sagv_block_time_us;
+	unsigned int latency = 0;
+
+	if (dev_priv->sagv_block_time_us)
+		latency = dev_priv->sagv_block_time_us + dev_priv->wm.skl_latency[0];
 
 	skl_compute_plane_wm(crtc_state, plane, 0, latency,
 			     wm_params, &levels[0],
-- 
2.34.1

