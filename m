Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E787C5B7CE0
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Sep 2022 00:12:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62E4C10E57E;
	Tue, 13 Sep 2022 22:12:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 64E9110E563;
 Tue, 13 Sep 2022 22:11:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5C3CCA7DFC;
 Tue, 13 Sep 2022 22:11:58 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Tue, 13 Sep 2022 22:11:58 -0000
Message-ID: <166310711834.21294.7792863682480491057@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220913005739.798337-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20220913005739.798337-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_HuC_loading_for_DG2_=28rev6=29?=
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

Series: drm/i915: HuC loading for DG2 (rev6)
URL   : https://patchwork.freedesktop.org/series/107477/
State : warning

== Summary ==

Error: dim checkpatch failed
a69575154564 mei: add support to GSC extended header
54e8d8663f2b mei: bus: enable sending gsc commands
ffec9e3eb2da mei: adjust extended header kdocs
124db9dd2c5c mei: bus: extend bus API to support command streamer API
37a71e46dc4b mei: pxp: add command streamer API to the PXP driver
28313d1b208d mei: pxp: support matching with a gfx discrete card
46c19d4f1131 drm/i915/pxp: load the pxp module when we have a gsc-loaded huc
ab507b42dc8b drm/i915/pxp: implement function for sending tee stream command
3a11dec73dbc drm/i915/pxp: add huc authentication and loading command
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
479f1a4512eb drm/i915/dg2: setup HuC loading via GSC
8c84c1d7c188 drm/i915/huc: track delayed HuC load with a fence
8d3b43fb7507 drm/i915/huc: stall media submission until HuC is loaded
e39565372368 drm/i915/huc: better define HuC status getparam possible return values.
ba3ecad8face drm/i915/huc: define gsc-compatible HuC fw for DG2
-:29: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#29: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:94:
+#define INTEL_HUC_FIRMWARE_DEFS(fw_def, huc_raw, huc_mmp, huc_gsc) \
+	fw_def(DG2,          0, huc_gsc(dg2)) \
 	fw_def(ALDERLAKE_P,  0, huc_mmp(tgl,  7, 9, 3)) \
 	fw_def(ALDERLAKE_S,  0, huc_mmp(tgl,  7, 9, 3)) \
 	fw_def(DG1,          0, huc_mmp(dg1,  7, 9, 3)) \

-:29: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'fw_def' - possible side-effects?
#29: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:94:
+#define INTEL_HUC_FIRMWARE_DEFS(fw_def, huc_raw, huc_mmp, huc_gsc) \
+	fw_def(DG2,          0, huc_gsc(dg2)) \
 	fw_def(ALDERLAKE_P,  0, huc_mmp(tgl,  7, 9, 3)) \
 	fw_def(ALDERLAKE_S,  0, huc_mmp(tgl,  7, 9, 3)) \
 	fw_def(DG1,          0, huc_mmp(dg1,  7, 9, 3)) \

-:29: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'huc_mmp' - possible side-effects?
#29: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:94:
+#define INTEL_HUC_FIRMWARE_DEFS(fw_def, huc_raw, huc_mmp, huc_gsc) \
+	fw_def(DG2,          0, huc_gsc(dg2)) \
 	fw_def(ALDERLAKE_P,  0, huc_mmp(tgl,  7, 9, 3)) \
 	fw_def(ALDERLAKE_S,  0, huc_mmp(tgl,  7, 9, 3)) \
 	fw_def(DG1,          0, huc_mmp(dg1,  7, 9, 3)) \

-:49: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#49: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:156:
+INTEL_HUC_FIRMWARE_DEFS(INTEL_UC_MODULE_FW, MAKE_HUC_FW_PATH_BLANK, MAKE_HUC_FW_PATH_MMP, MAKE_HUC_FW_PATH_GSC)

total: 1 errors, 1 warnings, 2 checks, 83 lines checked
8a56771659a1 HAX: drm/i915: force INTEL_MEI_GSC and INTEL_MEI_PXP on for CI


