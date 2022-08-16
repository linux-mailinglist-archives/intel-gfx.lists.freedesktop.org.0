Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DAB45963F0
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Aug 2022 22:48:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D52E810E074;
	Tue, 16 Aug 2022 20:48:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CA15710E138;
 Tue, 16 Aug 2022 20:48:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C5659A47DF;
 Tue, 16 Aug 2022 20:48:22 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: john.c.harrison@intel.com
Date: Tue, 16 Aug 2022 20:48:22 -0000
Message-ID: <166068290280.9028.18034117397541162130@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220816202837.1778495-1-John.C.Harrison@Intel.com>
In-Reply-To: <20220816202837.1778495-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Drop_version_numbers_from_firmware_files?=
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

Series: Drop version numbers from firmware files
URL   : https://patchwork.freedesktop.org/series/107340/
State : warning

== Summary ==

Error: dim checkpatch failed
2b35c15d2651 drm/i915/uc: Support for version reduced and multiple firmware files
-:152: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#152: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:55:
+#define INTEL_GUC_FIRMWARE_DEFS(fw_def, guc_maj, guc_mmp) \
+	fw_def(ALDERLAKE_P,  0, guc_mmp(adlp, 70, 1, 1)) \
+	fw_def(ALDERLAKE_P,  0, guc_mmp(adlp, 69, 0, 3)) \
+	fw_def(ALDERLAKE_S,  0, guc_mmp(tgl,  70, 1, 1)) \
+	fw_def(DG1,          0, guc_mmp(dg1,  70, 1, 1)) \
+	fw_def(ROCKETLAKE,   0, guc_mmp(tgl,  70, 1, 1)) \
+	fw_def(TIGERLAKE,    0, guc_mmp(tgl,  70, 1, 1)) \
+	fw_def(JASPERLAKE,   0, guc_mmp(ehl,  70, 1, 1)) \
+	fw_def(ELKHARTLAKE,  0, guc_mmp(ehl,  70, 1, 1)) \
+	fw_def(ICELAKE,      0, guc_mmp(icl,  70, 1, 1)) \
+	fw_def(COMETLAKE,    5, guc_mmp(cml,  70, 1, 1)) \
+	fw_def(COMETLAKE,    0, guc_mmp(kbl,  70, 1, 1)) \
+	fw_def(COFFEELAKE,   0, guc_mmp(kbl,  70, 1, 1)) \
+	fw_def(GEMINILAKE,   0, guc_mmp(glk,  70, 1, 1)) \
+	fw_def(KABYLAKE,     0, guc_mmp(kbl,  70, 1, 1)) \
+	fw_def(BROXTON,      0, guc_mmp(bxt,  70, 1, 1)) \
+	fw_def(SKYLAKE,      0, guc_mmp(skl,  70, 1, 1))

-:152: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'fw_def' - possible side-effects?
#152: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:55:
+#define INTEL_GUC_FIRMWARE_DEFS(fw_def, guc_maj, guc_mmp) \
+	fw_def(ALDERLAKE_P,  0, guc_mmp(adlp, 70, 1, 1)) \
+	fw_def(ALDERLAKE_P,  0, guc_mmp(adlp, 69, 0, 3)) \
+	fw_def(ALDERLAKE_S,  0, guc_mmp(tgl,  70, 1, 1)) \
+	fw_def(DG1,          0, guc_mmp(dg1,  70, 1, 1)) \
+	fw_def(ROCKETLAKE,   0, guc_mmp(tgl,  70, 1, 1)) \
+	fw_def(TIGERLAKE,    0, guc_mmp(tgl,  70, 1, 1)) \
+	fw_def(JASPERLAKE,   0, guc_mmp(ehl,  70, 1, 1)) \
+	fw_def(ELKHARTLAKE,  0, guc_mmp(ehl,  70, 1, 1)) \
+	fw_def(ICELAKE,      0, guc_mmp(icl,  70, 1, 1)) \
+	fw_def(COMETLAKE,    5, guc_mmp(cml,  70, 1, 1)) \
+	fw_def(COMETLAKE,    0, guc_mmp(kbl,  70, 1, 1)) \
+	fw_def(COFFEELAKE,   0, guc_mmp(kbl,  70, 1, 1)) \
+	fw_def(GEMINILAKE,   0, guc_mmp(glk,  70, 1, 1)) \
+	fw_def(KABYLAKE,     0, guc_mmp(kbl,  70, 1, 1)) \
+	fw_def(BROXTON,      0, guc_mmp(bxt,  70, 1, 1)) \
+	fw_def(SKYLAKE,      0, guc_mmp(skl,  70, 1, 1))

