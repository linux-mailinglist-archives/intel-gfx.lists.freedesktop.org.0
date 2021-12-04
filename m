Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C4BF4681C6
	for <lists+intel-gfx@lfdr.de>; Sat,  4 Dec 2021 02:23:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 812286F3D0;
	Sat,  4 Dec 2021 01:23:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 221BA6F3D0;
 Sat,  4 Dec 2021 01:23:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 08DB5AA914;
 Sat,  4 Dec 2021 01:23:33 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: john.c.harrison@intel.com
Date: Sat, 04 Dec 2021 01:23:33 -0000
Message-ID: <163858101301.1805.6687846362949871108@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211203000623.3086309-1-John.C.Harrison@Intel.com>
In-Reply-To: <20211203000623.3086309-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Assorted_fixes/tweaks_to_GuC_support_=28rev3=29?=
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

Series: Assorted fixes/tweaks to GuC support (rev3)
URL   : https://patchwork.freedesktop.org/series/97514/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
251e5012b67c drm/i915/uc: Allow platforms to have GuC but not HuC
-:36: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#36: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:51:
+#define INTEL_GUC_FIRMWARE_DEFS(fw_def, guc_def) \
+	fw_def(ALDERLAKE_P,  0, guc_def(adlp, 62, 0, 3)) \
+	fw_def(ALDERLAKE_S,  0, guc_def(tgl,  62, 0, 0)) \
+	fw_def(DG1,          0, guc_def(dg1,  62, 0, 0)) \
+	fw_def(ROCKETLAKE,   0, guc_def(tgl,  62, 0, 0)) \
+	fw_def(TIGERLAKE,    0, guc_def(tgl,  62, 0, 0)) \
+	fw_def(JASPERLAKE,   0, guc_def(ehl,  62, 0, 0)) \
+	fw_def(ELKHARTLAKE,  0, guc_def(ehl,  62, 0, 0)) \
+	fw_def(ICELAKE,      0, guc_def(icl,  62, 0, 0)) \
+	fw_def(COMETLAKE,    5, guc_def(cml,  62, 0, 0)) \
+	fw_def(COMETLAKE,    0, guc_def(kbl,  62, 0, 0)) \
+	fw_def(COFFEELAKE,   0, guc_def(kbl,  62, 0, 0)) \
+	fw_def(GEMINILAKE,   0, guc_def(glk,  62, 0, 0)) \
+	fw_def(KABYLAKE,     0, guc_def(kbl,  62, 0, 0)) \
+	fw_def(BROXTON,      0, guc_def(bxt,  62, 0, 0)) \
+	fw_def(SKYLAKE,      0, guc_def(skl,  62, 0, 0))

-:36: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'fw_def' - possible side-effects?
#36: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:51:
+#define INTEL_GUC_FIRMWARE_DEFS(fw_def, guc_def) \
+	fw_def(ALDERLAKE_P,  0, guc_def(adlp, 62, 0, 3)) \
+	fw_def(ALDERLAKE_S,  0, guc_def(tgl,  62, 0, 0)) \
+	fw_def(DG1,          0, guc_def(dg1,  62, 0, 0)) \
+	fw_def(ROCKETLAKE,   0, guc_def(tgl,  62, 0, 0)) \
+	fw_def(TIGERLAKE,    0, guc_def(tgl,  62, 0, 0)) \
+	fw_def(JASPERLAKE,   0, guc_def(ehl,  62, 0, 0)) \
+	fw_def(ELKHARTLAKE,  0, guc_def(ehl,  62, 0, 0)) \
+	fw_def(ICELAKE,      0, guc_def(icl,  62, 0, 0)) \
+	fw_def(COMETLAKE,    5, guc_def(cml,  62, 0, 0)) \
+	fw_def(COMETLAKE,    0, guc_def(kbl,  62, 0, 0)) \
+	fw_def(COFFEELAKE,   0, guc_def(kbl,  62, 0, 0)) \
+	fw_def(GEMINILAKE,   0, guc_def(glk,  62, 0, 0)) \
+	fw_def(KABYLAKE,     0, guc_def(kbl,  62, 0, 0)) \
+	fw_def(BROXTON,      0, guc_def(bxt,  62, 0, 0)) \
+	fw_def(SKYLAKE,      0, guc_def(skl,  62, 0, 0))

-:36: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'guc_def' - possible side-effects?
#36: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:51:
+#define INTEL_GUC_FIRMWARE_DEFS(fw_def, guc_def) \
+	fw_def(ALDERLAKE_P,  0, guc_def(adlp, 62, 0, 3)) \
+	fw_def(ALDERLAKE_S,  0, guc_def(tgl,  62, 0, 0)) \
+	fw_def(DG1,          0, guc_def(dg1,  62, 0, 0)) \
+	fw_def(ROCKETLAKE,   0, guc_def(tgl,  62, 0, 0)) \
+	fw_def(TIGERLAKE,    0, guc_def(tgl,  62, 0, 0)) \
+	fw_def(JASPERLAKE,   0, guc_def(ehl,  62, 0, 0)) \
+	fw_def(ELKHARTLAKE,  0, guc_def(ehl,  62, 0, 0)) \
+	fw_def(ICELAKE,      0, guc_def(icl,  62, 0, 0)) \
+	fw_def(COMETLAKE,    5, guc_def(cml,  62, 0, 0)) \
+	fw_def(COMETLAKE,    0, guc_def(kbl,  62, 0, 0)) \
+	fw_def(COFFEELAKE,   0, guc_def(kbl,  62, 0, 0)) \
+	fw_def(GEMINILAKE,   0, guc_def(glk,  62, 0, 0)) \
+	fw_def(KABYLAKE,     0, guc_def(kbl,  62, 0, 0)) \
+	fw_def(BROXTON,      0, guc_def(bxt,  62, 0, 0)) \
+	fw_def(SKYLAKE,      0, guc_def(skl,  62, 0, 0))

