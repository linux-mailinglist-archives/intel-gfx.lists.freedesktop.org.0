Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A80036EADEA
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 17:19:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF1E510EE4A;
	Fri, 21 Apr 2023 15:19:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8184A10EE3C;
 Fri, 21 Apr 2023 15:19:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 78A1BAADD2;
 Fri, 21 Apr 2023 15:19:46 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Date: Fri, 21 Apr 2023 15:19:46 -0000
Message-ID: <168209038646.5828.190585551752787324@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230421134654.273182-1-andi.shyti@linux.intel.com>
In-Reply-To: <20230421134654.273182-1-andi.shyti@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Use_i915_instead_of_dev=5Fpriv?=
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

Series: Use i915 instead of dev_priv
URL   : https://patchwork.freedesktop.org/series/116816/
State : warning

== Summary ==

Error: dim checkpatch failed
4f2ff1f3fb31 drm/i915/i915_drv: Use proper parameter naming in for_each_gt()
-:22: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#22: FILE: drivers/gpu/drm/i915/i915_drv.h:384:
+#define for_each_engine(engine__, gt__, id__) \
 	for ((id__) = 0; \
 	     (id__) < I915_NUM_ENGINES; \
 	     (id__)++) \
+		for_each_if ((engine__) = (gt__)->engine[(id__)])

-:22: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id__' - possible side-effects?
#22: FILE: drivers/gpu/drm/i915/i915_drv.h:384:
+#define for_each_engine(engine__, gt__, id__) \
 	for ((id__) = 0; \
 	     (id__) < I915_NUM_ENGINES; \
 	     (id__)++) \
+		for_each_if ((engine__) = (gt__)->engine[(id__)])

-:27: WARNING:SPACING: space prohibited between function name and open parenthesis '('
#27: FILE: drivers/gpu/drm/i915/i915_drv.h:388:
+		for_each_if ((engine__) = (gt__)->engine[(id__)])

total: 1 errors, 1 warnings, 1 checks, 13 lines checked
51c8ab2e0ecd drm/i915/i915_drv: Use i915 instead of dev_priv insied the file_priv structure
-:140: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#140: FILE: drivers/gpu/drm/i915/i915_drv.h:534:
+#define IS_G4X(i915)	(IS_G45(i915) || IS_GM45(i915))

-:144: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#144: FILE: drivers/gpu/drm/i915/i915_drv.h:538:
+#define IS_IRONLAKE_M(i915) \
+	(IS_PLATFORM(i915, INTEL_IRONLAKE) && IS_MOBILE(i915))

-:148: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#148: FILE: drivers/gpu/drm/i915/i915_drv.h:542:
+#define IS_IVB_GT1(i915)	(IS_IVYBRIDGE(i915) && \
+				 INTEL_INFO(i915)->gt == 1)

-:161: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#161: FILE: drivers/gpu/drm/i915/i915_drv.h:555:
+#define IS_JSL_EHL(i915)	(IS_PLATFORM(i915, INTEL_JASPERLAKE) || \
+				IS_PLATFORM(i915, INTEL_ELKHARTLAKE))

-:191: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#191: FILE: drivers/gpu/drm/i915/i915_drv.h:585:
+#define IS_HSW_EARLY_SDV(i915) (IS_HASWELL(i915) && \
+				    (INTEL_DEVID(i915) & 0xFF00) == 0x0C00)

-:197: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#197: FILE: drivers/gpu/drm/i915/i915_drv.h:591:
+#define IS_BDW_GT3(i915)	(IS_BROADWELL(i915) && \
+				 INTEL_INFO(i915)->gt == 3)

-:201: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#201: FILE: drivers/gpu/drm/i915/i915_drv.h:595:
+#define IS_HSW_GT3(i915)	(IS_HASWELL(i915) && \
+				 INTEL_INFO(i915)->gt == 3)

-:203: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#203: FILE: drivers/gpu/drm/i915/i915_drv.h:597:
+#define IS_HSW_GT1(i915)	(IS_HASWELL(i915) && \
+				 INTEL_INFO(i915)->gt == 1)

-:257: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#257: FILE: drivers/gpu/drm/i915/i915_drv.h:610:
+#define IS_SKL_GT2(i915)	(IS_SKYLAKE(i915) && \
+				 INTEL_INFO(i915)->gt == 2)

-:259: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#259: FILE: drivers/gpu/drm/i915/i915_drv.h:612:
+#define IS_SKL_GT3(i915)	(IS_SKYLAKE(i915) && \
+				 INTEL_INFO(i915)->gt == 3)

-:261: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#261: FILE: drivers/gpu/drm/i915/i915_drv.h:614:
+#define IS_SKL_GT4(i915)	(IS_SKYLAKE(i915) && \
+				 INTEL_INFO(i915)->gt == 4)

-:263: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#263: FILE: drivers/gpu/drm/i915/i915_drv.h:616:
+#define IS_KBL_GT2(i915)	(IS_KABYLAKE(i915) && \
+				 INTEL_INFO(i915)->gt == 2)

-:265: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#265: FILE: drivers/gpu/drm/i915/i915_drv.h:618:
+#define IS_KBL_GT3(i915)	(IS_KABYLAKE(i915) && \
+				 INTEL_INFO(i915)->gt == 3)

-:271: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#271: FILE: drivers/gpu/drm/i915/i915_drv.h:624:
+#define IS_CFL_GT2(i915)	(IS_COFFEELAKE(i915) && \
+				 INTEL_INFO(i915)->gt == 2)

