Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CFD826EEB5F
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Apr 2023 02:20:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F6F210E844;
	Wed, 26 Apr 2023 00:20:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 00F7510E844;
 Wed, 26 Apr 2023 00:20:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F1E35A41FB;
 Wed, 26 Apr 2023 00:20:10 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vinod Govindapillai" <vinod.govindapillai@intel.com>
Date: Wed, 26 Apr 2023 00:20:10 -0000
Message-ID: <168246841098.17151.8161153296048606720@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230425202826.1144429-1-vinod.govindapillai@intel.com>
In-Reply-To: <20230425202826.1144429-1-vinod.govindapillai@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_mtl=3A_add_support_for_pmdemand_=28rev2=29?=
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

Series: mtl: add support for pmdemand (rev2)
URL   : https://patchwork.freedesktop.org/series/116949/
State : warning

== Summary ==

Error: dim checkpatch failed
5016f41822c8 drm/i915: fix the derating percentage for MTL
058a5643fd59 drm/i915: update the QGV point frequency calculations
c577a850a946 drm/i915: store the peak bw per QGV point
ed6ff8e568de drm/i915: extract intel_bw_check_qgv_points()
55901493e37d drm/i915: modify max_bw to return index to intel_bw_info
3625a67eea00 drm/i915/mtl: find best QGV point and configure sagv
48f2141f0a8f drm/i915/mtl: Add support for PM DEMAND
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:92: CHECK:UNCOMMENTED_DEFINITION: struct mutex definition without comment
#92: FILE: drivers/gpu/drm/i915/display/intel_display_core.h:350:
+		struct mutex lock;

-:165: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#165: 
new file mode 100644

-:276: CHECK:LINE_SPACING: Please don't use multiple blank lines
#276: FILE: drivers/gpu/drm/i915/display/intel_pmdemand.c:107:
+
+

-:475: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'val' - possible side-effects?
#475: FILE: drivers/gpu/drm/i915/display/intel_pmdemand.c:306:
+#define UPDATE_PMDEMAND_VAL(val, F, f) do {            \
+	val &= (~(XELPDP_PMDEMAND_##F##_MASK));         \
+	val |= (XELPDP_PMDEMAND_##F((u32)(old ? max(old->f, new->f) : new->f))); \
+} while (0)

-:475: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'val' may be better as '(val)' to avoid precedence issues
#475: FILE: drivers/gpu/drm/i915/display/intel_pmdemand.c:306:
+#define UPDATE_PMDEMAND_VAL(val, F, f) do {            \
+	val &= (~(XELPDP_PMDEMAND_##F##_MASK));         \
+	val |= (XELPDP_PMDEMAND_##F((u32)(old ? max(old->f, new->f) : new->f))); \
+} while (0)

-:475: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'f' - possible side-effects?
#475: FILE: drivers/gpu/drm/i915/display/intel_pmdemand.c:306:
+#define UPDATE_PMDEMAND_VAL(val, F, f) do {            \
+	val &= (~(XELPDP_PMDEMAND_##F##_MASK));         \
+	val |= (XELPDP_PMDEMAND_##F((u32)(old ? max(old->f, new->f) : new->f))); \
+} while (0)

-:475: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'f' may be better as '(f)' to avoid precedence issues
#475: FILE: drivers/gpu/drm/i915/display/intel_pmdemand.c:306:
+#define UPDATE_PMDEMAND_VAL(val, F, f) do {            \
+	val &= (~(XELPDP_PMDEMAND_##F##_MASK));         \
+	val |= (XELPDP_PMDEMAND_##F((u32)(old ? max(old->f, new->f) : new->f))); \
+} while (0)

-:533: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#533: FILE: drivers/gpu/drm/i915/display/intel_pmdemand.c:364:
+static bool intel_pmdemand_state_changed(

-:605: CHECK:LINE_SPACING: Please don't use multiple blank lines
#605: FILE: drivers/gpu/drm/i915/display/intel_pmdemand.h:24:
+
+

-:623: CHECK:LINE_SPACING: Please don't use multiple blank lines
#623: FILE: drivers/gpu/drm/i915/i915_irq.c:60:
 
+

-:689: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#689: FILE: drivers/gpu/drm/i915/i915_reg.h:4519:
+#define  XELPDP_PMDEMAND_QCLK_GV_BW(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_QCLK_GV_BW_MASK, x)

-:691: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#691: FILE: drivers/gpu/drm/i915/i915_reg.h:4521:
+#define  XELPDP_PMDEMAND_VOLTAGE_INDEX(x)		REG_FIELD_PREP(XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK, x)

-:693: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#693: FILE: drivers/gpu/drm/i915/i915_reg.h:4523:
+#define  XELPDP_PMDEMAND_QCLK_GV_INDEX(x)		REG_FIELD_PREP(XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK, x)

-:695: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#695: FILE: drivers/gpu/drm/i915/i915_reg.h:4525:
+#define  XELPDP_PMDEMAND_PIPES(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_PIPES_MASK, x)

-:697: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#697: FILE: drivers/gpu/drm/i915/i915_reg.h:4527:
+#define  XELPDP_PMDEMAND_DBUFS(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_DBUFS_MASK, x)

-:703: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#703: FILE: drivers/gpu/drm/i915/i915_reg.h:4533:
+#define  XELPDP_PMDEMAND_CDCLK_FREQ(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_CDCLK_FREQ_MASK, x)

-:705: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#705: FILE: drivers/gpu/drm/i915/i915_reg.h:4535:
+#define  XELPDP_PMDEMAND_DDICLK_FREQ(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_DDICLK_FREQ_MASK, x)

-:707: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#707: FILE: drivers/gpu/drm/i915/i915_reg.h:4537:
+#define  XELPDP_PMDEMAND_SCALERS(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_SCALERS_MASK, x)

total: 0 errors, 9 warnings, 9 checks, 639 lines checked
f53338fb7529 drm/i915/display: provision to suppress drm_warn in intel_get_crtc_new_encoder
-:50: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#50: FILE: drivers/gpu/drm/i915/display/intel_display.c:788:
+		drm_WARN(state->base.dev, num_encoders != 1,
+			"%d encoders for pipe %c\n",

total: 0 errors, 0 warnings, 1 checks, 95 lines checked


