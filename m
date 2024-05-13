Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FE878C4705
	for <lists+intel-gfx@lfdr.de>; Mon, 13 May 2024 20:39:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4E0210E043;
	Mon, 13 May 2024 18:39:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B66710E043;
 Mon, 13 May 2024 18:39:49 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_skl+_pla?=
 =?utf-8?q?ne_register_stuff_=28rev6=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 13 May 2024 18:39:49 -0000
Message-ID: <171562558937.2094388.16652712259945641739@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240510152329.24098-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240510152329.24098-1-ville.syrjala@linux.intel.com>
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

Series: drm/i915: skl+ plane register stuff (rev6)
URL   : https://patchwork.freedesktop.org/series/133458/
State : warning

== Summary ==

Error: dim checkpatch failed
6783d48ac30b drm/i915: Nuke _MMIO_PLANE_GAMC()
6d5c913cfe2c drm/i915: Extract skl_universal_plane_regs.h
-:54: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#54: 
new file mode 100644

-:74: WARNING:LONG_LINE_COMMENT: line length of 104 exceeds 100 columns
#74: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:16:
+#define   PLANE_CTL_ARB_SLOTS(x)		REG_FIELD_PREP(PLANE_CTL_ARB_SLOTS_MASK, (x)) /* icl+ */

-:238: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#238: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:180:
+#define _PLANE_CC_VAL_1(pipe, dw)	(_PIPE(pipe, _PLANE_CC_VAL_1_A, _PLANE_CC_VAL_1_B) + (dw) * 4)

-:239: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#239: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:181:
+#define _PLANE_CC_VAL_2(pipe, dw)	(_PIPE(pipe, _PLANE_CC_VAL_2_A, _PLANE_CC_VAL_2_B) + (dw) * 4)

-:240: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#240: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:182:
+#define PLANE_CC_VAL(pipe, plane, dw) \
+	_MMIO_PLANE((plane), _PLANE_CC_VAL_1((pipe), (dw)), _PLANE_CC_VAL_2((pipe), (dw)))

-:240: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dw' - possible side-effects?
#240: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:182:
+#define PLANE_CC_VAL(pipe, plane, dw) \
+	_MMIO_PLANE((plane), _PLANE_CC_VAL_1((pipe), (dw)), _PLANE_CC_VAL_2((pipe), (dw)))

-:257: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#257: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:199:
+#define PLANE_INPUT_CSC_COEFF(pipe, plane, index)	\
+	_MMIO_PLANE(plane, _PLANE_INPUT_CSC_RY_GY_1(pipe) +  (index) * 4, \
+		    _PLANE_INPUT_CSC_RY_GY_2(pipe) + (index) * 4)

-:257: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'index' - possible side-effects?
#257: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:199:
+#define PLANE_INPUT_CSC_COEFF(pipe, plane, index)	\
+	_MMIO_PLANE(plane, _PLANE_INPUT_CSC_RY_GY_1(pipe) +  (index) * 4, \
+		    _PLANE_INPUT_CSC_RY_GY_2(pipe) + (index) * 4)

-:273: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#273: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:215:
+#define PLANE_INPUT_CSC_PREOFF(pipe, plane, index)	\
+	_MMIO_PLANE(plane, _PLANE_INPUT_CSC_PREOFF_HI_1(pipe) + (index) * 4, \
+		    _PLANE_INPUT_CSC_PREOFF_HI_2(pipe) + (index) * 4)

-:273: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'index' - possible side-effects?
#273: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:215:
+#define PLANE_INPUT_CSC_PREOFF(pipe, plane, index)	\
+	_MMIO_PLANE(plane, _PLANE_INPUT_CSC_PREOFF_HI_1(pipe) + (index) * 4, \
+		    _PLANE_INPUT_CSC_PREOFF_HI_2(pipe) + (index) * 4)

-:289: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#289: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:231:
+#define PLANE_INPUT_CSC_POSTOFF(pipe, plane, index)	\
+	_MMIO_PLANE(plane, _PLANE_INPUT_CSC_POSTOFF_HI_1(pipe) + (index) * 4, \
+		    _PLANE_INPUT_CSC_POSTOFF_HI_2(pipe) + (index) * 4)

-:289: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'index' - possible side-effects?
#289: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:231:
+#define PLANE_INPUT_CSC_POSTOFF(pipe, plane, index)	\
+	_MMIO_PLANE(plane, _PLANE_INPUT_CSC_POSTOFF_HI_1(pipe) + (index) * 4, \
+		    _PLANE_INPUT_CSC_POSTOFF_HI_2(pipe) + (index) * 4)

-:299: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#299: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:241:
+#define PLANE_CTL(pipe, plane)	\
+	_MMIO_PLANE(plane, _PLANE_CTL_1(pipe), _PLANE_CTL_2(pipe))

-:311: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#311: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:253:
+#define PLANE_STRIDE(pipe, plane)	\
+	_MMIO_PLANE(plane, _PLANE_STRIDE_1(pipe), _PLANE_STRIDE_2(pipe))

