Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BDD5824472
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 16:04:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 090A710E49B;
	Thu,  4 Jan 2024 15:04:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C92C10E49B;
 Thu,  4 Jan 2024 15:04:08 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Disable_dynamic_load?=
 =?utf-8?q?_balancing_and_support_fixed_balancing?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Date: Thu, 04 Jan 2024 15:04:08 -0000
Message-ID: <170438064811.20586.13468818049180774425@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240104143558.193694-1-andi.shyti@linux.intel.com>
In-Reply-To: <20240104143558.193694-1-andi.shyti@linux.intel.com>
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

Series: Disable dynamic load balancing and support fixed balancing
URL   : https://patchwork.freedesktop.org/series/128202/
State : warning

== Summary ==

Error: dim checkpatch failed
478beb8ee33d drm/i915/gt: Support fixed CCS mode
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:74: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#74: 
new file mode 100644

-:79: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#79: FILE: drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c:1:
+//SPDX-License-Identifier: MIT

-:200: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'cslice' may be better as '(cslice)' to avoid precedence issues
#200: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:1617:
+#define   XEHP_CCS_MODE_CSLICE(cslice, ccs) \
+	(ccs << (cslice * XEHP_CCS_MODE_CSLICE_WIDTH))

-:200: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'ccs' may be better as '(ccs)' to avoid precedence issues
#200: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:1617:
+#define   XEHP_CCS_MODE_CSLICE(cslice, ccs) \
+	(ccs << (cslice * XEHP_CCS_MODE_CSLICE_WIDTH))

-:229: CHECK:UNCOMMENTED_DEFINITION: struct mutex definition without comment
#229: FILE: drivers/gpu/drm/i915/gt/intel_gt_types.h:225:
+		struct mutex mutex;

total: 0 errors, 2 warnings, 3 checks, 186 lines checked
592cf5d3fe96 drm/i915/gt: Allow user to set up the CSS mode
-:57: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around '!val'
#57: FILE: drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c:105:
+	if ((!val) || (val > num_slices) || (val % num_slices))

-:57: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'val > num_slices'
#57: FILE: drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c:105:
+	if ((!val) || (val > num_slices) || (val % num_slices))

total: 0 errors, 0 warnings, 2 checks, 97 lines checked
0a1daf5f7606 drm/i915/gt: Disable HW load balancing for CCS


