Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16C0A8D6246
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2024 15:00:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9330510E275;
	Fri, 31 May 2024 13:00:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8116610E275;
 Fri, 31 May 2024 13:00:25 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_Clean_up?=
 =?utf-8?q?_the_CRC_registers?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 31 May 2024 13:00:25 -0000
Message-ID: <171716042552.2241438.16983050570952979955@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240531115342.2763-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240531115342.2763-1-ville.syrjala@linux.intel.com>
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

Series: drm/i915: Clean up the CRC registers
URL   : https://patchwork.freedesktop.org/series/134295/
State : warning

== Summary ==

Error: dim checkpatch failed
64793dd8c963 drm/i915: Extract intel_pipe_crc_regs.h
-:39: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#39: 
new file mode 100644

-:129: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#129: FILE: drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h:86:
+#define PIPE_CRC_RES_RED(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_RED_A)

-:131: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#131: FILE: drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h:88:
+#define PIPE_CRC_RES_BLUE(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_BLUE_A)

-:132: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#132: FILE: drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h:89:
+#define PIPE_CRC_RES_RES1_I915(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_RES1_A_I915)

-:133: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#133: FILE: drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h:90:
+#define PIPE_CRC_RES_RES2_G4X(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_RES2_A_G4X)

total: 0 errors, 5 warnings, 0 checks, 193 lines checked
75c86af802fe drm/i915: Switch PIPE_CRC_RES_*_IVB to _MMIO_PIPE()
-:42: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#42: FILE: drivers/gpu/drm/i915/display/intel_display_irq.c:372:
+				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_5_IVB(pipe)));

-:59: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#59: FILE: drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h:80:
+#define PIPE_CRC_RES_1_IVB(pipe)		_MMIO_PIPE(pipe, _PIPE_CRC_RES_1_A_IVB, _PIPE_CRC_RES_1_B_IVB)

-:60: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#60: FILE: drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h:81:
+#define PIPE_CRC_RES_2_IVB(pipe)		_MMIO_PIPE(pipe, _PIPE_CRC_RES_2_A_IVB, _PIPE_CRC_RES_2_B_IVB)

-:61: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#61: FILE: drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h:82:
+#define PIPE_CRC_RES_3_IVB(pipe)		_MMIO_PIPE(pipe, _PIPE_CRC_RES_3_A_IVB, _PIPE_CRC_RES_3_B_IVB)

-:62: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#62: FILE: drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h:83:
+#define PIPE_CRC_RES_4_IVB(pipe)		_MMIO_PIPE(pipe, _PIPE_CRC_RES_4_A_IVB, _PIPE_CRC_RES_4_B_IVB)

-:63: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#63: FILE: drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h:84:
+#define PIPE_CRC_RES_5_IVB(pipe)		_MMIO_PIPE(pipe, _PIPE_CRC_RES_5_A_IVB, _PIPE_CRC_RES_5_B_IVB)

total: 0 errors, 6 warnings, 0 checks, 40 lines checked
a3beac75cbfa drm/i915: Regroup pipe CRC regs
-:49: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#49: FILE: drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h:70:
+#define PIPE_CRC_RES_RES1_I915(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_RES1_A_I915)

-:52: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#52: FILE: drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h:73:
+#define PIPE_CRC_RES_RES2_G4X(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_RES2_A_G4X)

-:85: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#85: FILE: drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h:93:
+#define PIPE_CRC_RES_5_IVB(pipe)		_MMIO_PIPE(pipe, _PIPE_CRC_RES_5_A_IVB, _PIPE_CRC_RES_5_B_IVB)

total: 0 errors, 3 warnings, 0 checks, 67 lines checked
5996e2367fe9 drm/i915: Add a separate defintiion for PIPE_CRC_RES_HSW
-:45: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#45: FILE: drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h:98:
+#define PIPE_CRC_RES_HSW(pipe)			_MMIO_PIPE(pipe, _PIPE_CRC_RES_A_HSW, _PIPE_CRC_RES_B_HSW)

total: 0 errors, 1 warnings, 0 checks, 17 lines checked
778f596f4697 drm/i915: Document which platforms have which CRC registers
aa7e39abc2cf drm/i915: Define the PIPE_CRC_EXP registers
-:42: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#42: FILE: drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h:71:
+#define PIPE_CRC_EXP_RES1_I915(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_EXP_RES1_A_I915)

-:46: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#46: FILE: drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h:75:
+#define PIPE_CRC_EXP_RES2_G4X(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_EXP_RES2_A_G4X)