-:320: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#320: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:262:
+#define PLANE_POS(pipe, plane)	\
+	_MMIO_PLANE(plane, _PLANE_POS_1(pipe), _PLANE_POS_2(pipe))

-:329: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#329: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:271:
+#define PLANE_SIZE(pipe, plane)	\
+	_MMIO_PLANE(plane, _PLANE_SIZE_1(pipe), _PLANE_SIZE_2(pipe))

-:338: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#338: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:280:
+#define PLANE_SURF(pipe, plane)	\
+	_MMIO_PLANE(plane, _PLANE_SURF_1(pipe), _PLANE_SURF_2(pipe))

-:345: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#345: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:287:
+#define PLANE_OFFSET(pipe, plane)	\
+	_MMIO_PLANE(plane, _PLANE_OFFSET_1(pipe), _PLANE_OFFSET_2(pipe))

-:352: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#352: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:294:
+#define PLANE_KEYVAL(pipe, plane)	\
+	_MMIO_PLANE(plane, _PLANE_KEYVAL_1(pipe), _PLANE_KEYVAL_2(pipe))

-:359: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#359: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:301:
+#define PLANE_KEYMSK(pipe, plane)	\
+	_MMIO_PLANE(plane, _PLANE_KEYMSK_1(pipe), _PLANE_KEYMSK_2(pipe))

-:366: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#366: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:308:
+#define PLANE_KEYMAX(pipe, plane)	\
+	_MMIO_PLANE(plane, _PLANE_KEYMAX_1(pipe), _PLANE_KEYMAX_2(pipe))

-:373: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#373: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:315:
+#define PLANE_SURFLIVE(pipe, plane)	\
+	_MMIO_PLANE(plane, _PLANE_SURFLIVE_1(pipe), _PLANE_SURFLIVE_2(pipe))

-:380: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#380: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:322:
+#define PLANE_CHICKEN(pipe, plane) \
+	_MMIO_PLANE(plane, _PLANE_CHICKEN_1(pipe), _PLANE_CHICKEN_2(pipe))

-:389: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#389: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:331:
+#define PLANE_AUX_DIST(pipe, plane)     \
+	_MMIO_PLANE(plane, _PLANE_AUX_DIST_1(pipe), _PLANE_AUX_DIST_2(pipe))

-:398: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#398: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:340:
+#define PLANE_AUX_OFFSET(pipe, plane)   \
+	_MMIO_PLANE(plane, _PLANE_AUX_OFFSET_1(pipe), _PLANE_AUX_OFFSET_2(pipe))

-:407: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#407: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:349:
+#define PLANE_CUS_CTL(pipe, plane)   \
+	_MMIO_PLANE(plane, _PLANE_CUS_CTL_1(pipe), _PLANE_CUS_CTL_2(pipe))

-:417: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#417: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:359:
+#define PLANE_COLOR_CTL(pipe, plane)	\
+	_MMIO_PLANE(plane, _PLANE_COLOR_CTL_1(pipe), _PLANE_COLOR_CTL_2(pipe))

-:431: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#431: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:373:
+#define PLANE_CSC_COEFF(pipe, plane, index)	_MMIO_PLANE(plane, \
+							    _PLANE_CSC_RY_GY_1(pipe) +  (index) * 4, \
+							    _PLANE_CSC_RY_GY_2(pipe) + (index) * 4)

-:431: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'index' - possible side-effects?
#431: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:373:
+#define PLANE_CSC_COEFF(pipe, plane, index)	_MMIO_PLANE(plane, \
+							    _PLANE_CSC_RY_GY_1(pipe) +  (index) * 4, \
+							    _PLANE_CSC_RY_GY_2(pipe) + (index) * 4)

-:432: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#432: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:374:
+							    _PLANE_CSC_RY_GY_1(pipe) +  (index) * 4, \

-:445: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#445: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:387:
+#define PLANE_CSC_PREOFF(pipe, plane, index)	_MMIO_PLANE(plane, _PLANE_CSC_PREOFF_HI_1(pipe) + \
+							    (index) * 4, _PLANE_CSC_PREOFF_HI_2(pipe) + \
+							    (index) * 4)

-:445: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'index' - possible side-effects?
#445: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:387:
+#define PLANE_CSC_PREOFF(pipe, plane, index)	_MMIO_PLANE(plane, _PLANE_CSC_PREOFF_HI_1(pipe) + \
+							    (index) * 4, _PLANE_CSC_PREOFF_HI_2(pipe) + \
+							    (index) * 4)

-:446: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#446: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:388:
+							    (index) * 4, _PLANE_CSC_PREOFF_HI_2(pipe) + \

-:459: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#459: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:401:
+#define PLANE_CSC_POSTOFF(pipe, plane, index)	_MMIO_PLANE(plane, _PLANE_CSC_POSTOFF_HI_1(pipe) + \
+							    (index) * 4, _PLANE_CSC_POSTOFF_HI_2(pipe) + \
+							    (index) * 4)

