Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B6E5C4A85B3
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Feb 2022 15:03:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB0D510F97F;
	Thu,  3 Feb 2022 14:03:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 521CC10F981
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Feb 2022 14:03:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643896993; x=1675432993;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PtmUZP801srgH54albU6KsSPvqq0QdSXnxcUf+qOUh4=;
 b=Y7wn/LaM46OsmKtufTUlxrIaeVWqi33NCgWq2zn1w3OtjQ7qEyQEgLPP
 IcSY7JVMzV3Rj0tR8SsauJEVN5EAt/2sOQHBX0k5P0eRNx54EUZZKWUnQ
 2D4OgS3CzJw+djINhI58ky/9ML8zHGNYBjW5b/UDyElCG9HBaGCSg7+T9
 xc3DWevlnRf95ucNpFYSAxp2d5IlCRIAChC1ozO0HWFpZd3uZ/m9/P9xx
 ddqU53h74zLLdi4MizlnFSl73NfwEAYnvXp+suWi93skUONyaBM0wpkcP
 Obl9kVvZbeeYc2mS5j1hMzDBZMNVVU5bWDTnYpvWxG71pDFY96YHh4xbU g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10246"; a="245742261"
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="245742261"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 06:03:12 -0800
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="699321857"
Received: from cbrady-mobl1.ger.corp.intel.com (HELO localhost) ([10.252.6.65])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 06:03:11 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Feb 2022 16:02:33 +0200
Message-Id: <63779ac0472895803113180818ecadc22c10369e.1643896905.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1643896905.git.jani.nikula@intel.com>
References: <cover.1643896905.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 7/7] drm/i915/pm: hide struct
 drm_i915_clock_gating_funcs
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The struct is only needed in intel_pm.c, move it there.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 6 +-----
 drivers/gpu/drm/i915/intel_pm.c | 4 ++++
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 078fc50e7eb9..4ac0fcb9a4ca 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -107,6 +107,7 @@
 #include "i915_vma.h"
 
 struct dpll;
+struct drm_i915_clock_gating_funcs;
 struct drm_i915_gem_object;
 struct drm_i915_private;
 struct intel_atomic_state;
@@ -302,11 +303,6 @@ struct sdvo_device_mapping {
 	u8 ddc_pin;
 };
 
-/* functions used internal in intel_pm.c */
-struct drm_i915_clock_gating_funcs {
-	void (*init_clock_gating)(struct drm_i915_private *dev_priv);
-};
-
 /* functions used for watermark calcs for display. */
 struct drm_i915_wm_disp_funcs {
 	/* update_wm is for legacy wm management */
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 859be750fb22..2e84d45f9bf0 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -55,6 +55,10 @@
 #include "vlv_sideband.h"
 #include "../../../platform/x86/intel_ips.h"
 
+struct drm_i915_clock_gating_funcs {
+	void (*init_clock_gating)(struct drm_i915_private *i915);
+};
+
 /* Stores plane specific WM parameters */
 struct skl_wm_params {
 	bool x_tiled, y_tiled;
-- 
2.30.2

