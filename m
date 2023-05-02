Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0875B6F47EA
	for <lists+intel-gfx@lfdr.de>; Tue,  2 May 2023 18:05:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16DB310E2E5;
	Tue,  2 May 2023 16:05:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EED9610E098;
 Tue,  2 May 2023 16:05:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DECF7A66C9;
 Tue,  2 May 2023 16:05:52 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Tue, 02 May 2023 16:05:52 -0000
Message-ID: <168304355288.18873.4032227392378787953@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230428185810.4127234-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20230428185810.4127234-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_HuC_loading_and_authentication_for_MTL_=28rev3?=
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

Series: drm/i915: HuC loading and authentication for MTL (rev3)
URL   : https://patchwork.freedesktop.org/series/117080/
State : warning

== Summary ==

Error: dim checkpatch failed
d1701037c3e3 DO NOT REVIEW: drm/i915: Add support for MTL GSC SW Proxy
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:133: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#133: 
new file mode 100644

-:138: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#138: FILE: drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c:1:
+#include "intel_gsc_proxy.h"

-:140: WARNING:SPDX_LICENSE_TAG: Misplaced SPDX-License-Identifier tag - use line 1 instead
#140: FILE: drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c:3:
+// SPDX-License-Identifier: MIT

-:278: WARNING:MEMORY_BARRIER: memory barrier without comment
#278: FILE: drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c:141:
+	wmb();

-:321: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#321: FILE: drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c:184:
+
+}

total: 0 errors, 4 warnings, 1 checks, 988 lines checked
587ab7744732 drm/i915/uc: perma-pin firmwares
-:114: ERROR:SPACING: space prohibited before that close parenthesis ')'
#114: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc.h:117:
+intel_uc_ops_function(resume_mappings, resume_mappings, void, );

total: 1 errors, 0 warnings, 0 checks, 196 lines checked
11b735119b33 drm/i915/huc: Parse the GSC-enabled HuC binary
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:27: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#27: 
new file mode 100644

-:275: WARNING:LINE_SPACING: Missing a blank line after declarations
#275: FILE: drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c:140:
+			u32 offset = entry_offset(entry);
+			if (offset < size && css_valid(data + offset, size - offset))

-:436: WARNING:LINE_SPACING: Missing a blank line after declarations
#436: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:623:
+		u32 delta = uc_fw->dma_start_offset;
+		__check_ccs_header(gt, fw->data + delta, fw->size - delta, uc_fw);

total: 0 errors, 3 warnings, 0 checks, 408 lines checked
eb2472e51764 drm/i915/huc: Load GSC-enabled HuC via DMA xfer if the fuse says so
-:56: ERROR:SPACING: space required after that ',' (ctx:VxV)
#56: FILE: drivers/gpu/drm/i915/gt/uc/intel_huc.c:321:
+		huc_err(huc," HW in legacy mode, but we have an incompatible meu blob\n");
 		           ^

total: 1 errors, 0 warnings, 0 checks, 131 lines checked
dcffde8d400a drm/i915/huc: differentiate the 2 steps of the MTL HuC auth flow
-:49: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#49: FILE: drivers/gpu/drm/i915/gt/uc/intel_huc.c:128:
+	GEM_BUG_ON(intel_huc_is_authenticated(huc, INTEL_HUC_AUTH_BY_GSC));

-:300: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'base' may be better as '(base)' to avoid precedence issues
#300: FILE: drivers/gpu/drm/i915/i915_reg.h:944:
+#define HECI_FWSTS5(base)		_MMIO(base + 0xc68)

total: 0 errors, 1 warnings, 1 checks, 258 lines checked
6903ecf86175 drm/i915/mtl/huc: auth HuC via GSC
-:9: WARNING:TYPO_SPELLING: 'fuction' may be misspelled - perhaps 'function'?
#9: 
The intel_huc_auth fuction is also updated to handle both authentication
                   ^^^^^^^

-:83: WARNING:LINE_SPACING: Missing a blank line after declarations
#83: FILE: drivers/gpu/drm/i915/gt/uc/intel_huc.c:359:
+		struct i915_vma *vma = intel_guc_allocate_vma(&gt->uc.guc, SZ_8K);
+		if (IS_ERR(vma)) {

-:155: ERROR:SPACING: space required before the open parenthesis '('
#155: FILE: drivers/gpu/drm/i915/gt/uc/intel_huc.c:479:
+	switch(type) {

total: 1 errors, 2 warnings, 0 checks, 328 lines checked
5921ed057ef8 drm/i915/mtl/huc: Use the media gt for the HuC getparam
74b579e7f9b1 drm/i915/huc: define HuC FW version for MTL