-:459: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'index' - possible side-effects?
#459: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:401:
+#define PLANE_CSC_POSTOFF(pipe, plane, index)	_MMIO_PLANE(plane, _PLANE_CSC_POSTOFF_HI_1(pipe) + \
+							    (index) * 4, _PLANE_CSC_POSTOFF_HI_2(pipe) + \
+							    (index) * 4)

-:460: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#460: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:402:
+							    (index) * 4, _PLANE_CSC_POSTOFF_HI_2(pipe) + \

total: 0 errors, 7 warnings, 29 checks, 872 lines checked
eafee33357cc drm/i915: Extract intel_cursor_regs.h
-:30: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#30: 
new file mode 100644

-:50: WARNING:LONG_LINE_COMMENT: line length of 103 exceeds 100 columns
#50: FILE: drivers/gpu/drm/i915/display/intel_cursor_regs.h:16:
+#define   CURSOR_STRIDE(stride)	REG_FIELD_PREP(CURSOR_STRIDE_MASK, ffs(stride) - 9) /* 256,512,1k,2k */

total: 0 errors, 2 warnings, 0 checks, 202 lines checked
c62c87986903 drm/i915: Move skl+ wm/ddb registers to proper headers
-:77: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#77: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:428:
+#define _PLANE_WM_BASE(pipe, plane) \
+	_PLANE(plane, _PLANE_WM_1(pipe), _PLANE_WM_2(pipe))

-:85: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#85: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:436:
+#define PLANE_WM_SAGV(pipe, plane) \
+	_MMIO(_PLANE(plane, _PLANE_WM_SAGV_1(pipe), _PLANE_WM_SAGV_2(pipe)))

-:91: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#91: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:442:
+#define PLANE_WM_SAGV_TRANS(pipe, plane) \
+	_MMIO(_PLANE(plane, _PLANE_WM_SAGV_TRANS_1(pipe), _PLANE_WM_SAGV_TRANS_2(pipe)))

-:97: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#97: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:448:
+#define PLANE_WM_TRANS(pipe, plane) \
+	_MMIO(_PLANE(plane, _PLANE_WM_TRANS_1(pipe), _PLANE_WM_TRANS_2(pipe)))

-:106: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#106: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:457:
+#define PLANE_BUF_CFG(pipe, plane)	\
+	_MMIO_PLANE(plane, _PLANE_BUF_CFG_1(pipe), _PLANE_BUF_CFG_2(pipe))

-:115: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#115: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:466:
+#define PLANE_NV12_BUF_CFG(pipe, plane)	\
+	_MMIO_PLANE(plane, _PLANE_NV12_BUF_CFG_1(pipe), _PLANE_NV12_BUF_CFG_2(pipe))

total: 0 errors, 0 warnings, 6 checks, 195 lines checked
b8ac7f29b1b5 drm/i915/gvt: Use the proper PLANE_AUX_DIST() define
cc20f9ed36df drm/i915/gvt: Use the proper PLANE_AUX_OFFSET() define
73f3a653e90a drm/i915/gvt: Use the full PLANE_KEY*() defines
e817a8ace197 drm/i915/gvt: Use PLANE_CTL and PLANE_SURF defines
1ab9fe806f87 drm/i915: Drop useless PLANE_FOO_3 register defines
e748cd4971b8 drm/i915: Shuffle the skl+ plane register definitions
-:31: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#31: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:17:
+#define PLANE_CTL(pipe, plane)		_MMIO_PLANE(plane, _PLANE_CTL_1(pipe), _PLANE_CTL_2(pipe))

-:46: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#46: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:88:
+#define PLANE_STRIDE(pipe, plane)	_MMIO_PLANE(plane, _PLANE_STRIDE_1(pipe), _PLANE_STRIDE_2(pipe))

-:46: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#46: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:88:
+#define PLANE_STRIDE(pipe, plane)	_MMIO_PLANE(plane, _PLANE_STRIDE_1(pipe), _PLANE_STRIDE_2(pipe))

-:56: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#56: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:98:
+#define PLANE_POS(pipe, plane)		_MMIO_PLANE(plane, _PLANE_POS_1(pipe), _PLANE_POS_2(pipe))

-:68: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#68: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:110:
+#define PLANE_SIZE(pipe, plane)		_MMIO_PLANE(plane, _PLANE_SIZE_1(pipe), _PLANE_SIZE_2(pipe))

-:80: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#80: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:122:
+#define PLANE_KEYVAL(pipe, plane)	_MMIO_PLANE(plane, _PLANE_KEYVAL_1(pipe), _PLANE_KEYVAL_2(pipe))

-:80: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#80: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:122:
+#define PLANE_KEYVAL(pipe, plane)	_MMIO_PLANE(plane, _PLANE_KEYVAL_1(pipe), _PLANE_KEYVAL_2(pipe))

