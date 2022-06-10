Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E062C5458F9
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jun 2022 02:07:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9985C112884;
	Fri, 10 Jun 2022 00:07:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8CBE31127D8;
 Fri, 10 Jun 2022 00:07:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 807D3A00CC;
 Fri, 10 Jun 2022 00:07:50 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
Date: Fri, 10 Jun 2022 00:07:50 -0000
Message-ID: <165481967049.16746.2571919555836413777@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220609231955.3632596-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20220609231955.3632596-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_HuC_loading_for_DG2?=
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

Series: HuC loading for DG2
URL   : https://patchwork.freedesktop.org/series/104949/
State : warning

== Summary ==

Error: dim checkpatch failed
458d50370348 HAX: mei: GSC support for XeHP SDV and DG2 platform
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:125: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#125: FILE: drivers/gpu/drm/i915/gt/intel_gsc.c:152:
+static void gsc_destroy_one(struct drm_i915_private *i915,
+				  struct intel_gsc *gsc, unsigned int intf_id)

-:380: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'cldev->bus->pxp_mode != MEI_DEV_PXP_INIT'
#380: FILE: drivers/misc/mei/bus-fixup.c:257:
+	if (!cldev->bus->fw_f_fw_ver_supported &&
+	    (cldev->bus->pxp_mode != MEI_DEV_PXP_INIT))

-:527: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#527: FILE: drivers/misc/mei/debugfs.c:91:
+#define MEI_PXP_MODE(state) case MEI_DEV_PXP_##state: return #state

-:1304: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#1304: 
new file mode 100644

-:1362: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#1362: FILE: drivers/misc/mei/mkhi.h:54:
+	uint32_t flags;

total: 1 errors, 1 warnings, 3 checks, 1218 lines checked
97a3a12e9011 mei: add support to GSC extended header
51a1b4ec5575 mei: bus: enable sending gsc commands
32ce12762a76 mei: bus: extend bus API to support command streamer API
c73889482d06 mei: pxp: add command streamer API to the PXP driver
a18754cd5f35 mei: pxp: support matching with a gfx discrete card
0611b7ed823c drm/i915/pxp: load the pxp module when we have a gsc-loaded huc
bb78ff662052 drm/i915/pxp: implement function for sending tee stream command
b66a2bccc2a5 drm/i915/pxp: add huc authentication and loading command
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:28: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#28: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 126 lines checked
4c15ed7e0c39 drm/i915/dg2: setup HuC loading via GSC
-:6: WARNING:TYPO_SPELLING: 'teh' may be misspelled - perhaps 'the'?
#6: 
The GSC will perform both the load and teh authentication, so we just
                                       ^^^

total: 0 errors, 1 warnings, 0 checks, 170 lines checked
bbc6e2141842 drm/i915/huc: track delayed HuC load with a fence
-:218: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around '&intf->adev->aux_dev.dev != dev'
#218: FILE: drivers/gpu/drm/i915/gt/uc/intel_huc.c:158:
+	if (!intf->adev || (&intf->adev->aux_dev.dev != dev))

total: 0 errors, 0 warnings, 1 checks, 326 lines checked
ab35855f5dc7 drm/i915/huc: stall media submission until HuC is loaded
60df534b5a07 drm/i915/huc: report HuC as loaded even if load still in progress
ec84ed9a2177 drm/i915/huc: define gsc-compatible HuC fw for DG2
-:42: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#42: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:73:
+#define INTEL_HUC_FIRMWARE_DEFS(fw_def, huc_dma_def, huc_gsc_def) \
+	fw_def(DG2,          0, huc_gsc_def(dg2,  7, 10, 0)) \
+	fw_def(ALDERLAKE_P,  0, huc_dma_def(tgl,  7, 9, 3)) \
+	fw_def(ALDERLAKE_S,  0, huc_dma_def(tgl,  7, 9, 3)) \
+	fw_def(DG1,          0, huc_dma_def(dg1,  7, 9, 3)) \
+	fw_def(ROCKETLAKE,   0, huc_dma_def(tgl,  7, 9, 3)) \
+	fw_def(TIGERLAKE,    0, huc_dma_def(tgl,  7, 9, 3)) \
+	fw_def(JASPERLAKE,   0, huc_dma_def(ehl,  9, 0, 0)) \
+	fw_def(ELKHARTLAKE,  0, huc_dma_def(ehl,  9, 0, 0)) \
+	fw_def(ICELAKE,      0, huc_dma_def(icl,  9, 0, 0)) \
+	fw_def(COMETLAKE,    5, huc_dma_def(cml,  4, 0, 0)) \
+	fw_def(COMETLAKE,    0, huc_dma_def(kbl,  4, 0, 0)) \
+	fw_def(COFFEELAKE,   0, huc_dma_def(kbl,  4, 0, 0)) \
+	fw_def(GEMINILAKE,   0, huc_dma_def(glk,  4, 0, 0)) \
+	fw_def(KABYLAKE,     0, huc_dma_def(kbl,  4, 0, 0)) \
+	fw_def(BROXTON,      0, huc_dma_def(bxt,  2, 0, 0)) \
+	fw_def(SKYLAKE,      0, huc_dma_def(skl,  2, 0, 0))

