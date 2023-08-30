Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8152278D65F
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Aug 2023 16:04:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B8C010E475;
	Wed, 30 Aug 2023 14:04:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6337D10E524
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Aug 2023 14:04:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693404260; x=1724940260;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DBabW7sKvwNo5QBwmVjU6hUsHvxJC/mqkVuQyhhVJ6U=;
 b=S5fGjET2DOXSpzlow13mus0C2mj8Lj8xJPf0wknMH4hKqYlarEQ/vn+b
 lAtjb6C0lHDyZSbCxmo/SI52PBHuJ6plAGk4CHImyVjrk9aVwlN5PEvNi
 GdTaJO9N5S6od5VoraBtvuZLmR1d3ZWKd6uxmqm1pZlkyCtUein9Rf2n9
 zwZM29U/hkgo8/39w2aD7dc6LDZHYg10jWoMhnmsBIHJwUMU57zQEc4nF
 fgSGpGCboXBamVhvXB5Pt48KziZbyds+GLyllVlWY4nT75oMPklNJ/tB/
 TpTgwNk8L2tmn81N9I2wwNozCBZNxZosk9Lluh2UILRGr88jcIt+qmxm8 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10818"; a="355962828"
X-IronPort-AV: E=Sophos;i="6.02,213,1688454000"; d="scan'208";a="355962828"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2023 07:04:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10818"; a="768415857"
X-IronPort-AV: E=Sophos;i="6.02,213,1688454000"; d="scan'208";a="768415857"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2023 07:04:04 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Aug 2023 17:04:20 +0300
Message-Id: <20230830140421.2031111-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/dp: Drop redundant AUX power
 get/put in intel_dp_force()
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

intel_dp_force() takes the AUX power reference as required by the DP AUX
transactions in intel_dp_set_edid(). However the low level AUX handler
takes this reference already so the get/put in intel_dp_force() can be
dropped. This also fixes a problem where the TC port mode changed while
the AUX power well was enabled.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8779
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 9d303caf969e0..16fb12d187a29 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5365,9 +5365,6 @@ intel_dp_force(struct drm_connector *connector)
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	struct intel_encoder *intel_encoder = &dig_port->base;
 	struct drm_i915_private *dev_priv = to_i915(intel_encoder->base.dev);
-	enum intel_display_power_domain aux_domain =
-		intel_aux_power_domain(dig_port);
-	intel_wakeref_t wakeref;
 
 	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s]\n",
 		    connector->base.id, connector->name);
@@ -5376,11 +5373,7 @@ intel_dp_force(struct drm_connector *connector)
 	if (connector->status != connector_status_connected)
 		return;
 
-	wakeref = intel_display_power_get(dev_priv, aux_domain);
-
 	intel_dp_set_edid(intel_dp);
-
-	intel_display_power_put(dev_priv, aux_domain, wakeref);
 }
 
 static int intel_dp_get_modes(struct drm_connector *connector)
-- 
2.37.2