-:88: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#88: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:130:
+#define PLANE_KEYMSK(pipe, plane)	_MMIO_PLANE(plane, _PLANE_KEYMSK_1(pipe), _PLANE_KEYMSK_2(pipe))

-:88: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#88: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:130:
+#define PLANE_KEYMSK(pipe, plane)	_MMIO_PLANE(plane, _PLANE_KEYMSK_1(pipe), _PLANE_KEYMSK_2(pipe))

-:97: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#97: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:139:
+#define PLANE_SURF(pipe, plane)		_MMIO_PLANE(plane, _PLANE_SURF_1(pipe), _PLANE_SURF_2(pipe))

-:107: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#107: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:149:
+#define PLANE_KEYMAX(pipe, plane)	_MMIO_PLANE(plane, _PLANE_KEYMAX_1(pipe), _PLANE_KEYMAX_2(pipe))

-:107: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#107: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:149:
+#define PLANE_KEYMAX(pipe, plane)	_MMIO_PLANE(plane, _PLANE_KEYMAX_1(pipe), _PLANE_KEYMAX_2(pipe))

-:117: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#117: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:159:
+#define PLANE_OFFSET(pipe, plane)	_MMIO_PLANE(plane, _PLANE_OFFSET_1(pipe), _PLANE_OFFSET_2(pipe))

-:117: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#117: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:159:
+#define PLANE_OFFSET(pipe, plane)	_MMIO_PLANE(plane, _PLANE_OFFSET_1(pipe), _PLANE_OFFSET_2(pipe))

-:138: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#138: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:171:
+#define PLANE_SURFLIVE(pipe, plane)	_MMIO_PLANE(plane, _PLANE_SURFLIVE_1(pipe), _PLANE_SURFLIVE_2(pipe))

-:138: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#138: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:171:
+#define PLANE_SURFLIVE(pipe, plane)	_MMIO_PLANE(plane, _PLANE_SURFLIVE_1(pipe), _PLANE_SURFLIVE_2(pipe))

-:144: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#144: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:177:
+#define _PLANE_CC_VAL_1(pipe, dw)	(_PIPE(pipe, _PLANE_CC_VAL_1_A, _PLANE_CC_VAL_1_B) + (dw) * 4)

-:145: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#145: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:178:
+#define _PLANE_CC_VAL_2(pipe, dw)	(_PIPE(pipe, _PLANE_CC_VAL_2_A, _PLANE_CC_VAL_2_B) + (dw) * 4)

-:146: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#146: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:179:
+#define PLANE_CC_VAL(pipe, plane, dw)	_MMIO_PLANE((plane), _PLANE_CC_VAL_1((pipe), (dw)), _PLANE_CC_VAL_2((pipe), (dw)))

-:146: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#146: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:179:
+#define PLANE_CC_VAL(pipe, plane, dw)	_MMIO_PLANE((plane), _PLANE_CC_VAL_1((pipe), (dw)), _PLANE_CC_VAL_2((pipe), (dw)))

-:146: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dw' - possible side-effects?
#146: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:179:
+#define PLANE_CC_VAL(pipe, plane, dw)	_MMIO_PLANE((plane), _PLANE_CC_VAL_1((pipe), (dw)), _PLANE_CC_VAL_2((pipe), (dw)))

-:154: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#154: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:187:
+#define PLANE_AUX_DIST(pipe, plane)	_MMIO_PLANE(plane, _PLANE_AUX_DIST_1(pipe), _PLANE_AUX_DIST_2(pipe))

-:154: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#154: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:187:
+#define PLANE_AUX_DIST(pipe, plane)	_MMIO_PLANE(plane, _PLANE_AUX_DIST_1(pipe), _PLANE_AUX_DIST_2(pipe))

-:166: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#166: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:198:
+#define PLANE_AUX_OFFSET(pipe, plane)	_MMIO_PLANE(plane, _PLANE_AUX_OFFSET_1(pipe), _PLANE_AUX_OFFSET_2(pipe))

-:166: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#166: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:198:
+#define PLANE_AUX_OFFSET(pipe, plane)	_MMIO_PLANE(plane, _PLANE_AUX_OFFSET_1(pipe), _PLANE_AUX_OFFSET_2(pipe))

-:174: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#174: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:206:
+#define PLANE_CUS_CTL(pipe, plane)	_MMIO_PLANE(plane, _PLANE_CUS_CTL_1(pipe), _PLANE_CUS_CTL_2(pipe))

-:174: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#174: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:206:
+#define PLANE_CUS_CTL(pipe, plane)	_MMIO_PLANE(plane, _PLANE_CUS_CTL_1(pipe), _PLANE_CUS_CTL_2(pipe))

-:191: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#191: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:230:
+#define PLANE_COLOR_CTL(pipe, plane)	_MMIO_PLANE(plane, _PLANE_COLOR_CTL_1(pipe), _PLANE_COLOR_CTL_2(pipe))

