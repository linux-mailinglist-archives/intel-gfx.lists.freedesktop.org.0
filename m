Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D13A3973F6
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Jun 2021 15:18:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B81C989B3B;
	Tue,  1 Jun 2021 13:18:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 70AD689100;
 Tue,  1 Jun 2021 13:18:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 69F7DA47E8;
 Tue,  1 Jun 2021 13:18:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Uma Shankar" <uma.shankar@intel.com>
Date: Tue, 01 Jun 2021 13:18:20 -0000
Message-ID: <162255350042.19249.2993078598678264344@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210601105218.29185-1-uma.shankar@intel.com>
In-Reply-To: <20210601105218.29185-1-uma.shankar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_Support_for_Plane_Color_Lut_and_CSC_features?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Add Support for Plane Color Lut and CSC features
URL   : https://patchwork.freedesktop.org/series/90825/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
68c5484bfdad drm: Add Enhanced Gamma and color lut range attributes
a1e53948f9d0 drm: Add Plane Degamma Mode property
684c709fb80f drm: Add Plane Degamma Lut property
-:45: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#45: FILE: drivers/gpu/drm/drm_atomic_uapi.c:602:
+		ret = drm_atomic_replace_property_blob_from_id(dev,
+					&state->degamma_lut,

total: 0 errors, 0 warnings, 1 checks, 101 lines checked
2bf36d661d4d drm/i915/xelpd: Define Degamma Lut range struct for HDR planes
0c1eabc62705 drm/i915/xelpd: Add register definitions for Plane Degamma
-:37: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#37: FILE: drivers/gpu/drm/i915/i915_reg.h:11315:
+#define PLANE_PRE_CSC_GAMC_INDEX_ENH(pipe, plane, i)	\
+		_MMIO_PLANE_GAMC(plane, i, _PLANE_PRE_CSC_GAMC_INDEX_ENH_1(pipe), \
+		_PLANE_PRE_CSC_GAMC_INDEX_ENH_2(pipe))

-:49: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#49: FILE: drivers/gpu/drm/i915/i915_reg.h:11327:
+#define PLANE_PRE_CSC_GAMC_DATA_ENH(pipe, plane, i)	\
+		_MMIO_PLANE_GAMC(plane, i, _PLANE_PRE_CSC_GAMC_DATA_ENH_1(pipe), \
+		_PLANE_PRE_CSC_GAMC_DATA_ENH_2(pipe))

-:61: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#61: FILE: drivers/gpu/drm/i915/i915_reg.h:11339:
+#define PLANE_PRE_CSC_GAMC_INDEX(pipe, plane, i)	\
+		_MMIO_PLANE_GAMC(plane, i, _PLANE_PRE_CSC_GAMC_INDEX_1(pipe), \
+		_PLANE_PRE_CSC_GAMC_INDEX_2(pipe))

-:73: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#73: FILE: drivers/gpu/drm/i915/i915_reg.h:11351:
+#define PLANE_PRE_CSC_GAMC_DATA(pipe, plane, i)	\
+		_MMIO_PLANE_GAMC(plane, i, _PLANE_PRE_CSC_GAMC_DATA_1(pipe), \
+		_PLANE_PRE_CSC_GAMC_DATA_2(pipe))

total: 0 errors, 0 warnings, 4 checks, 64 lines checked
258e15146869 drm/i915/xelpd: Enable plane color features
b7ea85214efd drm/i915/xelpd: Add color capabilities of SDR planes
66e7c29201d7 drm/i915/xelpd: Program Plane Degamma Registers
-:68: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#68: FILE: drivers/gpu/drm/i915/display/intel_color.c:2243:
+				intel_de_write(dev_priv, PLANE_PRE_CSC_GAMC_DATA_ENH(pipe, plane, 0),

-:74: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#74: FILE: drivers/gpu/drm/i915/display/intel_color.c:2249:
+				intel_de_write(dev_priv, PLANE_PRE_CSC_GAMC_DATA_ENH(pipe, plane, 0),

-:80: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#80: FILE: drivers/gpu/drm/i915/display/intel_color.c:2255:
+				intel_de_write(dev_priv, PLANE_PRE_CSC_GAMC_DATA_ENH(pipe, plane, 0), v);

-:84: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#84: FILE: drivers/gpu/drm/i915/display/intel_color.c:2259:
+				intel_de_write(dev_priv, PLANE_PRE_CSC_GAMC_DATA_ENH(pipe, plane, 0),

-:114: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#114: FILE: drivers/gpu/drm/i915/display/intel_color.c:2289:
+				intel_de_write(dev_priv, PLANE_PRE_CSC_GAMC_DATA(pipe, plane, 0), v);

total: 0 errors, 5 warnings, 0 checks, 148 lines checked
ae7be4f9a5ff drm/i915/xelpd: Add plane color check to glk_plane_color_ctl
1f1fa094a94e drm/i915/xelpd: Initialize plane color features
ab01acc58f9c drm/i915/xelpd: Load plane color luts from atomic flip
66d7c2419b53 drm: Add Plane CTM property
-:41: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#41: FILE: drivers/gpu/drm/drm_atomic_uapi.c:609:
+		ret = drm_atomic_replace_property_blob_from_id(dev,
+					&state->ctm,

total: 0 errors, 0 warnings, 1 checks, 87 lines checked
08ee867daa81 drm: Add helper to attach Plane ctm property
9d7042c9e95e drm/i915/xelpd: Define Plane CSC Registers
-:29: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#29: FILE: drivers/gpu/drm/i915/i915_reg.h:7411:
+#define PLANE_CSC_COEFF(pipe, plane, index)	_MMIO_PLANE(plane, \
+							    _PLANE_CSC_RY_GY_1(pipe) +  (index) * 4, \
+							    _PLANE_CSC_RY_GY_2(pipe) + (index) * 4)

-:29: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'index' - possible side-effects?
#29: FILE: drivers/gpu/drm/i915/i915_reg.h:7411:
+#define PLANE_CSC_COEFF(pipe, plane, index)	_MMIO_PLANE(plane, \
+							    _PLANE_CSC_RY_GY_1(pipe) +  (index) * 4, \
+							    _PLANE_CSC_RY_GY_2(pipe) + (index) * 4)

-:30: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#30: FILE: drivers/gpu/drm/i915/i915_reg.h:7412:
+							    _PLANE_CSC_RY_GY_1(pipe) +  (index) * 4, \

-:43: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#43: FILE: drivers/gpu/drm/i915/i915_reg.h:7425:
+#define PLANE_CSC_PREOFF(pipe, plane, index)	_MMIO_PLANE(plane, _PLANE_CSC_PREOFF_HI_1(pipe) + \
+							    (index) * 4, _PLANE_CSC_PREOFF_HI_2(pipe) + \
+							    (index) * 4)

-:43: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'index' - possible side-effects?
#43: FILE: drivers/gpu/drm/i915/i915_reg.h:7425:
+#define PLANE_CSC_PREOFF(pipe, plane, index)	_MMIO_PLANE(plane, _PLANE_CSC_PREOFF_HI_1(pipe) + \
+							    (index) * 4, _PLANE_CSC_PREOFF_HI_2(pipe) + \
+							    (index) * 4)

-:44: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#44: FILE: drivers/gpu/drm/i915/i915_reg.h:7426:
+							    (index) * 4, _PLANE_CSC_PREOFF_HI_2(pipe) + \

-:57: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#57: FILE: drivers/gpu/drm/i915/i915_reg.h:7439:
+#define PLANE_CSC_POSTOFF(pipe, plane, index)	_MMIO_PLANE(plane, _PLANE_CSC_POSTOFF_HI_1(pipe) + \
+							    (index) * 4, _PLANE_CSC_POSTOFF_HI_2(pipe) + \
+							    (index) * 4)

