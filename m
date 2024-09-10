Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B1DD973DEA
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2024 19:00:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4862010E149;
	Tue, 10 Sep 2024 17:00:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F96910E149;
 Tue, 10 Sep 2024 17:00:04 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_register?=
 =?utf-8?q?_style_fixes?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Sep 2024 17:00:04 -0000
Message-ID: <172598760464.981347.4488350479962475309@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <cover.1725974820.git.jani.nikula@intel.com>
In-Reply-To: <cover.1725974820.git.jani.nikula@intel.com>
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

Series: drm/i915: register style fixes
URL   : https://patchwork.freedesktop.org/series/138474/
State : warning

== Summary ==

Error: dim checkpatch failed
02d0a90fe363 drm/i915/reg: fix transcoder timing register style
f431142e1ee7 drm/i915/reg: fix g4x pipe data/link m/n register style
4bf58c59d26c drm/i915/reg: fix pipe conf, stat etc. register style
c0154442893d drm/i915/reg: fix pipe data/link m/n register style
835301dfc30a drm/i915/reg: fix SKL scaler register style
-:28: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#28: FILE: drivers/gpu/drm/i915/i915_reg.h:2238:
+#define SKL_PS_CTRL(pipe, id) _MMIO_PIPE(pipe,        \
+			_ID(id, _PS_1A_CTRL, _PS_2A_CTRL),       \
+			_ID(id, _PS_1B_CTRL, _PS_2B_CTRL))

-:38: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#38: FILE: drivers/gpu/drm/i915/i915_reg.h:2293:
+#define SKL_PS_PWR_GATE(pipe, id) _MMIO_PIPE(pipe,    \
+			_ID(id, _PS_PWR_GATE_1A, _PS_PWR_GATE_2A), \
+			_ID(id, _PS_PWR_GATE_1B, _PS_PWR_GATE_2B))

-:48: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#48: FILE: drivers/gpu/drm/i915/i915_reg.h:2313:
+#define SKL_PS_WIN_POS(pipe, id) _MMIO_PIPE(pipe,     \
+			_ID(id, _PS_WIN_POS_1A, _PS_WIN_POS_2A), \
+			_ID(id, _PS_WIN_POS_1B, _PS_WIN_POS_2B))

-:58: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#58: FILE: drivers/gpu/drm/i915/i915_reg.h:2326:
+#define SKL_PS_WIN_SZ(pipe, id)  _MMIO_PIPE(pipe,     \
+			_ID(id, _PS_WIN_SZ_1A, _PS_WIN_SZ_2A),   \
+			_ID(id, _PS_WIN_SZ_1B, _PS_WIN_SZ_2B))

-:68: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#68: FILE: drivers/gpu/drm/i915/i915_reg.h:2339:
+#define SKL_PS_VSCALE(pipe, id)  _MMIO_PIPE(pipe,     \
+			_ID(id, _PS_VSCALE_1A, _PS_VSCALE_2A),   \
+			_ID(id, _PS_VSCALE_1B, _PS_VSCALE_2B))

-:77: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#77: FILE: drivers/gpu/drm/i915/i915_reg.h:2348:
+#define SKL_PS_HSCALE(pipe, id)  _MMIO_PIPE(pipe,     \
+			_ID(id, _PS_HSCALE_1A, _PS_HSCALE_2A),   \
+			_ID(id, _PS_HSCALE_1B, _PS_HSCALE_2B))

-:86: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#86: FILE: drivers/gpu/drm/i915/i915_reg.h:2357:
+#define SKL_PS_VPHASE(pipe, id)  _MMIO_PIPE(pipe,     \
+			_ID(id, _PS_VPHASE_1A, _PS_VPHASE_2A),   \
+			_ID(id, _PS_VPHASE_1B, _PS_VPHASE_2B))

-:96: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#96: FILE: drivers/gpu/drm/i915/i915_reg.h:2372:
+#define SKL_PS_HPHASE(pipe, id)  _MMIO_PIPE(pipe,     \
+			_ID(id, _PS_HPHASE_1A, _PS_HPHASE_2A),   \
+			_ID(id, _PS_HPHASE_1B, _PS_HPHASE_2B))

