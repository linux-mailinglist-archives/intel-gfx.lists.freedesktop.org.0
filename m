Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B49C5ED63D
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Sep 2022 09:36:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDB5C10E2F4;
	Wed, 28 Sep 2022 07:36:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DA22A10E2F4;
 Wed, 28 Sep 2022 07:35:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D280AAADD5;
 Wed, 28 Sep 2022 07:35:58 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Wed, 28 Sep 2022 07:35:58 -0000
Message-ID: <166435055883.594.9390398953224489742@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220928004145.745803-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20220928004145.745803-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_HuC_loading_for_DG2_=28rev8=29?=
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

Series: drm/i915: HuC loading for DG2 (rev8)
URL   : https://patchwork.freedesktop.org/series/107477/
State : warning

== Summary ==

Error: dim checkpatch failed
a0add1869506 mei: add support to GSC extended header
395edf1bb64a mei: bus: enable sending gsc commands
8ea5f3e6ff7f mei: adjust extended header kdocs
2a9b27d63a32 mei: bus: extend bus API to support command streamer API
86d07907d2e4 mei: pxp: add command streamer API to the PXP driver
25a7ab2a1e35 mei: pxp: support matching with a gfx discrete card
612ad1fcc701 drm/i915/pxp: load the pxp module when we have a gsc-loaded huc
0220f8a54e52 drm/i915/pxp: implement function for sending tee stream command
c0d8f94234ad drm/i915/pxp: add huc authentication and loading command
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:33: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#33: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 131 lines checked
757199337089 drm/i915/dg2: setup HuC loading via GSC
dd297281739d drm/i915/huc: track delayed HuC load with a fence
337e3c5be3d3 drm/i915/huc: stall media submission until HuC is loaded
cbac9f41c06d drm/i915/huc: better define HuC status getparam possible return values.
b732098efd9a drm/i915/huc: define gsc-compatible HuC fw for DG2
-:29: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#29: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:96:
+#define INTEL_HUC_FIRMWARE_DEFS(fw_def, huc_raw, huc_mmp, huc_gsc) \
+	fw_def(DG2,          0, huc_gsc(dg2)) \
 	fw_def(ALDERLAKE_P,  0, huc_raw(tgl)) \
 	fw_def(ALDERLAKE_P,  0, huc_mmp(tgl,  7, 9, 3)) \
 	fw_def(ALDERLAKE_S,  0, huc_raw(tgl)) \

-:29: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'fw_def' - possible side-effects?
#29: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:96:
+#define INTEL_HUC_FIRMWARE_DEFS(fw_def, huc_raw, huc_mmp, huc_gsc) \
+	fw_def(DG2,          0, huc_gsc(dg2)) \
 	fw_def(ALDERLAKE_P,  0, huc_raw(tgl)) \
 	fw_def(ALDERLAKE_P,  0, huc_mmp(tgl,  7, 9, 3)) \
 	fw_def(ALDERLAKE_S,  0, huc_raw(tgl)) \

-:29: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'huc_raw' - possible side-effects?
#29: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:96:
+#define INTEL_HUC_FIRMWARE_DEFS(fw_def, huc_raw, huc_mmp, huc_gsc) \
+	fw_def(DG2,          0, huc_gsc(dg2)) \
 	fw_def(ALDERLAKE_P,  0, huc_raw(tgl)) \
 	fw_def(ALDERLAKE_P,  0, huc_mmp(tgl,  7, 9, 3)) \
 	fw_def(ALDERLAKE_S,  0, huc_raw(tgl)) \

-:49: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#49: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:160:
+INTEL_HUC_FIRMWARE_DEFS(INTEL_UC_MODULE_FW, MAKE_HUC_FW_PATH_BLANK, MAKE_HUC_FW_PATH_MMP, MAKE_HUC_FW_PATH_GSC)

total: 1 errors, 1 warnings, 2 checks, 83 lines checked
8f4f1eb4a062 HAX: drm/i915: force INTEL_MEI_GSC and INTEL_MEI_PXP on for CI


