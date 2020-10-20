Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E92A294178
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Oct 2020 19:32:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36E786ED00;
	Tue, 20 Oct 2020 17:32:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0F5176ED00;
 Tue, 20 Oct 2020 17:32:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 07ECAA0009;
 Tue, 20 Oct 2020 17:32:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Pankaj Bharadiya" <pankaj.laxminarayan.bharadiya@intel.com>
Date: Tue, 20 Oct 2020 17:32:50 -0000
Message-ID: <160321517000.24451.16115118104037447845@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201020161427.6941-1-pankaj.laxminarayan.bharadiya@intel.com>
In-Reply-To: <20201020161427.6941-1-pankaj.laxminarayan.bharadiya@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Introduce_drm_scaling_filter_property_=28rev9=29?=
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

Series: Introduce drm scaling filter property (rev9)
URL   : https://patchwork.freedesktop.org/series/73883/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
c6a6d43c122d drm: Introduce plane and CRTC scaling filter properties
91954a6df9a7 drm/i915: Introduce scaling filter related registers and bit fields
-:75: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#75: FILE: drivers/gpu/drm/i915/i915_reg.h:7506:
+#define CNL_PS_COEF_INDEX_SET(pipe, id, set)  _MMIO_PIPE(pipe,    \
+			_ID(id, _PS_COEF_SET0_INDEX_1A, _PS_COEF_SET0_INDEX_2A) + (set) * 8, \
+			_ID(id, _PS_COEF_SET0_INDEX_1B, _PS_COEF_SET0_INDEX_2B) + (set) * 8)

-:75: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'set' - possible side-effects?
#75: FILE: drivers/gpu/drm/i915/i915_reg.h:7506:
+#define CNL_PS_COEF_INDEX_SET(pipe, id, set)  _MMIO_PIPE(pipe,    \
+			_ID(id, _PS_COEF_SET0_INDEX_1A, _PS_COEF_SET0_INDEX_2A) + (set) * 8, \
+			_ID(id, _PS_COEF_SET0_INDEX_1B, _PS_COEF_SET0_INDEX_2B) + (set) * 8)

-:79: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#79: FILE: drivers/gpu/drm/i915/i915_reg.h:7510:
+#define CNL_PS_COEF_DATA_SET(pipe, id, set)  _MMIO_PIPE(pipe,     \
+			_ID(id, _PS_COEF_SET0_DATA_1A, _PS_COEF_SET0_DATA_2A) + (set) * 8, \
+			_ID(id, _PS_COEF_SET0_DATA_1B, _PS_COEF_SET0_DATA_2B) + (set) * 8)

-:79: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'set' - possible side-effects?
#79: FILE: drivers/gpu/drm/i915/i915_reg.h:7510:
+#define CNL_PS_COEF_DATA_SET(pipe, id, set)  _MMIO_PIPE(pipe,     \
+			_ID(id, _PS_COEF_SET0_DATA_1A, _PS_COEF_SET0_DATA_2A) + (set) * 8, \
+			_ID(id, _PS_COEF_SET0_DATA_1B, _PS_COEF_SET0_DATA_2B) + (set) * 8)

total: 0 errors, 0 warnings, 4 checks, 47 lines checked
f990bc408fd1 drm/i915/display: Add Nearest-neighbor based integer scaling support
4dfda23b3a73 drm/i915: Enable scaling filter for plane and CRTC
-:100: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#100: FILE: drivers/gpu/drm/i915/display/intel_display.c:17072:
+		drm_crtc_create_scaling_filter_property(&crtc->base,
+						BIT(DRM_SCALING_FILTER_DEFAULT) |

-:160: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#160: FILE: drivers/gpu/drm/i915/display/intel_sprite.c:3216:
+		drm_plane_create_scaling_filter_property(&plane->base,
+						BIT(DRM_SCALING_FILTER_DEFAULT) |

total: 0 errors, 0 warnings, 2 checks, 104 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
