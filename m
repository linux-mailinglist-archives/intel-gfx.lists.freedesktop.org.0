Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B30B118D11D
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2020 15:37:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 115B16EB57;
	Fri, 20 Mar 2020 14:37:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B434D6EB57
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2020 14:37:36 +0000 (UTC)
IronPort-SDR: kO9vrnE1oGRyK+Yg4xx4vY6+oKN16DuQonww9AQqd8UxAb9w3U7QMEg42zv4c+dRWQ9AvVaUwd
 YqDur3v6Vg1g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2020 07:37:36 -0700
IronPort-SDR: 7ExXNBcvCgvgSfeFKgDZjNBaPdwH2WAD66zwVUR6pTYHzWNQZrxjYiQktHY9bmv1UcQnTtyggc
 TY53EhjoMM+g==
X-IronPort-AV: E=Sophos;i="5.72,284,1580803200"; d="scan'208";a="446666863"
Received: from rkamins1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.41.98])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2020 07:37:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Mar 2020 16:36:37 +0200
Message-Id: <cac03aba0a363c8f704035f1f771c73385235a35.1584714939.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1584714939.git.jani.nikula@intel.com>
References: <cover.1584714939.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 12/13] drm/i915/psr: use struct drm_device based
 logging
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
Cc: jani.nikula@intel.com, Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Convert all the DRM_* logging macros to the struct drm_device based
macros to provide device specific logging.

No functional changes.

Generated using the following semantic patch, originally written by
Wambui Karuga <wambui.karugax@gmail.com>, with manual fixups on top:

@@
identifier fn, T;
@@

