Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55F3D7250D2
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Jun 2023 01:31:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 037C010E3F1;
	Tue,  6 Jun 2023 23:31:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0772F10E3E7;
 Tue,  6 Jun 2023 23:31:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 895F6A03D2;
 Tue,  6 Jun 2023 23:31:29 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vinod Govindapillai" <vinod.govindapillai@intel.com>
Date: Tue, 06 Jun 2023 23:31:29 -0000
Message-ID: <168609428953.22674.15614656652042934180@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230606093509.221709-1-vinod.govindapillai@intel.com>
In-Reply-To: <20230606093509.221709-1-vinod.govindapillai@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_mtl=3A_add_support_for_pmdemand_=28rev15=29?=
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

Series: mtl: add support for pmdemand (rev15)
URL   : https://patchwork.freedesktop.org/series/116949/
State : warning

== Summary ==

Error: dim checkpatch failed
595a7ad922f2 drm/i915: fix the derating percentage for MTL
6c642218f0cc drm/i915: update the QGV point frequency calculations
f73e6f3d3a89 drm/i915: store the peak bw per QGV point
a12a6f28079a drm/i915: extract intel_bw_check_qgv_points()
e1dbf9927a1c drm/i915: modify max_bw to return index to intel_bw_info
49909f81b052 drm/i915/mtl: find the best QGV point for the SAGV configuration
11ac7a3d546d drm/i915/mtl: Add support for PM DEMAND
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:425: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#425: 
new file mode 100644

-:920: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'reg' - possible side-effects?
#920: FILE: drivers/gpu/drm/i915/display/intel_pmdemand.c:491:
+#define update_reg(reg, field, mask) do { \
+	u32 current_val = serialized ? 0 : REG_FIELD_GET((mask), *(reg)); \
+	u32 old_val = old ? old->params.field : 0; \
+	u32 new_val = new->params.field; \
+\
+	*(reg) &= ~(mask); \
+	*(reg) |= REG_FIELD_PREP((mask), max3(old_val, new_val, current_val)); \
+} while (0)

-:920: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'field' - possible side-effects?
#920: FILE: drivers/gpu/drm/i915/display/intel_pmdemand.c:491:
+#define update_reg(reg, field, mask) do { \
+	u32 current_val = serialized ? 0 : REG_FIELD_GET((mask), *(reg)); \
+	u32 old_val = old ? old->params.field : 0; \
+	u32 new_val = new->params.field; \
+\
+	*(reg) &= ~(mask); \
+	*(reg) |= REG_FIELD_PREP((mask), max3(old_val, new_val, current_val)); \
+} while (0)

-:920: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'mask' - possible side-effects?
#920: FILE: drivers/gpu/drm/i915/display/intel_pmdemand.c:491:
+#define update_reg(reg, field, mask) do { \
+	u32 current_val = serialized ? 0 : REG_FIELD_GET((mask), *(reg)); \
+	u32 old_val = old ? old->params.field : 0; \
+	u32 new_val = new->params.field; \
+\
+	*(reg) &= ~(mask); \
+	*(reg) |= REG_FIELD_PREP((mask), max3(old_val, new_val, current_val)); \
+} while (0)

total: 0 errors, 1 warnings, 3 checks, 1016 lines checked


