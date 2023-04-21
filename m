Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 89CA66EB4B7
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Apr 2023 00:29:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6754210E2FB;
	Fri, 21 Apr 2023 22:29:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C6EB310E2FB;
 Fri, 21 Apr 2023 22:29:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C03C7AA917;
 Fri, 21 Apr 2023 22:29:17 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Date: Fri, 21 Apr 2023 22:29:17 -0000
Message-ID: <168211615776.5823.12472487212379235311@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230421190026.294208-1-andi.shyti@linux.intel.com>
In-Reply-To: <20230421190026.294208-1-andi.shyti@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Use_i915_instead_of_dev=5Fpriv_=28rev2=29?=
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

Series: Use i915 instead of dev_priv (rev2)
URL   : https://patchwork.freedesktop.org/series/116816/
State : warning

== Summary ==

Error: dim checkpatch failed
a9e68a5b12c6 drm/i915/i915_drv: Use proper parameter naming in for_each_engine()
-:24: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#24: FILE: drivers/gpu/drm/i915/i915_drv.h:384:
+#define for_each_engine(engine__, gt__, id__) \
 	for ((id__) = 0; \
 	     (id__) < I915_NUM_ENGINES; \
 	     (id__)++) \
+		for_each_if ((engine__) = (gt__)->engine[(id__)])

-:24: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id__' - possible side-effects?
#24: FILE: drivers/gpu/drm/i915/i915_drv.h:384:
+#define for_each_engine(engine__, gt__, id__) \
 	for ((id__) = 0; \
 	     (id__) < I915_NUM_ENGINES; \
 	     (id__)++) \
+		for_each_if ((engine__) = (gt__)->engine[(id__)])

-:29: WARNING:SPACING: space prohibited between function name and open parenthesis '('
#29: FILE: drivers/gpu/drm/i915/i915_drv.h:388:
+		for_each_if ((engine__) = (gt__)->engine[(id__)])

total: 1 errors, 1 warnings, 1 checks, 13 lines checked
efd966c35aaa drm/i915/i915_drv: Use i915 instead of dev_priv insied the file_priv structure
-:141: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#141: FILE: drivers/gpu/drm/i915/i915_drv.h:534:
+#define IS_G4X(i915)	(IS_G45(i915) || IS_GM45(i915))

-:145: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#145: FILE: drivers/gpu/drm/i915/i915_drv.h:538:
+#define IS_IRONLAKE_M(i915) \
+	(IS_PLATFORM(i915, INTEL_IRONLAKE) && IS_MOBILE(i915))

-:149: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#149: FILE: drivers/gpu/drm/i915/i915_drv.h:542:
+#define IS_IVB_GT1(i915)	(IS_IVYBRIDGE(i915) && \
+				 INTEL_INFO(i915)->gt == 1)

-:162: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#162: FILE: drivers/gpu/drm/i915/i915_drv.h:555:
+#define IS_JSL_EHL(i915)	(IS_PLATFORM(i915, INTEL_JASPERLAKE) || \
+				IS_PLATFORM(i915, INTEL_ELKHARTLAKE))

-:192: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#192: FILE: drivers/gpu/drm/i915/i915_drv.h:585:
+#define IS_HSW_EARLY_SDV(i915) (IS_HASWELL(i915) && \
+				    (INTEL_DEVID(i915) & 0xFF00) == 0x0C00)

-:198: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#198: FILE: drivers/gpu/drm/i915/i915_drv.h:591:
+#define IS_BDW_GT3(i915)	(IS_BROADWELL(i915) && \
+				 INTEL_INFO(i915)->gt == 3)

-:202: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#202: FILE: drivers/gpu/drm/i915/i915_drv.h:595:
+#define IS_HSW_GT3(i915)	(IS_HASWELL(i915) && \
+				 INTEL_INFO(i915)->gt == 3)

-:204: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#204: FILE: drivers/gpu/drm/i915/i915_drv.h:597:
+#define IS_HSW_GT1(i915)	(IS_HASWELL(i915) && \
+				 INTEL_INFO(i915)->gt == 1)

-:258: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#258: FILE: drivers/gpu/drm/i915/i915_drv.h:610:
+#define IS_SKL_GT2(i915)	(IS_SKYLAKE(i915) && \
+				 INTEL_INFO(i915)->gt == 2)

-:260: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#260: FILE: drivers/gpu/drm/i915/i915_drv.h:612:
+#define IS_SKL_GT3(i915)	(IS_SKYLAKE(i915) && \
+				 INTEL_INFO(i915)->gt == 3)

-:262: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#262: FILE: drivers/gpu/drm/i915/i915_drv.h:614:
+#define IS_SKL_GT4(i915)	(IS_SKYLAKE(i915) && \
+				 INTEL_INFO(i915)->gt == 4)

-:264: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#264: FILE: drivers/gpu/drm/i915/i915_drv.h:616:
+#define IS_KBL_GT2(i915)	(IS_KABYLAKE(i915) && \
+				 INTEL_INFO(i915)->gt == 2)

-:266: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#266: FILE: drivers/gpu/drm/i915/i915_drv.h:618:
+#define IS_KBL_GT3(i915)	(IS_KABYLAKE(i915) && \
+				 INTEL_INFO(i915)->gt == 3)

-:272: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#272: FILE: drivers/gpu/drm/i915/i915_drv.h:624:
+#define IS_CFL_GT2(i915)	(IS_COFFEELAKE(i915) && \
+				 INTEL_INFO(i915)->gt == 2)