-:191: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#191: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:230:
+#define PLANE_COLOR_CTL(pipe, plane)	_MMIO_PLANE(plane, _PLANE_COLOR_CTL_1(pipe), _PLANE_COLOR_CTL_2(pipe))

-:256: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#256: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:252:
+#define _PLANE_INPUT_CSC_RY_GY_1(pipe)	_PIPE(pipe, _PLANE_INPUT_CSC_RY_GY_1_A, _PLANE_INPUT_CSC_RY_GY_1_B)

-:257: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#257: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:253:
+#define _PLANE_INPUT_CSC_RY_GY_2(pipe)	_PIPE(pipe, _PLANE_INPUT_CSC_RY_GY_2_A, _PLANE_INPUT_CSC_RY_GY_2_B)

-:258: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#258: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:254:
+#define PLANE_INPUT_CSC_COEFF(pipe, plane, index) \
+	_MMIO_PLANE(plane, _PLANE_INPUT_CSC_RY_GY_1(pipe) + (index) * 4, _PLANE_INPUT_CSC_RY_GY_2(pipe) + (index) * 4)

-:258: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'index' - possible side-effects?
#258: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:254:
+#define PLANE_INPUT_CSC_COEFF(pipe, plane, index) \
+	_MMIO_PLANE(plane, _PLANE_INPUT_CSC_RY_GY_1(pipe) + (index) * 4, _PLANE_INPUT_CSC_RY_GY_2(pipe) + (index) * 4)

-:259: WARNING:LONG_LINE: line length of 118 exceeds 100 columns
#259: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:255:
+	_MMIO_PLANE(plane, _PLANE_INPUT_CSC_RY_GY_1(pipe) + (index) * 4, _PLANE_INPUT_CSC_RY_GY_2(pipe) + (index) * 4)

-:265: WARNING:LONG_LINE: line length of 123 exceeds 100 columns
#265: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:261:
+#define _PLANE_INPUT_CSC_PREOFF_HI_1(pipe)	_PIPE(pipe, _PLANE_INPUT_CSC_PREOFF_HI_1_A, _PLANE_INPUT_CSC_PREOFF_HI_1_B)

-:266: WARNING:LONG_LINE: line length of 123 exceeds 100 columns
#266: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:262:
+#define _PLANE_INPUT_CSC_PREOFF_HI_2(pipe)	_PIPE(pipe, _PLANE_INPUT_CSC_PREOFF_HI_2_A, _PLANE_INPUT_CSC_PREOFF_HI_2_B)

-:267: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#267: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:263:
+#define PLANE_INPUT_CSC_PREOFF(pipe, plane, index) \
+	_MMIO_PLANE(plane, _PLANE_INPUT_CSC_PREOFF_HI_1(pipe) + (index) * 4, _PLANE_INPUT_CSC_PREOFF_HI_2(pipe) + (index) * 4)

-:267: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'index' - possible side-effects?
#267: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:263:
+#define PLANE_INPUT_CSC_PREOFF(pipe, plane, index) \
+	_MMIO_PLANE(plane, _PLANE_INPUT_CSC_PREOFF_HI_1(pipe) + (index) * 4, _PLANE_INPUT_CSC_PREOFF_HI_2(pipe) + (index) * 4)

-:268: WARNING:LONG_LINE: line length of 126 exceeds 100 columns
#268: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:264:
+	_MMIO_PLANE(plane, _PLANE_INPUT_CSC_PREOFF_HI_1(pipe) + (index) * 4, _PLANE_INPUT_CSC_PREOFF_HI_2(pipe) + (index) * 4)

-:415: WARNING:LONG_LINE: line length of 125 exceeds 100 columns
#415: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:270:
+#define _PLANE_INPUT_CSC_POSTOFF_HI_1(pipe)	_PIPE(pipe, _PLANE_INPUT_CSC_POSTOFF_HI_1_A, _PLANE_INPUT_CSC_POSTOFF_HI_1_B)

-:416: WARNING:LONG_LINE: line length of 125 exceeds 100 columns
#416: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:271:
+#define _PLANE_INPUT_CSC_POSTOFF_HI_2(pipe)	_PIPE(pipe, _PLANE_INPUT_CSC_POSTOFF_HI_2_A, _PLANE_INPUT_CSC_POSTOFF_HI_2_B)

-:417: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#417: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:272:
+#define PLANE_INPUT_CSC_POSTOFF(pipe, plane, index) \
+	_MMIO_PLANE(plane, _PLANE_INPUT_CSC_POSTOFF_HI_1(pipe) + (index) * 4, _PLANE_INPUT_CSC_POSTOFF_HI_2(pipe) + (index) * 4)

-:417: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'index' - possible side-effects?
#417: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:272:
+#define PLANE_INPUT_CSC_POSTOFF(pipe, plane, index) \
+	_MMIO_PLANE(plane, _PLANE_INPUT_CSC_POSTOFF_HI_1(pipe) + (index) * 4, _PLANE_INPUT_CSC_POSTOFF_HI_2(pipe) + (index) * 4)

