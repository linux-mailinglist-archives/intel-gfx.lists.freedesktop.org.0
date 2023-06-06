Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0787724579
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jun 2023 16:15:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89DB510E37A;
	Tue,  6 Jun 2023 14:15:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8D45D10E35F;
 Tue,  6 Jun 2023 14:15:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 85CEDAADD2;
 Tue,  6 Jun 2023 14:15:15 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vinod Govindapillai" <vinod.govindapillai@intel.com>
Date: Tue, 06 Jun 2023 14:15:15 -0000
Message-ID: <168606091552.22674.3831194773619624979@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230606093509.221709-1-vinod.govindapillai@intel.com>
In-Reply-To: <20230606093509.221709-1-vinod.govindapillai@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_mtl=3A_add_support_for_pmdemand_=28rev14=29?=
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

Series: mtl: add support for pmdemand (rev14)
URL   : https://patchwork.freedesktop.org/series/116949/
State : warning

== Summary ==

Error: dim checkpatch failed
8bf8cd20b5c7 drm/i915: fix the derating percentage for MTL
0e53e38b6107 drm/i915: update the QGV point frequency calculations
2453db29ae96 drm/i915: store the peak bw per QGV point
6be9b38effe8 drm/i915: extract intel_bw_check_qgv_points()
b67308525d7d drm/i915: modify max_bw to return index to intel_bw_info
d56333a485fd drm/i915/mtl: find the best QGV point for the SAGV configuration
96502e589e60 drm/i915/mtl: Add support for PM DEMAND
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:409: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#409: 
new file mode 100644

-:1226: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#1226: FILE: drivers/gpu/drm/i915/i915_reg.h:4514:
+#define  XELPDP_PMDEMAND_QCLK_GV_BW(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_QCLK_GV_BW_MASK, x)

-:1228: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#1228: FILE: drivers/gpu/drm/i915/i915_reg.h:4516:
+#define  XELPDP_PMDEMAND_VOLTAGE_INDEX(x)		REG_FIELD_PREP(XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK, x)

-:1230: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#1230: FILE: drivers/gpu/drm/i915/i915_reg.h:4518:
+#define  XELPDP_PMDEMAND_QCLK_GV_INDEX(x)		REG_FIELD_PREP(XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK, x)

-:1232: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#1232: FILE: drivers/gpu/drm/i915/i915_reg.h:4520:
+#define  XELPDP_PMDEMAND_PIPES(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_PIPES_MASK, x)

-:1234: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#1234: FILE: drivers/gpu/drm/i915/i915_reg.h:4522:
+#define  XELPDP_PMDEMAND_DBUFS(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_DBUFS_MASK, x)

-:1240: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#1240: FILE: drivers/gpu/drm/i915/i915_reg.h:4528:
+#define  XELPDP_PMDEMAND_CDCLK_FREQ(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_CDCLK_FREQ_MASK, x)

-:1242: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#1242: FILE: drivers/gpu/drm/i915/i915_reg.h:4530:
+#define  XELPDP_PMDEMAND_DDICLK_FREQ(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_DDICLK_FREQ_MASK, x)

-:1244: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#1244: FILE: drivers/gpu/drm/i915/i915_reg.h:4532:
+#define  XELPDP_PMDEMAND_SCALERS(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_SCALERS_MASK, x)

total: 0 errors, 9 warnings, 0 checks, 1117 lines checked


