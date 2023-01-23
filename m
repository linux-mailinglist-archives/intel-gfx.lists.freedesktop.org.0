Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C6ED678643
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Jan 2023 20:27:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE34210E07D;
	Mon, 23 Jan 2023 19:27:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1901510E07D;
 Mon, 23 Jan 2023 19:27:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 119F0A00CC;
 Mon, 23 Jan 2023 19:27:14 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Mon, 23 Jan 2023 19:27:14 -0000
Message-ID: <167450203403.348.7068070607584415692@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230120193457.3295977-1-lucas.demarchi@intel.com>
In-Reply-To: <20230120193457.3295977-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_=5FPICK=5FEVEN=5F2RANGES_=28rev2=29?=
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

Series: Add _PICK_EVEN_2RANGES (rev2)
URL   : https://patchwork.freedesktop.org/series/113177/
State : warning

== Summary ==

Error: dim checkpatch failed
7b9046444db2 drm/i915: Add _PICK_EVEN_2RANGES()
-:58: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__index' - possible side-effects?
#58: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:145:
+#define _PICK_EVEN_2RANGES(__index, __c_index, __a, __b, __c, __d)		\
+	(BUILD_BUG_ON_ZERO(!__is_constexpr(__c_index)) +			\
+	 ((__index) < (__c_index) ? _PICK_EVEN(__index, __a, __b) :		\
+				   _PICK_EVEN((__index) - (__c_index), __c, __d)))

-:58: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__c_index' - possible side-effects?
#58: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:145:
+#define _PICK_EVEN_2RANGES(__index, __c_index, __a, __b, __c, __d)		\
+	(BUILD_BUG_ON_ZERO(!__is_constexpr(__c_index)) +			\
+	 ((__index) < (__c_index) ? _PICK_EVEN(__index, __a, __b) :		\
+				   _PICK_EVEN((__index) - (__c_index), __c, __d)))

total: 0 errors, 0 warnings, 2 checks, 34 lines checked
ceebaa623fa3 drm/i915: Fix coding style on DPLL*_ENABLE defines
3cd72fb54cf9 drm/i915: Convert pll macros to _PICK_EVEN_2RANGES
-:11: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#11: 
	4027456  185703    6984 4220143  4064ef build64/drivers/gpu/drm/i915/i915.o.old

total: 0 errors, 1 warnings, 0 checks, 106 lines checked
ee6f334b5960 drm/i915: Replace _MMIO_PHY3() with _PICK_EVEN_2RANGES()
-:11: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#11: 
	4026997  185703    6984 4219684  406324 build64/drivers/gpu/drm/i915/i915.o.old

total: 0 errors, 1 warnings, 0 checks, 42 lines checked
032484a878c9 drm/i915: Convert PIPE3/PORT3 to _PICK_EVEN_2RANGES()
-:11: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#11: 
	4026288  185703    6984 4218975  40605f build64/drivers/gpu/drm/i915/i915.o.old

-:36: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'a' - possible side-effects?
#36: FILE: drivers/gpu/drm/i915/display/intel_display_reg_defs.h:32:
+#define _MMIO_PIPE3(pipe, a, b, c)	_MMIO(_PICK_EVEN_2RANGES(pipe, 1, a, a, b, c))

-:37: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'a' - possible side-effects?
#37: FILE: drivers/gpu/drm/i915/display/intel_display_reg_defs.h:33:
+#define _MMIO_PORT3(pipe, a, b, c)	_MMIO(_PICK_EVEN_2RANGES(pipe, 1, a, a, b, c))

total: 0 errors, 1 warnings, 2 checks, 18 lines checked
63cd3e50d93a drm/i915: Convert _FIA() to _PICK_EVEN_2RANGES()
377d7638eb55 drm/i915: Convert MBUS_ABOX_CTL() to _PICK_EVEN_2RANGES()
9a055281abe7 drm/i915: Convert PALETTE() to _PICK_EVEN_2RANGES()


