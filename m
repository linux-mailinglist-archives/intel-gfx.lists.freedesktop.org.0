Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AFEB94D3505
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Mar 2022 18:01:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF2B410E51F;
	Wed,  9 Mar 2022 17:01:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B845910E51F
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Mar 2022 17:01:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646845304; x=1678381304;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=vBlkP15UKSVCcLoiFM3+KGCbEYeYPhBYh5lrbfgLR/4=;
 b=gmHAKJDmrU6uJNm9u795Yj//bsvf092K6lN+hpQ9KCY4l0xShqCu6BA6
 j+DNhHpWyccp+2l7dLuhji7vzTmPXoUlUcol7K0NPtqHllpoCVzF/3gBN
 YlBTVGjQ4ywaYNiVvtve9RZUGIlAXZS9GYyIDEuJrUIJFj9ocB6yVU6ZB
 xBrQHcGgDdyeVjsOA9mO8JLH2OOUdsOkWMqTiJvp/WJKZWC9wuqqRRcKA
 xrQ1lPM+aLBK9vf+4flH2oPcxX5WYpPSghhSvTWB4t7ZLd0HMUPAKgEHc
 Hq/jyaH+jpfyIScELt6EkdigRTo40LmkwpmODF2OPyhwMO18b9z8eCZJw w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="254761311"
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="254761311"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 08:50:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="513589572"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga006.jf.intel.com with SMTP; 09 Mar 2022 08:49:58 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Mar 2022 18:49:58 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Mar 2022 18:49:43 +0200
Message-Id: <20220309164948.10671-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220309164948.10671-1-ville.syrjala@linux.intel.com>
References: <20220309164948.10671-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/8] drm/i915: Probe whether SAGV works on
 pre-icl
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

Instead of leaving the SAGV enable/disable to the first commit
let's try to disable it first thing to see if we can do it or
not (disabling SAGV is a safe thing to at any time). This avoids
running the code in this funny intermediate state where we don't
know if SAGV is available or not.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 906501d6b298..36f5bccabf64 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -57,6 +57,8 @@
 #include "vlv_sideband.h"
 #include "../../../platform/x86/intel_ips.h"
 
+static int intel_disable_sagv(struct drm_i915_private *dev_priv);
+
 struct drm_i915_clock_gating_funcs {
 	void (*init_clock_gating)(struct drm_i915_private *i915);
 };
@@ -3697,6 +3699,18 @@ intel_sagv_block_time(struct drm_i915_private *dev_priv)
 
 static void intel_sagv_init(struct drm_i915_private *i915)
 {
+	if (!intel_has_sagv(i915))
+		i915->sagv_status = I915_SAGV_NOT_CONTROLLED;
+
+	/*
+	 * Probe to see if we have working SAGV control.
+	 * For icl+ this was already determined by intel_bw_init_hw().
+	 */
+	if (DISPLAY_VER(i915) < 11)
+		intel_disable_sagv(i915);
+
+	drm_WARN_ON(&i915->drm, i915->sagv_status == I915_SAGV_UNKNOWN);
+
 	i915->sagv_block_time_us = intel_sagv_block_time(i915);
 
 	drm_dbg_kms(&i915->drm, "SAGV supported: %s, original SAGV block time: %u us\n",
-- 
2.34.1

