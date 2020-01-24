Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79AB81479A2
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 09:48:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC3616FF7A;
	Fri, 24 Jan 2020 08:48:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B77B6FF78
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 08:48:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 00:48:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,357,1574150400"; d="scan'208";a="375460348"
Received: from slisovsk-lenovo-ideapad-720s-13ikb.fi.intel.com ([10.237.72.89])
 by orsmga004.jf.intel.com with ESMTP; 24 Jan 2020 00:48:44 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jan 2020 10:44:55 +0200
Message-Id: <20200124084456.2961-7-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200124084456.2961-1-stanislav.lisovskiy@intel.com>
References: <20200124084456.2961-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v16 6/7] drm/i915: Protect
 intel_dbuf_slices_update with mutex
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

Now using power_domain mutex to protect from race condition, which
can occur because intel_dbuf_slices_update might be running in
parallel to gen9_dc_off_power_well_enable being called from
intel_dp_detect for instance, which causes assertion triggered by
race condition, as gen9_assert_dbuf_enabled might preempt this
when registers were already updated, while dev_priv was not.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 96b38252578b..99ddc21e004c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -4404,12 +4404,22 @@ void icl_dbuf_slices_update(struct drm_i915_private *dev_priv,
 {
 	int i;
 	int max_slices = INTEL_INFO(dev_priv)->num_supported_dbuf_slices;
+	struct i915_power_domains *power_domains = &dev_priv->power_domains;
 
 	WARN(hweight8(req_slices) > max_slices,
 	     "Invalid number of dbuf slices requested\n");
 
 	DRM_DEBUG_KMS("Updating dbuf slices to 0x%x\n", req_slices);
 
+	/*
+	 * Might be running this in parallel to gen9_dc_off_power_well_enable
+	 * being called from intel_dp_detect for instance,
+	 * which causes assertion triggered by race condition,
+	 * as gen9_assert_dbuf_enabled might preempt this when registers
+	 * were already updated, while dev_priv was not.
+	 */
+	mutex_lock(&power_domains->lock);
+
 	for (i = 0; i < max_slices; i++) {
 		intel_dbuf_slice_set(dev_priv,
 				     _DBUF_CTL_S(i),
@@ -4417,6 +4427,8 @@ void icl_dbuf_slices_update(struct drm_i915_private *dev_priv,
 	}
 
 	dev_priv->enabled_dbuf_slices_mask = req_slices;
+
+	mutex_unlock(&power_domains->lock);
 }
 
 static void icl_dbuf_enable(struct drm_i915_private *dev_priv)
-- 
2.24.1.485.gad05a3d8e5

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
