Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 480C45B5932
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Sep 2022 13:19:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 113A110E3D6;
	Mon, 12 Sep 2022 11:19:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BC8C10E3D1
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Sep 2022 11:19:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662981542; x=1694517542;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=e43mcejOSRMsCcAh7WmYhhegJgBsUKjjYl9MwEzKhhw=;
 b=VQWhGE1XHMXhRFTFci84IYbC9FpmDV6UIjMB6XJnIX9YmYMi8v0o8hz6
 m64l4BbcngS8iKS+cVRU1p6JWqbgf1AWyeGfrOnGbi//BgDKArGkrblOn
 lan0pArhZynPE3Ef8GcQb+xV5jJF3DmRMVFNbS3YhUhDBVCVDLp2CCy8W
 QpdBUnEIY8OAyMZKH4RFU8kKCnHJvrb8Ggnm/W2huXucowZtECtGp/k7B
 /7L5qiU81zaVKuehWMf2qVUXkGVL6UeDazyLbb1t1mPUcMXLZxo2UjAxd
 By69OuLgQOqsICLUFOtDqg3HxsilzJz1m3nXx0JjyJ9lKWkC2jXJ5UOEX A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10467"; a="299180274"
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="299180274"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 04:18:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="646416128"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga008.jf.intel.com with SMTP; 12 Sep 2022 04:18:52 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 12 Sep 2022 14:18:51 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Sep 2022 14:18:12 +0300
Message-Id: <20220912111814.17466-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220912111814.17466-1-ville.syrjala@linux.intel.com>
References: <20220912111814.17466-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 13/15] drm/i915: Don't init eDP if we can't find
 a fixed mode
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

In the unlikely case of not finding a fixed mode don't register
the eDP connector. I think there are some places where we'd oops
if we didn't have a fixed mode for eDP so presumable this doesn't
typically happen. But better safe than sorry.

Also pimp the debugs with the encoder id+name. I think dumping
the encoder rather than the connector provides more information
here (eg. to match again the port information in the VBT).

We can also drop the extra check from intel_edp_add_properties().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7b4ffb74c94c..8fe48634eb9d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5197,9 +5197,6 @@ intel_edp_add_properties(struct intel_dp *intel_dp)
 
 	intel_attach_scaling_mode_property(&connector->base);
 
-	if (!fixed_mode)
-		return;
-
 	drm_connector_set_panel_orientation_with_quirk(&connector->base,
 						       i915->display.vbt.orientation,
 						       fixed_mode->hdisplay,
@@ -5272,7 +5269,8 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 	if (!has_dpcd) {
 		/* if this fails, presume the device is a ghost */
 		drm_info(&dev_priv->drm,
-			 "failed to retrieve link info, disabling eDP\n");
+			 "[ENCODER:%d:%s] failed to retrieve link info, disabling eDP\n",
+			 encoder->base.base.id, encoder->base.name);
 		goto out_vdd_off;
 	}
 
@@ -5318,6 +5316,13 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 
 	mutex_unlock(&dev->mode_config.mutex);
 
+	if (!intel_panel_preferred_fixed_mode(intel_connector)) {
+		drm_info(&dev_priv->drm,
+			 "[ENCODER:%d:%s] failed to find fixed mode for the panel, disabling eDP\n",
+			 encoder->base.base.id, encoder->base.name);
+		goto out_vdd_off;
+	}
+
 	intel_panel_init(intel_connector);
 
 	intel_edp_backlight_setup(intel_dp, intel_connector);
-- 
2.35.1

