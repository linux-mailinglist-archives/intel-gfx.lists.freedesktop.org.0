Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3537C5A338C
	for <lists+intel-gfx@lfdr.de>; Sat, 27 Aug 2022 03:45:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE9FC10EB0E;
	Sat, 27 Aug 2022 01:45:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6A3F610EB07;
 Sat, 27 Aug 2022 01:45:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 61161AADD5;
 Sat, 27 Aug 2022 01:45:26 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "John Harrison" <john.c.harrison@intel.com>
Date: Sat, 27 Aug 2022 01:45:26 -0000
Message-ID: <166156472636.5229.16930050323120927667@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220827011702.3465334-1-John.C.Harrison@Intel.com>
In-Reply-To: <20220827011702.3465334-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Drop_version_numbers_from_firmware_files_=28rev4=29?=
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

Series: Drop version numbers from firmware files (rev4)
URL   : https://patchwork.freedesktop.org/series/107340/
State : warning

== Summary ==

Error: dim checkpatch failed
42d234dc1dfa drm/i915/uc: Support for version reduced and multiple firmware files
-:172: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#172: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:74:
+#define INTEL_GUC_FIRMWARE_DEFS(fw_def, guc_maj, guc_mmp) \
+	fw_def(DG2,          0, guc_mmp(dg2,  70, 4, 1)) \
+	fw_def(ALDERLAKE_P,  0, guc_mmp(adlp, 70, 1, 1)) \
+	fw_def(ALDERLAKE_P,  0, guc_mmp(adlp, 69, 0, 3)) \
+	fw_def(ALDERLAKE_S,  0, guc_mmp(tgl,  70, 1, 1)) \
+	fw_def(ALDERLAKE_S,  0, guc_mmp(tgl,  69, 0, 3)) \
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

-:172: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'fw_def' - possible side-effects?
#172: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:74:
+#define INTEL_GUC_FIRMWARE_DEFS(fw_def, guc_maj, guc_mmp) \
+	fw_def(DG2,          0, guc_mmp(dg2,  70, 4, 1)) \
+	fw_def(ALDERLAKE_P,  0, guc_mmp(adlp, 70, 1, 1)) \
+	fw_def(ALDERLAKE_P,  0, guc_mmp(adlp, 69, 0, 3)) \
+	fw_def(ALDERLAKE_S,  0, guc_mmp(tgl,  70, 1, 1)) \
+	fw_def(ALDERLAKE_S,  0, guc_mmp(tgl,  69, 0, 3)) \
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

-:172: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'guc_mmp' - possible side-effects?
#172: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:74:
+#define INTEL_GUC_FIRMWARE_DEFS(fw_def, guc_maj, guc_mmp) \
+	fw_def(DG2,          0, guc_mmp(dg2,  70, 4, 1)) \
+	fw_def(ALDERLAKE_P,  0, guc_mmp(adlp, 70, 1, 1)) \
+	fw_def(ALDERLAKE_P,  0, guc_mmp(adlp, 69, 0, 3)) \
+	fw_def(ALDERLAKE_S,  0, guc_mmp(tgl,  70, 1, 1)) \
+	fw_def(ALDERLAKE_S,  0, guc_mmp(tgl,  69, 0, 3)) \
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

-:192: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#192: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:94:
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

-:192: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'fw_def' - possible side-effects?
#192: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:94:
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

-:192: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'huc_mmp' - possible side-effects?
#192: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:94:
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

-:296: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'major_' - possible side-effects?
#296: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:183:
+#define GUC_FW_BLOB(prefix_, major_, minor_) \
+	UC_FW_BLOB_NEW(major_, minor_, 0, \
+		       MAKE_GUC_FW_PATH_MAJOR(prefix_, major_, minor_))

-:296: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'minor_' - possible side-effects?
#296: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:183:
+#define GUC_FW_BLOB(prefix_, major_, minor_) \
+	UC_FW_BLOB_NEW(major_, minor_, 0, \
+		       MAKE_GUC_FW_PATH_MAJOR(prefix_, major_, minor_))

-:303: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'major_' - possible side-effects?
#303: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:187:
+#define GUC_FW_BLOB_MMP(prefix_, major_, minor_, patch_) \
+	UC_FW_BLOB_OLD(major_, minor_, patch_, \
+		       MAKE_GUC_FW_PATH_MMP(prefix_, major_, minor_, patch_))

-:303: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'minor_' - possible side-effects?
#303: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:187:
+#define GUC_FW_BLOB_MMP(prefix_, major_, minor_, patch_) \
+	UC_FW_BLOB_OLD(major_, minor_, patch_, \
+		       MAKE_GUC_FW_PATH_MMP(prefix_, major_, minor_, patch_))

-:303: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'patch_' - possible side-effects?
#303: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:187:
+#define GUC_FW_BLOB_MMP(prefix_, major_, minor_, patch_) \
+	UC_FW_BLOB_OLD(major_, minor_, patch_, \
+		       MAKE_GUC_FW_PATH_MMP(prefix_, major_, minor_, patch_))

-:310: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'major_' - possible side-effects?
#310: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:194:
+#define HUC_FW_BLOB_MMP(prefix_, major_, minor_, patch_) \
+	UC_FW_BLOB_OLD(major_, minor_, patch_, \
+		       MAKE_HUC_FW_PATH_MMP(prefix_, major_, minor_, patch_))

-:310: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'minor_' - possible side-effects?
#310: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:194:
+#define HUC_FW_BLOB_MMP(prefix_, major_, minor_, patch_) \
+	UC_FW_BLOB_OLD(major_, minor_, patch_, \
+		       MAKE_HUC_FW_PATH_MMP(prefix_, major_, minor_, patch_))

-:310: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'patch_' - possible side-effects?
#310: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:194:
+#define HUC_FW_BLOB_MMP(prefix_, major_, minor_, patch_) \
+	UC_FW_BLOB_OLD(major_, minor_, patch_, \
+		       MAKE_HUC_FW_PATH_MMP(prefix_, major_, minor_, patch_))

total: 2 errors, 0 warnings, 12 checks, 766 lines checked
452c8f31c729 drm/i915/uc: Add patch level version number support
-:172: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'uc' - possible side-effects?
#172: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h:113:
+#define GET_UC_VER(uc)			(MAKE_UC_VER((uc)->fw.file_selected.major_ver, \
+						     (uc)->fw.file_selected.minor_ver, \
+						     (uc)->fw.file_selected.patch_ver))

total: 0 errors, 0 warnings, 1 checks, 146 lines checked
ce7bc3db7f6c drm/i915/uc: Enable version reduced firmware files for newest platforms


