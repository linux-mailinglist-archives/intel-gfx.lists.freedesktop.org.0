Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50340717BA9
	for <lists+intel-gfx@lfdr.de>; Wed, 31 May 2023 11:20:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AD6410E49C;
	Wed, 31 May 2023 09:20:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E396E10E1C7;
 Wed, 31 May 2023 09:20:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D218DA02F0;
 Wed, 31 May 2023 09:20:50 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
Date: Wed, 31 May 2023 09:20:50 -0000
Message-ID: <168552485085.17615.10991174657296283017@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230527005242.1346093-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20230527005242.1346093-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_HuC_loading_and_authentication_for_MTL_=28rev6?=
 =?utf-8?q?=29?=
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

Series: drm/i915: HuC loading and authentication for MTL (rev6)
URL   : https://patchwork.freedesktop.org/series/117080/
State : warning

== Summary ==

Error: dim checkpatch failed
eda136a026c3 drm/i915/uc: perma-pin firmwares
-:124: ERROR:SPACING: space prohibited before that close parenthesis ')'
#124: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc.h:118:
+intel_uc_ops_function(resume_mappings, resume_mappings, void, );

total: 1 errors, 0 warnings, 0 checks, 244 lines checked
72e5caa2255e drm/i915/huc: Parse the GSC-enabled HuC binary
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:32: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#32: 
new file mode 100644

-:280: WARNING:LINE_SPACING: Missing a blank line after declarations
#280: FILE: drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c:140:
+			u32 offset = entry_offset(entry);
+			if (offset < size && css_valid(data + offset, size - offset))

-:441: WARNING:LINE_SPACING: Missing a blank line after declarations
#441: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:679:
+		u32 delta = uc_fw->dma_start_offset;
+		__check_ccs_header(gt, fw->data + delta, fw->size - delta, uc_fw);

total: 0 errors, 3 warnings, 0 checks, 408 lines checked
873345a5c74c drm/i915/huc: Load GSC-enabled HuC via DMA xfer if the fuse says so
-:59: ERROR:SPACING: space required after that ',' (ctx:VxV)
#59: FILE: drivers/gpu/drm/i915/gt/uc/intel_huc.c:321:
+		huc_err(huc,"HW in DMA mode, but we have an incompatible GSC-enabled blob\n");
 		           ^

total: 1 errors, 0 warnings, 0 checks, 129 lines checked
1a335d255478 drm/i915/huc: differentiate the 2 steps of the MTL HuC auth flow
-:86: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#86: FILE: drivers/gpu/drm/i915/gt/uc/intel_huc.c:136:
+	GEM_BUG_ON(intel_huc_is_authenticated(huc, INTEL_HUC_AUTH_BY_GSC));

-:336: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'base' may be better as '(base)' to avoid precedence issues
#336: FILE: drivers/gpu/drm/i915/i915_reg.h:944:
+#define HECI_FWSTS5(base)		_MMIO(base + 0xc68)

total: 0 errors, 1 warnings, 1 checks, 293 lines checked
216e256ba37d drm/i915/mtl/huc: auth HuC via GSC
-:9: WARNING:TYPO_SPELLING: 'fuction' may be misspelled - perhaps 'function'?
#9: 
The intel_huc_auth fuction is also updated to handle both authentication
                   ^^^^^^^

-:89: WARNING:LINE_SPACING: Missing a blank line after declarations
#89: FILE: drivers/gpu/drm/i915/gt/uc/intel_huc.c:367:
+		struct i915_vma *vma = intel_guc_allocate_vma(&gt->uc.guc, SZ_8K);
+		if (IS_ERR(vma)) {

-:161: ERROR:SPACING: space required before the open parenthesis '('
#161: FILE: drivers/gpu/drm/i915/gt/uc/intel_huc.c:486:
+	switch(type) {

total: 1 errors, 2 warnings, 0 checks, 335 lines checked
deffa2572165 drm/i915/mtl/huc: Use the media gt for the HuC getparam
96473876a0c0 drm/i915/huc: define HuC FW version for MTL