-:273: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#273: FILE: drivers/gpu/drm/i915/i915_drv.h:626:
+#define IS_CFL_GT3(i915)	(IS_COFFEELAKE(i915) && \
+				 INTEL_INFO(i915)->gt == 3)

-:280: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#280: FILE: drivers/gpu/drm/i915/i915_drv.h:633:
+#define IS_CML_GT2(i915)	(IS_COMETLAKE(i915) && \
+				 INTEL_INFO(i915)->gt == 2)

-:295: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#295: FILE: drivers/gpu/drm/i915/i915_drv.h:644:
+#define IS_KBL_GRAPHICS_STEP(i915, since, until) \
+	(IS_KABYLAKE(i915) && IS_GRAPHICS_STEP(i915, since, until))

-:297: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#297: FILE: drivers/gpu/drm/i915/i915_drv.h:646:
+#define IS_KBL_DISPLAY_STEP(i915, since, until) \
+	(IS_KABYLAKE(i915) && IS_DISPLAY_STEP(i915, since, until))

-:310: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#310: FILE: drivers/gpu/drm/i915/i915_drv.h:724:
+#define IS_GEN9_LP(i915)	(GRAPHICS_VER(i915) == 9 && IS_LP(i915))

-:311: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#311: FILE: drivers/gpu/drm/i915/i915_drv.h:725:
+#define IS_GEN9_BC(i915)	(GRAPHICS_VER(i915) == 9 && !IS_LP(i915))

-:369: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'sizes' - possible side-effects?
#369: FILE: drivers/gpu/drm/i915/i915_drv.h:780:
+#define HAS_PAGE_SIZES(i915, sizes) ({ \
 	GEM_BUG_ON((sizes) == 0); \
+	((sizes) & ~RUNTIME_INFO(i915)->page_sizes) == 0; \
 })

-:384: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#384: FILE: drivers/gpu/drm/i915/i915_drv.h:790:
+#define HAS_BROKEN_CS_TLB(i915)	(IS_I830(i915) || IS_I845G(i915))

-:388: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#388: FILE: drivers/gpu/drm/i915/i915_drv.h:792:
+#define NEEDS_RC6_CTX_CORRUPTION_WA(i915)	\
+	(IS_BROADWELL(i915) || GRAPHICS_VER(i915) == 9)

-:394: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#394: FILE: drivers/gpu/drm/i915/i915_drv.h:796:
+#define NEEDS_WaRsDisableCoarsePowerGating(i915)			\
+	(IS_SKL_GT3(i915) || IS_SKL_GT4(i915))

-:402: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#402: FILE: drivers/gpu/drm/i915/i915_drv.h:800:
+#define HAS_GMBUS_BURST_READ(i915) (DISPLAY_VER(i915) >= 11 || \
+					IS_GEMINILAKE(i915) || \
+					IS_KABYLAKE(i915))

-:413: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#413: FILE: drivers/gpu/drm/i915/i915_drv.h:807:
+#define HAS_128_BYTE_Y_TILING(i915) (GRAPHICS_VER(i915) != 2 && \
+					 !(IS_I915G(i915) || IS_I915GM(i915)))

-:423: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#423: FILE: drivers/gpu/drm/i915/i915_drv.h:814:
+#define HAS_CUR_FBC(i915)	(!HAS_GMCH(i915) && DISPLAY_VER(i915) >= 7)

-:429: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#429: FILE: drivers/gpu/drm/i915/i915_drv.h:818:
+#define HAS_IPS(i915)	(IS_HSW_ULT(i915) || IS_BROADWELL(i915))

-:434: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#434: FILE: drivers/gpu/drm/i915/i915_drv.h:821:
+#define HAS_DP20(i915)	(IS_DG2(i915) || DISPLAY_VER(i915) >= 14)

-:437: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#437: FILE: drivers/gpu/drm/i915/i915_drv.h:823:
+#define HAS_DOUBLE_BUFFERED_M_N(i915)	(DISPLAY_VER(i915) >= 9 || IS_BROADWELL(i915))

-:456: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#456: FILE: drivers/gpu/drm/i915/i915_drv.h:833:
+#define HAS_TRANSCODER(i915, trans)	 ((RUNTIME_INFO(i915)->cpu_transcoder_mask & BIT(trans)) != 0)

-:486: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#486: FILE: drivers/gpu/drm/i915/i915_drv.h:852:
+#define HAS_HECI_GSC(i915) (HAS_HECI_PXP(i915) || HAS_HECI_GSCFI(i915))

-:518: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#518: FILE: drivers/gpu/drm/i915/i915_drv.h:873:
+#define HAS_SAGV(i915)		(DISPLAY_VER(i915) >= 9 && !IS_LP(i915))

-:557: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#557: FILE: drivers/gpu/drm/i915/i915_drv.h:902:
+#define NUM_L3_SLICES(i915) (IS_HSW_GT3(i915) ? \
+				 2 : HAS_L3_DPF(i915))

-:575: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#575: FILE: drivers/gpu/drm/i915/i915_drv.h:914:
+#define INTEL_DISPLAY_ENABLED(i915) \
+	(drm_WARN_ON(&(i915)->drm, !HAS_DISPLAY(i915)),		\
+	 !(i915)->params.disable_display &&				\
+	 !intel_opregion_headless_sku(i915))

-:587: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#587: FILE: drivers/gpu/drm/i915/i915_drv.h:922:
+#define HAS_D12_PLANE_MINIMIZATION(i915) (IS_ROCKETLAKE(i915) || \
+					      IS_ALDERLAKE_S(i915))

total: 0 errors, 1 warnings, 35 checks, 571 lines checked