fn(...,struct drm_i915_private *T,...) {
<+...
(
-DRM_INFO(
+drm_info(&T->drm,
...)
|
-DRM_NOTE(
+drm_notice(&T->drm,
...)
|
-DRM_ERROR(
+drm_err(&T->drm,
...)
|
-DRM_WARN(
+drm_warn(&T->drm,
...)
|
-DRM_DEBUG_DRIVER(
+drm_dbg(&T->drm,
...)
|
-DRM_DEBUG_KMS(
+drm_dbg_kms(&T->drm,
...)
|
-DRM_DEBUG_ATOMIC(
+drm_dbg_atomic(&T->drm,
...)
)
...+>
}

@@
identifier fn, T;
@@

fn(...) {
...
struct drm_i915_private *T = ...;
<+...
(
-DRM_INFO(
+drm_info(&T->drm,
...)
|
-DRM_NOTE(
+drm_notice(&T->drm,
...)
|
-DRM_ERROR(
+drm_err(&T->drm,
...)
|
-DRM_WARN(
+drm_warn(&T->drm,
...)
|
-DRM_DEBUG_DRIVER(
+drm_dbg(&T->drm,
...)
|
-DRM_DEBUG_KMS(
+drm_dbg_kms(&T->drm,
...)
|
-DRM_DEBUG_ATOMIC(
+drm_dbg_atomic(&T->drm,
...)
)
...+>
}

Cc: Wambui Karuga <wambui.karugax@gmail.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 47 +++++++++++++-----------
 1 file changed, 26 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index fd9b146e3aba..a0569fdfeb16 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -137,41 +137,42 @@ static void psr_irq_control(struct drm_i915_private *dev_priv)
 	intel_de_write(dev_priv, imr_reg, val);
 }
 
-static void psr_event_print(u32 val, bool psr2_enabled)
+static void psr_event_print(struct drm_i915_private *i915,
+			    u32 val, bool psr2_enabled)
 {
-	DRM_DEBUG_KMS("PSR exit events: 0x%x\n", val);
+	drm_dbg_kms(&i915->drm, "PSR exit events: 0x%x\n", val);
 	if (val & PSR_EVENT_PSR2_WD_TIMER_EXPIRE)
-		DRM_DEBUG_KMS("\tPSR2 watchdog timer expired\n");
+		drm_dbg_kms(&i915->drm, "\tPSR2 watchdog timer expired\n");
 	if ((val & PSR_EVENT_PSR2_DISABLED) && psr2_enabled)
-		DRM_DEBUG_KMS("\tPSR2 disabled\n");
+		drm_dbg_kms(&i915->drm, "\tPSR2 disabled\n");
 	if (val & PSR_EVENT_SU_DIRTY_FIFO_UNDERRUN)
-		DRM_DEBUG_KMS("\tSU dirty FIFO underrun\n");
+		drm_dbg_kms(&i915->drm, "\tSU dirty FIFO underrun\n");
 	if (val & PSR_EVENT_SU_CRC_FIFO_UNDERRUN)
-		DRM_DEBUG_KMS("\tSU CRC FIFO underrun\n");
+		drm_dbg_kms(&i915->drm, "\tSU CRC FIFO underrun\n");
 	if (val & PSR_EVENT_GRAPHICS_RESET)
-		DRM_DEBUG_KMS("\tGraphics reset\n");
+		drm_dbg_kms(&i915->drm, "\tGraphics reset\n");
 	if (val & PSR_EVENT_PCH_INTERRUPT)
-		DRM_DEBUG_KMS("\tPCH interrupt\n");
+		drm_dbg_kms(&i915->drm, "\tPCH interrupt\n");
 	if (val & PSR_EVENT_MEMORY_UP)
-		DRM_DEBUG_KMS("\tMemory up\n");
+		drm_dbg_kms(&i915->drm, "\tMemory up\n");
 	if (val & PSR_EVENT_FRONT_BUFFER_MODIFY)
-		DRM_DEBUG_KMS("\tFront buffer modification\n");
+		drm_dbg_kms(&i915->drm, "\tFront buffer modification\n");
 	if (val & PSR_EVENT_WD_TIMER_EXPIRE)
-		DRM_DEBUG_KMS("\tPSR watchdog timer expired\n");
+		drm_dbg_kms(&i915->drm, "\tPSR watchdog timer expired\n");
 	if (val & PSR_EVENT_PIPE_REGISTERS_UPDATE)
-		DRM_DEBUG_KMS("\tPIPE registers updated\n");
+		drm_dbg_kms(&i915->drm, "\tPIPE registers updated\n");
 	if (val & PSR_EVENT_REGISTER_UPDATE)
-		DRM_DEBUG_KMS("\tRegister updated\n");
+		drm_dbg_kms(&i915->drm, "\tRegister updated\n");
 	if (val & PSR_EVENT_HDCP_ENABLE)
-		DRM_DEBUG_KMS("\tHDCP enabled\n");
+		drm_dbg_kms(&i915->drm, "\tHDCP enabled\n");
 	if (val & PSR_EVENT_KVMR_SESSION_ENABLE)
-		DRM_DEBUG_KMS("\tKVMR session enabled\n");
+		drm_dbg_kms(&i915->drm, "\tKVMR session enabled\n");
 	if (val & PSR_EVENT_VBI_ENABLE)
-		DRM_DEBUG_KMS("\tVBI enabled\n");
+		drm_dbg_kms(&i915->drm, "\tVBI enabled\n");
 	if (val & PSR_EVENT_LPSP_MODE_EXIT)
-		DRM_DEBUG_KMS("\tLPSP mode exited\n");
+		drm_dbg_kms(&i915->drm, "\tLPSP mode exited\n");
 	if ((val & PSR_EVENT_PSR_DISABLE) && !psr2_enabled)
-		DRM_DEBUG_KMS("\tPSR disabled\n");
+		drm_dbg_kms(&i915->drm, "\tPSR disabled\n");
 }
 
 void intel_psr_irq_handler(struct drm_i915_private *dev_priv, u32 psr_iir)
@@ -209,7 +210,7 @@ void intel_psr_irq_handler(struct drm_i915_private *dev_priv, u32 psr_iir)
 
 			intel_de_write(dev_priv, PSR_EVENT(cpu_transcoder),
 				       val);
-			psr_event_print(val, psr2_enabled);
+			psr_event_print(dev_priv, val, psr2_enabled);
 		}
 	}
 
@@ -249,18 +250,21 @@ static bool intel_dp_get_alpm_status(struct intel_dp *intel_dp)
 
 static u8 intel_dp_get_sink_sync_latency(struct intel_dp *intel_dp)
 {
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	u8 val = 8; /* assume the worst if we can't read the value */
 
 	if (drm_dp_dpcd_readb(&intel_dp->aux,
 			      DP_SYNCHRONIZATION_LATENCY_IN_SINK, &val) == 1)
 		val &= DP_MAX_RESYNC_FRAME_COUNT_MASK;
 	else
-		DRM_DEBUG_KMS("Unable to get sink synchronization latency, assuming 8 frames\n");
+		drm_dbg_kms(&i915->drm,
+			    "Unable to get sink synchronization latency, assuming 8 frames\n");
 	return val;
 }
 
 static u16 intel_dp_get_su_x_granulartiy(struct intel_dp *intel_dp)
 {
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	u16 val;
 	ssize_t r;
 
@@ -273,7 +277,8 @@ static u16 intel_dp_get_su_x_granulartiy(struct intel_dp *intel_dp)
 
 	r = drm_dp_dpcd_read(&intel_dp->aux, DP_PSR2_SU_X_GRANULARITY, &val, 2);
 	if (r != 2)
-		DRM_DEBUG_KMS("Unable to read DP_PSR2_SU_X_GRANULARITY\n");
+		drm_dbg_kms(&i915->drm,
+			    "Unable to read DP_PSR2_SU_X_GRANULARITY\n");
 
 	/*
 	 * Spec says that if the value read is 0 the default granularity should
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
