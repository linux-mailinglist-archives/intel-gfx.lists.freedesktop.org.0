Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63A0E8FE127
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 10:38:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0B3510E12C;
	Thu,  6 Jun 2024 08:38:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a6498e030952 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96AAA10E312;
 Thu,  6 Jun 2024 08:38:46 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_Implement_WA_to_fix_incre?=
 =?utf-8?q?ased_power_usage?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 06 Jun 2024 08:38:46 -0000
Message-ID: <171766312661.3936.11869617852628832701@a6498e030952>
X-Patchwork-Hint: ignore
References: <20240606082926.1816416-2-suraj.kandpal@intel.com>
In-Reply-To: <20240606082926.1816416-2-suraj.kandpal@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Implement WA to fix increased power usage
URL   : https://patchwork.freedesktop.org/series/134541/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/i915/display/intel_psr.o
In file included from drivers/gpu/drm/i915/display/intel_psr.c:35:
drivers/gpu/drm/i915/display/intel_psr.c: In function ‘intel_psr_check_delayed_vblank_limit’:
drivers/gpu/drm/i915/i915_reg.h:4158:55: error: ‘dev_priv’ undeclared (first use in this function); did you mean ‘dev_crit’?
 4158 | #define TRANS_SET_CONTEXT_LATENCY(tran)  _MMIO_TRANS2(dev_priv, tran, _TRANS_A_SET_CONTEXT_LATENCY)
      |                                                       ^~~~~~~~
drivers/gpu/drm/i915/display/intel_de.h:31:69: note: in definition of macro ‘intel_de_read’
   31 | #define intel_de_read(p,...) __intel_de_read(__to_intel_display(p), __VA_ARGS__)
      |                                                                     ^~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_display_reg_defs.h:42:42: note: in expansion of macro ‘_MMIO’
   42 | #define _MMIO_TRANS2(display, tran, reg) _MMIO(DISPLAY_INFO(display)->trans_offsets[(tran)] - \
      |                                          ^~~~~
drivers/gpu/drm/i915/display/intel_display_device.h:185:30: note: in expansion of macro ‘__to_intel_display’
  185 | #define DISPLAY_INFO(i915)  (__to_intel_display(i915)->info.__device_info)
      |                              ^~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_display_reg_defs.h:42:48: note: in expansion of macro ‘DISPLAY_INFO’
   42 | #define _MMIO_TRANS2(display, tran, reg) _MMIO(DISPLAY_INFO(display)->trans_offsets[(tran)] - \
      |                                                ^~~~~~~~~~~~
drivers/gpu/drm/i915/i915_reg.h:4158:42: note: in expansion of macro ‘_MMIO_TRANS2’
 4158 | #define TRANS_SET_CONTEXT_LATENCY(tran)  _MMIO_TRANS2(dev_priv, tran, _TRANS_A_SET_CONTEXT_LATENCY)
      |                                          ^~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_psr.c:817:29: note: in expansion of macro ‘TRANS_SET_CONTEXT_LATENCY’
  817 |  return intel_de_read(i915, TRANS_SET_CONTEXT_LATENCY(cpu_transcoder)) >= 6;
      |                             ^~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/i915_reg.h:4158:55: note: each undeclared identifier is reported only once for each function it appears in
 4158 | #define TRANS_SET_CONTEXT_LATENCY(tran)  _MMIO_TRANS2(dev_priv, tran, _TRANS_A_SET_CONTEXT_LATENCY)
      |                                                       ^~~~~~~~
drivers/gpu/drm/i915/display/intel_de.h:31:69: note: in definition of macro ‘intel_de_read’
   31 | #define intel_de_read(p,...) __intel_de_read(__to_intel_display(p), __VA_ARGS__)
      |                                                                     ^~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_display_reg_defs.h:42:42: note: in expansion of macro ‘_MMIO’
   42 | #define _MMIO_TRANS2(display, tran, reg) _MMIO(DISPLAY_INFO(display)->trans_offsets[(tran)] - \
      |                                          ^~~~~
