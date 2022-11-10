Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E52CA62498D
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Nov 2022 19:34:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B208310E075;
	Thu, 10 Nov 2022 18:34:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7E62110E075;
 Thu, 10 Nov 2022 18:34:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 74C02A00E6;
 Thu, 10 Nov 2022 18:34:36 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 10 Nov 2022 18:34:36 -0000
Message-ID: <166810527644.16952.12617629155999968231@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1668008071.git.jani.nikula@intel.com>
In-Reply-To: <cover.1668008071.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_header_cleanups=2C_cont=27d?=
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

Series: drm/i915: header cleanups, cont'd
URL   : https://patchwork.freedesktop.org/series/110716/
State : warning

== Summary ==

Error: dim checkpatch failed
a1c8e7edfaca drm/i915/reg: move masked field helpers to i915_reg_defs.h
-:48: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'mask' - possible side-effects?
#48: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:102:
+#define _MASKED_FIELD(mask, value) ({					   \
+	if (__builtin_constant_p(mask))					   \
+		BUILD_BUG_ON_MSG(((mask) & 0xffff0000), "Incorrect mask"); \
+	if (__builtin_constant_p(value))				   \
+		BUILD_BUG_ON_MSG((value) & 0xffff0000, "Incorrect value"); \
+	if (__builtin_constant_p(mask) && __builtin_constant_p(value))	   \
+		BUILD_BUG_ON_MSG((value) & ~(mask),			   \
+				 "Incorrect value for mask");		   \
+	__MASKED_FIELD(mask, value); })

-:48: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'value' - possible side-effects?
#48: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:102:
+#define _MASKED_FIELD(mask, value) ({					   \
+	if (__builtin_constant_p(mask))					   \
+		BUILD_BUG_ON_MSG(((mask) & 0xffff0000), "Incorrect mask"); \
+	if (__builtin_constant_p(value))				   \
+		BUILD_BUG_ON_MSG((value) & 0xffff0000, "Incorrect value"); \
+	if (__builtin_constant_p(mask) && __builtin_constant_p(value))	   \
+		BUILD_BUG_ON_MSG((value) & ~(mask),			   \
+				 "Incorrect value for mask");		   \
+	__MASKED_FIELD(mask, value); })

total: 0 errors, 0 warnings, 2 checks, 38 lines checked
a3b636f83d37 drm/i915/reg: move pick even and pick to reg defs
-:55: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__a' - possible side-effects?
#55: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:120:
+#define _PICK_EVEN(__index, __a, __b) ((__a) + (__index) * ((__b) - (__a)))

total: 0 errors, 0 warnings, 1 checks, 42 lines checked
3a98d29dd753 drm/i915: split out intel_display_reg_defs.h
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:57: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#57: 
new file mode 100644

-:107: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#107: FILE: drivers/gpu/drm/i915/display/intel_display_reg_defs.h:46:
+#define _MMIO_TRANS2(tran, reg)		_MMIO(INTEL_INFO(dev_priv)->display.trans_offsets[(tran)] - \

-:108: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#108: FILE: drivers/gpu/drm/i915/display/intel_display_reg_defs.h:47:
+					      INTEL_INFO(dev_priv)->display.trans_offsets[TRANSCODER_A] + \

-:110: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#110: FILE: drivers/gpu/drm/i915/display/intel_display_reg_defs.h:49:
+#define _MMIO_CURSOR2(pipe, reg)	_MMIO(INTEL_INFO(dev_priv)->display.cursor_offsets[(pipe)] - \

-:111: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#111: FILE: drivers/gpu/drm/i915/display/intel_display_reg_defs.h:50:
+					      INTEL_INFO(dev_priv)->display.cursor_offsets[PIPE_A] + \

total: 0 errors, 5 warnings, 0 checks, 176 lines checked
b2c1abcfaf49 drm/i915: stop including i915_irq.h from i915_trace.h


