Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC50216BA8D
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2020 08:24:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA23E6E9EE;
	Tue, 25 Feb 2020 07:24:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A7B506E9EE;
 Tue, 25 Feb 2020 07:24:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9E168A00E8;
 Tue, 25 Feb 2020 07:24:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Pankaj Bharadiya" <pankaj.laxminarayan.bharadiya@intel.com>
Date: Tue, 25 Feb 2020 07:24:15 -0000
Message-ID: <158261545561.5725.10332909894053607425@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200225070545.4482-1-pankaj.laxminarayan.bharadiya@intel.com>
In-Reply-To: <20200225070545.4482-1-pankaj.laxminarayan.bharadiya@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Introduce_drm_scaling_filter_property?=
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

Series: Introduce drm scaling filter property
URL   : https://patchwork.freedesktop.org/series/73883/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
21c6a10f68e0 drm: Introduce scaling filter property
-:110: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#110: FILE: drivers/gpu/drm/drm_mode_config.c:379:
+	prop = drm_property_create_enum(dev, 0,
+				"SCALING_FILTER",

-:171: CHECK:LINE_SPACING: Please don't use multiple blank lines
#171: FILE: include/drm/drm_crtc.h:61:
 
+

-:221: CHECK:LINE_SPACING: Please don't use multiple blank lines
#221: FILE: include/drm/drm_plane.h:38:
 
+

total: 0 errors, 0 warnings, 3 checks, 182 lines checked
bce91bc41fe1 drm/drm-kms.rst: Add Scaling filter property documentation
582f010154af drm/i915: Enable scaling filter for plane and pipe
-:56: CHECK:LINE_SPACING: Please don't use multiple blank lines
#56: FILE: drivers/gpu/drm/i915/display/intel_display.c:16707:
 
+

total: 0 errors, 0 warnings, 1 checks, 78 lines checked
1e1be21b4151 drm/i915: Introduce scaling filter related registers and bit fields.
-:41: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#41: FILE: drivers/gpu/drm/i915/i915_reg.h:7333:
+#define SKL_PS_COEF_INDEX_SET0(pipe, id)  _MMIO_PIPE(pipe,    \
+			_ID(id, _PS_COEF_SET0_INDEX_1A, _PS_COEF_SET0_INDEX_2A), \
+			_ID(id, _PS_COEF_SET0_INDEX_1B, _PS_COEF_SET0_INDEX_2B))

-:45: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#45: FILE: drivers/gpu/drm/i915/i915_reg.h:7337:
+#define SKL_PS_COEF_DATA_SET0(pipe, id)  _MMIO_PIPE(pipe,     \
+			_ID(id, _PS_COEF_SET0_DATA_1A, _PS_COEF_SET0_DATA_2A), \
+			_ID(id, _PS_COEF_SET0_DATA_1B, _PS_COEF_SET0_DATA_2B))

total: 0 errors, 0 warnings, 2 checks, 32 lines checked
02e442488928 drm/i915/display: Add Nearest-neighbor based integer scaling support
-:71: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#71: FILE: drivers/gpu/drm/i915/display/intel_display.c:6277:
+void skl_setup_nearest_neighbor_filter(struct drm_i915_private *dev_priv,
+				  enum pipe pipe, int scaler_id)

-:73: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#73: FILE: drivers/gpu/drm/i915/display/intel_display.c:6279:
+{
+

-:90: WARNING:LONG_LINE: line over 100 characters
#90: FILE: drivers/gpu/drm/i915/display/intel_display.c:6296:
+				intel_de_write_fw(dev_priv, SKL_PS_COEF_DATA_SET0(pipe, scaler_id), val);

-:94: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#94: FILE: drivers/gpu/drm/i915/display/intel_display.c:6300:
+
+		}

-:96: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#96: FILE: drivers/gpu/drm/i915/display/intel_display.c:6302:
+
+	}

-:146: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#146: FILE: drivers/gpu/drm/i915/display/intel_display.h:590:
+void skl_setup_nearest_neighbor_filter(struct drm_i915_private *dev_priv,
+				  enum pipe pipe, int scaler_id);

total: 0 errors, 1 warnings, 5 checks, 144 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
