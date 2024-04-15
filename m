Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B396D8A53A9
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Apr 2024 16:29:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 048A2112607;
	Mon, 15 Apr 2024 14:29:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BE4911260C;
 Mon, 15 Apr 2024 14:29:52 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_drm/i915=3A_BXT/GLK_per-l?=
 =?utf-8?q?ane_vswing_and_PHY_reg_cleanup?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 15 Apr 2024 14:29:52 -0000
Message-ID: <171319139229.1404431.17467187167272410903@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240412175818.29217-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240412175818.29217-1-ville.syrjala@linux.intel.com>
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

Series: drm/i915: BXT/GLK per-lane vswing and PHY reg cleanup
URL   : https://patchwork.freedesktop.org/series/132390/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/i915/intel_gvt_mmio_table.o
In file included from drivers/gpu/drm/i915/display/intel_display_reg_defs.h:9,
                 from drivers/gpu/drm/i915/display/intel_audio_regs.h:9,
                 from drivers/gpu/drm/i915/intel_gvt_mmio_table.c:6:
drivers/gpu/drm/i915/intel_gvt_mmio_table.c: In function ‘iterate_bxt_mmio’:
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1130:9: error: implicit declaration of function ‘BXT_PORT_PLL_ENABLE’; did you mean ‘BXT_DSI_PLL_ENABLE’? [-Werror=implicit-function-declaration]
 1130 |  MMIO_D(BXT_PORT_PLL_ENABLE(PORT_A));
      |         ^~~~~~~~~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:12: note: in definition of macro ‘i915_mmio_reg_offset’
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |            ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1130:2: note: in expansion of macro ‘MMIO_D’
 1130 |  MMIO_D(BXT_PORT_PLL_ENABLE(PORT_A));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1130:2: note: in expansion of macro ‘MMIO_D’
 1130 |  MMIO_D(BXT_PORT_PLL_ENABLE(PORT_A));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1131:2: note: in expansion of macro ‘MMIO_D’
 1131 |  MMIO_D(BXT_PORT_PLL_ENABLE(PORT_B));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1132:2: note: in expansion of macro ‘MMIO_D’
 1132 |  MMIO_D(BXT_PORT_PLL_ENABLE(PORT_C));
      |  ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1133:9: error: implicit declaration of function ‘BXT_PORT_CL1CM_DW0’ [-Werror=implicit-function-declaration]
 1133 |  MMIO_D(BXT_PORT_CL1CM_DW0(DPIO_PHY0));
      |         ^~~~~~~~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:12: note: in definition of macro ‘i915_mmio_reg_offset’
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |            ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1133:2: note: in expansion of macro ‘MMIO_D’
 1133 |  MMIO_D(BXT_PORT_CL1CM_DW0(DPIO_PHY0));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1133:2: note: in expansion of macro ‘MMIO_D’
 1133 |  MMIO_D(BXT_PORT_CL1CM_DW0(DPIO_PHY0));
      |  ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1134:9: error: implicit declaration of function ‘BXT_PORT_CL1CM_DW9’ [-Werror=implicit-function-declaration]
 1134 |  MMIO_D(BXT_PORT_CL1CM_DW9(DPIO_PHY0));
      |         ^~~~~~~~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:12: note: in definition of macro ‘i915_mmio_reg_offset’
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |            ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1134:2: note: in expansion of macro ‘MMIO_D’
 1134 |  MMIO_D(BXT_PORT_CL1CM_DW9(DPIO_PHY0));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1134:2: note: in expansion of macro ‘MMIO_D’
 1134 |  MMIO_D(BXT_PORT_CL1CM_DW9(DPIO_PHY0));
      |  ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1135:9: error: implicit declaration of function ‘BXT_PORT_CL1CM_DW10’ [-Werror=implicit-function-declaration]
 1135 |  MMIO_D(BXT_PORT_CL1CM_DW10(DPIO_PHY0));
      |         ^~~~~~~~~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:12: note: in definition of macro ‘i915_mmio_reg_offset’
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |            ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1135:2: note: in expansion of macro ‘MMIO_D’
 1135 |  MMIO_D(BXT_PORT_CL1CM_DW10(DPIO_PHY0));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1135:2: note: in expansion of macro ‘MMIO_D’
 1135 |  MMIO_D(BXT_PORT_CL1CM_DW10(DPIO_PHY0));
      |  ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1136:9: error: implicit declaration of function ‘BXT_PORT_CL1CM_DW28’ [-Werror=implicit-function-declaration]
 1136 |  MMIO_D(BXT_PORT_CL1CM_DW28(DPIO_PHY0));
      |         ^~~~~~~~~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:12: note: in definition of macro ‘i915_mmio_reg_offset’
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |            ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1136:2: note: in expansion of macro ‘MMIO_D’
 1136 |  MMIO_D(BXT_PORT_CL1CM_DW28(DPIO_PHY0));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1136:2: note: in expansion of macro ‘MMIO_D’
 1136 |  MMIO_D(BXT_PORT_CL1CM_DW28(DPIO_PHY0));
      |  ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1137:9: error: implicit declaration of function ‘BXT_PORT_CL1CM_DW30’ [-Werror=implicit-function-declaration]
 1137 |  MMIO_D(BXT_PORT_CL1CM_DW30(DPIO_PHY0));
      |         ^~~~~~~~~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:12: note: in definition of macro ‘i915_mmio_reg_offset’
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |            ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1137:2: note: in expansion of macro ‘MMIO_D’
 1137 |  MMIO_D(BXT_PORT_CL1CM_DW30(DPIO_PHY0));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1137:2: note: in expansion of macro ‘MMIO_D’
 1137 |  MMIO_D(BXT_PORT_CL1CM_DW30(DPIO_PHY0));
      |  ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1138:9: error: implicit declaration of function ‘BXT_PORT_CL2CM_DW6’ [-Werror=implicit-function-declaration]
 1138 |  MMIO_D(BXT_PORT_CL2CM_DW6(DPIO_PHY0));
      |         ^~~~~~~~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:12: note: in definition of macro ‘i915_mmio_reg_offset’
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |            ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1138:2: note: in expansion of macro ‘MMIO_D’
 1138 |  MMIO_D(BXT_PORT_CL2CM_DW6(DPIO_PHY0));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1138:2: note: in expansion of macro ‘MMIO_D’
 1138 |  MMIO_D(BXT_PORT_CL2CM_DW6(DPIO_PHY0));
      |  ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1139:9: error: implicit declaration of function ‘BXT_PORT_REF_DW3’ [-Werror=implicit-function-declaration]
 1139 |  MMIO_D(BXT_PORT_REF_DW3(DPIO_PHY0));
      |         ^~~~~~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:12: note: in definition of macro ‘i915_mmio_reg_offset’
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |            ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1139:2: note: in expansion of macro ‘MMIO_D’
 1139 |  MMIO_D(BXT_PORT_REF_DW3(DPIO_PHY0));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1139:2: note: in expansion of macro ‘MMIO_D’
 1139 |  MMIO_D(BXT_PORT_REF_DW3(DPIO_PHY0));
      |  ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1140:9: error: implicit declaration of function ‘BXT_PORT_REF_DW6’ [-Werror=implicit-function-declaration]
 1140 |  MMIO_D(BXT_PORT_REF_DW6(DPIO_PHY0));
      |         ^~~~~~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:12: note: in definition of macro ‘i915_mmio_reg_offset’
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |            ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1140:2: note: in expansion of macro ‘MMIO_D’
 1140 |  MMIO_D(BXT_PORT_REF_DW6(DPIO_PHY0));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1140:2: note: in expansion of macro ‘MMIO_D’
 1140 |  MMIO_D(BXT_PORT_REF_DW6(DPIO_PHY0));
      |  ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1141:9: error: implicit declaration of function ‘BXT_PORT_REF_DW8’ [-Werror=implicit-function-declaration]
 1141 |  MMIO_D(BXT_PORT_REF_DW8(DPIO_PHY0));
      |         ^~~~~~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:12: note: in definition of macro ‘i915_mmio_reg_offset’
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |            ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1141:2: note: in expansion of macro ‘MMIO_D’
 1141 |  MMIO_D(BXT_PORT_REF_DW8(DPIO_PHY0));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1141:2: note: in expansion of macro ‘MMIO_D’
 1141 |  MMIO_D(BXT_PORT_REF_DW8(DPIO_PHY0));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1142:2: note: in expansion of macro ‘MMIO_D’
 1142 |  MMIO_D(BXT_PORT_CL1CM_DW0(DPIO_PHY1));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1143:2: note: in expansion of macro ‘MMIO_D’
 1143 |  MMIO_D(BXT_PORT_CL1CM_DW9(DPIO_PHY1));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1144:2: note: in expansion of macro ‘MMIO_D’
 1144 |  MMIO_D(BXT_PORT_CL1CM_DW10(DPIO_PHY1));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1145:2: note: in expansion of macro ‘MMIO_D’
 1145 |  MMIO_D(BXT_PORT_CL1CM_DW28(DPIO_PHY1));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1146:2: note: in expansion of macro ‘MMIO_D’
 1146 |  MMIO_D(BXT_PORT_CL1CM_DW30(DPIO_PHY1));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1147:2: note: in expansion of macro ‘MMIO_D’
 1147 |  MMIO_D(BXT_PORT_CL2CM_DW6(DPIO_PHY1));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1148:2: note: in expansion of macro ‘MMIO_D’
 1148 |  MMIO_D(BXT_PORT_REF_DW3(DPIO_PHY1));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1149:2: note: in expansion of macro ‘MMIO_D’
 1149 |  MMIO_D(BXT_PORT_REF_DW6(DPIO_PHY1));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1150:2: note: in expansion of macro ‘MMIO_D’
 1150 |  MMIO_D(BXT_PORT_REF_DW8(DPIO_PHY1));
      |  ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1151:9: error: implicit declaration of function ‘BXT_PORT_PLL_EBB_0’ [-Werror=implicit-function-declaration]
 1151 |  MMIO_D(BXT_PORT_PLL_EBB_0(DPIO_PHY0, DPIO_CH0));
      |         ^~~~~~~~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:12: note: in definition of macro ‘i915_mmio_reg_offset’
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |            ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1151:2: note: in expansion of macro ‘MMIO_D’
 1151 |  MMIO_D(BXT_PORT_PLL_EBB_0(DPIO_PHY0, DPIO_CH0));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1151:2: note: in expansion of macro ‘MMIO_D’
 1151 |  MMIO_D(BXT_PORT_PLL_EBB_0(DPIO_PHY0, DPIO_CH0));
      |  ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1152:9: error: implicit declaration of function ‘BXT_PORT_PLL_EBB_4’ [-Werror=implicit-function-declaration]
 1152 |  MMIO_D(BXT_PORT_PLL_EBB_4(DPIO_PHY0, DPIO_CH0));
      |         ^~~~~~~~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:12: note: in definition of macro ‘i915_mmio_reg_offset’
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |            ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1152:2: note: in expansion of macro ‘MMIO_D’
 1152 |  MMIO_D(BXT_PORT_PLL_EBB_4(DPIO_PHY0, DPIO_CH0));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1152:2: note: in expansion of macro ‘MMIO_D’
 1152 |  MMIO_D(BXT_PORT_PLL_EBB_4(DPIO_PHY0, DPIO_CH0));
      |  ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1153:9: error: implicit declaration of function ‘BXT_PORT_PCS_DW10_LN01’ [-Werror=implicit-function-declaration]
 1153 |  MMIO_D(BXT_PORT_PCS_DW10_LN01(DPIO_PHY0, DPIO_CH0));
      |         ^~~~~~~~~~~~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:12: note: in definition of macro ‘i915_mmio_reg_offset’
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |            ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1153:2: note: in expansion of macro ‘MMIO_D’
 1153 |  MMIO_D(BXT_PORT_PCS_DW10_LN01(DPIO_PHY0, DPIO_CH0));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1153:2: note: in expansion of macro ‘MMIO_D’
 1153 |  MMIO_D(BXT_PORT_PCS_DW10_LN01(DPIO_PHY0, DPIO_CH0));
      |  ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1154:9: error: implicit declaration of function ‘BXT_PORT_PCS_DW10_GRP’ [-Werror=implicit-function-declaration]
 1154 |  MMIO_D(BXT_PORT_PCS_DW10_GRP(DPIO_PHY0, DPIO_CH0));
      |         ^~~~~~~~~~~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:12: note: in definition of macro ‘i915_mmio_reg_offset’
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |            ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1154:2: note: in expansion of macro ‘MMIO_D’
 1154 |  MMIO_D(BXT_PORT_PCS_DW10_GRP(DPIO_PHY0, DPIO_CH0));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1154:2: note: in expansion of macro ‘MMIO_D’
 1154 |  MMIO_D(BXT_PORT_PCS_DW10_GRP(DPIO_PHY0, DPIO_CH0));
      |  ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1155:9: error: implicit declaration of function ‘BXT_PORT_PCS_DW12_LN01’ [-Werror=implicit-function-declaration]
 1155 |  MMIO_D(BXT_PORT_PCS_DW12_LN01(DPIO_PHY0, DPIO_CH0));
      |         ^~~~~~~~~~~~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:12: note: in definition of macro ‘i915_mmio_reg_offset’
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |            ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1155:2: note: in expansion of macro ‘MMIO_D’
 1155 |  MMIO_D(BXT_PORT_PCS_DW12_LN01(DPIO_PHY0, DPIO_CH0));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1155:2: note: in expansion of macro ‘MMIO_D’
 1155 |  MMIO_D(BXT_PORT_PCS_DW12_LN01(DPIO_PHY0, DPIO_CH0));
      |  ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1156:9: error: implicit declaration of function ‘BXT_PORT_PCS_DW12_LN23’ [-Werror=implicit-function-declaration]
 1156 |  MMIO_D(BXT_PORT_PCS_DW12_LN23(DPIO_PHY0, DPIO_CH0));
      |         ^~~~~~~~~~~~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:12: note: in definition of macro ‘i915_mmio_reg_offset’
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |            ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1156:2: note: in expansion of macro ‘MMIO_D’
 1156 |  MMIO_D(BXT_PORT_PCS_DW12_LN23(DPIO_PHY0, DPIO_CH0));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1156:2: note: in expansion of macro ‘MMIO_D’
 1156 |  MMIO_D(BXT_PORT_PCS_DW12_LN23(DPIO_PHY0, DPIO_CH0));
      |  ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1157:9: error: implicit declaration of function ‘BXT_PORT_PCS_DW12_GRP’ [-Werror=implicit-function-declaration]
 1157 |  MMIO_D(BXT_PORT_PCS_DW12_GRP(DPIO_PHY0, DPIO_CH0));
      |         ^~~~~~~~~~~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:12: note: in definition of macro ‘i915_mmio_reg_offset’
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |            ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1157:2: note: in expansion of macro ‘MMIO_D’
 1157 |  MMIO_D(BXT_PORT_PCS_DW12_GRP(DPIO_PHY0, DPIO_CH0));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1157:2: note: in expansion of macro ‘MMIO_D’
 1157 |  MMIO_D(BXT_PORT_PCS_DW12_GRP(DPIO_PHY0, DPIO_CH0));
      |  ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1158:9: error: implicit declaration of function ‘BXT_PORT_TX_DW2_LN0’ [-Werror=implicit-function-declaration]
 1158 |  MMIO_D(BXT_PORT_TX_DW2_LN0(DPIO_PHY0, DPIO_CH0));
      |         ^~~~~~~~~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:12: note: in definition of macro ‘i915_mmio_reg_offset’
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |            ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1158:2: note: in expansion of macro ‘MMIO_D’
 1158 |  MMIO_D(BXT_PORT_TX_DW2_LN0(DPIO_PHY0, DPIO_CH0));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1158:2: note: in expansion of macro ‘MMIO_D’
 1158 |  MMIO_D(BXT_PORT_TX_DW2_LN0(DPIO_PHY0, DPIO_CH0));
      |  ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1159:9: error: implicit declaration of function ‘BXT_PORT_TX_DW2_GRP’ [-Werror=implicit-function-declaration]
 1159 |  MMIO_D(BXT_PORT_TX_DW2_GRP(DPIO_PHY0, DPIO_CH0));
      |         ^~~~~~~~~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:12: note: in definition of macro ‘i915_mmio_reg_offset’
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |            ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1159:2: note: in expansion of macro ‘MMIO_D’
 1159 |  MMIO_D(BXT_PORT_TX_DW2_GRP(DPIO_PHY0, DPIO_CH0));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1159:2: note: in expansion of macro ‘MMIO_D’
 1159 |  MMIO_D(BXT_PORT_TX_DW2_GRP(DPIO_PHY0, DPIO_CH0));
      |  ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1160:9: error: implicit declaration of function ‘BXT_PORT_TX_DW3_LN0’ [-Werror=implicit-function-declaration]
 1160 |  MMIO_D(BXT_PORT_TX_DW3_LN0(DPIO_PHY0, DPIO_CH0));
      |         ^~~~~~~~~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:12: note: in definition of macro ‘i915_mmio_reg_offset’
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |            ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1160:2: note: in expansion of macro ‘MMIO_D’
 1160 |  MMIO_D(BXT_PORT_TX_DW3_LN0(DPIO_PHY0, DPIO_CH0));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1160:2: note: in expansion of macro ‘MMIO_D’
 1160 |  MMIO_D(BXT_PORT_TX_DW3_LN0(DPIO_PHY0, DPIO_CH0));
      |  ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1161:9: error: implicit declaration of function ‘BXT_PORT_TX_DW3_GRP’ [-Werror=implicit-function-declaration]
 1161 |  MMIO_D(BXT_PORT_TX_DW3_GRP(DPIO_PHY0, DPIO_CH0));
      |         ^~~~~~~~~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:12: note: in definition of macro ‘i915_mmio_reg_offset’
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |            ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1161:2: note: in expansion of macro ‘MMIO_D’
 1161 |  MMIO_D(BXT_PORT_TX_DW3_GRP(DPIO_PHY0, DPIO_CH0));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1161:2: note: in expansion of macro ‘MMIO_D’
 1161 |  MMIO_D(BXT_PORT_TX_DW3_GRP(DPIO_PHY0, DPIO_CH0));
      |  ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1162:9: error: implicit declaration of function ‘BXT_PORT_TX_DW4_LN0’ [-Werror=implicit-function-declaration]
 1162 |  MMIO_D(BXT_PORT_TX_DW4_LN0(DPIO_PHY0, DPIO_CH0));
      |         ^~~~~~~~~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:12: note: in definition of macro ‘i915_mmio_reg_offset’
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |            ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1162:2: note: in expansion of macro ‘MMIO_D’
 1162 |  MMIO_D(BXT_PORT_TX_DW4_LN0(DPIO_PHY0, DPIO_CH0));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1162:2: note: in expansion of macro ‘MMIO_D’
 1162 |  MMIO_D(BXT_PORT_TX_DW4_LN0(DPIO_PHY0, DPIO_CH0));
      |  ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1163:9: error: implicit declaration of function ‘BXT_PORT_TX_DW4_GRP’ [-Werror=implicit-function-declaration]
 1163 |  MMIO_D(BXT_PORT_TX_DW4_GRP(DPIO_PHY0, DPIO_CH0));
      |         ^~~~~~~~~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:12: note: in definition of macro ‘i915_mmio_reg_offset’
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |            ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1163:2: note: in expansion of macro ‘MMIO_D’
 1163 |  MMIO_D(BXT_PORT_TX_DW4_GRP(DPIO_PHY0, DPIO_CH0));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1163:2: note: in expansion of macro ‘MMIO_D’
 1163 |  MMIO_D(BXT_PORT_TX_DW4_GRP(DPIO_PHY0, DPIO_CH0));
      |  ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1164:9: error: implicit declaration of function ‘BXT_PORT_TX_DW14_LN’ [-Werror=implicit-function-declaration]
 1164 |  MMIO_D(BXT_PORT_TX_DW14_LN(DPIO_PHY0, DPIO_CH0, 0));
      |         ^~~~~~~~~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:12: note: in definition of macro ‘i915_mmio_reg_offset’
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |            ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1164:2: note: in expansion of macro ‘MMIO_D’
 1164 |  MMIO_D(BXT_PORT_TX_DW14_LN(DPIO_PHY0, DPIO_CH0, 0));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1164:2: note: in expansion of macro ‘MMIO_D’
 1164 |  MMIO_D(BXT_PORT_TX_DW14_LN(DPIO_PHY0, DPIO_CH0, 0));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1165:2: note: in expansion of macro ‘MMIO_D’
 1165 |  MMIO_D(BXT_PORT_TX_DW14_LN(DPIO_PHY0, DPIO_CH0, 1));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1166:2: note: in expansion of macro ‘MMIO_D’
 1166 |  MMIO_D(BXT_PORT_TX_DW14_LN(DPIO_PHY0, DPIO_CH0, 2));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1167:2: note: in expansion of macro ‘MMIO_D’
 1167 |  MMIO_D(BXT_PORT_TX_DW14_LN(DPIO_PHY0, DPIO_CH0, 3));
      |  ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1168:9: error: implicit declaration of function ‘BXT_PORT_PLL’ [-Werror=implicit-function-declaration]
 1168 |  MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH0, 0));
      |         ^~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:12: note: in definition of macro ‘i915_mmio_reg_offset’
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |            ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1168:2: note: in expansion of macro ‘MMIO_D’
 1168 |  MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH0, 0));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1168:2: note: in expansion of macro ‘MMIO_D’
 1168 |  MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH0, 0));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1169:2: note: in expansion of macro ‘MMIO_D’
 1169 |  MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH0, 1));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1170:2: note: in expansion of macro ‘MMIO_D’
 1170 |  MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH0, 2));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1171:2: note: in expansion of macro ‘MMIO_D’
 1171 |  MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH0, 3));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1172:2: note: in expansion of macro ‘MMIO_D’
 1172 |  MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH0, 6));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1173:2: note: in expansion of macro ‘MMIO_D’
 1173 |  MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH0, 8));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1174:2: note: in expansion of macro ‘MMIO_D’
 1174 |  MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH0, 9));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1175:2: note: in expansion of macro ‘MMIO_D’
 1175 |  MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH0, 10));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1176:2: note: in expansion of macro ‘MMIO_D’
 1176 |  MMIO_D(BXT_PORT_PLL_EBB_0(DPIO_PHY0, DPIO_CH1));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1177:2: note: in expansion of macro ‘MMIO_D’
 1177 |  MMIO_D(BXT_PORT_PLL_EBB_4(DPIO_PHY0, DPIO_CH1));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1178:2: note: in expansion of macro ‘MMIO_D’
 1178 |  MMIO_D(BXT_PORT_PCS_DW10_LN01(DPIO_PHY0, DPIO_CH1));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1179:2: note: in expansion of macro ‘MMIO_D’
 1179 |  MMIO_D(BXT_PORT_PCS_DW10_GRP(DPIO_PHY0, DPIO_CH1));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1180:2: note: in expansion of macro ‘MMIO_D’
 1180 |  MMIO_D(BXT_PORT_PCS_DW12_LN01(DPIO_PHY0, DPIO_CH1));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1181:2: note: in expansion of macro ‘MMIO_D’
 1181 |  MMIO_D(BXT_PORT_PCS_DW12_LN23(DPIO_PHY0, DPIO_CH1));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1182:2: note: in expansion of macro ‘MMIO_D’
 1182 |  MMIO_D(BXT_PORT_PCS_DW12_GRP(DPIO_PHY0, DPIO_CH1));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1183:2: note: in expansion of macro ‘MMIO_D’
 1183 |  MMIO_D(BXT_PORT_TX_DW2_LN0(DPIO_PHY0, DPIO_CH1));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1184:2: note: in expansion of macro ‘MMIO_D’
 1184 |  MMIO_D(BXT_PORT_TX_DW2_GRP(DPIO_PHY0, DPIO_CH1));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1185:2: note: in expansion of macro ‘MMIO_D’
 1185 |  MMIO_D(BXT_PORT_TX_DW3_LN0(DPIO_PHY0, DPIO_CH1));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1186:2: note: in expansion of macro ‘MMIO_D’
 1186 |  MMIO_D(BXT_PORT_TX_DW3_GRP(DPIO_PHY0, DPIO_CH1));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1187:2: note: in expansion of macro ‘MMIO_D’
 1187 |  MMIO_D(BXT_PORT_TX_DW4_LN0(DPIO_PHY0, DPIO_CH1));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1188:2: note: in expansion of macro ‘MMIO_D’
 1188 |  MMIO_D(BXT_PORT_TX_DW4_GRP(DPIO_PHY0, DPIO_CH1));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1189:2: note: in expansion of macro ‘MMIO_D’
 1189 |  MMIO_D(BXT_PORT_TX_DW14_LN(DPIO_PHY0, DPIO_CH1, 0));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1190:2: note: in expansion of macro ‘MMIO_D’
 1190 |  MMIO_D(BXT_PORT_TX_DW14_LN(DPIO_PHY0, DPIO_CH1, 1));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1191:2: note: in expansion of macro ‘MMIO_D’
 1191 |  MMIO_D(BXT_PORT_TX_DW14_LN(DPIO_PHY0, DPIO_CH1, 2));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1192:2: note: in expansion of macro ‘MMIO_D’
 1192 |  MMIO_D(BXT_PORT_TX_DW14_LN(DPIO_PHY0, DPIO_CH1, 3));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1193:2: note: in expansion of macro ‘MMIO_D’
 1193 |  MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH1, 0));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1194:2: note: in expansion of macro ‘MMIO_D’
 1194 |  MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH1, 1));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1195:2: note: in expansion of macro ‘MMIO_D’
 1195 |  MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH1, 2));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1196:2: note: in expansion of macro ‘MMIO_D’
 1196 |  MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH1, 3));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1197:2: note: in expansion of macro ‘MMIO_D’
 1197 |  MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH1, 6));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1198:2: note: in expansion of macro ‘MMIO_D’
 1198 |  MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH1, 8));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1199:2: note: in expansion of macro ‘MMIO_D’
 1199 |  MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH1, 9));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1200:2: note: in expansion of macro ‘MMIO_D’
 1200 |  MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH1, 10));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1201:2: note: in expansion of macro ‘MMIO_D’
 1201 |  MMIO_D(BXT_PORT_PLL_EBB_0(DPIO_PHY1, DPIO_CH0));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1202:2: note: in expansion of macro ‘MMIO_D’
 1202 |  MMIO_D(BXT_PORT_PLL_EBB_4(DPIO_PHY1, DPIO_CH0));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1203:2: note: in expansion of macro ‘MMIO_D’
 1203 |  MMIO_D(BXT_PORT_PCS_DW10_LN01(DPIO_PHY1, DPIO_CH0));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1204:2: note: in expansion of macro ‘MMIO_D’
 1204 |  MMIO_D(BXT_PORT_PCS_DW10_GRP(DPIO_PHY1, DPIO_CH0));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1205:2: note: in expansion of macro ‘MMIO_D’
 1205 |  MMIO_D(BXT_PORT_PCS_DW12_LN01(DPIO_PHY1, DPIO_CH0));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1206:2: note: in expansion of macro ‘MMIO_D’
 1206 |  MMIO_D(BXT_PORT_PCS_DW12_LN23(DPIO_PHY1, DPIO_CH0));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1207:2: note: in expansion of macro ‘MMIO_D’
 1207 |  MMIO_D(BXT_PORT_PCS_DW12_GRP(DPIO_PHY1, DPIO_CH0));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1208:2: note: in expansion of macro ‘MMIO_D’
 1208 |  MMIO_D(BXT_PORT_TX_DW2_LN0(DPIO_PHY1, DPIO_CH0));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1209:2: note: in expansion of macro ‘MMIO_D’
 1209 |  MMIO_D(BXT_PORT_TX_DW2_GRP(DPIO_PHY1, DPIO_CH0));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1210:2: note: in expansion of macro ‘MMIO_D’
 1210 |  MMIO_D(BXT_PORT_TX_DW3_LN0(DPIO_PHY1, DPIO_CH0));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1211:2: note: in expansion of macro ‘MMIO_D’
 1211 |  MMIO_D(BXT_PORT_TX_DW3_GRP(DPIO_PHY1, DPIO_CH0));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1212:2: note: in expansion of macro ‘MMIO_D’
 1212 |  MMIO_D(BXT_PORT_TX_DW4_LN0(DPIO_PHY1, DPIO_CH0));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1213:2: note: in expansion of macro ‘MMIO_D’
 1213 |  MMIO_D(BXT_PORT_TX_DW4_GRP(DPIO_PHY1, DPIO_CH0));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1214:2: note: in expansion of macro ‘MMIO_D’
 1214 |  MMIO_D(BXT_PORT_TX_DW14_LN(DPIO_PHY1, DPIO_CH0, 0));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1215:2: note: in expansion of macro ‘MMIO_D’
 1215 |  MMIO_D(BXT_PORT_TX_DW14_LN(DPIO_PHY1, DPIO_CH0, 1));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1216:2: note: in expansion of macro ‘MMIO_D’
 1216 |  MMIO_D(BXT_PORT_TX_DW14_LN(DPIO_PHY1, DPIO_CH0, 2));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1217:2: note: in expansion of macro ‘MMIO_D’
 1217 |  MMIO_D(BXT_PORT_TX_DW14_LN(DPIO_PHY1, DPIO_CH0, 3));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1218:2: note: in expansion of macro ‘MMIO_D’
 1218 |  MMIO_D(BXT_PORT_PLL(DPIO_PHY1, DPIO_CH0, 0));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1219:2: note: in expansion of macro ‘MMIO_D’
 1219 |  MMIO_D(BXT_PORT_PLL(DPIO_PHY1, DPIO_CH0, 1));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1220:2: note: in expansion of macro ‘MMIO_D’
 1220 |  MMIO_D(BXT_PORT_PLL(DPIO_PHY1, DPIO_CH0, 2));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1221:2: note: in expansion of macro ‘MMIO_D’
 1221 |  MMIO_D(BXT_PORT_PLL(DPIO_PHY1, DPIO_CH0, 3));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1222:2: note: in expansion of macro ‘MMIO_D’
 1222 |  MMIO_D(BXT_PORT_PLL(DPIO_PHY1, DPIO_CH0, 6));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1223:2: note: in expansion of macro ‘MMIO_D’
 1223 |  MMIO_D(BXT_PORT_PLL(DPIO_PHY1, DPIO_CH0, 8));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1224:2: note: in expansion of macro ‘MMIO_D’
 1224 |  MMIO_D(BXT_PORT_PLL(DPIO_PHY1, DPIO_CH0, 9));
      |  ^~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:283:31: error: request for member ‘reg’ in something not a structure or union
  283 |  _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
      |                               ^
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: in expansion of macro ‘i915_mmio_reg_offset’
   30 |  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
      |                                   ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: in expansion of macro ‘MMIO_F’
   35 | #define MMIO_D(reg) MMIO_F(reg, 4)
      |                     ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1225:2: note: in expansion of macro ‘MMIO_D’
 1225 |  MMIO_D(BXT_PORT_PLL(DPIO_PHY1, DPIO_CH0, 10));
      |  ^~~~~~
cc1: all warnings being treated as errors
make[6]: *** [scripts/Makefile.build:244: drivers/gpu/drm/i915/intel_gvt_mmio_table.o] Error 1
make[5]: *** [scripts/Makefile.build:485: drivers/gpu/drm/i915] Error 2
make[4]: *** [scripts/Makefile.build:485: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:485: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:485: drivers] Error 2
make[1]: *** [/home/kbuild/kernel/Makefile:1919: .] Error 2
make: *** [Makefile:240: __sub-make] Error 2
Build failed, no error log produced


