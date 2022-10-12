Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 55AE45FC021
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Oct 2022 07:30:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23C3B10E354;
	Wed, 12 Oct 2022 05:30:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A78F610E354;
 Wed, 12 Oct 2022 05:30:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 65598AA01E;
 Wed, 12 Oct 2022 05:30:04 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Wed, 12 Oct 2022 05:30:04 -0000
Message-ID: <166555260438.12985.9971537705461979701@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221011-pick-even-ranges-v1-0-1aaea52752ed@intel.com>
In-Reply-To: <20221011-pick-even-ranges-v1-0-1aaea52752ed@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_=5FPICK=5FEVEN=5FRANGES?=
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

Series: Add _PICK_EVEN_RANGES
URL   : https://patchwork.freedesktop.org/series/109606/
State : warning

== Summary ==

Error: dim checkpatch failed
8dea49b8c4d8 drm/i915: Add _PICK_EVEN_RANGES()
-:31: WARNING:TYPO_SPELLING: 'addres' may be misspelled - perhaps 'address'?
#31: FILE: drivers/gpu/drm/i915/i915_reg.h:129:
+ * Like _PICK_EVEN(), but supports 2 ranges of evenly spaced addres offsets. The
                                                              ^^^^^^

-:46: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__index' - possible side-effects?
#46: FILE: drivers/gpu/drm/i915/i915_reg.h:143:
+#define _PICK_EVEN_RANGES(__index, __use_first_range, __a, __b, __c, __d)	\
+	 ((__use_first_range) ? _PICK_EVEN(__index, __a, __b) :			\
+	  _PICK_EVEN(__index, __c, __d))

total: 0 errors, 1 warnings, 1 checks, 26 lines checked
62193904a042 drm/i915: Fix coding style on DPLL*_ENABLE defines
7c57067c784b drm/i915: Convert pll macros to _PICK_EVEN_RANGES
-:11: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#11: 
	3570297  131232    6824 3708353  3895c1 build64/drivers/gpu/drm/i915/i915.o.old

-:29: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pll' - possible side-effects?
#29: FILE: drivers/gpu/drm/i915/i915_reg.h:7316:
+#define ICL_DPLL_ENABLE(pll)	_MMIO(_PICK_EVEN_RANGES(pll, (pll) < 3,			\
+							_DPLL0_ENABLE, _DPLL1_ENABLE,	\
+							_ADLS_DPLL3_ENABLE, _ADLS_DPLL3_ENABLE))

-:37: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pll' - possible side-effects?
#37: FILE: drivers/gpu/drm/i915/i915_reg.h:7322:
+#define DG2_PLL_ENABLE(pll)	_MMIO(_PICK_EVEN_RANGES(pll, (pll) < 3,			\
+							_DPLL0_ENABLE, _DPLL1_ENABLE,	\
+							_DG2_PLL3_ENABLE, _DG2_PLL3_ENABLE))

-:49: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pll' - possible side-effects?
#49: FILE: drivers/gpu/drm/i915/i915_reg.h:7337:
+#define DG1_DPLL_ENABLE(pll)    _MMIO(_PICK_EVEN_RANGES(pll, (pll) < 2,			\
+							_DPLL0_ENABLE, _DPLL1_ENABLE,	\
+							_MG_PLL1_ENABLE, _MG_PLL2_ENABLE))

-:62: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pll' - possible side-effects?
#62: FILE: drivers/gpu/drm/i915/i915_reg.h:7399:
+#define TGL_DPLL_CFGCR0(pll)		_MMIO(_PICK_EVEN_RANGES(pll, (pll) < 2,		\
+					      _TGL_DPLL0_CFGCR0, _TGL_DPLL1_CFGCR0,	\
+					      _TGL_TBTPLL_CFGCR0, _TGL_TBTPLL_CFGCR0))

-:75: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pll' - possible side-effects?
#75: FILE: drivers/gpu/drm/i915/i915_reg.h:7414:
+#define TGL_DPLL_CFGCR1(pll)		_MMIO(_PICK_EVEN_RANGES(pll, (pll) < 2,		\
+					      _TGL_DPLL0_CFGCR1, _TGL_DPLL1_CFGCR1,	\
+					      _TGL_TBTPLL_CFGCR1, _TGL_TBTPLL_CFGCR1))

-:87: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pll' - possible side-effects?
#87: FILE: drivers/gpu/drm/i915/i915_reg.h:7422:
+#define DG1_DPLL_CFGCR0(pll)		_MMIO(_PICK_EVEN_RANGES(pll, (pll) < 2,		\
+					      _TGL_DPLL0_CFGCR0, _TGL_DPLL1_CFGCR0,	\
+					      _DG1_DPLL2_CFGCR0, _DG1_DPLL3_CFGCR0))

-:97: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pll' - possible side-effects?
#97: FILE: drivers/gpu/drm/i915/i915_reg.h:7428:
+#define DG1_DPLL_CFGCR1(pll)            _MMIO(_PICK_EVEN_RANGES(pll, (pll) < 2,		\
+					      _TGL_DPLL0_CFGCR1, _TGL_DPLL1_CFGCR1,	\
+					      _DG1_DPLL2_CFGCR1, _DG1_DPLL3_CFGCR1))

-:109: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pll' - possible side-effects?
#109: FILE: drivers/gpu/drm/i915/i915_reg.h:7435:
+#define ADLS_DPLL_CFGCR0(pll)		_MMIO(_PICK_EVEN_RANGES(pll, (pll) < 2,		\
+					      _TGL_DPLL0_CFGCR0, _TGL_DPLL1_CFGCR0,	\
+					      _ADLS_DPLL4_CFGCR0, _ADLS_DPLL3_CFGCR0))

-:120: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pll' - possible side-effects?
#120: FILE: drivers/gpu/drm/i915/i915_reg.h:7441:
+#define ADLS_DPLL_CFGCR1(pll)		_MMIO(_PICK_EVEN_RANGES(pll, (pll) < 2,		\
+					      _TGL_DPLL0_CFGCR1, _TGL_DPLL1_CFGCR1,	\
+					      _ADLS_DPLL4_CFGCR1, _ADLS_DPLL3_CFGCR1))

total: 0 errors, 1 warnings, 9 checks, 99 lines checked


