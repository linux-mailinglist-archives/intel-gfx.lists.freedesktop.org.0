Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ECAF6F0BC5
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Apr 2023 20:14:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D052010E108;
	Thu, 27 Apr 2023 18:14:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3E4D510E32F;
 Thu, 27 Apr 2023 18:14:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3443EA0BCB;
 Thu, 27 Apr 2023 18:14:49 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vinod Govindapillai" <vinod.govindapillai@intel.com>
Date: Thu, 27 Apr 2023 18:14:49 -0000
Message-ID: <168261928918.9052.15979582550666233161@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230427150016.1566833-1-vinod.govindapillai@intel.com>
In-Reply-To: <20230427150016.1566833-1-vinod.govindapillai@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_mtl=3A_add_support_for_pmdemand_=28rev4=29?=
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

Series: mtl: add support for pmdemand (rev4)
URL   : https://patchwork.freedesktop.org/series/116949/
State : warning

== Summary ==

Error: dim checkpatch failed
874300201d54 drm/i915: fix the derating percentage for MTL
0351498e12a8 drm/i915: update the QGV point frequency calculations
a19eee5cbb59 drm/i915: store the peak bw per QGV point
7165b8529aef drm/i915: extract intel_bw_check_qgv_points()
08a7346302d0 drm/i915: modify max_bw to return index to intel_bw_info
0f2930d76473 drm/i915/mtl: find best QGV point and configure sagv
5bd2838f8dfc drm/i915/mtl: Add support for PM DEMAND
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:97: CHECK:UNCOMMENTED_DEFINITION: struct mutex definition without comment
#97: FILE: drivers/gpu/drm/i915/display/intel_display_core.h:350:
+		struct mutex lock;

-:170: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#170: 
new file mode 100644

-:281: CHECK:LINE_SPACING: Please don't use multiple blank lines
#281: FILE: drivers/gpu/drm/i915/display/intel_pmdemand.c:107:
+
+

-:734: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#734: FILE: drivers/gpu/drm/i915/i915_reg.h:4519:
+#define  XELPDP_PMDEMAND_QCLK_GV_BW(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_QCLK_GV_BW_MASK, x)

-:736: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#736: FILE: drivers/gpu/drm/i915/i915_reg.h:4521:
+#define  XELPDP_PMDEMAND_VOLTAGE_INDEX(x)		REG_FIELD_PREP(XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK, x)

-:738: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#738: FILE: drivers/gpu/drm/i915/i915_reg.h:4523:
+#define  XELPDP_PMDEMAND_QCLK_GV_INDEX(x)		REG_FIELD_PREP(XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK, x)

-:740: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#740: FILE: drivers/gpu/drm/i915/i915_reg.h:4525:
+#define  XELPDP_PMDEMAND_PIPES(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_PIPES_MASK, x)

-:742: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#742: FILE: drivers/gpu/drm/i915/i915_reg.h:4527:
+#define  XELPDP_PMDEMAND_DBUFS(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_DBUFS_MASK, x)

-:748: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#748: FILE: drivers/gpu/drm/i915/i915_reg.h:4533:
+#define  XELPDP_PMDEMAND_CDCLK_FREQ(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_CDCLK_FREQ_MASK, x)

-:750: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#750: FILE: drivers/gpu/drm/i915/i915_reg.h:4535:
+#define  XELPDP_PMDEMAND_DDICLK_FREQ(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_DDICLK_FREQ_MASK, x)

-:752: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#752: FILE: drivers/gpu/drm/i915/i915_reg.h:4537:
+#define  XELPDP_PMDEMAND_SCALERS(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_SCALERS_MASK, x)

total: 0 errors, 9 warnings, 2 checks, 680 lines checked
0f22628358d0 drm/i915/display: provision to suppress drm_warn in intel_get_crtc_new_encoder