-:42: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'fw_def' - possible side-effects?
#42: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:73:
+#define INTEL_HUC_FIRMWARE_DEFS(fw_def, huc_dma_def, huc_gsc_def) \
+	fw_def(DG2,          0, huc_gsc_def(dg2,  7, 10, 0)) \
+	fw_def(ALDERLAKE_P,  0, huc_dma_def(tgl,  7, 9, 3)) \
+	fw_def(ALDERLAKE_S,  0, huc_dma_def(tgl,  7, 9, 3)) \
+	fw_def(DG1,          0, huc_dma_def(dg1,  7, 9, 3)) \
+	fw_def(ROCKETLAKE,   0, huc_dma_def(tgl,  7, 9, 3)) \
+	fw_def(TIGERLAKE,    0, huc_dma_def(tgl,  7, 9, 3)) \
+	fw_def(JASPERLAKE,   0, huc_dma_def(ehl,  9, 0, 0)) \
+	fw_def(ELKHARTLAKE,  0, huc_dma_def(ehl,  9, 0, 0)) \
+	fw_def(ICELAKE,      0, huc_dma_def(icl,  9, 0, 0)) \
+	fw_def(COMETLAKE,    5, huc_dma_def(cml,  4, 0, 0)) \
+	fw_def(COMETLAKE,    0, huc_dma_def(kbl,  4, 0, 0)) \
+	fw_def(COFFEELAKE,   0, huc_dma_def(kbl,  4, 0, 0)) \
+	fw_def(GEMINILAKE,   0, huc_dma_def(glk,  4, 0, 0)) \
+	fw_def(KABYLAKE,     0, huc_dma_def(kbl,  4, 0, 0)) \
+	fw_def(BROXTON,      0, huc_dma_def(bxt,  2, 0, 0)) \
+	fw_def(SKYLAKE,      0, huc_dma_def(skl,  2, 0, 0))

-:42: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'huc_dma_def' - possible side-effects?
#42: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:73:
+#define INTEL_HUC_FIRMWARE_DEFS(fw_def, huc_dma_def, huc_gsc_def) \
+	fw_def(DG2,          0, huc_gsc_def(dg2,  7, 10, 0)) \
+	fw_def(ALDERLAKE_P,  0, huc_dma_def(tgl,  7, 9, 3)) \
+	fw_def(ALDERLAKE_S,  0, huc_dma_def(tgl,  7, 9, 3)) \
+	fw_def(DG1,          0, huc_dma_def(dg1,  7, 9, 3)) \
+	fw_def(ROCKETLAKE,   0, huc_dma_def(tgl,  7, 9, 3)) \
+	fw_def(TIGERLAKE,    0, huc_dma_def(tgl,  7, 9, 3)) \
+	fw_def(JASPERLAKE,   0, huc_dma_def(ehl,  9, 0, 0)) \
+	fw_def(ELKHARTLAKE,  0, huc_dma_def(ehl,  9, 0, 0)) \
+	fw_def(ICELAKE,      0, huc_dma_def(icl,  9, 0, 0)) \
+	fw_def(COMETLAKE,    5, huc_dma_def(cml,  4, 0, 0)) \
+	fw_def(COMETLAKE,    0, huc_dma_def(kbl,  4, 0, 0)) \
+	fw_def(COFFEELAKE,   0, huc_dma_def(kbl,  4, 0, 0)) \
+	fw_def(GEMINILAKE,   0, huc_dma_def(glk,  4, 0, 0)) \
+	fw_def(KABYLAKE,     0, huc_dma_def(kbl,  4, 0, 0)) \
+	fw_def(BROXTON,      0, huc_dma_def(bxt,  2, 0, 0)) \
+	fw_def(SKYLAKE,      0, huc_dma_def(skl,  2, 0, 0))

-:110: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'major_' - possible side-effects?
#110: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:133:
+#define HUC_GSC_FW_BLOB(prefix_, major_, minor_, bld_num_) \
+	UC_FW_BLOB(major_, minor_, true, \
+		   MAKE_HUC_GSC_FW_PATH(prefix_, major_, minor_, bld_num_))

-:110: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'minor_' - possible side-effects?
#110: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:133:
+#define HUC_GSC_FW_BLOB(prefix_, major_, minor_, bld_num_) \
+	UC_FW_BLOB(major_, minor_, true, \
+		   MAKE_HUC_GSC_FW_PATH(prefix_, major_, minor_, bld_num_))

total: 1 errors, 0 warnings, 4 checks, 111 lines checked
8b4567b8b133 HAX: drm/i915: force INTEL_MEI_GSC and INTEL_MEI_PXP on for CI


