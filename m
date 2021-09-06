Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B7D6402118
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Sep 2021 23:27:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6412389C99;
	Mon,  6 Sep 2021 21:26:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 384D589C99;
 Mon,  6 Sep 2021 21:26:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2F576A0099;
 Mon,  6 Sep 2021 21:26:57 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Shankar, Uma" <uma.shankar@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 06 Sep 2021 21:26:57 -0000
Message-ID: <163096361715.30431.17751008854528359984@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210906213904.27918-1-uma.shankar@intel.com>
In-Reply-To: <20210906213904.27918-1-uma.shankar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_Support_for_Plane_Color_Lut_and_CSC_features_=28rev2=29?=
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

Series: Add Support for Plane Color Lut and CSC features (rev2)
URL   : https://patchwork.freedesktop.org/series/90825/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
0bd5f1aa34e1 drm: RFC for Plane Color Hardware Pipeline
-:18: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#18: 
new file mode 100644

-:23: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#23: FILE: Documentation/gpu/rfc/drm_color_pipeline.rst:1:
+==================================================

-:99: ERROR:TRAILING_WHITESPACE: trailing whitespace
#99: FILE: Documentation/gpu/rfc/drm_color_pipeline.rst:77:
+^I$

-:133: ERROR:TRAILING_WHITESPACE: trailing whitespace
#133: FILE: Documentation/gpu/rfc/drm_color_pipeline.rst:111:
+^I$

