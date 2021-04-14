Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 078C235F2CC
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 13:51:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B19C26E929;
	Wed, 14 Apr 2021 11:51:00 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 794956E927
 for <Intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 11:50:59 +0000 (UTC)
IronPort-SDR: c5O+Xym1pwh75ZsU2tP7EM0RzkuY06Cl52hODAOtZIVwxOgOwbSreOuR+//PnE9OF/5VHK183S
 nZPWTPRX35vg==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="194187476"
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="194187476"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 04:50:58 -0700
IronPort-SDR: bpSA3AsPEjv+/N7Nyjq0DeWBncV94W/eFFW1dZCe5vfCfiBhAEZDAlEydAyhd55IcuXY1d4snw
 Ym+T/hGa/RSQ==
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="521965228"
Received: from bdebhal-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.205.119])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 04:50:57 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 14 Apr 2021 12:50:17 +0100
Message-Id: <20210414115028.168504-18-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210414115028.168504-1-tvrtko.ursulin@linux.intel.com>
References: <20210414115028.168504-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 17/28] drm/i915: Favour IS_GENx
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

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Replace INTEL_GEN (not-)equals with IS_GENx for more optimisation
opportunities.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/intel_device_info.c | 4 ++--
 drivers/gpu/drm/i915/intel_fbc.c         | 2 +-
 drivers/gpu/drm/i915/intel_pm.c          | 6 +++---
 drivers/gpu/drm/i915/intel_ringbuffer.h  | 4 ++--
 4 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 298f8996cc54..3983d6a44f78 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -483,7 +483,7 @@ void intel_device_info_runtime_init(struct intel_device_info *info)
 	if (INTEL_GEN(dev_priv) >= 10) {
 		for_each_pipe(dev_priv, pipe)
 			info->num_scalers[pipe] = 2;
-	} else if (INTEL_GEN(dev_priv) == 9) {
+	} else if (IS_GEN9(dev_priv)) {
 		info->num_scalers[PIPE_A] = 2;
 		info->num_scalers[PIPE_B] = 2;
 		info->num_scalers[PIPE_C] = 1;
@@ -578,7 +578,7 @@ void intel_device_info_runtime_init(struct intel_device_info *info)
 		cherryview_sseu_info_init(dev_priv);
 	else if (IS_BROADWELL(dev_priv))
 		broadwell_sseu_info_init(dev_priv);
-	else if (INTEL_GEN(dev_priv) == 9)
+	else if (IS_GEN9(dev_priv))
 		gen9_sseu_info_init(dev_priv);
 	else if (INTEL_GEN(dev_priv) >= 10)
 		gen10_sseu_info_init(dev_priv);
diff --git a/drivers/gpu/drm/i915/intel_fbc.c b/drivers/gpu/drm/i915/intel_fbc.c
index d7d1ac79c38a..0ad854095c38 100644
--- a/drivers/gpu/drm/i915/intel_fbc.c
+++ b/drivers/gpu/drm/i915/intel_fbc.c
@@ -94,7 +94,7 @@ static int intel_fbc_calculate_cfb_size(struct drm_i915_private *dev_priv,
 	int lines;
 
 	intel_fbc_get_plane_source_size(cache, NULL, &lines);
-	if (INTEL_GEN(dev_priv) == 7)
+	if (IS_GEN7(dev_priv))
 		lines = min(lines, 2048);
 	else if (INTEL_GEN(dev_priv) >= 8)
 		lines = min(lines, 2560);
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 6f98d144924e..b026b020d8b8 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -7554,7 +7554,7 @@ unsigned long i915_chipset_val(struct drm_i915_private *dev_priv)
 {
 	unsigned long val;
 
-	if (INTEL_GEN(dev_priv) != 5)
+	if (!IS_GEN5(dev_priv))
 		return 0;
 
 	spin_lock_irq(&mchdev_lock);
@@ -7638,7 +7638,7 @@ static void __i915_update_gfx_val(struct drm_i915_private *dev_priv)
 
 void i915_update_gfx_val(struct drm_i915_private *dev_priv)
 {
-	if (INTEL_GEN(dev_priv) != 5)
+	if (!IS_GEN5(dev_priv))
 		return;
 
 	spin_lock_irq(&mchdev_lock);
@@ -7689,7 +7689,7 @@ unsigned long i915_gfx_val(struct drm_i915_private *dev_priv)
 {
 	unsigned long val;
 
-	if (INTEL_GEN(dev_priv) != 5)
+	if (!IS_GEN5(dev_priv))
 		return 0;
 
 	spin_lock_irq(&mchdev_lock);
diff --git a/drivers/gpu/drm/i915/intel_ringbuffer.h b/drivers/gpu/drm/i915/intel_ringbuffer.h
index 8f1a4badf812..6b9a0c7f0af4 100644
--- a/drivers/gpu/drm/i915/intel_ringbuffer.h
+++ b/drivers/gpu/drm/i915/intel_ringbuffer.h
@@ -85,11 +85,11 @@ hangcheck_action_to_str(const enum intel_engine_hangcheck_action a)
 #define I915_MAX_SUBSLICES 3
 
 #define instdone_slice_mask(dev_priv__) \
-	(INTEL_GEN(dev_priv__) == 7 ? \
+	(IS_GEN7(dev_priv__) ? \
 	 1 : INTEL_INFO(dev_priv__)->sseu.slice_mask)
 
 #define instdone_subslice_mask(dev_priv__) \
-	(INTEL_GEN(dev_priv__) == 7 ? \
+	(IS_GEN7(dev_priv__) ? \
 	 1 : INTEL_INFO(dev_priv__)->sseu.subslice_mask)
 
 #define for_each_instdone_slice_subslice(dev_priv__, slice__, subslice__) \
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
