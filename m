Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EC4F467FE2
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Dec 2021 23:22:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F34A8BE9B;
	Fri,  3 Dec 2021 22:22:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0E9528BE9B;
 Fri,  3 Dec 2021 22:22:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 05E3AA00E8;
 Fri,  3 Dec 2021 22:22:05 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: john.c.harrison@intel.com
Date: Fri, 03 Dec 2021 22:22:05 -0000
Message-ID: <163857012501.5407.3468135084792156016@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211203183339.3276250-1-John.C.Harrison@Intel.com>
In-Reply-To: <20211203183339.3276250-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Update_to_GuC_version_69=2E0=2E0?=
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

Series: Update to GuC version 69.0.0
URL   : https://patchwork.freedesktop.org/series/97564/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
1ba090939f4f drm/i915/uc: Allow platforms to have GuC but not HuC
-:37: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#37: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:51:
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

-:37: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'fw_def' - possible side-effects?
#37: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:51:
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

-:37: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'guc_def' - possible side-effects?
#37: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:51:
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

-:54: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#54: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:68:
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

-:54: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'fw_def' - possible side-effects?
#54: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:68:
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

-:54: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'huc_def' - possible side-effects?
#54: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:68:
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

-:80: WARNING:TRAILING_SEMICOLON: macros should not use a trailing semicolon
#80: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:99:
+#define INTEL_UC_MODULE_FW(platform_, revid_, uc_) \
+	MODULE_FIRMWARE(uc_);

total: 2 errors, 1 warnings, 4 checks, 134 lines checked
0c27c3d306db drm/i915/guc: Increase GuC log size for CONFIG_DEBUG_GEM
dcbfeb6078aa drm/i915/guc: Don't go bang in GuC log if no GuC
b1173763d5c2 drm/i915/guc: Update to GuC version 69.0.0
-:135: CHECK:CAMELCASE: Avoid CamelCase: <GUC_HXG_REQUEST_MSG_n_DATAn>
#135: FILE: drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h:55:
+#define HOST2GUC_SELF_CFG_REQUEST_MSG_2_VALUE32		GUC_HXG_REQUEST_MSG_n_DATAn

-:212: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#212: 
new file mode 100644

total: 0 errors, 1 warnings, 1 checks, 1010 lines checked
25e36b6914e2 drm/i915/guc: Improve GuC loading status check/error reports


