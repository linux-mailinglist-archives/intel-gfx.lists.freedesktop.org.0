Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C498D5B3E94
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Sep 2022 20:09:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC76E10ED73;
	Fri,  9 Sep 2022 18:08:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0090710E112;
 Fri,  9 Sep 2022 18:08:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EC9B8A0078;
 Fri,  9 Sep 2022 18:08:50 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
Date: Fri, 09 Sep 2022 18:08:50 -0000
Message-ID: <166274693094.1366.9666072727889211834@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220909001612.728451-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20220909001612.728451-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_HuC_loading_for_DG2_=28rev4=29?=
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

Series: drm/i915: HuC loading for DG2 (rev4)
URL   : https://patchwork.freedesktop.org/series/107477/
State : warning

== Summary ==

Error: dim checkpatch failed
7ac96508282d mei: add support to GSC extended header
27da0369bd40 mei: bus: enable sending gsc commands
6e0b69737b90 mei: adjust extended header kdocs
cb1c2a818ba4 mei: bus: extend bus API to support command streamer API
b450906cb553 mei: pxp: add command streamer API to the PXP driver
545d9f9ef419 mei: pxp: support matching with a gfx discrete card
32bd338dce06 drm/i915/pxp: load the pxp module when we have a gsc-loaded huc
13d1399d49d4 drm/i915/pxp: implement function for sending tee stream command
7f027ed0af6c drm/i915/pxp: add huc authentication and loading command
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
ceff9456c12b drm/i915/dg2: setup HuC loading via GSC
53fa13a25cee drm/i915/huc: track delayed HuC load with a fence
-:222: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around '&intf->adev->aux_dev.dev != dev'
#222: FILE: drivers/gpu/drm/i915/gt/uc/intel_huc.c:159:
+	if (!intf->adev || (&intf->adev->aux_dev.dev != dev))

total: 0 errors, 0 warnings, 1 checks, 334 lines checked
2287dc811132 drm/i915/huc: stall media submission until HuC is loaded
a33cfe79f135 drm/i915/huc: better define HuC status getparam possible return values.
32fc994a9fae drm/i915/huc: define gsc-compatible HuC fw for DG2
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
1c8ff95335c5 HAX: drm/i915: force INTEL_MEI_GSC and INTEL_MEI_PXP on for CI