-:418: WARNING:LONG_LINE: line length of 128 exceeds 100 columns
#418: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:273:
+	_MMIO_PLANE(plane, _PLANE_INPUT_CSC_POSTOFF_HI_1(pipe) + (index) * 4, _PLANE_INPUT_CSC_POSTOFF_HI_2(pipe) + (index) * 4)

-:426: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#426: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:281:
+#define PLANE_CSC_COEFF(pipe, plane, index) \
+	_MMIO_PLANE(plane, _PLANE_CSC_RY_GY_1(pipe) +  (index) * 4, _PLANE_CSC_RY_GY_2(pipe) + (index) * 4)

-:426: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'index' - possible side-effects?
#426: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:281:
+#define PLANE_CSC_COEFF(pipe, plane, index) \
+	_MMIO_PLANE(plane, _PLANE_CSC_RY_GY_1(pipe) +  (index) * 4, _PLANE_CSC_RY_GY_2(pipe) + (index) * 4)

-:427: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#427: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:282:
+	_MMIO_PLANE(plane, _PLANE_CSC_RY_GY_1(pipe) +  (index) * 4, _PLANE_CSC_RY_GY_2(pipe) + (index) * 4)

-:442: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#442: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:288:
+#define _PLANE_CSC_PREOFF_HI_1(pipe)	_PIPE(pipe, _PLANE_CSC_PREOFF_HI_1_A, _PLANE_CSC_PREOFF_HI_1_B)

-:443: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#443: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:289:
+#define _PLANE_CSC_PREOFF_HI_2(pipe)	_PIPE(pipe, _PLANE_CSC_PREOFF_HI_2_A, _PLANE_CSC_PREOFF_HI_2_B)

-:444: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#444: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:290:
+#define PLANE_CSC_PREOFF(pipe, plane, index) \
+	_MMIO_PLANE(plane, _PLANE_CSC_PREOFF_HI_1(pipe) + (index) * 4, _PLANE_CSC_PREOFF_HI_2(pipe) + (index) * 4)

-:444: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'index' - possible side-effects?
#444: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:290:
+#define PLANE_CSC_PREOFF(pipe, plane, index) \
+	_MMIO_PLANE(plane, _PLANE_CSC_PREOFF_HI_1(pipe) + (index) * 4, _PLANE_CSC_PREOFF_HI_2(pipe) + (index) * 4)

-:445: WARNING:LONG_LINE: line length of 114 exceeds 100 columns
#445: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:291:
+	_MMIO_PLANE(plane, _PLANE_CSC_PREOFF_HI_1(pipe) + (index) * 4, _PLANE_CSC_PREOFF_HI_2(pipe) + (index) * 4)

-:452: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#452: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:297:
+#define _PLANE_CSC_POSTOFF_HI_1(pipe)	_PIPE(pipe, _PLANE_CSC_POSTOFF_HI_1_A, _PLANE_CSC_POSTOFF_HI_1_B)

-:453: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#453: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:298:
+#define _PLANE_CSC_POSTOFF_HI_2(pipe)	_PIPE(pipe, _PLANE_CSC_POSTOFF_HI_2_A, _PLANE_CSC_POSTOFF_HI_2_B)

-:454: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#454: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:299:
+#define PLANE_CSC_POSTOFF(pipe, plane, index) \
+	_MMIO_PLANE(plane, _PLANE_CSC_POSTOFF_HI_1(pipe) + (index) * 4, _PLANE_CSC_POSTOFF_HI_2(pipe) + (index) * 4)

-:454: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'index' - possible side-effects?
#454: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:299:
+#define PLANE_CSC_POSTOFF(pipe, plane, index) \
+	_MMIO_PLANE(plane, _PLANE_CSC_POSTOFF_HI_1(pipe) + (index) * 4, _PLANE_CSC_POSTOFF_HI_2(pipe) + (index) * 4)

-:455: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#455: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:300:
+	_MMIO_PLANE(plane, _PLANE_CSC_POSTOFF_HI_1(pipe) + (index) * 4, _PLANE_CSC_POSTOFF_HI_2(pipe) + (index) * 4)

-:463: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#463: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:308:
+#define _PLANE_WM_BASE(pipe, plane)	_PLANE(plane, _PLANE_WM_1(pipe), _PLANE_WM_2(pipe))

-:476: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#476: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:321:
+#define PLANE_WM_SAGV(pipe, plane)	_MMIO(_PLANE(plane, _PLANE_WM_SAGV_1(pipe), _PLANE_WM_SAGV_2(pipe)))

-:476: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#476: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:321:
+#define PLANE_WM_SAGV(pipe, plane)	_MMIO(_PLANE(plane, _PLANE_WM_SAGV_1(pipe), _PLANE_WM_SAGV_2(pipe)))

