Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2F669BDF3A
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 08:19:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC68C10E15B;
	Wed,  6 Nov 2024 07:19:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="0Xlzg8Mn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F55D10E15B
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2024 07:19:12 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 44A6D5C48B8;
 Wed,  6 Nov 2024 07:18:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 58429C4CECD;
 Wed,  6 Nov 2024 07:19:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1730877551;
 bh=65wRH2skqKnxb98Qkbf9RHtbMVoifiBRYI81RQ+CvVk=;
 h=Subject:To:Cc:From:Date:In-Reply-To:From;
 b=0Xlzg8Mncb9IySS2uptxhjBhwDoMcvEYOaENlttGBcWJtflT6M6AJMYDJ7GlQ9Mhz
 44hQSPPsSrox6vzW06E5CEPCl0zhMJKn4KCeK98vUcfu4RA1UTAj0EM1/M4v/BZgUN
 ZNGGe3Q6zPH0f+HhNDSsp7TyFS0wD6MpFTusnU1M=
Subject: Patch "drm/i915: disable fbc due to Wa_16023588340" has been added to
 the 6.11-stable tree
To: gregkh@linuxfoundation.org, intel-gfx@lists.freedesktop.org,
 jani.nikula@intel.com, jonathan.cavitt@intel.com, lucas.demarchi@intel.com,
 matthew.auld@intel.com, matthew.d.roper@intel.com, rodrigo.vivi@intel.com,
 vinod.govindapillai@intel.com
Cc: <stable-commits@vger.kernel.org>
From: <gregkh@linuxfoundation.org>
Date: Wed, 06 Nov 2024 08:18:53 +0100
In-Reply-To: <20241024033815.3538736-2-lucas.demarchi@intel.com>
Message-ID: <2024110653-kung-anyplace-a606@gregkh>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-stable: commit
X-Patchwork-Hint: ignore
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


This is a note to let you know that I've just added the patch titled

    drm/i915: disable fbc due to Wa_16023588340

to the 6.11-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     drm-i915-disable-fbc-due-to-wa_16023588340.patch
and it can be found in the queue-6.11 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From stable+bounces-87982-greg=kroah.com@vger.kernel.org Thu Oct 24 05:39:01 2024
From: Lucas De Marchi <lucas.demarchi@intel.com>
Date: Wed, 23 Oct 2024 20:37:54 -0700
Subject: drm/i915: disable fbc due to Wa_16023588340
To: stable@vger.kernel.org
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>, Matthew Auld <matthew.auld@intel.com>, Jonathan Cavitt <jonathan.cavitt@intel.com>, Matt Roper <matthew.d.roper@intel.com>, Lucas De Marchi <lucas.demarchi@intel.com>, Vinod Govindapillai <vinod.govindapillai@intel.com>, Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Message-ID: <20241024033815.3538736-2-lucas.demarchi@intel.com>

From: Matthew Auld <matthew.auld@intel.com>

commit c55f79f317ab428ae6d005965bc07e37496f209f upstream.

On BMG-G21 we need to disable fbc due to complications around the WA.

v2:
 - Try to handle with i915_drv.h and compat layer. (Rodrigo)
v3:
 - For simplicity retreat back to the original design for now.
 - Drop the extra \ from the Makefile (Jani)

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Vinod Govindapillai <vinod.govindapillai@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20240703124338.208220-4-matthew.auld@intel.com
[ commit dc0f1644c47e ("drm/xe: Generate oob before compiling anything")
  makes part of the change to the Makefile not needed.
  Drop that to resolve conflict. ]
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/gpu/drm/i915/display/intel_display_wa.h |    8 ++++++++
 drivers/gpu/drm/i915/display/intel_fbc.c        |    6 ++++++
 drivers/gpu/drm/xe/Makefile                     |    1 +
 drivers/gpu/drm/xe/display/xe_display_wa.c      |   16 ++++++++++++++++
 4 files changed, 31 insertions(+)
 create mode 100644 drivers/gpu/drm/xe/display/xe_display_wa.c

--- a/drivers/gpu/drm/i915/display/intel_display_wa.h
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
@@ -6,8 +6,16 @@
 #ifndef __INTEL_DISPLAY_WA_H__
 #define __INTEL_DISPLAY_WA_H__
 
+#include <linux/types.h>
+
 struct drm_i915_private;
 
 void intel_display_wa_apply(struct drm_i915_private *i915);
 
