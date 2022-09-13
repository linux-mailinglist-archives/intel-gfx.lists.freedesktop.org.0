Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D2785B64F4
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Sep 2022 03:13:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 391C110E05D;
	Tue, 13 Sep 2022 01:13:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5D8C710E05D;
 Tue, 13 Sep 2022 01:13:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 547B0AAA91;
 Tue, 13 Sep 2022 01:13:14 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 13 Sep 2022 01:13:14 -0000
Message-ID: <166303159432.21294.1667293156612439069@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1662999695.git.jani.nikula@intel.com>
In-Reply-To: <cover.1662999695.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_header_cleanups_=28rev2=29?=
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

Series: drm/i915: header cleanups (rev2)
URL   : https://patchwork.freedesktop.org/series/93777/
State : warning

== Summary ==

Error: dim checkpatch failed
5507d6540b9e drm/i915/gmbus: move GPIO enum to gmbus
855c0fd1a265 drm/i915: reduce includes in intel_connector.h
9be9ae1ddda3 drm/i915: reduce includes in intel_fifo_underrun.h
a75ba0cee8c8 drm/i915: un-inline icl_hdr_plane_mask() to simplify includes
cce28c76520c drm/i915/dpio: un-inline the vlv phy/channel mapping functions
b9c868ec648a drm/i915/dpio: move dpio_channel and dpio_phy enums to intel_dpio_phy.h
074dd7be5839 drm/i915: reduce includes in intel_display_power.h
1b48a50fcd22 drm/i915/display: reduce the includes in intel_dvo_dev.h
899a1851365d drm/i915/display: reduce includes in intel_hdmi.h
625b062ea145 drm/i915/display: reduce includes in g4x_dp.h includes
7642f05fe510 drm/i915/irq: make gen2_irq_init()/gen2_irq_reset() static
c8f1bad1e357 drm/i915/reg: move masked field helpers to i915_reg_defs.h
-:43: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'mask' - possible side-effects?
#43: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:102:
+#define _MASKED_FIELD(mask, value) ({					   \
+	if (__builtin_constant_p(mask))					   \
+		BUILD_BUG_ON_MSG(((mask) & 0xffff0000), "Incorrect mask"); \
+	if (__builtin_constant_p(value))				   \
+		BUILD_BUG_ON_MSG((value) & 0xffff0000, "Incorrect value"); \
+	if (__builtin_constant_p(mask) && __builtin_constant_p(value))	   \
+		BUILD_BUG_ON_MSG((value) & ~(mask),			   \
+				 "Incorrect value for mask");		   \
+	__MASKED_FIELD(mask, value); })

-:43: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'value' - possible side-effects?
#43: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:102:
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
9ac4c205c0cf drm/i915/reg: move pick even and pick to reg defs
-:50: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__a' - possible side-effects?
#50: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:120:
+#define _PICK_EVEN(__index, __a, __b) ((__a) + (__index) * ((__b) - (__a)))

total: 0 errors, 0 warnings, 1 checks, 42 lines checked
211b335dbe49 drm/i915: split out intel_display_reg_defs.h
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:52: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#52: 
new file mode 100644

-:102: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#102: FILE: drivers/gpu/drm/i915/display/intel_display_reg_defs.h:46:
+#define _MMIO_TRANS2(tran, reg)		_MMIO(INTEL_INFO(dev_priv)->display.trans_offsets[(tran)] - \

-:103: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#103: FILE: drivers/gpu/drm/i915/display/intel_display_reg_defs.h:47:
+					      INTEL_INFO(dev_priv)->display.trans_offsets[TRANSCODER_A] + \

-:105: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#105: FILE: drivers/gpu/drm/i915/display/intel_display_reg_defs.h:49:
+#define _MMIO_CURSOR2(pipe, reg)	_MMIO(INTEL_INFO(dev_priv)->display.cursor_offsets[(pipe)] - \

-:106: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#106: FILE: drivers/gpu/drm/i915/display/intel_display_reg_defs.h:50:
+					      INTEL_INFO(dev_priv)->display.cursor_offsets[PIPE_A] + \

total: 0 errors, 5 warnings, 0 checks, 176 lines checked
08bcce40276d drm/i915: stop including i915_irq.h from i915_trace.h