-:482: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#482: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:327:
+#define _PLANE_WM_SAGV_TRANS_1(pipe)	_PIPE(pipe, _PLANE_WM_SAGV_TRANS_1_A, _PLANE_WM_SAGV_TRANS_1_B)

-:483: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#483: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:328:
+#define _PLANE_WM_SAGV_TRANS_2(pipe)	_PIPE(pipe, _PLANE_WM_SAGV_TRANS_2_A, _PLANE_WM_SAGV_TRANS_2_B)

-:484: WARNING:LONG_LINE: line length of 128 exceeds 100 columns
#484: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:329:
+#define PLANE_WM_SAGV_TRANS(pipe, plane)	_MMIO(_PLANE(plane, _PLANE_WM_SAGV_TRANS_1(pipe), _PLANE_WM_SAGV_TRANS_2(pipe)))

-:484: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#484: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:329:
+#define PLANE_WM_SAGV_TRANS(pipe, plane)	_MMIO(_PLANE(plane, _PLANE_WM_SAGV_TRANS_1(pipe), _PLANE_WM_SAGV_TRANS_2(pipe)))

-:492: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#492: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:337:
+#define PLANE_WM_TRANS(pipe, plane)	_MMIO(_PLANE(plane, _PLANE_WM_TRANS_1(pipe), _PLANE_WM_TRANS_2(pipe)))

-:492: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#492: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:337:
+#define PLANE_WM_TRANS(pipe, plane)	_MMIO(_PLANE(plane, _PLANE_WM_TRANS_1(pipe), _PLANE_WM_TRANS_2(pipe)))

-:500: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#500: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:345:
+#define PLANE_CHICKEN(pipe, plane)	_MMIO_PLANE(plane, _PLANE_CHICKEN_1(pipe), _PLANE_CHICKEN_2(pipe))

-:500: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#500: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:345:
+#define PLANE_CHICKEN(pipe, plane)	_MMIO_PLANE(plane, _PLANE_CHICKEN_1(pipe), _PLANE_CHICKEN_2(pipe))

-:560: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#560: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:352:
+#define _PLANE_NV12_BUF_CFG_1(pipe)	_PIPE(pipe, _PLANE_NV12_BUF_CFG_1_A, _PLANE_NV12_BUF_CFG_1_B)

-:561: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#561: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:353:
+#define _PLANE_NV12_BUF_CFG_2(pipe)	_PIPE(pipe, _PLANE_NV12_BUF_CFG_2_A, _PLANE_NV12_BUF_CFG_2_B)

-:562: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#562: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:354:
+#define PLANE_NV12_BUF_CFG(pipe, plane)	_MMIO_PLANE(plane, _PLANE_NV12_BUF_CFG_1(pipe), _PLANE_NV12_BUF_CFG_2(pipe))

-:562: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#562: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:354:
+#define PLANE_NV12_BUF_CFG(pipe, plane)	_MMIO_PLANE(plane, _PLANE_NV12_BUF_CFG_1(pipe), _PLANE_NV12_BUF_CFG_2(pipe))

-:585: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#585: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:362:
+#define PLANE_BUF_CFG(pipe, plane)	_MMIO_PLANE(plane, _PLANE_BUF_CFG_1(pipe), _PLANE_BUF_CFG_2(pipe))

-:585: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#585: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:362:
+#define PLANE_BUF_CFG(pipe, plane)	_MMIO_PLANE(plane, _PLANE_BUF_CFG_1(pipe), _PLANE_BUF_CFG_2(pipe))

total: 0 errors, 39 warnings, 35 checks, 566 lines checked
555bc9400e83 drm/i915: Use REG_BIT for PLANE_WM bits
5088edc8324a drm/i915: Drop a few unwanted tabs from skl+ plane reg defines
924eec4d89d3 drm/i915: Refactor skl+ plane register offset calculations
-:28: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#28: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:11:
+#define _SKL_PLANE(pipe, plane, reg_1_a, reg_1_b, reg_2_a, reg_2_b) \
+	_PLANE((plane), _PIPE((pipe), (reg_1_a), (reg_1_b)), _PIPE((pipe), (reg_2_a), (reg_2_b)))

-:194: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#194: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:206:
+							_PLANE_AUX_OFFSET_1_A, _PLANE_AUX_OFFSET_1_B, \

-:195: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#195: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:207:
+							_PLANE_AUX_OFFSET_2_A, _PLANE_AUX_OFFSET_2_B)

-:218: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#218: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:238:
+							_PLANE_COLOR_CTL_1_A, _PLANE_COLOR_CTL_1_B, \

-:231: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#231: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:261:
+#define PLANE_INPUT_CSC_COEFF(pipe, plane, index)	_MMIO_SKL_PLANE_DW((pipe), (plane), (index), \

-:232: WARNING:LONG_LINE: line length of 132 exceeds 100 columns
#232: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:262:
+									   _PLANE_INPUT_CSC_RY_GY_1_A, _PLANE_INPUT_CSC_RY_GY_1_B, \

