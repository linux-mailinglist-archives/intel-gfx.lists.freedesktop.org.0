Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D50449C671
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jan 2022 10:39:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94EBD10E803;
	Wed, 26 Jan 2022 09:39:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F0EB10E7E0;
 Wed, 26 Jan 2022 09:39:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643189971; x=1674725971;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Foskk6EIn6vq8IGC7rE4PDZ1eD4o1JqWcBZ5wmWBMJ4=;
 b=U0fKa03ING2qon1GHxUOuCi30HPZzNSURdEwNzqV+bCpcSkH0O6wjxIE
 ThOFL2LMz0bUL0P3Nc6wKoS3OmclW131sscruRxbY2Cmv84H7eq2pJIOD
 fzwS2eZZ2Vbs/qdq8oSiS63aG6NKnJChJjrCsgM7n6bOMCLy2KHXWn0hu
 CQLztj/CCiA7v5HjoMMR7BVO0ZXcsOAIZMK3zH3fZX/aIBdRMorJNjZm8
 rWBn72EgwI1aFgtFZKujAgylSwGGw13jdYghlohFZ6GU372o5rAs6k1L3
 X3/dHNwqbUVWaDUmpEYIoK+fzXKWL/Ng2Dse5tCK+Kqdcoz9qH2aotOjR A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10238"; a="227188789"
X-IronPort-AV: E=Sophos;i="5.88,317,1635231600"; d="scan'208";a="227188789"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 01:39:30 -0800
X-IronPort-AV: E=Sophos;i="5.88,317,1635231600"; d="scan'208";a="477433088"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 01:39:30 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 linux-security-module@vger.kernel.org, nouveau@lists.freedesktop.org,
 netdev@vger.kernel.org
Date: Wed, 26 Jan 2022 01:39:44 -0800
Message-Id: <20220126093951.1470898-5-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220126093951.1470898-1-lucas.demarchi@intel.com>
References: <20220126093951.1470898-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 04/11] drm/i915: Use str_enable_disable()
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
Cc: Emma Anholt <emma@anholt.net>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Chris Wilson <chris@chris-wilson.co.uk>, Vishal Kulkarni <vishal@chelsio.com>,
 Francis Laniel <laniel_francis@privacyrequired.com>,
 Kentaro Takeda <takedakn@nttdata.co.jp>, Leo Li <sunpeng.li@amd.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, Ben Skeggs <bskeggs@redhat.com>,
 Jakub Kicinski <kuba@kernel.org>, Harry Wentland <harry.wentland@amd.com>,
 Petr Mladek <pmladek@suse.com>, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Jani Nikula <jani.nikula@intel.com>, Julia Lawall <julia.lawall@lip6.fr>,
 Rahul Lakkireddy <rahul.lakkireddy@chelsio.com>,
 Steven Rostedt <rostedt@goodmis.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Raju Rangoju <rajur@chelsio.com>, Alex Deucher <alexander.deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Remove the local enabledisable() implementation and adopt the
str_enable_disable() from linux/string_helpers.h.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>
Acked-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c           | 4 +++-
 drivers/gpu/drm/i915/display/intel_display_power.c | 4 +++-
 drivers/gpu/drm/i915/display/intel_dp.c            | 8 ++++----
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c          | 3 ++-
 drivers/gpu/drm/i915/gt/uc/intel_guc_rc.c          | 4 +++-
 drivers/gpu/drm/i915/i915_utils.h                  | 5 -----
 6 files changed, 15 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 2f20abc5122d..4b35a8597632 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -25,6 +25,8 @@
  *
  */
 
+#include <linux/string_helpers.h>
+
 #include <drm/drm_privacy_screen_consumer.h>
 #include <drm/drm_scdc_helper.h>
 
@@ -2152,7 +2154,7 @@ static void intel_dp_sink_set_msa_timing_par_ignore_state(struct intel_dp *intel
 			       enable ? DP_MSA_TIMING_PAR_IGNORE_EN : 0) <= 0)
 		drm_dbg_kms(&i915->drm,
 			    "Failed to %s MSA_TIMING_PAR_IGNORE in the sink\n",
-			    enabledisable(enable));
+			    str_enable_disable(enable));
 }
 
 static void intel_dp_sink_set_fec_ready(struct intel_dp *intel_dp,
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 369317805d24..1f77cb9edddf 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -3,6 +3,8 @@
  * Copyright © 2019 Intel Corporation
  */
 
+#include <linux/string_helpers.h>
+
 #include "i915_drv.h"
 #include "i915_irq.h"
 #include "intel_cdclk.h"
@@ -5302,7 +5304,7 @@ static void gen9_dbuf_slice_set(struct drm_i915_private *dev_priv,
 	state = intel_de_read(dev_priv, reg) & DBUF_POWER_STATE;
 	drm_WARN(&dev_priv->drm, enable != state,
 		 "DBuf slice %d power %s timeout!\n",
-		 slice, enabledisable(enable));
+		 slice, str_enable_disable(enable));
 }
 
 void gen9_dbuf_slices_update(struct drm_i915_private *dev_priv,
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 62c1535d696d..933fc316ea53 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1987,7 +1987,7 @@ void intel_dp_sink_set_decompression_state(struct intel_dp *intel_dp,
 	if (ret < 0)
 		drm_dbg_kms(&i915->drm,
 			    "Failed to %s sink decompression state\n",
-			    enabledisable(enable));
+			    str_enable_disable(enable));
 }
 
 static void