total: 2 errors, 2 warnings, 0 checks, 167 lines checked
1e2ce83e3017 drm: Add Enhanced Gamma and color lut range attributes
39feb4a85cab drm: Add Plane Degamma Mode property
e54bf9c1c858 drm: Add Plane Degamma Lut property
-:45: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#45: FILE: drivers/gpu/drm/drm_atomic_uapi.c:603:
+		ret = drm_atomic_replace_property_blob_from_id(dev,
+					&state->degamma_lut,

total: 0 errors, 0 warnings, 1 checks, 101 lines checked
d92433346e40 drm/i915/xelpd: Define Degamma Lut range struct for HDR planes
df616ff808c3 drm/i915/xelpd: Add register definitions for Plane Degamma
-:37: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#37: FILE: drivers/gpu/drm/i915/i915_reg.h:11407:
+#define PLANE_PRE_CSC_GAMC_INDEX_ENH(pipe, plane, i)	\
+		_MMIO_PLANE_GAMC(plane, i, _PLANE_PRE_CSC_GAMC_INDEX_ENH_1(pipe), \
+		_PLANE_PRE_CSC_GAMC_INDEX_ENH_2(pipe))

-:49: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#49: FILE: drivers/gpu/drm/i915/i915_reg.h:11419:
+#define PLANE_PRE_CSC_GAMC_DATA_ENH(pipe, plane, i)	\
+		_MMIO_PLANE_GAMC(plane, i, _PLANE_PRE_CSC_GAMC_DATA_ENH_1(pipe), \
+		_PLANE_PRE_CSC_GAMC_DATA_ENH_2(pipe))

-:61: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#61: FILE: drivers/gpu/drm/i915/i915_reg.h:11431:
+#define PLANE_PRE_CSC_GAMC_INDEX(pipe, plane, i)	\
+		_MMIO_PLANE_GAMC(plane, i, _PLANE_PRE_CSC_GAMC_INDEX_1(pipe), \
+		_PLANE_PRE_CSC_GAMC_INDEX_2(pipe))

-:73: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#73: FILE: drivers/gpu/drm/i915/i915_reg.h:11443:
+#define PLANE_PRE_CSC_GAMC_DATA(pipe, plane, i)	\
+		_MMIO_PLANE_GAMC(plane, i, _PLANE_PRE_CSC_GAMC_DATA_1(pipe), \
+		_PLANE_PRE_CSC_GAMC_DATA_2(pipe))

total: 0 errors, 0 warnings, 4 checks, 64 lines checked
3a31d402f88a drm/i915/xelpd: Enable plane color features
790f94f18205 drm/i915/xelpd: Add color capabilities of SDR planes
853f0116ea83 drm/i915/xelpd: Program Plane Degamma Registers
-:68: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#68: FILE: drivers/gpu/drm/i915/display/intel_color.c:2242:
+				intel_de_write(dev_priv, PLANE_PRE_CSC_GAMC_DATA_ENH(pipe, plane, 0),

-:74: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#74: FILE: drivers/gpu/drm/i915/display/intel_color.c:2248:
+				intel_de_write(dev_priv, PLANE_PRE_CSC_GAMC_DATA_ENH(pipe, plane, 0),

-:80: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#80: FILE: drivers/gpu/drm/i915/display/intel_color.c:2254:
+				intel_de_write(dev_priv, PLANE_PRE_CSC_GAMC_DATA_ENH(pipe, plane, 0), v);

-:84: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#84: FILE: drivers/gpu/drm/i915/display/intel_color.c:2258:
+				intel_de_write(dev_priv, PLANE_PRE_CSC_GAMC_DATA_ENH(pipe, plane, 0),

-:114: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#114: FILE: drivers/gpu/drm/i915/display/intel_color.c:2288:
+				intel_de_write(dev_priv, PLANE_PRE_CSC_GAMC_DATA(pipe, plane, 0), v);

total: 0 errors, 5 warnings, 0 checks, 148 lines checked
d64e7e814400 drm/i915/xelpd: Add plane color check to glk_plane_color_ctl
a66cbbe88e63 drm/i915/xelpd: Initialize plane color features
7b01dd73b025 drm/i915/xelpd: Load plane color luts from atomic flip
9a0a55da5520 drm: Add Plane CTM property
-:41: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#41: FILE: drivers/gpu/drm/drm_atomic_uapi.c:610:
+		ret = drm_atomic_replace_property_blob_from_id(dev,
+					&state->ctm,

total: 0 errors, 0 warnings, 1 checks, 87 lines checked
cccf197af1b9 drm: Add helper to attach Plane ctm property
5c841e35f0e7 drm/i915/xelpd: Define Plane CSC Registers
-:29: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#29: FILE: drivers/gpu/drm/i915/i915_reg.h:7480:
+#define PLANE_CSC_COEFF(pipe, plane, index)	_MMIO_PLANE(plane, \
+							    _PLANE_CSC_RY_GY_1(pipe) +  (index) * 4, \
+							    _PLANE_CSC_RY_GY_2(pipe) + (index) * 4)

-:29: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'index' - possible side-effects?
#29: FILE: drivers/gpu/drm/i915/i915_reg.h:7480:
+#define PLANE_CSC_COEFF(pipe, plane, index)	_MMIO_PLANE(plane, \
+							    _PLANE_CSC_RY_GY_1(pipe) +  (index) * 4, \
+							    _PLANE_CSC_RY_GY_2(pipe) + (index) * 4)

-:30: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#30: FILE: drivers/gpu/drm/i915/i915_reg.h:7481:
+							    _PLANE_CSC_RY_GY_1(pipe) +  (index) * 4, \

-:43: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#43: FILE: drivers/gpu/drm/i915/i915_reg.h:7494:
+#define PLANE_CSC_PREOFF(pipe, plane, index)	_MMIO_PLANE(plane, _PLANE_CSC_PREOFF_HI_1(pipe) + \
+							    (index) * 4, _PLANE_CSC_PREOFF_HI_2(pipe) + \
+							    (index) * 4)

-:43: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'index' - possible side-effects?
#43: FILE: drivers/gpu/drm/i915/i915_reg.h:7494:
+#define PLANE_CSC_PREOFF(pipe, plane, index)	_MMIO_PLANE(plane, _PLANE_CSC_PREOFF_HI_1(pipe) + \
+							    (index) * 4, _PLANE_CSC_PREOFF_HI_2(pipe) + \
+							    (index) * 4)

-:44: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#44: FILE: drivers/gpu/drm/i915/i915_reg.h:7495:
+							    (index) * 4, _PLANE_CSC_PREOFF_HI_2(pipe) + \

-:57: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#57: FILE: drivers/gpu/drm/i915/i915_reg.h:7508:
+#define PLANE_CSC_POSTOFF(pipe, plane, index)	_MMIO_PLANE(plane, _PLANE_CSC_POSTOFF_HI_1(pipe) + \
+							    (index) * 4, _PLANE_CSC_POSTOFF_HI_2(pipe) + \
+							    (index) * 4)