-:233: WARNING:LONG_LINE: line length of 130 exceeds 100 columns
#233: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:263:
+									   _PLANE_INPUT_CSC_RY_GY_2_A, _PLANE_INPUT_CSC_RY_GY_2_B)

-:243: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#243: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:269:
+#define PLANE_INPUT_CSC_PREOFF(pipe, plane, index)	_MMIO_SKL_PLANE_DW((pipe), (plane), (index), \

-:244: WARNING:LONG_LINE: line length of 140 exceeds 100 columns
#244: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:270:
+									   _PLANE_INPUT_CSC_PREOFF_HI_1_A, _PLANE_INPUT_CSC_PREOFF_HI_1_B, \

-:245: WARNING:LONG_LINE: line length of 138 exceeds 100 columns
#245: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:271:
+									   _PLANE_INPUT_CSC_PREOFF_HI_2_A, _PLANE_INPUT_CSC_PREOFF_HI_2_B)

-:255: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#255: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:277:
+#define PLANE_INPUT_CSC_POSTOFF(pipe, plane, index)	_MMIO_SKL_PLANE_DW((pipe), (plane), (index), \

-:256: WARNING:LONG_LINE: line length of 142 exceeds 100 columns
#256: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:278:
+									   _PLANE_INPUT_CSC_POSTOFF_HI_1_A, _PLANE_INPUT_CSC_POSTOFF_HI_1_B, \

-:257: WARNING:LONG_LINE: line length of 140 exceeds 100 columns
#257: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:279:
+									   _PLANE_INPUT_CSC_POSTOFF_HI_2_A, _PLANE_INPUT_CSC_POSTOFF_HI_2_B)

-:268: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#268: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:286:
+								   _PLANE_CSC_RY_GY_1_A, _PLANE_CSC_RY_GY_1_B, \

-:269: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#269: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:287:
+								   _PLANE_CSC_RY_GY_2_A, _PLANE_CSC_RY_GY_2_B)

-:280: WARNING:LONG_LINE: line length of 120 exceeds 100 columns
#280: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:294:
+								   _PLANE_CSC_PREOFF_HI_1_A, _PLANE_CSC_PREOFF_HI_1_B, \

-:281: WARNING:LONG_LINE: line length of 118 exceeds 100 columns
#281: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:295:
+								   _PLANE_CSC_PREOFF_HI_2_A, _PLANE_CSC_PREOFF_HI_2_B)

-:293: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#293: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:302:
+								   _PLANE_CSC_POSTOFF_HI_1_A, _PLANE_CSC_POSTOFF_HI_1_B, \

-:294: WARNING:LONG_LINE: line length of 120 exceeds 100 columns
#294: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:303:
+								   _PLANE_CSC_POSTOFF_HI_2_A, _PLANE_CSC_POSTOFF_HI_2_B)

-:328: WARNING:LONG_LINE: line length of 117 exceeds 100 columns
#328: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:329:
+								_PLANE_WM_SAGV_TRANS_1_A, _PLANE_WM_SAGV_TRANS_1_B, \

-:329: WARNING:LONG_LINE: line length of 115 exceeds 100 columns
#329: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:330:
+								_PLANE_WM_SAGV_TRANS_2_A, _PLANE_WM_SAGV_TRANS_2_B)

-:362: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#362: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:354:
+							_PLANE_NV12_BUF_CFG_1_A, _PLANE_NV12_BUF_CFG_1_B, \

-:363: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#363: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:355:
+							_PLANE_NV12_BUF_CFG_2_A, _PLANE_NV12_BUF_CFG_2_B)

total: 0 errors, 22 warnings, 1 checks, 342 lines checked
8c6673e92204 drm/i915: Extract skl_plane_{wm,ddb}_reg_val()
27aad4ac3d37 drm/i915: Nuke skl_write_wm_level() and skl_ddb_entry_write()
-:69: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#69: FILE: drivers/gpu/drm/i915/display/skl_watermark.c:2406:
+				  skl_plane_wm_reg_val(skl_plane_wm_level(pipe_wm, plane_id, level)));

-:109: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#109: FILE: drivers/gpu/drm/i915/display/skl_watermark.c:2441:
+				  skl_plane_wm_reg_val(skl_plane_wm_level(pipe_wm, plane_id, level)));

total: 0 errors, 2 warnings, 0 checks, 97 lines checked
fe650503f642 drm/i915: Handle SKL+ WM/DDB registers next to all other plane registers
-:51: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#51: FILE: drivers/gpu/drm/i915/display/intel_cursor.c:573:
+				  skl_plane_wm_reg_val(skl_plane_wm_level(pipe_wm, plane_id, level)));

-:118: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#118: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:663:
+				  skl_plane_wm_reg_val(skl_plane_wm_level(pipe_wm, plane_id, level)));

total: 0 errors, 2 warnings, 0 checks, 269 lines checked


