Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 17F9D73FF6F
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jun 2023 17:14:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AF3510E305;
	Tue, 27 Jun 2023 15:14:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 406B010E305
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Jun 2023 15:14:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687878895; x=1719414895;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cs8C14QFzDDZYiZ3xGLkq8RSrggf1m/215B1/nl0pnE=;
 b=Zv4Onw2E8d8Hv+r8e3qM2YfCYUr0Emy/lwMUYO/V/FKhzFpjEKavvjrW
 2YZozDAb242FHAKC0xiVCHCaP1AZD2FDIPPuHC13pgnr2k1c3NhroollL
 B7Fijk+ACH0C9LPrHL4DNEK7zaoxm0CoxBRbPAx8OWfQa6vfIRMTnvTHy
 +fC/iZDeK33tFzkPUNwSulMPL0jgrSsocM1zIW0SpZo1X7KNIY3cNAxQg
 R3BcGhgJMhau6ncpaG3ui/+kvsws4EuM8wCz8Pe7Cw3lsG9/m9m3koOU2
 5jBovpVznoAx5njPA9vNWBiRbW32suWsJ63dn8En6lWGugtZJ9o1cFEOj g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10754"; a="361635507"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="361635507"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2023 08:14:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10754"; a="861154619"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="861154619"
Received: from jwerner6-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.39.48])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2023 08:14:51 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Jun 2023 18:14:03 +0300
Message-Id: <f31933222f44e4a9224e41399a96896eb243e653.1687878757.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1687878757.git.jani.nikula@intel.com>
References: <cover.1687878757.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 6/6] drm/i915: make device info a const
 pointer to rodata
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
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Finally we can get rid of the pseudo-const write-once device info, and
convert it into a const pointer to device info in rodata.

Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          |  4 ++--
 drivers/gpu/drm/i915/intel_device_info.c | 17 ++++-------------
 2 files changed, 6 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 8947d1201298..682ef2b5c7d5 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -203,7 +203,7 @@ struct drm_i915_private {
 	/* i915 device parameters */
 	struct i915_params params;
 
-	const struct intel_device_info __info; /* Use INTEL_INFO() to access. */
+	const struct intel_device_info *__info; /* Use INTEL_INFO() to access. */
 	struct intel_runtime_info __runtime; /* Use RUNTIME_INFO() to access. */
 	struct intel_driver_caps caps;
 
@@ -415,7 +415,7 @@ static inline struct intel_gt *to_gt(struct drm_i915_private *i915)
 	     (engine__) && (engine__)->uabi_class == (class__); \
 	     (engine__) = rb_to_uabi_engine(rb_next(&(engine__)->uabi_node)))
 
-#define INTEL_INFO(i915)	(&(i915)->__info)
+#define INTEL_INFO(i915)	((i915)->__info)
 #define RUNTIME_INFO(i915)	(&(i915)->__runtime)
 #define DISPLAY_INFO(i915)	((i915)->display.info.__device_info)
 #define DISPLAY_RUNTIME_INFO(i915)	(&(i915)->display.info.__runtime_info)
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 0740922cd71f..ea0ec6174ce5 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -364,13 +364,6 @@ void intel_device_info_runtime_init_early(struct drm_i915_private *i915)
 	intel_device_info_subplatform_init(i915);
 }
 
-/* FIXME: Remove this, and make device info a const pointer to rodata. */
-static struct intel_device_info *
-mkwrite_device_info(struct drm_i915_private *i915)
-{
-	return (struct intel_device_info *)INTEL_INFO(i915);
-}
-
 static const struct intel_display_device_info no_display = {};
 
 /**
@@ -430,26 +423,24 @@ void intel_device_info_driver_create(struct drm_i915_private *i915,
 				     u16 device_id,
 				     const struct intel_device_info *match_info)
 {
-	struct intel_device_info *info;
 	struct intel_runtime_info *runtime;
 	u16 ver, rel, step;
 
-	/* Setup the write-once "constant" device info */
-	info = mkwrite_device_info(i915);
-	memcpy(info, match_info, sizeof(*info));
+	/* Setup INTEL_INFO() */
+	i915->__info = match_info;
 
 	/* Initialize initial runtime info from static const data and pdev. */
 	runtime = RUNTIME_INFO(i915);
 	memcpy(runtime, &INTEL_INFO(i915)->__runtime, sizeof(*runtime));
 
 	/* Probe display support */
-	i915->display.info.__device_info = intel_display_device_probe(i915, info->has_gmd_id,
+	i915->display.info.__device_info = intel_display_device_probe(i915, HAS_GMD_ID(i915),
 								      &ver, &rel, &step);
 	memcpy(DISPLAY_RUNTIME_INFO(i915),
 	       &DISPLAY_INFO(i915)->__runtime_defaults,
 	       sizeof(*DISPLAY_RUNTIME_INFO(i915)));
 
-	if (info->has_gmd_id) {
+	if (HAS_GMD_ID(i915)) {
 		DISPLAY_RUNTIME_INFO(i915)->ip.ver = ver;
 		DISPLAY_RUNTIME_INFO(i915)->ip.rel = rel;
 		DISPLAY_RUNTIME_INFO(i915)->ip.step = step;
-- 
2.39.2