+#ifdef I915
+static inline bool intel_display_needs_wa_16023588340(struct drm_i915_private *i915) { return false; }
+#else
+bool intel_display_needs_wa_16023588340(struct drm_i915_private *i915);
+#endif
+
 #endif
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -56,6 +56,7 @@
 #include "intel_display_device.h"
 #include "intel_display_trace.h"
 #include "intel_display_types.h"
+#include "intel_display_wa.h"
 #include "intel_fbc.h"
 #include "intel_fbc_regs.h"
 #include "intel_frontbuffer.h"
@@ -1237,6 +1238,11 @@ static int intel_fbc_check_plane(struct
 		return 0;
 	}
 
+	if (intel_display_needs_wa_16023588340(i915)) {
+		plane_state->no_fbc_reason = "Wa_16023588340";
+		return 0;
+	}
+
 	/* WaFbcTurnOffFbcWhenHyperVisorIsUsed:skl,bxt */
 	if (i915_vtd_active(i915) && (IS_SKYLAKE(i915) || IS_BROXTON(i915))) {
 		plane_state->no_fbc_reason = "VT-d enabled";
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -175,6 +175,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	display/xe_display.o \
 	display/xe_display_misc.o \
 	display/xe_display_rps.o \
+	display/xe_display_wa.o \
 	display/xe_dsb_buffer.o \
 	display/xe_fb_pin.o \
 	display/xe_hdcp_gsc.o \
--- /dev/null
+++ b/drivers/gpu/drm/xe/display/xe_display_wa.c
@@ -0,0 +1,16 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2024 Intel Corporation
+ */
+
+#include "intel_display_wa.h"
+
+#include "xe_device.h"
+#include "xe_wa.h"
+
+#include <generated/xe_wa_oob.h>
+
+bool intel_display_needs_wa_16023588340(struct drm_i915_private *i915)
+{
+	return XE_WA(xe_root_mmio_gt(i915), 16023588340);
+}


Patches currently in stable-queue which might be from lucas.demarchi@intel.com are

queue-6.11/drm-xe-add-mmio-read-before-ggtt-invalidate.patch
queue-6.11/drm-i915-disable-fbc-due-to-wa_16023588340.patch
queue-6.11/drm-i915-skip-programming-fia-link-enable-bits-for-mtl.patch
queue-6.11/drm-i915-display-cache-adpative-sync-caps-to-use-it-later.patch
queue-6.11/drm-i915-display-don-t-enable-decompression-on-xe2-with-tile4.patch
queue-6.11/drm-xe-xe2-introduce-performance-changes.patch
queue-6.11/drm-xe-define-stateless_compression_ctrl-as-mcr-register.patch
queue-6.11/drm-i915-hdcp-add-encoder-check-in-hdcp2_get_capability.patch
queue-6.11/drm-i915-hdcp-add-encoder-check-in-intel_hdcp_get_capability.patch
queue-6.11/drm-xe-don-t-short-circuit-tdr-on-jobs-not-started.patch
queue-6.11/drm-xe-write-all-slices-if-its-mcr-register.patch
queue-6.11/drm-i915-move-rawclk-from-runtime-to-display-runtime-info.patch
queue-6.11/drm-xe-display-drop-unused-rawclk_freq-and-runtime_info.patch
queue-6.11/drm-xe-xe2hpg-add-wa_15016589081.patch
queue-6.11/drm-i915-display-dp-compute-as-sdp-when-vrr-is-also-enabled.patch
queue-6.11/drm-i915-pps-disable-dpls_gating-around-pps-sequence.patch
queue-6.11/drm-i915-dp-clear-vsc-sdp-during-post-ddi-disable-routine.patch
queue-6.11/drm-xe-xe2-add-performance-turning-changes.patch
queue-6.11/drm-i915-psr-prevent-panel-replay-if-crc-calculation-is-enabled.patch
queue-6.11/drm-xe-move-enable-host-l2-vram-post-mcr-init.patch
queue-6.11/drm-xe-support-nomodeset-kernel-command-line-option.patch
queue-6.11/drm-xe-xe2hpg-introduce-performance-tuning-changes-for-xe2_hpg.patch
queue-6.11/drm-i915-display-wa-for-re-initialize-dispcnlunitt1-xosc-clock.patch
