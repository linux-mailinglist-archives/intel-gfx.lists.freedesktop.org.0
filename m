Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D00E211248
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jul 2020 20:00:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B50176E096;
	Wed,  1 Jul 2020 18:00:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDE8B6E096
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jul 2020 18:00:10 +0000 (UTC)
IronPort-SDR: Mo3I3KfuiN9y5WDMoSGTjv63cdcNA6thLoHK2UKga1OnS/Tp8giFyowDWqlKrDX2LqqWPQO0uq
 4jEpn0cq+lrA==
X-IronPort-AV: E=McAfee;i="6000,8403,9669"; a="134952689"
X-IronPort-AV: E=Sophos;i="5.75,301,1589266800"; d="scan'208";a="134952689"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2020 11:00:07 -0700
IronPort-SDR: EjiUVTQIYVe6TF5Qy+jpLpThRQ+3l8FyfEP/Y2hVb5qujc876DyKZBElGba45d/CYfC+Q4Wvc+
 sZXeUSuLuRYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,301,1589266800"; d="scan'208";a="277851304"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga003.jf.intel.com with ESMTP; 01 Jul 2020 11:00:03 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Jul 2020 21:00:01 +0300
Message-Id: <20200701180001.15857-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.23.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Fix the old vs. new epoch counter
 check during hotplug detect
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The old epoch counter was left uninited, so the function returned a
changed state always.

While at it debug print the old epoch counter as well.

Fixes: 35205ee9ba46 ("drm/i915: Send hotplug event if edid had changed")
Cc: Kunal Joshi <kunal1.joshi@intel.com>
Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hotplug.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index 80bcfff032e9..3f1d7b804a66 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -288,6 +288,7 @@ intel_encoder_hotplug(struct intel_encoder *encoder,
 
 	drm_WARN_ON(dev, !mutex_is_locked(&dev->mode_config.mutex));
 	old_status = connector->base.status;
+	old_epoch_counter = connector->base.epoch_counter;
 
 	connector->base.status =
 		drm_helper_probe_detect(&connector->base, NULL, false);
@@ -296,11 +297,12 @@ intel_encoder_hotplug(struct intel_encoder *encoder,
 		ret = true;
 
 	if (ret) {
-		DRM_DEBUG_KMS("[CONNECTOR:%d:%s] status updated from %s to %s(epoch counter %llu)\n",
+		DRM_DEBUG_KMS("[CONNECTOR:%d:%s] status updated from %s to %s (epoch counter %llu->%llu)\n",
 			      connector->base.base.id,
 			      connector->base.name,
 			      drm_get_connector_status_name(old_status),
 			      drm_get_connector_status_name(connector->base.status),
+			      old_epoch_counter,
 			      connector->base.epoch_counter);
 		return INTEL_HOTPLUG_CHANGED;
 	}
-- 
2.23.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
