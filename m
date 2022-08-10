Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5842258F01D
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Aug 2022 18:10:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BE0B8EB5D;
	Wed, 10 Aug 2022 16:10:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2AC4411BA19;
 Wed, 10 Aug 2022 16:10:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 20983AADDB;
 Wed, 10 Aug 2022 16:10:00 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 10 Aug 2022 16:10:00 -0000
Message-ID: <166014780010.12359.2755224595221755930@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1660137416.git.jani.nikula@intel.com>
In-Reply-To: <cover.1660137416.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_stop_modifying_=22const=22_device_info_=28rev2?=
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

Series: drm/i915: stop modifying "const" device info (rev2)
URL   : https://patchwork.freedesktop.org/series/105358/
State : warning

== Summary ==

Error: dim checkpatch failed
8b6f98985b8e drm/i915: combine device info printing into one
9a6f5a0b06ee drm/i915: add initial runtime info into device info
-:50: WARNING:REPEATED_WORD: Possible repeated word: 'into'
#50: FILE: drivers/gpu/drm/i915/intel_device_info.h:208:
+	 * Platform mask is used for optimizing or-ed IS_PLATFORM calls into
+	 * into single runtime conditionals, and also to provide groundwork

total: 0 errors, 1 warnings, 0 checks, 75 lines checked
eff9cb7472ab drm/i915: move graphics.ver and graphics.rel to runtime info
-:25: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#25: FILE: drivers/gpu/drm/i915/i915_drv.h:860:
+#define GRAPHICS_VER_FULL(i915)		IP_VER(RUNTIME_INFO(i915)->graphics.ver, \
+					       RUNTIME_INFO(i915)->graphics.rel)

-:97: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#97: FILE: drivers/gpu/drm/i915/i915_pci.c:1282:
+	int gttmmaddr_bar = intel_info->__runtime.graphics.ver == 2 ? GEN2_GTTMMADR_BAR : GTTMMADR_BAR;

total: 0 errors, 1 warnings, 1 checks, 110 lines checked
c91b0751436c drm/i915: move fbc_mask to runtime info
60defce05855 drm/i915: move page_sizes to runtime info
ebde9ea8aa1b drm/i915: move ppgtt_type and ppgtt_size to runtime info
1e95268eb1b7 drm/i915: move has_pooled_eu to runtime info
cb5008f15cdc drm/i915: move memory_regions to runtime info
e4e72f502374 drm/i915: move platform_engine_mask to runtime info
95b5e00b267b drm/i915: move pipe_mask and cpu_transcoder_mask to runtime info
-:29: WARNING:SPACING: space prohibited between function name and open parenthesis '('
#29: FILE: drivers/gpu/drm/i915/display/intel_display.h:386:
+		for_each_if (RUNTIME_INFO(__dev_priv)->cpu_transcoder_mask & BIT(__t))

-:42: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#42: FILE: drivers/gpu/drm/i915/i915_drv.h:1267:
+#define HAS_TRANSCODER(dev_priv, trans)	 ((RUNTIME_INFO(dev_priv)->cpu_transcoder_mask & BIT(trans)) != 0)

-:135: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#135: FILE: drivers/gpu/drm/i915/i915_pci.c:465:
+	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TRANSCODER_C), \

total: 0 errors, 3 warnings, 0 checks, 285 lines checked
4d4a584c9236 drm/i915: move has_hdcp to runtime info
3bf8d186903e drm/i915: move has_dmc to runtime info
0f1ae80e426f drm/i915: move has_dsc to runtime info
45006d03e664 drm/i915: stop resetting display info to zero for no display
b596999522ef drm/i915: make device info a pointer to static const data
-:58: CHECK:MACRO_ARG_PRECEDENCE: Macro argument '__i915' may be better as '(__i915)' to avoid precedence issues
#58: FILE: drivers/gpu/drm/i915/i915_drv.h:851:
+#define INTEL_INFO(__i915)	(__i915->__info)

total: 0 errors, 0 warnings, 1 checks, 49 lines checked


