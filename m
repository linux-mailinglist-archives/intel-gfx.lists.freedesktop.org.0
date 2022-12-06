Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF7BD643CAE
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Dec 2022 06:31:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1ACB10E0D0;
	Tue,  6 Dec 2022 05:30:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 37D7B10E0D0;
 Tue,  6 Dec 2022 05:30:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 30466AADD8;
 Tue,  6 Dec 2022 05:30:57 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Tue, 06 Dec 2022 05:30:57 -0000
Message-ID: <167030465716.3372.18065124130236110370@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221206011908.2745508-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20221206011908.2745508-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Add_support_for_GSC_FW_loading_=28rev3=29?=
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

Series: drm/i915: Add support for GSC FW loading (rev3)
URL   : https://patchwork.freedesktop.org/series/111170/
State : warning

== Summary ==

Error: dim checkpatch failed
ed465c9fce3c drm/i915/uc: Introduce GSC FW
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:10: WARNING:TYPO_SPELLING: 'overriden' may be misspelled - perhaps 'overridden'?
#10: 
Similarly to the other FWs, the GSC FW path can be overriden via
                                                   ^^^^^^^^^

-:72: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#72: 
new file mode 100644

-:98: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#98: FILE: drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c:22:
+	GEM_BUG_ON(!gt_is_root(gt) && !gt->info.engine_mask);

-:116: ERROR:SPACING: space required before the open brace '{'
#116: FILE: drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c:40:
+	if (!gsc_engine_supported(gsc_uc_to_gt(gsc))){

-:184: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#184: FILE: drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.h:32:
+	GEM_BUG_ON(__intel_uc_fw_status(&gsc->fw) == INTEL_UC_FIRMWARE_SELECTED);

-:289: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#289: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:22:
+	GEM_BUG_ON(type >= INTEL_UC_FW_NUM_TYPES);

-:356: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#356: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h:67:
 };
+#define INTEL_UC_FW_NUM_TYPES 3

-:378: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#378: FILE: drivers/gpu/drm/i915/i915_params.c:196:
+i915_param_named_unsafe(gsc_firmware_path, charp, 0400,
+	"GSC firmware path to use instead of the default one");

total: 1 errors, 5 warnings, 2 checks, 306 lines checked
d8313266cd68 drm/i915/gsc: Skip the version check when fetching the GSC FW
9fab7ec4f2c8 drm/i915/gsc: GSC firmware loading
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:70: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#70: FILE: drivers/gpu/drm/i915/gt/intel_gpu_commands.h:440:
+#define   HECI1_FW_LIMIT_VALID (1<<31)
                                  ^

-:76: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#76: 
new file mode 100644

-:474: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#474: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:937:
+	GEM_BUG_ON(!intel_uc_fw_is_loadable(uc_fw));

total: 0 errors, 2 warnings, 1 checks, 428 lines checked
360e91d9e2f2 drm/i915/gsc: Do a driver-FLR on unload if GSC was loaded
-:135: WARNING:RETURN_VOID: void function return statements are not generally useful
#135: FILE: drivers/gpu/drm/i915/intel_uncore.c:2759:
+	return;
+}

total: 0 errors, 1 warnings, 0 checks, 133 lines checked
04b4f509a3bd drm/i915/gsc: Disable GSC engine and power well if FW is not selected
611fc700c1fd drm/i915/mtl: MTL has one GSC CS on the media GT


