Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55E28719058
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jun 2023 04:07:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4749610E216;
	Thu,  1 Jun 2023 02:07:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A88DC10E20E;
 Thu,  1 Jun 2023 02:07:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A0BB8A00E6;
 Thu,  1 Jun 2023 02:07:42 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vinod Govindapillai" <vinod.govindapillai@intel.com>
Date: Thu, 01 Jun 2023 02:07:42 -0000
Message-ID: <168558526263.16229.275329111539003525@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230531222714.439313-1-vinod.govindapillai@intel.com>
In-Reply-To: <20230531222714.439313-1-vinod.govindapillai@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_mtl=3A_add_support_for_pmdemand_=28rev10=29?=
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

Series: mtl: add support for pmdemand (rev10)
URL   : https://patchwork.freedesktop.org/series/116949/
State : warning

== Summary ==

Error: dim checkpatch failed
b714d57c5518 drm/i915: fix the derating percentage for MTL
be6708c171e2 drm/i915: update the QGV point frequency calculations
e8af3b37a4b5 drm/i915: store the peak bw per QGV point
5a4a1606ec1a drm/i915: extract intel_bw_check_qgv_points()
e6589f8594f9 drm/i915: modify max_bw to return index to intel_bw_info
daf64af748a1 drm/i915/mtl: find the best QGV point for the SAGV configuration
e1bd2652b923 drm/i915/mtl: Add support for PM DEMAND
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:346: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#346: 
new file mode 100644

-:521: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#521: FILE: drivers/gpu/drm/i915/display/intel_pmdemand.c:171:
+					   old_conn_state, new_conn_state, i) {
+

-:592: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#592: FILE: drivers/gpu/drm/i915/display/intel_pmdemand.c:242:
+	if (new_dbuf_state &&
+		(new_dbuf_state->active_pipes !=

-:601: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#601: FILE: drivers/gpu/drm/i915/display/intel_pmdemand.c:251:
+	if (new_cdclk_state &&
+		(new_cdclk_state->actual.cdclk !=

-:992: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#992: FILE: drivers/gpu/drm/i915/i915_reg.h:4511:
+#define  XELPDP_PMDEMAND_QCLK_GV_BW(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_QCLK_GV_BW_MASK, x)

-:994: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#994: FILE: drivers/gpu/drm/i915/i915_reg.h:4513:
+#define  XELPDP_PMDEMAND_VOLTAGE_INDEX(x)		REG_FIELD_PREP(XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK, x)

-:996: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#996: FILE: drivers/gpu/drm/i915/i915_reg.h:4515:
+#define  XELPDP_PMDEMAND_QCLK_GV_INDEX(x)		REG_FIELD_PREP(XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK, x)

-:998: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#998: FILE: drivers/gpu/drm/i915/i915_reg.h:4517:
+#define  XELPDP_PMDEMAND_PIPES(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_PIPES_MASK, x)

-:1000: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#1000: FILE: drivers/gpu/drm/i915/i915_reg.h:4519:
+#define  XELPDP_PMDEMAND_DBUFS(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_DBUFS_MASK, x)

-:1006: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#1006: FILE: drivers/gpu/drm/i915/i915_reg.h:4525:
+#define  XELPDP_PMDEMAND_CDCLK_FREQ(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_CDCLK_FREQ_MASK, x)

-:1008: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#1008: FILE: drivers/gpu/drm/i915/i915_reg.h:4527:
+#define  XELPDP_PMDEMAND_DDICLK_FREQ(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_DDICLK_FREQ_MASK, x)

-:1010: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#1010: FILE: drivers/gpu/drm/i915/i915_reg.h:4529:
+#define  XELPDP_PMDEMAND_SCALERS(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_SCALERS_MASK, x)

total: 0 errors, 9 warnings, 3 checks, 901 lines checked


