Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64B8A4655C2
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Dec 2021 19:47:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B28EF6E887;
	Wed,  1 Dec 2021 18:47:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EB49D6E887;
 Wed,  1 Dec 2021 18:47:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E7B17A7DFB;
 Wed,  1 Dec 2021 18:47:18 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Wed, 01 Dec 2021 18:47:18 -0000
Message-ID: <163838443894.14892.15570859861767496368@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211201152552.7821-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20211201152552.7821-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Plane_register_cleanup?=
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

Series: drm/i915: Plane register cleanup
URL   : https://patchwork.freedesktop.org/series/97467/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
2a489c8cf0ae drm/i915: Get rid of the 64bit PLANE_CC_VAL mmio
-:69: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#69: FILE: drivers/gpu/drm/i915/i915_reg.h:7368:
+#define _PLANE_CC_VAL_1(pipe, dw)	(_PIPE(pipe, _PLANE_CC_VAL_1_A, _PLANE_CC_VAL_1_B) + (dw) * 4)

-:70: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#70: FILE: drivers/gpu/drm/i915/i915_reg.h:7369:
+#define _PLANE_CC_VAL_2(pipe, dw)	(_PIPE(pipe, _PLANE_CC_VAL_2_A, _PLANE_CC_VAL_2_B) + (dw) * 4)

-:71: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#71: FILE: drivers/gpu/drm/i915/i915_reg.h:7370:
+#define PLANE_CC_VAL(pipe, plane, dw) \
+	_MMIO_PLANE((plane), _PLANE_CC_VAL_1((pipe), (dw)), _PLANE_CC_VAL_2((pipe), (dw)))

-:71: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dw' - possible side-effects?
#71: FILE: drivers/gpu/drm/i915/i915_reg.h:7370:
+#define PLANE_CC_VAL(pipe, plane, dw) \
+	_MMIO_PLANE((plane), _PLANE_CC_VAL_1((pipe), (dw)), _PLANE_CC_VAL_2((pipe), (dw)))

total: 0 errors, 2 warnings, 2 checks, 41 lines checked
cace02264ed4 drm/i915: Rename plane YUV order bits
fd4e986084c5 drm/i915: Get rid of the "sizes are 0 based" stuff
fb774f7bdbf7 drm/i915: Sipmplify PLANE_STRIDE masking
0ae6611ab3f7 drm/i915: Rename PLANE_CUS_CTL Y plane bits
f2f7a1963976 drm/i915: Use REG_BIT() & co. for universal plane bits
08836e799b35 drm/i915: Clean up pre-skl primary plane registers
b7bd2fa19c5d drm/i915: Clean up ivb+ sprite plane registers
-:114: WARNING:LONG_LINE_COMMENT: line length of 106 exceeds 100 columns
#114: FILE: drivers/gpu/drm/i915/i915_reg.h:7058:
+#define   SPRITE_FORMAT_XR_BGR101010		REG_FIELD_PREP(SPRITE_FORMAT_MASK, 5) /* Extended range */

total: 0 errors, 1 warnings, 0 checks, 150 lines checked
b2a43d32eb81 drm/i915: Clean up vlv/chv sprite plane registers
e86cd1d175b5 drm/i915: Clean up g4x+ sprite plane registers
f5a56e525f98 drm/i915: Clean up cursor registers
-:144: WARNING:LONG_LINE_COMMENT: line length of 103 exceeds 100 columns
#144: FILE: drivers/gpu/drm/i915/i915_reg.h:6767:
+#define   CURSOR_STRIDE(stride)	REG_FIELD_PREP(CURSOR_STRIDE_MASK, ffs(stride) - 9) /* 256,512,1k,2k */

total: 0 errors, 1 warnings, 0 checks, 182 lines checked
0008f4a39e22 drm/i915: Extract skl_plane_aux_dist()
79283225eb38 drm/i915: Declutter color key register stuff
7f07412a683b drm/i915: Nuke pointless middle men for skl+ plane programming