-:105: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#105: FILE: drivers/gpu/drm/i915/i915_reg.h:2381:
+#define SKL_PS_ECC_STAT(pipe, id)  _MMIO_PIPE(pipe,     \
+			_ID(id, _PS_ECC_STAT_1A, _PS_ECC_STAT_2A),   \
+			_ID(id, _PS_ECC_STAT_1B, _PS_ECC_STAT_2B))

-:113: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#113: FILE: drivers/gpu/drm/i915/i915_reg.h:2389:
+#define GLK_PS_COEF_INDEX_SET(pipe, id, set)  _MMIO_PIPE(pipe,    \
+			_ID(id, _PS_COEF_SET0_INDEX_1A, _PS_COEF_SET0_INDEX_2A) + (set) * 8, \
+			_ID(id, _PS_COEF_SET0_INDEX_1B, _PS_COEF_SET0_INDEX_2B) + (set) * 8)

-:113: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'set' - possible side-effects?
#113: FILE: drivers/gpu/drm/i915/i915_reg.h:2389:
+#define GLK_PS_COEF_INDEX_SET(pipe, id, set)  _MMIO_PIPE(pipe,    \
+			_ID(id, _PS_COEF_SET0_INDEX_1A, _PS_COEF_SET0_INDEX_2A) + (set) * 8, \
+			_ID(id, _PS_COEF_SET0_INDEX_1B, _PS_COEF_SET0_INDEX_2B) + (set) * 8)

total: 0 errors, 0 warnings, 11 checks, 134 lines checked
ad3f0c4a22f1 drm/i915/reg: fix PCH transcoder timing indentation
7a829193ddd1 drm/i915/reg: fix PCH transcoder timing and data/link m/n style
-:62: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#62: FILE: drivers/gpu/drm/i915/i915_reg.h:3200:
+#define PCH_TRANS_VSYNCSHIFT(pipe)	_MMIO_PIPE(pipe, _PCH_TRANS_VSYNCSHIFT_A, _PCH_TRANS_VSYNCSHIFT_B)

total: 0 errors, 1 warnings, 0 checks, 116 lines checked
d34e428b89fa drm/i915/reg: fix DIP CTL register style
-:68: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#68: FILE: drivers/gpu/drm/i915/i915_reg.h:3278:
+#define HSW_TVIDEO_DIP_CTL(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_CTL_A)

-:72: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#72: FILE: drivers/gpu/drm/i915/i915_reg.h:3282:
+#define HSW_TVIDEO_DIP_AVI_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_AVI_DATA_A + (i) * 4)

-:76: WARNING:LONG_LINE: line length of 121 exceeds 100 columns
#76: FILE: drivers/gpu/drm/i915/i915_reg.h:3286:
+#define HSW_TVIDEO_DIP_VS_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_VS_DATA_A + (i) * 4)

-:80: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#80: FILE: drivers/gpu/drm/i915/i915_reg.h:3290:
+#define HSW_TVIDEO_DIP_SPD_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_SPD_DATA_A + (i) * 4)

-:84: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#84: FILE: drivers/gpu/drm/i915/i915_reg.h:3294:
+#define HSW_TVIDEO_DIP_GMP_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_GMP_DATA_A + (i) * 4)

-:88: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#88: FILE: drivers/gpu/drm/i915/i915_reg.h:3298:
+#define HSW_TVIDEO_DIP_VSC_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_VSC_DATA_A + (i) * 4)

-:98: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#98: FILE: drivers/gpu/drm/i915/i915_reg.h:3308:
+#define GLK_TVIDEO_DIP_DRM_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _GLK_VIDEO_DIP_DRM_DATA_A + (i) * 4)

-:113: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#113: FILE: drivers/gpu/drm/i915/i915_reg.h:3323:
+#define HSW_TVIDEO_DIP_GCP(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_GCP_A)

-:121: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#121: FILE: drivers/gpu/drm/i915/i915_reg.h:3333:
+#define ICL_VIDEO_DIP_PPS_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _ICL_VIDEO_DIP_PPS_DATA_A + (i) * 4)

total: 0 errors, 9 warnings, 0 checks, 128 lines checked
e52144817a50 drm/i915/reg: fix small register style issues here and there
163e1327e77a drm/i915/reg: remove unused DSI register macros
54740e1cdad5 drm/i915/reg: remove superfluous whitespace