-:53: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#53: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:68:
+#define INTEL_HUC_FIRMWARE_DEFS(fw_def, huc_def) \
+	fw_def(ALDERLAKE_P,  0, huc_def(tgl,  7, 9, 3)) \
+	fw_def(ALDERLAKE_S,  0, huc_def(tgl,  7, 9, 3)) \
+	fw_def(DG1,          0, huc_def(dg1,  7, 9, 3)) \
+	fw_def(ROCKETLAKE,   0, huc_def(tgl,  7, 9, 3)) \
+	fw_def(TIGERLAKE,    0, huc_def(tgl,  7, 9, 3)) \
+	fw_def(JASPERLAKE,   0, huc_def(ehl,  9, 0, 0)) \
+	fw_def(ELKHARTLAKE,  0, huc_def(ehl,  9, 0, 0)) \
+	fw_def(ICELAKE,      0, huc_def(icl,  9, 0, 0)) \
+	fw_def(COMETLAKE,    5, huc_def(cml,  4, 0, 0)) \
+	fw_def(COMETLAKE,    0, huc_def(kbl,  4, 0, 0)) \
+	fw_def(COFFEELAKE,   0, huc_def(kbl,  4, 0, 0)) \
+	fw_def(GEMINILAKE,   0, huc_def(glk,  4, 0, 0)) \
+	fw_def(KABYLAKE,     0, huc_def(kbl,  4, 0, 0)) \
+	fw_def(BROXTON,      0, huc_def(bxt,  2, 0, 0)) \
+	fw_def(SKYLAKE,      0, huc_def(skl,  2, 0, 0))

-:53: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'fw_def' - possible side-effects?
#53: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:68:
+#define INTEL_HUC_FIRMWARE_DEFS(fw_def, huc_def) \
+	fw_def(ALDERLAKE_P,  0, huc_def(tgl,  7, 9, 3)) \
+	fw_def(ALDERLAKE_S,  0, huc_def(tgl,  7, 9, 3)) \
+	fw_def(DG1,          0, huc_def(dg1,  7, 9, 3)) \
+	fw_def(ROCKETLAKE,   0, huc_def(tgl,  7, 9, 3)) \
+	fw_def(TIGERLAKE,    0, huc_def(tgl,  7, 9, 3)) \
+	fw_def(JASPERLAKE,   0, huc_def(ehl,  9, 0, 0)) \
+	fw_def(ELKHARTLAKE,  0, huc_def(ehl,  9, 0, 0)) \
+	fw_def(ICELAKE,      0, huc_def(icl,  9, 0, 0)) \
+	fw_def(COMETLAKE,    5, huc_def(cml,  4, 0, 0)) \
+	fw_def(COMETLAKE,    0, huc_def(kbl,  4, 0, 0)) \
+	fw_def(COFFEELAKE,   0, huc_def(kbl,  4, 0, 0)) \
+	fw_def(GEMINILAKE,   0, huc_def(glk,  4, 0, 0)) \
+	fw_def(KABYLAKE,     0, huc_def(kbl,  4, 0, 0)) \
+	fw_def(BROXTON,      0, huc_def(bxt,  2, 0, 0)) \
+	fw_def(SKYLAKE,      0, huc_def(skl,  2, 0, 0))

-:53: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'huc_def' - possible side-effects?
#53: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:68:
+#define INTEL_HUC_FIRMWARE_DEFS(fw_def, huc_def) \
+	fw_def(ALDERLAKE_P,  0, huc_def(tgl,  7, 9, 3)) \
+	fw_def(ALDERLAKE_S,  0, huc_def(tgl,  7, 9, 3)) \
+	fw_def(DG1,          0, huc_def(dg1,  7, 9, 3)) \
+	fw_def(ROCKETLAKE,   0, huc_def(tgl,  7, 9, 3)) \
+	fw_def(TIGERLAKE,    0, huc_def(tgl,  7, 9, 3)) \
+	fw_def(JASPERLAKE,   0, huc_def(ehl,  9, 0, 0)) \
+	fw_def(ELKHARTLAKE,  0, huc_def(ehl,  9, 0, 0)) \
+	fw_def(ICELAKE,      0, huc_def(icl,  9, 0, 0)) \
+	fw_def(COMETLAKE,    5, huc_def(cml,  4, 0, 0)) \
+	fw_def(COMETLAKE,    0, huc_def(kbl,  4, 0, 0)) \
+	fw_def(COFFEELAKE,   0, huc_def(kbl,  4, 0, 0)) \
+	fw_def(GEMINILAKE,   0, huc_def(glk,  4, 0, 0)) \
+	fw_def(KABYLAKE,     0, huc_def(kbl,  4, 0, 0)) \
+	fw_def(BROXTON,      0, huc_def(bxt,  2, 0, 0)) \
+	fw_def(SKYLAKE,      0, huc_def(skl,  2, 0, 0))

-:79: WARNING:TRAILING_SEMICOLON: macros should not use a trailing semicolon
#79: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:99:
+#define INTEL_UC_MODULE_FW(platform_, revid_, uc_) \
+	MODULE_FIRMWARE(uc_);

total: 2 errors, 1 warnings, 4 checks, 134 lines checked
a23ce00ab4a5 drm/i915/guc: Request RP0 before loading firmware
fbe70a3641ec drm/i915/guc: Increase GuC log size for CONFIG_DEBUG_GEM
aa67036839ee drm/i915/guc: Don't go bang in GuC log if no GuC


