Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CBC771F51D
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jun 2023 23:53:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE6F510E5DD;
	Thu,  1 Jun 2023 21:53:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 36CB710E5DC;
 Thu,  1 Jun 2023 21:53:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2EF50AADDA;
 Thu,  1 Jun 2023 21:53:30 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vinod Govindapillai" <vinod.govindapillai@intel.com>
Date: Thu, 01 Jun 2023 21:53:30 -0000
Message-ID: <168565641018.16227.14071554180469613609@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230601160350.43888-1-vinod.govindapillai@intel.com>
In-Reply-To: <20230601160350.43888-1-vinod.govindapillai@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_mtl=3A_add_support_for_pmdemand_=28rev12=29?=
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

Series: mtl: add support for pmdemand (rev12)
URL   : https://patchwork.freedesktop.org/series/116949/
State : warning

== Summary ==

Error: dim checkpatch failed
8ae8740d3ed0 drm/i915: fix the derating percentage for MTL
277951603ecd drm/i915: update the QGV point frequency calculations
2d21cda650ba drm/i915: store the peak bw per QGV point
a7ee7441f55e drm/i915: extract intel_bw_check_qgv_points()
74a46c7841e5 drm/i915: modify max_bw to return index to intel_bw_info
c3f2f3aae217 drm/i915/mtl: find the best QGV point for the SAGV configuration
b8e50275587b drm/i915/mtl: Add support for PM DEMAND
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:352: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#352: 
new file mode 100644

-:967: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#967: FILE: drivers/gpu/drm/i915/i915_reg.h:4511:
+#define  XELPDP_PMDEMAND_QCLK_GV_BW(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_QCLK_GV_BW_MASK, x)

-:969: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#969: FILE: drivers/gpu/drm/i915/i915_reg.h:4513:
+#define  XELPDP_PMDEMAND_VOLTAGE_INDEX(x)		REG_FIELD_PREP(XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK, x)

-:971: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#971: FILE: drivers/gpu/drm/i915/i915_reg.h:4515:
+#define  XELPDP_PMDEMAND_QCLK_GV_INDEX(x)		REG_FIELD_PREP(XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK, x)

-:973: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#973: FILE: drivers/gpu/drm/i915/i915_reg.h:4517:
+#define  XELPDP_PMDEMAND_PIPES(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_PIPES_MASK, x)

-:975: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#975: FILE: drivers/gpu/drm/i915/i915_reg.h:4519:
+#define  XELPDP_PMDEMAND_DBUFS(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_DBUFS_MASK, x)

-:981: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#981: FILE: drivers/gpu/drm/i915/i915_reg.h:4525:
+#define  XELPDP_PMDEMAND_CDCLK_FREQ(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_CDCLK_FREQ_MASK, x)

-:983: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#983: FILE: drivers/gpu/drm/i915/i915_reg.h:4527:
+#define  XELPDP_PMDEMAND_DDICLK_FREQ(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_DDICLK_FREQ_MASK, x)

-:985: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#985: FILE: drivers/gpu/drm/i915/i915_reg.h:4529:
+#define  XELPDP_PMDEMAND_SCALERS(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_SCALERS_MASK, x)

total: 0 errors, 9 warnings, 0 checks, 870 lines checked