-:274: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#274: FILE: drivers/gpu/drm/i915/i915_drv.h:626:
+#define IS_CFL_GT3(i915)	(IS_COFFEELAKE(i915) && \
+				 INTEL_INFO(i915)->gt == 3)

-:281: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#281: FILE: drivers/gpu/drm/i915/i915_drv.h:633:
+#define IS_CML_GT2(i915)	(IS_COMETLAKE(i915) && \
+				 INTEL_INFO(i915)->gt == 2)

-:296: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#296: FILE: drivers/gpu/drm/i915/i915_drv.h:644:
+#define IS_KBL_GRAPHICS_STEP(i915, since, until) \
+	(IS_KABYLAKE(i915) && IS_GRAPHICS_STEP(i915, since, until))

-:298: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#298: FILE: drivers/gpu/drm/i915/i915_drv.h:646:
+#define IS_KBL_DISPLAY_STEP(i915, since, until) \
+	(IS_KABYLAKE(i915) && IS_DISPLAY_STEP(i915, since, until))

-:311: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#311: FILE: drivers/gpu/drm/i915/i915_drv.h:724:
+#define IS_GEN9_LP(i915)	(GRAPHICS_VER(i915) == 9 && IS_LP(i915))

-:312: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#312: FILE: drivers/gpu/drm/i915/i915_drv.h:725:
+#define IS_GEN9_BC(i915)	(GRAPHICS_VER(i915) == 9 && !IS_LP(i915))

-:370: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'sizes' - possible side-effects?
#370: FILE: drivers/gpu/drm/i915/i915_drv.h:780:
+#define HAS_PAGE_SIZES(i915, sizes) ({ \
 	GEM_BUG_ON((sizes) == 0); \
+	((sizes) & ~RUNTIME_INFO(i915)->page_sizes) == 0; \
 })

-:385: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#385: FILE: drivers/gpu/drm/i915/i915_drv.h:790:
+#define HAS_BROKEN_CS_TLB(i915)	(IS_I830(i915) || IS_I845G(i915))

-:389: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#389: FILE: drivers/gpu/drm/i915/i915_drv.h:792:
+#define NEEDS_RC6_CTX_CORRUPTION_WA(i915)	\
+	(IS_BROADWELL(i915) || GRAPHICS_VER(i915) == 9)

-:395: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#395: FILE: drivers/gpu/drm/i915/i915_drv.h:796:
+#define NEEDS_WaRsDisableCoarsePowerGating(i915)			\
+	(IS_SKL_GT3(i915) || IS_SKL_GT4(i915))

-:403: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#403: FILE: drivers/gpu/drm/i915/i915_drv.h:800:
+#define HAS_GMBUS_BURST_READ(i915) (DISPLAY_VER(i915) >= 11 || \
+					IS_GEMINILAKE(i915) || \
+					IS_KABYLAKE(i915))

-:414: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#414: FILE: drivers/gpu/drm/i915/i915_drv.h:807:
+#define HAS_128_BYTE_Y_TILING(i915) (GRAPHICS_VER(i915) != 2 && \
+					 !(IS_I915G(i915) || IS_I915GM(i915)))

-:424: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#424: FILE: drivers/gpu/drm/i915/i915_drv.h:814:
+#define HAS_CUR_FBC(i915)	(!HAS_GMCH(i915) && DISPLAY_VER(i915) >= 7)

-:430: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#430: FILE: drivers/gpu/drm/i915/i915_drv.h:818:
+#define HAS_IPS(i915)	(IS_HSW_ULT(i915) || IS_BROADWELL(i915))

-:435: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#435: FILE: drivers/gpu/drm/i915/i915_drv.h:821:
+#define HAS_DP20(i915)	(IS_DG2(i915) || DISPLAY_VER(i915) >= 14)

-:438: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#438: FILE: drivers/gpu/drm/i915/i915_drv.h:823:
+#define HAS_DOUBLE_BUFFERED_M_N(i915)	(DISPLAY_VER(i915) >= 9 || IS_BROADWELL(i915))

-:457: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#457: FILE: drivers/gpu/drm/i915/i915_drv.h:833:
+#define HAS_TRANSCODER(i915, trans)	 ((RUNTIME_INFO(i915)->cpu_transcoder_mask & BIT(trans)) != 0)

-:487: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#487: FILE: drivers/gpu/drm/i915/i915_drv.h:852:
+#define HAS_HECI_GSC(i915) (HAS_HECI_PXP(i915) || HAS_HECI_GSCFI(i915))

-:519: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#519: FILE: drivers/gpu/drm/i915/i915_drv.h:873:
+#define HAS_SAGV(i915)		(DISPLAY_VER(i915) >= 9 && !IS_LP(i915))

-:558: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#558: FILE: drivers/gpu/drm/i915/i915_drv.h:902:
+#define NUM_L3_SLICES(i915) (IS_HSW_GT3(i915) ? \
+				 2 : HAS_L3_DPF(i915))

-:576: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#576: FILE: drivers/gpu/drm/i915/i915_drv.h:914:
+#define INTEL_DISPLAY_ENABLED(i915) \
+	(drm_WARN_ON(&(i915)->drm, !HAS_DISPLAY(i915)),		\
+	 !(i915)->params.disable_display &&				\
+	 !intel_opregion_headless_sku(i915))

-:588: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#588: FILE: drivers/gpu/drm/i915/i915_drv.h:922:
+#define HAS_D12_PLANE_MINIMIZATION(i915) (IS_ROCKETLAKE(i915) || \
+					      IS_ALDERLAKE_S(i915))

total: 0 errors, 1 warnings, 35 checks, 571 lines checked