drivers/gpu/drm/i915/display/intel_display_device.h:185:30: note: in expansion of macro ‘__to_intel_display’
  185 | #define DISPLAY_INFO(i915)  (__to_intel_display(i915)->info.__device_info)
      |                              ^~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_display_reg_defs.h:42:48: note: in expansion of macro ‘DISPLAY_INFO’
   42 | #define _MMIO_TRANS2(display, tran, reg) _MMIO(DISPLAY_INFO(display)->trans_offsets[(tran)] - \
      |                                                ^~~~~~~~~~~~
drivers/gpu/drm/i915/i915_reg.h:4158:42: note: in expansion of macro ‘_MMIO_TRANS2’
 4158 | #define TRANS_SET_CONTEXT_LATENCY(tran)  _MMIO_TRANS2(dev_priv, tran, _TRANS_A_SET_CONTEXT_LATENCY)
      |                                          ^~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_psr.c:817:29: note: in expansion of macro ‘TRANS_SET_CONTEXT_LATENCY’
  817 |  return intel_de_read(i915, TRANS_SET_CONTEXT_LATENCY(cpu_transcoder)) >= 6;
      |                             ^~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_psr.c:815:24: error: parameter ‘cpu_transcoder’ set but not used [-Werror=unused-but-set-parameter]
  815 |        enum transcoder cpu_transcoder)
      |        ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~
In file included from drivers/gpu/drm/i915/display/intel_psr.c:35:
drivers/gpu/drm/i915/display/intel_psr.c: In function ‘intel_psr_is_dpkgc_configured’:
drivers/gpu/drm/i915/display/intel_psr.c:822:29: error: ‘LNL_PKG_C_LATENCY’ undeclared (first use in this function)
  822 |  return intel_de_read(i915, LNL_PKG_C_LATENCY) == U32_MAX;
      |                             ^~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_de.h:31:69: note: in definition of macro ‘intel_de_read’
   31 | #define intel_de_read(p,...) __intel_de_read(__to_intel_display(p), __VA_ARGS__)
      |                                                                     ^~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_psr.c: In function ‘intel_psr_is_dc5_entry_possible’:
drivers/gpu/drm/i915/display/intel_psr.c:835:12: error: ‘struct drm_crtc’ has no member named ‘active’
  835 |   if (!crtc->active)
      |            ^~
drivers/gpu/drm/i915/display/intel_psr.c:842:48: error: ‘_encoder’ undeclared (first use in this function); did you mean ‘encoder’?
  842 |    struct intel_dp *intel_dp = enc_to_intel_dp(_encoder);
      |                                                ^~~~~~~~
      |                                                encoder
drivers/gpu/drm/i915/display/intel_psr.c: In function ‘wa_16023497226_check’:
drivers/gpu/drm/i915/display/intel_psr.c:861:6: error: implicit declaration of function ‘is_dpkg_c_configured’ [-Werror=implicit-function-declaration]
  861 |  if (is_dpkg_c_configured(i915)) {
      |      ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_psr.c:866:21: error: implicit declaration of function ‘is_dc5_entry_possible’; did you mean ‘intel_psr_is_dc5_entry_possible’? [-Werror=implicit-function-declaration]
  866 |   else if (!psr1 && is_dc5_entry_possible(i915))
      |                     ^~~~~~~~~~~~~~~~~~~~~
      |                     intel_psr_is_dc5_entry_possible
drivers/gpu/drm/i915/display/intel_psr.c: In function ‘intel_psr_check_delayed_vblank_limit’:
drivers/gpu/drm/i915/display/intel_psr.c:818:1: error: control reaches end of non-void function [-Werror=return-type]
  818 | }
      | ^
At top level:
drivers/gpu/drm/i915/display/intel_psr.c:820:13: error: ‘intel_psr_is_dpkgc_configured’ defined but not used [-Werror=unused-function]
  820 | static bool intel_psr_is_dpkgc_configured(struct drm_i915_private *i915)
      |             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cc1: all warnings being treated as errors
make[6]: *** [scripts/Makefile.build:244: drivers/gpu/drm/i915/display/intel_psr.o] Error 1
make[5]: *** [scripts/Makefile.build:485: drivers/gpu/drm/i915] Error 2
make[4]: *** [scripts/Makefile.build:485: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:485: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:485: drivers] Error 2
make[1]: *** [/home/kbuild/kernel/Makefile:1934: .] Error 2
make: *** [Makefile:240: __sub-make] Error 2
Build failed, no error log produced