-:58: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#58: FILE: drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h:96:
+#define PIPE_CRC_EXP_2_IVB(pipe)		_MMIO_PIPE(pipe, _PIPE_CRC_EXP_2_A_IVB, _PIPE_CRC_EXP_2_B_IVB)

-:64: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#64: FILE: drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h:102:
+#define PIPE_CRC_EXP_3_IVB(pipe)		_MMIO_PIPE(pipe, _PIPE_CRC_EXP_3_A_IVB, _PIPE_CRC_EXP_3_B_IVB)

-:70: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#70: FILE: drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h:108:
+#define PIPE_CRC_EXP_4_IVB(pipe)		_MMIO_PIPE(pipe, _PIPE_CRC_EXP_2_A_IVB, _PIPE_CRC_EXP_2_B_IVB)

-:76: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#76: FILE: drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h:114:
+#define PIPE_CRC_EXP_5_IVB(pipe)		_MMIO_PIPE(pipe, _PIPE_CRC_EXP_2_A_IVB, _PIPE_CRC_EXP_2_B_IVB)

-:89: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#89: FILE: drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h:145:
+#define PIPE_CRC_EXP_HSW(pipe)			_MMIO_PIPE(pipe, _PIPE_CRC_EXP_A_HSW, _PIPE_CRC_EXP_B_HSW)

total: 0 errors, 7 warnings, 0 checks, 65 lines checked
a01420e3fdbb drm/i915: Protect CRC reg macro arguments for consistency
-:33: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#33: FILE: drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h:79:
+#define PIPE_CRC_RES_RED(dev_priv, pipe)	_MMIO_TRANS2((dev_priv), (pipe), _PIPE_CRC_RES_RED_A)

-:37: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#37: FILE: drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h:82:
+#define PIPE_CRC_RES_GREEN(dev_priv, pipe)	_MMIO_TRANS2((dev_priv), (pipe), _PIPE_CRC_RES_GREEN_A)

-:41: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#41: FILE: drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h:85:
+#define PIPE_CRC_RES_BLUE(dev_priv, pipe)	_MMIO_TRANS2((dev_priv), (pipe), _PIPE_CRC_RES_BLUE_A)

-:45: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#45: FILE: drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h:88:
+#define PIPE_CRC_RES_RES1_I915(dev_priv, pipe)	_MMIO_TRANS2((dev_priv), (pipe), _PIPE_CRC_RES_RES1_A_I915)

-:49: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#49: FILE: drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h:91:
+#define PIPE_CRC_RES_RES2_G4X(dev_priv, pipe)	_MMIO_TRANS2((dev_priv), (pipe), _PIPE_CRC_RES_RES2_A_G4X)

-:58: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#58: FILE: drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h:120:
+#define PIPE_CRC_RES_1_IVB(pipe)		_MMIO_PIPE((pipe), _PIPE_CRC_RES_1_A_IVB, _PIPE_CRC_RES_1_B_IVB)

-:64: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#64: FILE: drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h:125:
+#define PIPE_CRC_RES_2_IVB(pipe)		_MMIO_PIPE((pipe), _PIPE_CRC_RES_2_A_IVB, _PIPE_CRC_RES_2_B_IVB)

-:70: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#70: FILE: drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h:130:
+#define PIPE_CRC_RES_3_IVB(pipe)		_MMIO_PIPE((pipe), _PIPE_CRC_RES_3_A_IVB, _PIPE_CRC_RES_3_B_IVB)

-:76: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#76: FILE: drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h:135:
+#define PIPE_CRC_RES_4_IVB(pipe)		_MMIO_PIPE((pipe), _PIPE_CRC_RES_4_A_IVB, _PIPE_CRC_RES_4_B_IVB)

-:82: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#82: FILE: drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h:140:
+#define PIPE_CRC_RES_5_IVB(pipe)		_MMIO_PIPE((pipe), _PIPE_CRC_RES_5_A_IVB, _PIPE_CRC_RES_5_B_IVB)

-:88: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#88: FILE: drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h:145:
+#define PIPE_CRC_EXP_HSW(pipe)			_MMIO_PIPE((pipe), _PIPE_CRC_EXP_A_HSW, _PIPE_CRC_EXP_B_HSW)

-:94: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#94: FILE: drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h:150:
+#define PIPE_CRC_RES_HSW(pipe)			_MMIO_PIPE((pipe), _PIPE_CRC_RES_A_HSW, _PIPE_CRC_RES_B_HSW)

total: 0 errors, 12 warnings, 0 checks, 75 lines checked


