Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D4EA78CD3E
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Aug 2023 22:02:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FEA210E085;
	Tue, 29 Aug 2023 20:02:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7BCEA10E085;
 Tue, 29 Aug 2023 20:02:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 64D72AA3D8;
 Tue, 29 Aug 2023 20:02:07 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Uma Shankar" <uma.shankar@intel.com>
Date: Tue, 29 Aug 2023 20:02:07 -0000
Message-ID: <169333932737.16745.16498518266925231123@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230829160422.1251087-1-uma.shankar@intel.com>
In-Reply-To: <20230829160422.1251087-1-uma.shankar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_Support_for_Plane_Color_Pipeline?=
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

Series: Add Support for Plane Color Pipeline
URL   : https://patchwork.freedesktop.org/series/123023/
State : warning

== Summary ==

Error: dim checkpatch failed
5b6e9790b630 drm/doc/rfc: Add RFC document for proposed Plane Color Pipeline
-:14: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#14: 
new file mode 100644

-:19: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#19: FILE: Documentation/gpu/rfc/plane_color_pipeline.rst:1:
+=======================================

total: 0 errors, 2 warnings, 0 checks, 394 lines checked
4aeebe895139 drm: Add color operation structure
970dacdffa01 drm: Add plane get color pipeline property
7b46fd8d80a1 drm: Add helper to add color pipeline
97ea5d644a12 drm: Add structures for setting color pipeline
1e6046947815 drm: Add set colorpipeline property
-:28: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#28: FILE: drivers/gpu/drm/drm_atomic_uapi.c:595:
+		ret = drm_atomic_replace_property_blob_from_id(dev,
+					&state->set_color_pipeline_data,

total: 0 errors, 0 warnings, 1 checks, 112 lines checked
63ce75dc0166 drm: Add Enhanced Gamma LUT precision structure
bef188076fbe drm: Add color lut range structure
ae5fe78f0d56 drm: Add color information to plane state
19343ed5ea63 drm: Manage color blob states
862b423779e4 drm: Replace individual color blobs
-:31: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u64' over 'uint64_t'
#31: FILE: drivers/gpu/drm/drm_atomic_uapi.c:417:
+				     uint64_t color_pipeline_blob_id,

-:64: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#64: FILE: drivers/gpu/drm/drm_atomic_uapi.c:450:
+			ret = drm_atomic_replace_property_blob_from_id(dev,
+							&state->color.ctm,

-:70: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#70: FILE: drivers/gpu/drm/drm_atomic_uapi.c:456:
+			ret = drm_atomic_replace_property_blob_from_id(dev,
+							&state->color.pre_csc_lut,

-:76: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#76: FILE: drivers/gpu/drm/drm_atomic_uapi.c:462:
+			ret = drm_atomic_replace_property_blob_from_id(dev,
+							&state->color.post_csc_lut,

-:82: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#82: FILE: drivers/gpu/drm/drm_atomic_uapi.c:468:
+			ret = drm_atomic_replace_property_blob_from_id(dev,
+							&state->color.private_color_op_data,

total: 0 errors, 0 warnings, 5 checks, 109 lines checked
ea3a48a26b45 drm: Reset pipeline when user sends NULL blob
b75c6a76b293 drm: Reset plane color state on pipeline switch request
-:67: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#67: FILE: drivers/gpu/drm/drm_atomic_uapi.c:765:
+		cp_change_requested = color_pipeline_change_requested(dev,
+						state->set_color_pipeline_data,

-:83: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#83: FILE: drivers/gpu/drm/drm_atomic_uapi.c:782:
+				ret = drm_plane_reset_color_op_blobs(plane,
+								state, &replaced);

total: 0 errors, 0 warnings, 2 checks, 72 lines checked
a018bab5b7c5 drm/i915/color: Add lut range for SDR planes
11ce867cfea0 drm/i915/color: Add lut range for HDR planes
a4e18914ef30 drm/i915/color: Add color pipeline for HDR planes
cfc3198574b2 drm/i915/color: Add color pipeline for SDR planes
35769022d6c9 drm/i915/color: Add HDR plane LUT range data to color pipeline
4e6de9ba7fbd drm/i915/color: Add SDR plane LUT range data to color pipeline
1ca1fc5c040f drm/i915/color: Add color pipelines to plane
9b1b69f14b09 drm/i915/color: Create and attach set color pipeline property
d9b196b1c211 drm/i915/color: Add plane color callbacks
5eba0edf5e53 drm/i915/color: Load plane color luts from atomic flip
30d22691d27a drm/i915/xelpd: Add plane color check to glk_plane_color_ctl
7b6f6ba37ab3 drm/i915/xelpd: Add register definitions for Plane Degamma
-:29: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#29: FILE: drivers/gpu/drm/i915/i915_reg.h:6238:
+#define PLANE_PRE_CSC_GAMC_INDEX_ENH(pipe, plane, i)	\
+		_MMIO_PLANE_GAMC(plane, i, _PLANE_PRE_CSC_GAMC_INDEX_ENH_1(pipe), \
+		_PLANE_PRE_CSC_GAMC_INDEX_ENH_2(pipe))

-:41: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#41: FILE: drivers/gpu/drm/i915/i915_reg.h:6250:
+#define PLANE_PRE_CSC_GAMC_DATA_ENH(pipe, plane, i)	\
+		_MMIO_PLANE_GAMC(plane, i, _PLANE_PRE_CSC_GAMC_DATA_ENH_1(pipe), \
+		_PLANE_PRE_CSC_GAMC_DATA_ENH_2(pipe))

-:53: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#53: FILE: drivers/gpu/drm/i915/i915_reg.h:6262:
+#define PLANE_PRE_CSC_GAMC_INDEX(pipe, plane, i)	\
+		_MMIO_PLANE_GAMC(plane, i, _PLANE_PRE_CSC_GAMC_INDEX_1(pipe), \
+		_PLANE_PRE_CSC_GAMC_INDEX_2(pipe))

-:65: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#65: FILE: drivers/gpu/drm/i915/i915_reg.h:6274:
+#define PLANE_PRE_CSC_GAMC_DATA(pipe, plane, i)	\
+		_MMIO_PLANE_GAMC(plane, i, _PLANE_PRE_CSC_GAMC_DATA_1(pipe), \
+		_PLANE_PRE_CSC_GAMC_DATA_2(pipe))

total: 0 errors, 0 warnings, 4 checks, 55 lines checked
e4902513d633 drm/i915/color: Add color functions for ADL
b7087ab3594d drm/i915/color: Program Plane Pre-CSC Registers
af571e45b3e7 drm/i915/xelpd: Add register definitions for Plane Post CSC
-:25: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#25: FILE: drivers/gpu/drm/i915/i915_reg.h:6234:
+#define _PLANE_POST_CSC_GAMC_SEG0_INDEX_ENH_1(pipe)	_PIPE(pipe, _PLANE_POST_CSC_GAMC_SEG0_INDEX_ENH_1_A, \

-:27: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#27: FILE: drivers/gpu/drm/i915/i915_reg.h:6236:
+#define _PLANE_POST_CSC_GAMC_SEG0_INDEX_ENH_2(pipe)	_PIPE(pipe, _PLANE_POST_CSC_GAMC_SEG0_INDEX_ENH_2_A, \

-:29: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#29: FILE: drivers/gpu/drm/i915/i915_reg.h:6238:
+#define PLANE_POST_CSC_GAMC_SEG0_INDEX_ENH(pipe, plane, i)	\
+		_MMIO_PLANE_GAMC(plane, i, _PLANE_POST_CSC_GAMC_SEG0_INDEX_ENH_1(pipe), \
+		_PLANE_POST_CSC_GAMC_SEG0_INDEX_ENH_2(pipe))

-:37: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#37: FILE: drivers/gpu/drm/i915/i915_reg.h:6246:
+#define _PLANE_POST_CSC_GAMC_SEG0_DATA_ENH_1(pipe)	_PIPE(pipe, _PLANE_POST_CSC_GAMC_SEG0_DATA_ENH_1_A, \

-:39: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#39: FILE: drivers/gpu/drm/i915/i915_reg.h:6248:
+#define _PLANE_POST_CSC_GAMC_SEG0_DATA_ENH_2(pipe)	_PIPE(pipe, _PLANE_POST_CSC_GAMC_SEG0_DATA_ENH_2_A, \

-:41: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#41: FILE: drivers/gpu/drm/i915/i915_reg.h:6250:
+#define PLANE_POST_CSC_GAMC_SEG0_DATA_ENH(pipe, plane, i)	\
+		_MMIO_PLANE_GAMC(plane, i, _PLANE_POST_CSC_GAMC_SEG0_DATA_ENH_1(pipe), \
+		_PLANE_POST_CSC_GAMC_SEG0_DATA_ENH_2(pipe))

-:53: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#53: FILE: drivers/gpu/drm/i915/i915_reg.h:6262:
+#define PLANE_POST_CSC_GAMC_INDEX_ENH(pipe, plane, i)	\
+		_MMIO_PLANE_GAMC(plane, i, _PLANE_POST_CSC_GAMC_INDEX_ENH_1(pipe), \
+		_PLANE_POST_CSC_GAMC_INDEX_ENH_2(pipe))

-:65: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#65: FILE: drivers/gpu/drm/i915/i915_reg.h:6274:
+#define PLANE_POST_CSC_GAMC_DATA_ENH(pipe, plane, i)	\
+		_MMIO_PLANE_GAMC(plane, i, _PLANE_POST_CSC_GAMC_DATA_ENH_1(pipe), \
+		_PLANE_POST_CSC_GAMC_DATA_ENH_2(pipe))

-:77: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#77: FILE: drivers/gpu/drm/i915/i915_reg.h:6286:
+#define PLANE_POST_CSC_GAMC_INDEX(pipe, plane, i)	\
+		_MMIO_PLANE_GAMC(plane, i, _PLANE_POST_CSC_GAMC_INDEX_1(pipe), \
+		_PLANE_POST_CSC_GAMC_INDEX_2(pipe))

-:89: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#89: FILE: drivers/gpu/drm/i915/i915_reg.h:6298:
+#define PLANE_POST_CSC_GAMC_DATA(pipe, plane, i)	\
+		_MMIO_PLANE_GAMC(plane, i, _PLANE_POST_CSC_GAMC_DATA_1(pipe), \
+		_PLANE_POST_CSC_GAMC_DATA_2(pipe))

total: 0 errors, 4 warnings, 6 checks, 79 lines checked
7746bc9e6186 drm/i915/xelpd: Program Plane Post CSC Registers
47f636cfee5f drm/i915/color: Enable Plane CSC
ef86823dca18 drm/i915/color: Enable plane color features
138b81f07c65 drm/i915/color: Add a dummy pipeline with 3D LUT
-:59: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#59: FILE: drivers/gpu/drm/drm_atomic_uapi.c:565:
+			ret = drm_atomic_replace_property_blob_from_id(dev,
+							&state->color.lut_3d,

total: 0 errors, 0 warnings, 1 checks, 124 lines checked
d1d9a14565f2 drm/i915/color: Add example implementation for vendor specific color operation


