Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4314459DAF8
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Aug 2022 13:40:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B66898D1B7;
	Tue, 23 Aug 2022 11:40:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 018638BF56;
 Tue, 23 Aug 2022 11:40:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EC03EA7DFB;
 Tue, 23 Aug 2022 11:40:06 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 23 Aug 2022 11:40:06 -0000
Message-ID: <166125480693.2117.12895735968266917656@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1660910433.git.jani.nikula@intel.com>
In-Reply-To: <cover.1660910433.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_stop_modifying_=22const=22_device_info_=28rev3?=
 =?utf-8?q?=29?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: stop modifying "const" device info (rev3)
URL   : https://patchwork.freedesktop.org/series/105358/
State : warning

== Summary ==

Error: dim checkpatch failed
b0d2dc3296d2 drm/i915/guc: remove runtime info printing from time stamp logging
ca2ba90a7f98 drm/i915: combine device info printing into one
ab44989bcb61 drm/i915: add initial runtime info into device info
-:51: WARNING:REPEATED_WORD: Possible repeated word: 'into'
#51: FILE: drivers/gpu/drm/i915/intel_device_info.h:208:
+	 * Platform mask is used for optimizing or-ed IS_PLATFORM calls into
+	 * into single runtime conditionals, and also to provide groundwork

total: 0 errors, 1 warnings, 0 checks, 75 lines checked
71e774dd9e8f drm/i915: move graphics.ver and graphics.rel to runtime info
-:26: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#26: FILE: drivers/gpu/drm/i915/i915_drv.h:860:
+#define GRAPHICS_VER_FULL(i915)		IP_VER(RUNTIME_INFO(i915)->graphics.ver, \
+					       RUNTIME_INFO(i915)->graphics.rel)

-:98: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#98: FILE: drivers/gpu/drm/i915/i915_pci.c:1283:
+	int gttmmaddr_bar = intel_info->__runtime.graphics.ver == 2 ? GEN2_GTTMMADR_BAR : GTTMMADR_BAR;

total: 0 errors, 1 warnings, 1 checks, 110 lines checked
99de4de7e04e drm/i915: move fbc_mask to runtime info
61b6bc9097c5 drm/i915: move page_sizes to runtime info
fcf384b10cc8 drm/i915: move ppgtt_type and ppgtt_size to runtime info
0902f0150e0b drm/i915: move has_pooled_eu to runtime info
4d5aeb8c0dde drm/i915: move memory_regions to runtime info
04bd7c48a683 drm/i915: move platform_engine_mask to runtime info
e4604743924d drm/i915: move pipe_mask and cpu_transcoder_mask to runtime info
-:30: WARNING:SPACING: space prohibited between function name and open parenthesis '('
#30: FILE: drivers/gpu/drm/i915/display/intel_display.h:386:
+		for_each_if (RUNTIME_INFO(__dev_priv)->cpu_transcoder_mask & BIT(__t))

-:43: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#43: FILE: drivers/gpu/drm/i915/i915_drv.h:1267:
+#define HAS_TRANSCODER(dev_priv, trans)	 ((RUNTIME_INFO(dev_priv)->cpu_transcoder_mask & BIT(trans)) != 0)

-:136: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#136: FILE: drivers/gpu/drm/i915/i915_pci.c:465:
+	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TRANSCODER_C), \

total: 0 errors, 3 warnings, 0 checks, 285 lines checked
3205ead7dc2a drm/i915: move has_hdcp to runtime info
196f272a50df drm/i915: move has_dmc to runtime info
6bb1a3f667f9 drm/i915: move has_dsc to runtime info


