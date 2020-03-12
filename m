Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F67718307B
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 13:39:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9B406E1E6;
	Thu, 12 Mar 2020 12:39:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B11896E1E6;
 Thu, 12 Mar 2020 12:39:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A7CC6A47E6;
 Thu, 12 Mar 2020 12:39:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Pankaj Bharadiya" <pankaj.laxminarayan.bharadiya@intel.com>
Date: Thu, 12 Mar 2020 12:39:43 -0000
Message-ID: <158401678365.4949.16327514998283584134@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200312111449.21202-1-pankaj.laxminarayan.bharadiya@intel.com>
In-Reply-To: <20200312111449.21202-1-pankaj.laxminarayan.bharadiya@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Introduce_drm_scaling_filter_property_=28rev2=29?=
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

Series: Introduce drm scaling filter property (rev2)
URL   : https://patchwork.freedesktop.org/series/73883/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
38e9b95fbc63 drm: Introduce plane and CRTC scaling filter properties
-:136: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#136: FILE: drivers/gpu/drm/drm_mode_config.c:384:
+	prop = drm_property_create_enum(dev, 0,
+				"SCALING_FILTER",

-:144: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#144: FILE: drivers/gpu/drm/drm_mode_config.c:392:
+	prop = drm_property_create_enum(dev, 0,
+				"SCALING_FILTER",

total: 0 errors, 0 warnings, 2 checks, 218 lines checked
d310d566729e drm/drm-kms.rst: Add plane and CRTC scaling filter property documentation
-:11: WARNING:TYPO_SPELLING: 'seperate' may be misspelled - perhaps 'separate'?
#11: 
* Add seperate documention for plane and CRTC.

total: 0 errors, 1 warnings, 0 checks, 18 lines checked
1e2dfdf86198 drm/i915: Introduce scaling filter related registers and bit fields.
-:71: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#71: FILE: drivers/gpu/drm/i915/i915_reg.h:7334:
+#define _SKL_PS_COEF_INDEX_SET0(pipe, id)  _ID(pipe,    \
+			_ID(id, _PS_COEF_SET0_INDEX_1A, _PS_COEF_SET0_INDEX_2A), \
+			_ID(id, _PS_COEF_SET0_INDEX_1B, _PS_COEF_SET0_INDEX_2B))

-:75: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#75: FILE: drivers/gpu/drm/i915/i915_reg.h:7338:
+#define _SKL_PS_COEF_INDEX_SET1(pipe, id)  _ID(pipe,    \
+			_ID(id, _PS_COEF_SET1_INDEX_1A, _PS_COEF_SET1_INDEX_2A), \
+			_ID(id, _PS_COEF_SET1_INDEX_1B, _PS_COEF_SET1_INDEX_2B))

-:79: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#79: FILE: drivers/gpu/drm/i915/i915_reg.h:7342:
+#define _SKL_PS_COEF_DATA_SET0(pipe, id)  _ID(pipe,     \
+			_ID(id, _PS_COEF_SET0_DATA_1A, _PS_COEF_SET0_DATA_2A), \
+			_ID(id, _PS_COEF_SET0_DATA_1B, _PS_COEF_SET0_DATA_2B))

-:83: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#83: FILE: drivers/gpu/drm/i915/i915_reg.h:7346:
+#define _SKL_PS_COEF_DATA_SET1(pipe, id)  _ID(pipe,     \
+			_ID(id, _PS_COEF_SET1_DATA_1A, _PS_COEF_SET1_DATA_2A), \
+			_ID(id, _PS_COEF_SET1_DATA_1B, _PS_COEF_SET1_DATA_2B))

-:87: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#87: FILE: drivers/gpu/drm/i915/i915_reg.h:7350:
+#define SKL_PS_COEF_INDEX_SET(pipe, id, set) \
+			_MMIO_PIPE(set, _SKL_PS_COEF_INDEX_SET0(pipe, id), \
+			    _SKL_PS_COEF_INDEX_SET1(pipe, id))

-:87: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#87: FILE: drivers/gpu/drm/i915/i915_reg.h:7350:
+#define SKL_PS_COEF_INDEX_SET(pipe, id, set) \
+			_MMIO_PIPE(set, _SKL_PS_COEF_INDEX_SET0(pipe, id), \
+			    _SKL_PS_COEF_INDEX_SET1(pipe, id))

-:91: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#91: FILE: drivers/gpu/drm/i915/i915_reg.h:7354:
+#define SKL_PS_COEF_DATA_SET(pipe, id, set) \
+			_MMIO_PIPE(set, _SKL_PS_COEF_DATA_SET0(pipe, id), \
+			    _SKL_PS_COEF_DATA_SET1(pipe, id))

-:91: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#91: FILE: drivers/gpu/drm/i915/i915_reg.h:7354:
+#define SKL_PS_COEF_DATA_SET(pipe, id, set) \
+			_MMIO_PIPE(set, _SKL_PS_COEF_DATA_SET0(pipe, id), \
+			    _SKL_PS_COEF_DATA_SET1(pipe, id))

total: 0 errors, 0 warnings, 8 checks, 72 lines checked
7e25cb888423 drm/i915/display: Add Nearest-neighbor based integer scaling support
-:77: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#77: FILE: drivers/gpu/drm/i915/display/intel_display.c:6279:
+{
+

-:95: WARNING:LONG_LINE: line over 100 characters
#95: FILE: drivers/gpu/drm/i915/display/intel_display.c:6297:
+				intel_de_write_fw(dev_priv, SKL_PS_COEF_DATA_SET(pipe, id, set), val);

total: 0 errors, 1 warnings, 1 checks, 80 lines checked
3ed10cd62efd drm/i915: Enable scaling filter for plane and CRTC
-:32: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#32: FILE: drivers/gpu/drm/i915/display/intel_display.c:6308:
+skl_scaler_crtc_setup_filter(struct drm_i915_private *dev_priv, enum pipe pipe,
+			  int id, int set, enum drm_crtc_scaling_filter filter)

-:45: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#45: FILE: drivers/gpu/drm/i915/display/intel_display.c:6321:
+
+	}

-:75: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#75: FILE: drivers/gpu/drm/i915/display/intel_display.c:6360:
+			skl_scaler_crtc_setup_filter(dev_priv, pipe, id, 0,
+						state->scaling_filter);

-:116: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#116: FILE: drivers/gpu/drm/i915/display/intel_sprite.c:414:
+
+	}

total: 0 errors, 0 warnings, 4 checks, 124 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
