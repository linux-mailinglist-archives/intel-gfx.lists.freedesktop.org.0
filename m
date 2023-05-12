Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 052C16FFDE6
	for <lists+intel-gfx@lfdr.de>; Fri, 12 May 2023 02:31:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D921D10E05C;
	Fri, 12 May 2023 00:31:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 459CB10E05C;
 Fri, 12 May 2023 00:31:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3DE81AA917;
 Fri, 12 May 2023 00:31:51 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
Date: Fri, 12 May 2023 00:31:51 -0000
Message-ID: <168385151122.26101.4602282684502864521@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230511231750.313467-1-vinod.govindapillai@intel.com>
In-Reply-To: <20230511231750.313467-1-vinod.govindapillai@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_mtl=3A_add_support_for_pmdemand_=28rev5=29?=
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

Series: mtl: add support for pmdemand (rev5)
URL   : https://patchwork.freedesktop.org/series/116949/
State : warning

== Summary ==

Error: dim checkpatch failed
6f074611e692 drm/i915: fix the derating percentage for MTL
25b686634b4a drm/i915: update the QGV point frequency calculations
240020f2d4ed drm/i915: store the peak bw per QGV point
2f379cefdf09 drm/i915: extract intel_bw_check_qgv_points()
97b147d865bd drm/i915: modify max_bw to return index to intel_bw_info
ffab0de08abd drm/i915/mtl: find the best QGV point for the SAGV configuration
6ef74bd7c7f9 drm/i915/mtl: Add support for PM DEMAND
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:81: WARNING:TYPO_SPELLING: 'paramters' may be misspelled - perhaps 'parameters'?
#81: FILE: drivers/gpu/drm/i915/display/intel_display.c:6969:
+	 * In D14 Pmdemand combines many paramters such as voltage index, plls,
 	                                 ^^^^^^^^^

-:109: CHECK:UNCOMMENTED_DEFINITION: struct mutex definition without comment
#109: FILE: drivers/gpu/drm/i915/display/intel_display_core.h:350:
+		struct mutex lock;

-:182: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#182: 
new file mode 100644

-:219: WARNING:LONG_LINE: line length of 119 exceeds 100 columns
#219: FILE: drivers/gpu/drm/i915/display/intel_pmdemand.c:33:
+#define to_intel_pmdemand_state(x) container_of((x) + BUILD_BUG_ON_ZERO(offsetof(struct intel_pmdemand_state, base)), \

-:597: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#597: FILE: drivers/gpu/drm/i915/display/intel_pmdemand.c:411:
+	drm_dbg_kms(&i915->drm,
+			"initate pmdemand request values: (0x%x 0x%x)\n",

-:601: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#601: FILE: drivers/gpu/drm/i915/display/intel_pmdemand.c:415:
+	intel_de_rmw(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1), 0,
+			XELPDP_PMDEMAND_REQ_ENABLE);

-:758: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#758: FILE: drivers/gpu/drm/i915/i915_reg.h:4543:
+#define  XELPDP_PMDEMAND_QCLK_GV_BW(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_QCLK_GV_BW_MASK, x)

-:760: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#760: FILE: drivers/gpu/drm/i915/i915_reg.h:4545:
+#define  XELPDP_PMDEMAND_VOLTAGE_INDEX(x)		REG_FIELD_PREP(XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK, x)

-:762: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#762: FILE: drivers/gpu/drm/i915/i915_reg.h:4547:
+#define  XELPDP_PMDEMAND_QCLK_GV_INDEX(x)		REG_FIELD_PREP(XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK, x)

-:764: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#764: FILE: drivers/gpu/drm/i915/i915_reg.h:4549:
+#define  XELPDP_PMDEMAND_PIPES(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_PIPES_MASK, x)

-:766: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#766: FILE: drivers/gpu/drm/i915/i915_reg.h:4551:
+#define  XELPDP_PMDEMAND_DBUFS(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_DBUFS_MASK, x)

-:772: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#772: FILE: drivers/gpu/drm/i915/i915_reg.h:4557:
+#define  XELPDP_PMDEMAND_CDCLK_FREQ(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_CDCLK_FREQ_MASK, x)

-:774: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#774: FILE: drivers/gpu/drm/i915/i915_reg.h:4559:
+#define  XELPDP_PMDEMAND_DDICLK_FREQ(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_DDICLK_FREQ_MASK, x)

-:776: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#776: FILE: drivers/gpu/drm/i915/i915_reg.h:4561:
+#define  XELPDP_PMDEMAND_SCALERS(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_SCALERS_MASK, x)

total: 0 errors, 11 warnings, 3 checks, 697 lines checked
5859307b239e drm/i915/display: provision to suppress drm_warn in intel_get_crtc_new_encoder