@@ -2463,7 +2463,7 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
 	if (drm_dp_dpcd_writeb(&intel_dp->aux,
 			       DP_PROTOCOL_CONVERTER_CONTROL_0, tmp) != 1)
 		drm_dbg_kms(&i915->drm, "Failed to %s protocol converter HDMI mode\n",
-			    enabledisable(intel_dp->has_hdmi_sink));
+			    str_enable_disable(intel_dp->has_hdmi_sink));
 
 	tmp = crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR444 &&
 		intel_dp->dfp.ycbcr_444_to_420 ? DP_CONVERSION_TO_YCBCR420_ENABLE : 0;
@@ -2472,7 +2472,7 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
 			       DP_PROTOCOL_CONVERTER_CONTROL_1, tmp) != 1)
 		drm_dbg_kms(&i915->drm,
 			    "Failed to %s protocol converter YCbCr 4:2:0 conversion mode\n",
-			    enabledisable(intel_dp->dfp.ycbcr_444_to_420));
+			    str_enable_disable(intel_dp->dfp.ycbcr_444_to_420));
 
 	tmp = 0;
 	if (intel_dp->dfp.rgb_to_ycbcr) {
@@ -2510,7 +2510,7 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
 	if (drm_dp_pcon_convert_rgb_to_ycbcr(&intel_dp->aux, tmp) < 0)
 		drm_dbg_kms(&i915->drm,
 			   "Failed to %s protocol converter RGB->YCbCr conversion mode\n",
-			   enabledisable(tmp));
+			   str_enable_disable(tmp));
 }
 
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
index de89d40abd38..31c3c3bceb95 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
@@ -6,6 +6,7 @@
 #include <linux/circ_buf.h>
 #include <linux/ktime.h>
 #include <linux/time64.h>
+#include <linux/string_helpers.h>
 #include <linux/timekeeping.h>
 
 #include "i915_drv.h"
@@ -170,7 +171,7 @@ static int ct_control_enable(struct intel_guc_ct *ct, bool enable)
 				     GUC_CTB_CONTROL_ENABLE : GUC_CTB_CONTROL_DISABLE);
 	if (unlikely(err))
 		CT_PROBE_ERROR(ct, "Failed to control/%s CTB (%pe)\n",
-			       enabledisable(enable), ERR_PTR(err));
+			       str_enable_disable(enable), ERR_PTR(err));
 
 	return err;
 }
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_rc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_rc.c
index fc805d466d99..f8fc90ea71e7 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_rc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_rc.c
@@ -3,6 +3,8 @@
  * Copyright © 2021 Intel Corporation
  */
 
+#include <linux/string_helpers.h>
+
 #include "intel_guc_rc.h"
 #include "gt/intel_gt.h"
 #include "i915_drv.h"
@@ -59,7 +61,7 @@ static int __guc_rc_control(struct intel_guc *guc, bool enable)
 	ret = guc_action_control_gucrc(guc, enable);
 	if (ret) {
 		drm_err(drm, "Failed to %s GuC RC (%pe)\n",
-			enabledisable(enable), ERR_PTR(ret));
+			str_enable_disable(enable), ERR_PTR(ret));
 		return ret;
 	}
 
diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
index c62b64012369..06aac2be49ee 100644
--- a/drivers/gpu/drm/i915/i915_utils.h
+++ b/drivers/gpu/drm/i915/i915_utils.h
@@ -404,11 +404,6 @@ static inline const char *onoff(bool v)
 	return v ? "on" : "off";
 }
 
-static inline const char *enabledisable(bool v)
-{
-	return v ? "enable" : "disable";
-}
-
 static inline const char *enableddisabled(bool v)
 {
 	return v ? "enabled" : "disabled";
-- 
2.34.1

