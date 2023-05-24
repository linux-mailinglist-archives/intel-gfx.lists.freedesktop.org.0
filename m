Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2930B70FF3E
	for <lists+intel-gfx@lfdr.de>; Wed, 24 May 2023 22:30:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DD0C10E548;
	Wed, 24 May 2023 20:30:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 63EF010E548;
 Wed, 24 May 2023 20:30:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6002DAADE0;
 Wed, 24 May 2023 20:30:52 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vinod Govindapillai" <vinod.govindapillai@intel.com>
Date: Wed, 24 May 2023 20:30:52 -0000
Message-ID: <168496025239.11319.7745726540304463643@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230524124124.378194-1-vinod.govindapillai@intel.com>
In-Reply-To: <20230524124124.378194-1-vinod.govindapillai@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_mtl=3A_add_support_for_pmdemand_=28rev7=29?=
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

Series: mtl: add support for pmdemand (rev7)
URL   : https://patchwork.freedesktop.org/series/116949/
State : warning

== Summary ==

Error: dim checkpatch failed
e63632622f52 drm/i915: fix the derating percentage for MTL
b3c1ee53dae8 drm/i915: update the QGV point frequency calculations
22fe8edbaa46 drm/i915: store the peak bw per QGV point
28bed3bd6d49 drm/i915: extract intel_bw_check_qgv_points()
2c8871943589 drm/i915: modify max_bw to return index to intel_bw_info
62367beb0bc8 drm/i915/mtl: find the best QGV point for the SAGV configuration
00d0d1e96d3a drm/i915/mtl: Add support for PM DEMAND
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:247: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#247: 
new file mode 100644

-:752: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#752: FILE: drivers/gpu/drm/i915/display/intel_pmdemand.c:501:
+	intel_de_rmw(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1), 0,
+			XELPDP_PMDEMAND_REQ_ENABLE);

-:855: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#855: FILE: drivers/gpu/drm/i915/i915_reg.h:4510:
+#define  XELPDP_PMDEMAND_QCLK_GV_BW(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_QCLK_GV_BW_MASK, x)

-:857: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#857: FILE: drivers/gpu/drm/i915/i915_reg.h:4512:
+#define  XELPDP_PMDEMAND_VOLTAGE_INDEX(x)		REG_FIELD_PREP(XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK, x)

-:859: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#859: FILE: drivers/gpu/drm/i915/i915_reg.h:4514:
+#define  XELPDP_PMDEMAND_QCLK_GV_INDEX(x)		REG_FIELD_PREP(XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK, x)

-:861: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#861: FILE: drivers/gpu/drm/i915/i915_reg.h:4516:
+#define  XELPDP_PMDEMAND_PIPES(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_PIPES_MASK, x)

-:863: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#863: FILE: drivers/gpu/drm/i915/i915_reg.h:4518:
+#define  XELPDP_PMDEMAND_DBUFS(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_DBUFS_MASK, x)

-:869: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#869: FILE: drivers/gpu/drm/i915/i915_reg.h:4524:
+#define  XELPDP_PMDEMAND_CDCLK_FREQ(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_CDCLK_FREQ_MASK, x)

-:871: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#871: FILE: drivers/gpu/drm/i915/i915_reg.h:4526:
+#define  XELPDP_PMDEMAND_DDICLK_FREQ(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_DDICLK_FREQ_MASK, x)

-:873: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#873: FILE: drivers/gpu/drm/i915/i915_reg.h:4528:
+#define  XELPDP_PMDEMAND_SCALERS(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_SCALERS_MASK, x)

total: 0 errors, 9 warnings, 1 checks, 785 lines checked


