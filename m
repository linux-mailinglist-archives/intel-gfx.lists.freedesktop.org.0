Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3B905992A1
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Aug 2022 03:39:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 802D810E9B3;
	Fri, 19 Aug 2022 01:39:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9CD5F10E951;
 Fri, 19 Aug 2022 01:39:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9401AA66C9;
 Fri, 19 Aug 2022 01:39:35 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Fri, 19 Aug 2022 01:39:35 -0000
Message-ID: <166087317557.23792.10732855676875536809@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220818230243.3921066-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20220818230243.3921066-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_HuC_loading_for_DG2?=
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

Series: drm/i915: HuC loading for DG2
URL   : https://patchwork.freedesktop.org/series/107477/
State : warning

== Summary ==

Error: dim checkpatch failed
d4bf856f76e1 HAX: mei: GSC support for XeHP SDV and DG2 platform
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:518: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#518: FILE: drivers/misc/mei/debugfs.c:91:
+#define MEI_PXP_MODE(state) case MEI_DEV_PXP_##state: return #state

-:1286: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#1286: 
new file mode 100644

total: 1 errors, 1 warnings, 0 checks, 1216 lines checked
1b8c40499126 mei: add support to GSC extended header
53a1535eb08b mei: bus: enable sending gsc commands
ec703ed4f808 mei: bus: extend bus API to support command streamer API
64fabc318d28 mei: pxp: add command streamer API to the PXP driver
-:11: WARNING:REPEATED_WORD: Possible repeated word: 'just'
#11: 
just just a thin wrapper around mei_cldev_send_gsc_command()

total: 0 errors, 1 warnings, 0 checks, 55 lines checked
3de0432b4868 mei: pxp: support matching with a gfx discrete card
990c957f148e drm/i915/pxp: load the pxp module when we have a gsc-loaded huc
be4429d05961 drm/i915/pxp: implement function for sending tee stream command
3478fb9f6779 drm/i915/pxp: add huc authentication and loading command
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:29: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#29: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 126 lines checked
09eea475f7f4 drm/i915/dg2: setup HuC loading via GSC
-:6: WARNING:TYPO_SPELLING: 'teh' may be misspelled - perhaps 'the'?
#6: 
The GSC will perform both the load and teh authentication, so we just
                                       ^^^

-:42: ERROR:SPACING: space required after that ',' (ctx:VxV)
#42: FILE: drivers/gpu/drm/i915/gt/uc/intel_huc.c:140:
+		drm_err(&gt->i915->drm,"HuC: Firmware not verified %d\n", ret);
 		                      ^

total: 1 errors, 1 warnings, 0 checks, 173 lines checked
abc4ecf8686e drm/i915/huc: track delayed HuC load with a fence
-:219: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around '&intf->adev->aux_dev.dev != dev'
#219: FILE: drivers/gpu/drm/i915/gt/uc/intel_huc.c:158:
+	if (!intf->adev || (&intf->adev->aux_dev.dev != dev))

total: 0 errors, 0 warnings, 1 checks, 326 lines checked
7ddcf531a6fa drm/i915/huc: stall media submission until HuC is loaded
c7e37e78f19e drm/i915/huc: better define HuC status getparam possible return values.
a2121cb1d03b drm/i915/huc: define gsc-compatible HuC fw for DG2
-:43: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#43: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:77:
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

-:43: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'fw_def' - possible side-effects?
#43: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:77:
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

-:43: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'huc_dma_def' - possible side-effects?
#43: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:77:
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

-:112: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'major_' - possible side-effects?
#112: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:138:
+#define HUC_GSC_FW_BLOB(prefix_, major_, minor_, bld_num_) \
+	UC_FW_BLOB(major_, minor_, true, \
+		   MAKE_HUC_GSC_FW_PATH(prefix_, major_, minor_, bld_num_))

-:112: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'minor_' - possible side-effects?
#112: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:138:
+#define HUC_GSC_FW_BLOB(prefix_, major_, minor_, bld_num_) \
+	UC_FW_BLOB(major_, minor_, true, \
+		   MAKE_HUC_GSC_FW_PATH(prefix_, major_, minor_, bld_num_))

total: 1 errors, 0 warnings, 4 checks, 111 lines checked
72eac345a5d5 HAX: drm/i915: force INTEL_MEI_GSC and INTEL_MEI_PXP on for CI


