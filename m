Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BB8972386E
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jun 2023 09:10:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18D2310E216;
	Tue,  6 Jun 2023 07:10:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0E79010E216;
 Tue,  6 Jun 2023 07:10:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EC906AADD2;
 Tue,  6 Jun 2023 07:10:11 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vinod Govindapillai" <vinod.govindapillai@intel.com>
Date: Tue, 06 Jun 2023 07:10:11 -0000
Message-ID: <168603541193.22676.7491957677829823444@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230606064327.188226-1-vinod.govindapillai@intel.com>
In-Reply-To: <20230606064327.188226-1-vinod.govindapillai@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_mtl=3A_add_support_for_pmdemand_=28rev13=29?=
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

Series: mtl: add support for pmdemand (rev13)
URL   : https://patchwork.freedesktop.org/series/116949/
State : warning

== Summary ==

Error: dim checkpatch failed
cc2b69014ad0 drm/i915: fix the derating percentage for MTL
c97fb5253d29 drm/i915: update the QGV point frequency calculations
1867f7d89463 drm/i915: store the peak bw per QGV point
c814ff08ef3d drm/i915: extract intel_bw_check_qgv_points()
1c54ab78da47 drm/i915: modify max_bw to return index to intel_bw_info
898b6bda8ea1 drm/i915/mtl: find the best QGV point for the SAGV configuration
8bd937594756 drm/i915/mtl: Add support for PM DEMAND
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:412: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#412: 
new file mode 100644

-:1171: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#1171: FILE: drivers/gpu/drm/i915/i915_reg.h:4514:
+#define  XELPDP_PMDEMAND_QCLK_GV_BW(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_QCLK_GV_BW_MASK, x)

-:1173: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#1173: FILE: drivers/gpu/drm/i915/i915_reg.h:4516:
+#define  XELPDP_PMDEMAND_VOLTAGE_INDEX(x)		REG_FIELD_PREP(XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK, x)

-:1175: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#1175: FILE: drivers/gpu/drm/i915/i915_reg.h:4518:
+#define  XELPDP_PMDEMAND_QCLK_GV_INDEX(x)		REG_FIELD_PREP(XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK, x)

-:1177: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#1177: FILE: drivers/gpu/drm/i915/i915_reg.h:4520:
+#define  XELPDP_PMDEMAND_PIPES(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_PIPES_MASK, x)

-:1179: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#1179: FILE: drivers/gpu/drm/i915/i915_reg.h:4522:
+#define  XELPDP_PMDEMAND_DBUFS(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_DBUFS_MASK, x)

-:1185: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#1185: FILE: drivers/gpu/drm/i915/i915_reg.h:4528:
+#define  XELPDP_PMDEMAND_CDCLK_FREQ(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_CDCLK_FREQ_MASK, x)

-:1187: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#1187: FILE: drivers/gpu/drm/i915/i915_reg.h:4530:
+#define  XELPDP_PMDEMAND_DDICLK_FREQ(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_DDICLK_FREQ_MASK, x)

-:1189: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#1189: FILE: drivers/gpu/drm/i915/i915_reg.h:4532:
+#define  XELPDP_PMDEMAND_SCALERS(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_SCALERS_MASK, x)

total: 0 errors, 9 warnings, 0 checks, 1066 lines checked