-:57: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'index' - possible side-effects?
#57: FILE: drivers/gpu/drm/i915/i915_reg.h:7439:
+#define PLANE_CSC_POSTOFF(pipe, plane, index)	_MMIO_PLANE(plane, _PLANE_CSC_POSTOFF_HI_1(pipe) + \
+							    (index) * 4, _PLANE_CSC_POSTOFF_HI_2(pipe) + \
+							    (index) * 4)

-:58: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#58: FILE: drivers/gpu/drm/i915/i915_reg.h:7440:
+							    (index) * 4, _PLANE_CSC_POSTOFF_HI_2(pipe) + \

total: 0 errors, 3 warnings, 6 checks, 49 lines checked
f381646bcaaa drm/i915/xelpd: Enable Plane CSC
d407eae16e6b drm: Add Plane Gamma Mode property
7a46749335d6 drm: Add Plane Gamma Lut property
-:41: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#41: FILE: drivers/gpu/drm/drm_atomic_uapi.c:619:
+		ret = drm_atomic_replace_property_blob_from_id(dev,
+					&state->gamma_lut,

total: 0 errors, 0 warnings, 1 checks, 99 lines checked
05e5a03fc98f drm/i915/xelpd: Define and Initialize Plane Gamma Lut range
-:129: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#129: FILE: drivers/gpu/drm/i915/display/intel_color.c:2493:
+									   sizeof(d13_gamma_degamma_sdr),

-:136: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#136: FILE: drivers/gpu/drm/i915/display/intel_color.c:2500:
+									   sizeof(d13_gamma_degamma_sdr),

total: 0 errors, 2 warnings, 0 checks, 138 lines checked
035b13656332 drm/i915/xelpd: Add register definitions for Plane Gamma
-:23: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#23: FILE: drivers/gpu/drm/i915/i915_reg.h:11406:
+#define _PLANE_POST_CSC_GAMC_SEG0_INDEX_ENH_1(pipe)	_PIPE(pipe, _PLANE_POST_CSC_GAMC_SEG0_INDEX_ENH_1_A, \

-:25: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#25: FILE: drivers/gpu/drm/i915/i915_reg.h:11408:
+#define _PLANE_POST_CSC_GAMC_SEG0_INDEX_ENH_2(pipe)	_PIPE(pipe, _PLANE_POST_CSC_GAMC_SEG0_INDEX_ENH_2_A, \

-:27: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#27: FILE: drivers/gpu/drm/i915/i915_reg.h:11410:
+#define PLANE_POST_CSC_GAMC_SEG0_INDEX_ENH(pipe, plane, i)	\
+		_MMIO_PLANE_GAMC(plane, i, _PLANE_POST_CSC_GAMC_SEG0_INDEX_ENH_1(pipe), \
+		_PLANE_POST_CSC_GAMC_SEG0_INDEX_ENH_2(pipe))

-:35: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#35: FILE: drivers/gpu/drm/i915/i915_reg.h:11418:
+#define _PLANE_POST_CSC_GAMC_SEG0_DATA_ENH_1(pipe)	_PIPE(pipe, _PLANE_POST_CSC_GAMC_SEG0_DATA_ENH_1_A, \

-:37: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#37: FILE: drivers/gpu/drm/i915/i915_reg.h:11420:
+#define _PLANE_POST_CSC_GAMC_SEG0_DATA_ENH_2(pipe)	_PIPE(pipe, _PLANE_POST_CSC_GAMC_SEG0_DATA_ENH_2_A, \

-:39: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#39: FILE: drivers/gpu/drm/i915/i915_reg.h:11422:
+#define PLANE_POST_CSC_GAMC_SEG0_DATA_ENH(pipe, plane, i)	\
+		_MMIO_PLANE_GAMC(plane, i, _PLANE_POST_CSC_GAMC_SEG0_DATA_ENH_1(pipe), \
+		_PLANE_POST_CSC_GAMC_SEG0_DATA_ENH_2(pipe))

-:51: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#51: FILE: drivers/gpu/drm/i915/i915_reg.h:11434:
+#define PLANE_POST_CSC_GAMC_INDEX_ENH(pipe, plane, i)	\
+		_MMIO_PLANE_GAMC(plane, i, _PLANE_POST_CSC_GAMC_INDEX_ENH_1(pipe), \
+		_PLANE_POST_CSC_GAMC_INDEX_ENH_2(pipe))

-:63: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#63: FILE: drivers/gpu/drm/i915/i915_reg.h:11446:
+#define PLANE_POST_CSC_GAMC_DATA_ENH(pipe, plane, i)	\
+		_MMIO_PLANE_GAMC(plane, i, _PLANE_POST_CSC_GAMC_DATA_ENH_1(pipe), \
+		_PLANE_POST_CSC_GAMC_DATA_ENH_2(pipe))

-:75: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#75: FILE: drivers/gpu/drm/i915/i915_reg.h:11458:
+#define PLANE_POST_CSC_GAMC_INDEX(pipe, plane, i)	\
+		_MMIO_PLANE_GAMC(plane, i, _PLANE_POST_CSC_GAMC_INDEX_1(pipe), \
+		_PLANE_POST_CSC_GAMC_INDEX_2(pipe))

-:87: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#87: FILE: drivers/gpu/drm/i915/i915_reg.h:11470:
+#define PLANE_POST_CSC_GAMC_DATA(pipe, plane, i)	\
+		_MMIO_PLANE_GAMC(plane, i, _PLANE_POST_CSC_GAMC_DATA_1(pipe), \
+		_PLANE_POST_CSC_GAMC_DATA_2(pipe))

total: 0 errors, 4 warnings, 6 checks, 79 lines checked
525c6ebbb2c5 drm/i915/xelpd: Program Plane Gamma Registers
-:47: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#47: FILE: drivers/gpu/drm/i915/display/intel_color.c:2458:
+				intel_de_write(dev_priv, PLANE_POST_CSC_GAMC_DATA_ENH(pipe, plane, 0),

-:53: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#53: FILE: drivers/gpu/drm/i915/display/intel_color.c:2464:
+				intel_de_write(dev_priv, PLANE_POST_CSC_GAMC_DATA_ENH(pipe, plane, 0),

-:61: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#61: FILE: drivers/gpu/drm/i915/display/intel_color.c:2472:
+				intel_de_write(dev_priv, PLANE_POST_CSC_GAMC_DATA_ENH(pipe, plane, 0), v);

-:65: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#65: FILE: drivers/gpu/drm/i915/display/intel_color.c:2476:
+				intel_de_write(dev_priv, PLANE_POST_CSC_GAMC_DATA_ENH(pipe, plane, 0),

-:94: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#94: FILE: drivers/gpu/drm/i915/display/intel_color.c:2505:
+				intel_de_write(dev_priv, PLANE_POST_CSC_GAMC_DATA(pipe, plane, 0), v);

total: 0 errors, 5 warnings, 0 checks, 126 lines checked
bfb9d2884ac1 drm/i915/xelpd: Enable plane gamma


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