-:152: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'guc_mmp' - possible side-effects?
#152: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:55:
+#define INTEL_GUC_FIRMWARE_DEFS(fw_def, guc_maj, guc_mmp) \
+	fw_def(ALDERLAKE_P,  0, guc_mmp(adlp, 70, 1, 1)) \
+	fw_def(ALDERLAKE_P,  0, guc_mmp(adlp, 69, 0, 3)) \
+	fw_def(ALDERLAKE_S,  0, guc_mmp(tgl,  70, 1, 1)) \
+	fw_def(DG1,          0, guc_mmp(dg1,  70, 1, 1)) \
+	fw_def(ROCKETLAKE,   0, guc_mmp(tgl,  70, 1, 1)) \
+	fw_def(TIGERLAKE,    0, guc_mmp(tgl,  70, 1, 1)) \
+	fw_def(JASPERLAKE,   0, guc_mmp(ehl,  70, 1, 1)) \
+	fw_def(ELKHARTLAKE,  0, guc_mmp(ehl,  70, 1, 1)) \
+	fw_def(ICELAKE,      0, guc_mmp(icl,  70, 1, 1)) \
+	fw_def(COMETLAKE,    5, guc_mmp(cml,  70, 1, 1)) \
+	fw_def(COMETLAKE,    0, guc_mmp(kbl,  70, 1, 1)) \
+	fw_def(COFFEELAKE,   0, guc_mmp(kbl,  70, 1, 1)) \
+	fw_def(GEMINILAKE,   0, guc_mmp(glk,  70, 1, 1)) \
+	fw_def(KABYLAKE,     0, guc_mmp(kbl,  70, 1, 1)) \
+	fw_def(BROXTON,      0, guc_mmp(bxt,  70, 1, 1)) \
+	fw_def(SKYLAKE,      0, guc_mmp(skl,  70, 1, 1))

-:170: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#170: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:73:
+#define INTEL_HUC_FIRMWARE_DEFS(fw_def, huc_raw, huc_mmp) \
+	fw_def(ALDERLAKE_P,  0, huc_mmp(tgl,  7, 9, 3)) \
+	fw_def(ALDERLAKE_S,  0, huc_mmp(tgl,  7, 9, 3)) \
+	fw_def(DG1,          0, huc_mmp(dg1,  7, 9, 3)) \
+	fw_def(ROCKETLAKE,   0, huc_mmp(tgl,  7, 9, 3)) \
+	fw_def(TIGERLAKE,    0, huc_mmp(tgl,  7, 9, 3)) \
+	fw_def(JASPERLAKE,   0, huc_mmp(ehl,  9, 0, 0)) \
+	fw_def(ELKHARTLAKE,  0, huc_mmp(ehl,  9, 0, 0)) \
+	fw_def(ICELAKE,      0, huc_mmp(icl,  9, 0, 0)) \
+	fw_def(COMETLAKE,    5, huc_mmp(cml,  4, 0, 0)) \
+	fw_def(COMETLAKE,    0, huc_mmp(kbl,  4, 0, 0)) \
+	fw_def(COFFEELAKE,   0, huc_mmp(kbl,  4, 0, 0)) \
+	fw_def(GEMINILAKE,   0, huc_mmp(glk,  4, 0, 0)) \
+	fw_def(KABYLAKE,     0, huc_mmp(kbl,  4, 0, 0)) \
+	fw_def(BROXTON,      0, huc_mmp(bxt,  2, 0, 0)) \
+	fw_def(SKYLAKE,      0, huc_mmp(skl,  2, 0, 0))

-:170: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'fw_def' - possible side-effects?
#170: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:73:
+#define INTEL_HUC_FIRMWARE_DEFS(fw_def, huc_raw, huc_mmp) \
+	fw_def(ALDERLAKE_P,  0, huc_mmp(tgl,  7, 9, 3)) \
+	fw_def(ALDERLAKE_S,  0, huc_mmp(tgl,  7, 9, 3)) \
+	fw_def(DG1,          0, huc_mmp(dg1,  7, 9, 3)) \
+	fw_def(ROCKETLAKE,   0, huc_mmp(tgl,  7, 9, 3)) \
+	fw_def(TIGERLAKE,    0, huc_mmp(tgl,  7, 9, 3)) \
+	fw_def(JASPERLAKE,   0, huc_mmp(ehl,  9, 0, 0)) \
+	fw_def(ELKHARTLAKE,  0, huc_mmp(ehl,  9, 0, 0)) \
+	fw_def(ICELAKE,      0, huc_mmp(icl,  9, 0, 0)) \
+	fw_def(COMETLAKE,    5, huc_mmp(cml,  4, 0, 0)) \
+	fw_def(COMETLAKE,    0, huc_mmp(kbl,  4, 0, 0)) \
+	fw_def(COFFEELAKE,   0, huc_mmp(kbl,  4, 0, 0)) \
+	fw_def(GEMINILAKE,   0, huc_mmp(glk,  4, 0, 0)) \
+	fw_def(KABYLAKE,     0, huc_mmp(kbl,  4, 0, 0)) \
+	fw_def(BROXTON,      0, huc_mmp(bxt,  2, 0, 0)) \
+	fw_def(SKYLAKE,      0, huc_mmp(skl,  2, 0, 0))