-:57: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'index' - possible side-effects?
#57: FILE: drivers/gpu/drm/i915/i915_reg.h:7508:
+#define PLANE_CSC_POSTOFF(pipe, plane, index)	_MMIO_PLANE(plane, _PLANE_CSC_POSTOFF_HI_1(pipe) + \
+							    (index) * 4, _PLANE_CSC_POSTOFF_HI_2(pipe) + \
+							    (index) * 4)

-:58: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#58: FILE: drivers/gpu/drm/i915/i915_reg.h:7509:
+							    (index) * 4, _PLANE_CSC_POSTOFF_HI_2(pipe) + \

total: 0 errors, 3 warnings, 6 checks, 49 lines checked
c80670d0ba61 drm/i915/xelpd: Enable Plane CSC
ec7dd2be1f37 drm: Add Plane Gamma Mode property
a3fc5412d19d drm: Add Plane Gamma Lut property
-:41: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#41: FILE: drivers/gpu/drm/drm_atomic_uapi.c:620:
+		ret = drm_atomic_replace_property_blob_from_id(dev,
+					&state->gamma_lut,

total: 0 errors, 0 warnings, 1 checks, 99 lines checked
757106bc29dd drm/i915/xelpd: Define and Initialize Plane Gamma Lut range
-:129: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#129: FILE: drivers/gpu/drm/i915/display/intel_color.c:2492:
+									   sizeof(d13_gamma_degamma_sdr),

-:136: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#136: FILE: drivers/gpu/drm/i915/display/intel_color.c:2499:
+									   sizeof(d13_gamma_degamma_sdr),

total: 0 errors, 2 warnings, 0 checks, 138 lines checked
e8c016461e9a drm/i915/xelpd: Add register definitions for Plane Gamma
-:23: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#23: FILE: drivers/gpu/drm/i915/i915_reg.h:11498:
+#define _PLANE_POST_CSC_GAMC_SEG0_INDEX_ENH_1(pipe)	_PIPE(pipe, _PLANE_POST_CSC_GAMC_SEG0_INDEX_ENH_1_A, \

-:25: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#25: FILE: drivers/gpu/drm/i915/i915_reg.h:11500:
+#define _PLANE_POST_CSC_GAMC_SEG0_INDEX_ENH_2(pipe)	_PIPE(pipe, _PLANE_POST_CSC_GAMC_SEG0_INDEX_ENH_2_A, \

-:27: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#27: FILE: drivers/gpu/drm/i915/i915_reg.h:11502:
+#define PLANE_POST_CSC_GAMC_SEG0_INDEX_ENH(pipe, plane, i)	\
+		_MMIO_PLANE_GAMC(plane, i, _PLANE_POST_CSC_GAMC_SEG0_INDEX_ENH_1(pipe), \
+		_PLANE_POST_CSC_GAMC_SEG0_INDEX_ENH_2(pipe))

-:35: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#35: FILE: drivers/gpu/drm/i915/i915_reg.h:11510:
+#define _PLANE_POST_CSC_GAMC_SEG0_DATA_ENH_1(pipe)	_PIPE(pipe, _PLANE_POST_CSC_GAMC_SEG0_DATA_ENH_1_A, \

-:37: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#37: FILE: drivers/gpu/drm/i915/i915_reg.h:11512:
+#define _PLANE_POST_CSC_GAMC_SEG0_DATA_ENH_2(pipe)	_PIPE(pipe, _PLANE_POST_CSC_GAMC_SEG0_DATA_ENH_2_A, \

-:39: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#39: FILE: drivers/gpu/drm/i915/i915_reg.h:11514:
+#define PLANE_POST_CSC_GAMC_SEG0_DATA_ENH(pipe, plane, i)	\
+		_MMIO_PLANE_GAMC(plane, i, _PLANE_POST_CSC_GAMC_SEG0_DATA_ENH_1(pipe), \
+		_PLANE_POST_CSC_GAMC_SEG0_DATA_ENH_2(pipe))

-:51: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#51: FILE: drivers/gpu/drm/i915/i915_reg.h:11526:
+#define PLANE_POST_CSC_GAMC_INDEX_ENH(pipe, plane, i)	\
+		_MMIO_PLANE_GAMC(plane, i, _PLANE_POST_CSC_GAMC_INDEX_ENH_1(pipe), \
+		_PLANE_POST_CSC_GAMC_INDEX_ENH_2(pipe))

-:63: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#63: FILE: drivers/gpu/drm/i915/i915_reg.h:11538:
+#define PLANE_POST_CSC_GAMC_DATA_ENH(pipe, plane, i)	\
+		_MMIO_PLANE_GAMC(plane, i, _PLANE_POST_CSC_GAMC_DATA_ENH_1(pipe), \
+		_PLANE_POST_CSC_GAMC_DATA_ENH_2(pipe))

-:75: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#75: FILE: drivers/gpu/drm/i915/i915_reg.h:11550:
+#define PLANE_POST_CSC_GAMC_INDEX(pipe, plane, i)	\
+		_MMIO_PLANE_GAMC(plane, i, _PLANE_POST_CSC_GAMC_INDEX_1(pipe), \
+		_PLANE_POST_CSC_GAMC_INDEX_2(pipe))

-:87: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#87: FILE: drivers/gpu/drm/i915/i915_reg.h:11562:
+#define PLANE_POST_CSC_GAMC_DATA(pipe, plane, i)	\
+		_MMIO_PLANE_GAMC(plane, i, _PLANE_POST_CSC_GAMC_DATA_1(pipe), \
+		_PLANE_POST_CSC_GAMC_DATA_2(pipe))

total: 0 errors, 4 warnings, 6 checks, 79 lines checked
f8a38f97382c drm/i915/xelpd: Program Plane Gamma Registers
-:47: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#47: FILE: drivers/gpu/drm/i915/display/intel_color.c:2457:
+				intel_de_write(dev_priv, PLANE_POST_CSC_GAMC_DATA_ENH(pipe, plane, 0),

-:53: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#53: FILE: drivers/gpu/drm/i915/display/intel_color.c:2463:
+				intel_de_write(dev_priv, PLANE_POST_CSC_GAMC_DATA_ENH(pipe, plane, 0),

-:61: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#61: FILE: drivers/gpu/drm/i915/display/intel_color.c:2471:
+				intel_de_write(dev_priv, PLANE_POST_CSC_GAMC_DATA_ENH(pipe, plane, 0), v);

-:65: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#65: FILE: drivers/gpu/drm/i915/display/intel_color.c:2475:
+				intel_de_write(dev_priv, PLANE_POST_CSC_GAMC_DATA_ENH(pipe, plane, 0),

-:94: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#94: FILE: drivers/gpu/drm/i915/display/intel_color.c:2504:
+				intel_de_write(dev_priv, PLANE_POST_CSC_GAMC_DATA(pipe, plane, 0), v);

total: 0 errors, 5 warnings, 0 checks, 126 lines checked
7336f1126135 drm/i915/xelpd: Enable plane gamma


