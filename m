Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D947B551D82
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 16:16:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90B7C10E3F9;
	Mon, 20 Jun 2022 14:16:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 31AD110E39D;
 Mon, 20 Jun 2022 14:16:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 26689AADDA;
 Mon, 20 Jun 2022 14:16:23 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Mon, 20 Jun 2022 14:16:23 -0000
Message-ID: <165573458312.12734.3963303438738395651@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1655712106.git.jani.nikula@intel.com>
In-Reply-To: <cover.1655712106.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_stop_modifying_=22const=22_device_info?=
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

Series: drm/i915: stop modifying "const" device info
URL   : https://patchwork.freedesktop.org/series/105358/
State : warning

== Summary ==

Error: dim checkpatch failed
0c57ec003486 drm/i915: use GRAPHICS_VER() instead of accessing match_info directly
596a710de9af drm/i915: combine device info printing into one
27dda2c69a5b drm/i915: add initial runtime info into device info
-:50: WARNING:REPEATED_WORD: Possible repeated word: 'into'
#50: FILE: drivers/gpu/drm/i915/intel_device_info.h:203:
+	 * Platform mask is used for optimizing or-ed IS_PLATFORM calls into
+	 * into single runtime conditionals, and also to provide groundwork

total: 0 errors, 1 warnings, 0 checks, 75 lines checked
f2624b41fbe2 drm/i915: move fbc_mask to runtime info
efa469b40f22 drm/i915: move page_sizes to runtime info
340a168b80a7 drm/i915: move ppgtt_type and ppgtt_size to runtime info
f709762facd3 drm/i915: move has_pooled_eu to runtime info
991edfbbdf6d drm/i915: move memory_regions to runtime info
6f6f368ead3b drm/i915: move platform_engine_mask to runtime info
e72012a41c6b drm/i915: move graphics.ver and graphics.rel to runtime info
-:25: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#25: FILE: drivers/gpu/drm/i915/i915_drv.h:860:
+#define GRAPHICS_VER_FULL(i915)		IP_VER(RUNTIME_INFO(i915)->graphics.ver, \
+					       RUNTIME_INFO(i915)->graphics.rel)

total: 0 errors, 0 warnings, 1 checks, 92 lines checked
6b83e911add8 drm/i915: move pipe_mask and cpu_transcoder_mask to runtime info
-:29: WARNING:SPACING: space prohibited between function name and open parenthesis '('
#29: FILE: drivers/gpu/drm/i915/display/intel_display.h:385:
+		for_each_if (RUNTIME_INFO(__dev_priv)->cpu_transcoder_mask & BIT(__t))

-:42: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#42: FILE: drivers/gpu/drm/i915/i915_drv.h:1262:
+#define HAS_TRANSCODER(dev_priv, trans)	 ((RUNTIME_INFO(dev_priv)->cpu_transcoder_mask & BIT(trans)) != 0)

-:135: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#135: FILE: drivers/gpu/drm/i915/i915_pci.c:461:
+	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TRANSCODER_C), \

total: 0 errors, 3 warnings, 0 checks, 285 lines checked
da3bd5bf69ed drm/i915: move has_hdcp to runtime info
ad747f8e7763 drm/i915: move has_dmc to runtime info
fb508a532365 drm/i915: move has_dsc to runtime info
69828fb97c44 drm/i915: stop resetting display info to zero for no display
66cd29e28b96 drm/i915: make device info a pointer to static const data
-:58: CHECK:MACRO_ARG_PRECEDENCE: Macro argument '__i915' may be better as '(__i915)' to avoid precedence issues
#58: FILE: drivers/gpu/drm/i915/i915_drv.h:851:
+#define INTEL_INFO(__i915)	(__i915->__info)

total: 0 errors, 0 warnings, 1 checks, 49 lines checked