-:170: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'huc_mmp' - possible side-effects?
#170: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:73:
+#define INTEL_HUC_FIRMWARE_DEFS(fw_def, huc_raw, huc_mmp) \
+	fw_def(ALDERLAKE_P,  0, huc_mmp(tgl,  7, 9, 3)) \
+	fw_def(ALDERLAKE_S,  0, huc_mmp(tgl,  7, 9, 3)) \
+	fw_def(DG1,          0, huc_mmp(dg1,  7, 9, 3)) \
+	fw_def(ROCKETLAKE,   0, huc_mmp(tgl,  7, 9, 3)) \
+	fw_def(TIGERLAKE,    0, huc_mmp(tgl,  7, 9, 3)) \
+	fw_def(JASPERLAKE,   0, huc_mmp(ehl,  9, 0, 0)) \
+	fw_def(ELKHARTLAKE,  0, huc_mmp(ehl,  9, 0, 0)) \
+	fw_def(ICELAKE,      0, huc_mmp(icl,  9, 0, 0)) \
+	fw_def(COMETLAKE,    5, huc_mmp(cml,  4, 0, 0)) \
+	fw_def(COMETLAKE,    0, huc_mmp(kbl,  4, 0, 0)) \
+	fw_def(COFFEELAKE,   0, huc_mmp(kbl,  4, 0, 0)) \
+	fw_def(GEMINILAKE,   0, huc_mmp(glk,  4, 0, 0)) \
+	fw_def(KABYLAKE,     0, huc_mmp(kbl,  4, 0, 0)) \
+	fw_def(BROXTON,      0, huc_mmp(bxt,  2, 0, 0)) \
+	fw_def(SKYLAKE,      0, huc_mmp(skl,  2, 0, 0))

-:258: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'major_' - possible side-effects?
#258: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:148:
+#define GUC_FW_BLOB(prefix_, major_, minor_) \
+	UC_FW_BLOB_NEW(major_, minor_, 0, \
+		       MAKE_GUC_FW_PATH_MAJOR(prefix_, major_, minor_))

-:258: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'minor_' - possible side-effects?
#258: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:148:
+#define GUC_FW_BLOB(prefix_, major_, minor_) \
+	UC_FW_BLOB_NEW(major_, minor_, 0, \
+		       MAKE_GUC_FW_PATH_MAJOR(prefix_, major_, minor_))

-:265: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'major_' - possible side-effects?
#265: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:152:
+#define GUC_FW_BLOB_MMP(prefix_, major_, minor_, patch_) \
+	UC_FW_BLOB_OLD(major_, minor_, patch_, \
+		       MAKE_GUC_FW_PATH_MMP(prefix_, major_, minor_, patch_))

-:265: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'minor_' - possible side-effects?
#265: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:152:
+#define GUC_FW_BLOB_MMP(prefix_, major_, minor_, patch_) \
+	UC_FW_BLOB_OLD(major_, minor_, patch_, \
+		       MAKE_GUC_FW_PATH_MMP(prefix_, major_, minor_, patch_))

-:265: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'patch_' - possible side-effects?
#265: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:152:
+#define GUC_FW_BLOB_MMP(prefix_, major_, minor_, patch_) \
+	UC_FW_BLOB_OLD(major_, minor_, patch_, \
+		       MAKE_GUC_FW_PATH_MMP(prefix_, major_, minor_, patch_))

-:272: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'major_' - possible side-effects?
#272: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:159:
+#define HUC_FW_BLOB_MMP(prefix_, major_, minor_, patch_) \
+	UC_FW_BLOB_OLD(major_, minor_, patch_, \
+		       MAKE_HUC_FW_PATH_MMP(prefix_, major_, minor_, patch_))

-:272: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'minor_' - possible side-effects?
#272: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:159:
+#define HUC_FW_BLOB_MMP(prefix_, major_, minor_, patch_) \
+	UC_FW_BLOB_OLD(major_, minor_, patch_, \
+		       MAKE_HUC_FW_PATH_MMP(prefix_, major_, minor_, patch_))

-:272: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'patch_' - possible side-effects?
#272: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:159:
+#define HUC_FW_BLOB_MMP(prefix_, major_, minor_, patch_) \
+	UC_FW_BLOB_OLD(major_, minor_, patch_, \
+		       MAKE_HUC_FW_PATH_MMP(prefix_, major_, minor_, patch_))

total: 2 errors, 0 warnings, 12 checks, 716 lines checked
2528334aba77 drm/i915/uc: Enable version reduced firmware files for newest platforms


