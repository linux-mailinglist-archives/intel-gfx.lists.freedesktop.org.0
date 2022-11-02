Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2484E6160CF
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 11:31:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DDEC10E46A;
	Wed,  2 Nov 2022 10:31:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 05C8910E149;
 Wed,  2 Nov 2022 10:31:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F092CAADD2;
 Wed,  2 Nov 2022 10:31:40 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 02 Nov 2022 10:31:40 -0000
Message-ID: <166738510098.23604.2711304493142141053@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1667383630.git.jani.nikula@intel.com>
In-Reply-To: <cover.1667383630.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_header_cleanups=2C_again?=
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

Series: drm/i915: header cleanups, again
URL   : https://patchwork.freedesktop.org/series/110404/
State : warning

== Summary ==

Error: dim checkpatch failed
6754904276d7 drm/i915/gmbus: move GPIO enum to gmbus
2a784da3f35c drm/i915: reduce includes in intel_connector.h
f47bc9ebfc0b drm/i915: reduce includes in intel_fifo_underrun.h
ce12f0e881b6 drm/i915: un-inline icl_hdr_plane_mask() to simplify includes
8285735e39df drm/i915/dpio: un-inline the vlv phy/channel mapping functions
9b07c5ec4e96 drm/i915/dpio: move dpio_channel and dpio_phy enums to intel_dpio_phy.h
da1878bc1f1a drm/i915: reduce includes in intel_display_power.h
625f12076590 drm/i915/display: reduce the includes in intel_dvo_dev.h
bb13f370128a drm/i915/display: reduce includes in intel_hdmi.h
ae0868d6856d drm/i915/display: reduce includes in g4x_dp.h includes
4bbd5d7c428d drm/i915/irq: make gen2_irq_init()/gen2_irq_reset() static
5731affc78b0 drm/i915/reg: move masked field helpers to i915_reg_defs.h
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
333ed5d33d7b drm/i915/reg: move pick even and pick to reg defs
-:50: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__a' - possible side-effects?
#50: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:120:
+#define _PICK_EVEN(__index, __a, __b) ((__a) + (__index) * ((__b) - (__a)))

total: 0 errors, 0 warnings, 1 checks, 42 lines checked
aaa8a4e6d112 drm/i915: split out intel_display_reg_defs.h
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
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
b29192bf3d0f drm/i915: stop including i915_irq.h from i915_trace.h
7918f2c457ef drm/i915/display: move struct intel_link_m_n to intel_display_types.h


