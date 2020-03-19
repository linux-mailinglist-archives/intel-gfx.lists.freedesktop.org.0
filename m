Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCC5B18B1BA
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2020 11:52:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36D6F89C17;
	Thu, 19 Mar 2020 10:52:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6538A89C17;
 Thu, 19 Mar 2020 10:52:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5D58FA0099;
 Thu, 19 Mar 2020 10:52:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Pankaj Bharadiya" <pankaj.laxminarayan.bharadiya@intel.com>
Date: Thu, 19 Mar 2020 10:52:28 -0000
Message-ID: <158461514837.17935.17654093206485164096@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200319102103.28895-1-pankaj.laxminarayan.bharadiya@intel.com>
In-Reply-To: <20200319102103.28895-1-pankaj.laxminarayan.bharadiya@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Introduce_drm_scaling_filter_property_=28rev3=29?=
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

Series: Introduce drm scaling filter property (rev3)
URL   : https://patchwork.freedesktop.org/series/73883/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
51d1ea0ac87f drm: Introduce plane and CRTC scaling filter properties
-:138: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#138: FILE: drivers/gpu/drm/drm_mode_config.c:384:
+	prop = drm_property_create_enum(dev, 0,
+				"SCALING_FILTER",

-:146: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#146: FILE: drivers/gpu/drm/drm_mode_config.c:392:
+	prop = drm_property_create_enum(dev, 0,
+				"SCALING_FILTER",

total: 0 errors, 0 warnings, 2 checks, 218 lines checked
dbd02a4bbf34 drm/drm-kms.rst: Add plane and CRTC scaling filter property documentation
c0c485082dda drm/i915: Introduce scaling filter related registers and bit fields.
-:73: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#73: FILE: drivers/gpu/drm/i915/i915_reg.h:7337:
+#define _SKL_PS_COEF_INDEX_SET0(pipe, id)  _ID(pipe,    \
+			_ID(id, _PS_COEF_SET0_INDEX_1A, _PS_COEF_SET0_INDEX_2A), \
+			_ID(id, _PS_COEF_SET0_INDEX_1B, _PS_COEF_SET0_INDEX_2B))

-:77: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#77: FILE: drivers/gpu/drm/i915/i915_reg.h:7341:
+#define _SKL_PS_COEF_INDEX_SET1(pipe, id)  _ID(pipe,    \
+			_ID(id, _PS_COEF_SET1_INDEX_1A, _PS_COEF_SET1_INDEX_2A), \
+			_ID(id, _PS_COEF_SET1_INDEX_1B, _PS_COEF_SET1_INDEX_2B))

-:81: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#81: FILE: drivers/gpu/drm/i915/i915_reg.h:7345:
+#define _SKL_PS_COEF_DATA_SET0(pipe, id)  _ID(pipe,     \
+			_ID(id, _PS_COEF_SET0_DATA_1A, _PS_COEF_SET0_DATA_2A), \
+			_ID(id, _PS_COEF_SET0_DATA_1B, _PS_COEF_SET0_DATA_2B))

-:85: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#85: FILE: drivers/gpu/drm/i915/i915_reg.h:7349:
+#define _SKL_PS_COEF_DATA_SET1(pipe, id)  _ID(pipe,     \
+			_ID(id, _PS_COEF_SET1_DATA_1A, _PS_COEF_SET1_DATA_2A), \
+			_ID(id, _PS_COEF_SET1_DATA_1B, _PS_COEF_SET1_DATA_2B))

-:89: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#89: FILE: drivers/gpu/drm/i915/i915_reg.h:7353:
+#define SKL_PS_COEF_INDEX_SET(pipe, id, set) \
+			_MMIO_PIPE(set, _SKL_PS_COEF_INDEX_SET0(pipe, id), \
+			    _SKL_PS_COEF_INDEX_SET1(pipe, id))

-:89: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#89: FILE: drivers/gpu/drm/i915/i915_reg.h:7353:
+#define SKL_PS_COEF_INDEX_SET(pipe, id, set) \
+			_MMIO_PIPE(set, _SKL_PS_COEF_INDEX_SET0(pipe, id), \
+			    _SKL_PS_COEF_INDEX_SET1(pipe, id))

-:93: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#93: FILE: drivers/gpu/drm/i915/i915_reg.h:7357:
+#define SKL_PS_COEF_DATA_SET(pipe, id, set) \
+			_MMIO_PIPE(set, _SKL_PS_COEF_DATA_SET0(pipe, id), \
+			    _SKL_PS_COEF_DATA_SET1(pipe, id))

-:93: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#93: FILE: drivers/gpu/drm/i915/i915_reg.h:7357:
+#define SKL_PS_COEF_DATA_SET(pipe, id, set) \
+			_MMIO_PIPE(set, _SKL_PS_COEF_DATA_SET0(pipe, id), \
+			    _SKL_PS_COEF_DATA_SET1(pipe, id))

total: 0 errors, 0 warnings, 8 checks, 72 lines checked
2bda386ae840 drm/i915/display: Add Nearest-neighbor based integer scaling support
-:106: CHECK:SPACING: spaces preferred around that '+' (ctx:VxV)
#106: FILE: drivers/gpu/drm/i915/display/intel_display.c:6304:
+		t = skl_coef_tap(i+1);
 		                  ^

-:107: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#107: FILE: drivers/gpu/drm/i915/display/intel_display.c:6305:
+		tmp |= skl_nearest_filter_coef(t)<<16;
 		                                 ^

total: 0 errors, 0 warnings, 2 checks, 86 lines checked
b7639a6e88a8 drm/i915: Enable scaling filter for plane and CRTC
-:34: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#34: FILE: drivers/gpu/drm/i915/display/intel_display.c:6314:
+skl_scaler_crtc_setup_filter(struct drm_i915_private *dev_priv, enum pipe pipe,
+			  int id, int set, enum drm_crtc_scaling_filter filter)

-:47: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#47: FILE: drivers/gpu/drm/i915/display/intel_display.c:6327:
+
+	}

-:77: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#77: FILE: drivers/gpu/drm/i915/display/intel_display.c:6366:
+			skl_scaler_crtc_setup_filter(dev_priv, pipe, id, 0,
+						state->scaling_filter);

-:118: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#118: FILE: drivers/gpu/drm/i915/display/intel_sprite.c:414:
+
+	}

total: 0 errors, 0 warnings, 4 checks, 124 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
