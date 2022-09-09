Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BBAF5B2B1F
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Sep 2022 02:33:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19BC010E87D;
	Fri,  9 Sep 2022 00:33:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id F345710E2E5;
 Fri,  9 Sep 2022 00:33:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 94073AADD1;
 Fri,  9 Sep 2022 00:33:05 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
Date: Fri, 09 Sep 2022 00:33:05 -0000
Message-ID: <166268358557.1363.3706680854917639492@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220909001612.728451-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20220909001612.728451-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_HuC_loading_for_DG2_=28rev3=29?=
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

Series: drm/i915: HuC loading for DG2 (rev3)
URL   : https://patchwork.freedesktop.org/series/107477/
State : warning

== Summary ==

Error: dim checkpatch failed
489f4c218bd4 mei: add support to GSC extended header
727f7def9db4 mei: bus: enable sending gsc commands
10aa5255ef38 mei: adjust extended header kdocs
950871b7918e mei: bus: extend bus API to support command streamer API
9c3dc73a2303 mei: pxp: add command streamer API to the PXP driver
6b17e119a8f9 mei: pxp: support matching with a gfx discrete card
88273f48a829 drm/i915/pxp: load the pxp module when we have a gsc-loaded huc
0d57efefcd9f drm/i915/pxp: implement function for sending tee stream command
3ce8cf8e7aba drm/i915/pxp: add huc authentication and loading command
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:33: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#33: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 131 lines checked
03ab2c8a165b drm/i915/dg2: setup HuC loading via GSC
333589b269f3 drm/i915/huc: track delayed HuC load with a fence
-:222: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around '&intf->adev->aux_dev.dev != dev'
#222: FILE: drivers/gpu/drm/i915/gt/uc/intel_huc.c:159:
+	if (!intf->adev || (&intf->adev->aux_dev.dev != dev))

total: 0 errors, 0 warnings, 1 checks, 334 lines checked
1aa70916376f drm/i915/huc: stall media submission until HuC is loaded
bc2a869b7bf5 drm/i915/huc: better define HuC status getparam possible return values.
9bece8713529 drm/i915/huc: define gsc-compatible HuC fw for DG2
-:28: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#28: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:94:
+#define INTEL_HUC_FIRMWARE_DEFS(fw_def, huc_raw, huc_mmp, huc_gsc) \
+	fw_def(DG2,          0, huc_gsc(dg2)) \
 	fw_def(ALDERLAKE_P,  0, huc_mmp(tgl,  7, 9, 3)) \
 	fw_def(ALDERLAKE_S,  0, huc_mmp(tgl,  7, 9, 3)) \
 	fw_def(DG1,          0, huc_mmp(dg1,  7, 9, 3)) \

-:28: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'fw_def' - possible side-effects?
#28: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:94:
+#define INTEL_HUC_FIRMWARE_DEFS(fw_def, huc_raw, huc_mmp, huc_gsc) \
+	fw_def(DG2,          0, huc_gsc(dg2)) \
 	fw_def(ALDERLAKE_P,  0, huc_mmp(tgl,  7, 9, 3)) \
 	fw_def(ALDERLAKE_S,  0, huc_mmp(tgl,  7, 9, 3)) \
 	fw_def(DG1,          0, huc_mmp(dg1,  7, 9, 3)) \

-:28: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'huc_mmp' - possible side-effects?
#28: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:94:
+#define INTEL_HUC_FIRMWARE_DEFS(fw_def, huc_raw, huc_mmp, huc_gsc) \
+	fw_def(DG2,          0, huc_gsc(dg2)) \
 	fw_def(ALDERLAKE_P,  0, huc_mmp(tgl,  7, 9, 3)) \
 	fw_def(ALDERLAKE_S,  0, huc_mmp(tgl,  7, 9, 3)) \
 	fw_def(DG1,          0, huc_mmp(dg1,  7, 9, 3)) \

-:48: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#48: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:156:
+INTEL_HUC_FIRMWARE_DEFS(INTEL_UC_MODULE_FW, MAKE_HUC_FW_PATH_BLANK, MAKE_HUC_FW_PATH_MMP, MAKE_HUC_FW_PATH_GSC)

total: 1 errors, 1 warnings, 2 checks, 83 lines checked
f30edbe59419 HAX: drm/i915: force INTEL_MEI_GSC and INTEL_MEI_PXP on for CI


