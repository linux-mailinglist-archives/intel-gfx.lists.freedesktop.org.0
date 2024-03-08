Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23D8E876C49
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Mar 2024 22:14:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74BE610E62B;
	Fri,  8 Mar 2024 21:14:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A94A110E62B;
 Fri,  8 Mar 2024 21:14:06 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Disable_automatic_lo?=
 =?utf-8?q?ad_CCS_load_balancing_=28rev7=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 08 Mar 2024 21:14:06 -0000
Message-ID: <170993244668.629227.9951723732379931853@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240308202223.406384-1-andi.shyti@linux.intel.com>
In-Reply-To: <20240308202223.406384-1-andi.shyti@linux.intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Disable automatic load CCS load balancing (rev7)
URL   : https://patchwork.freedesktop.org/series/129951/
State : warning

== Summary ==

Error: dim checkpatch failed
7e72bbeacb12 drm/i915/gt: Disable HW load balancing for CCS
181bfab6a479 drm/i915/gt: Refactor uabi engine class/instance list creation
-:55: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#55: FILE: drivers/gpu/drm/i915/gt/intel_engine_user.c:233:
+		GEM_BUG_ON(uabi_class >= ARRAY_SIZE(class_instance));

-:71: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#71: FILE: drivers/gpu/drm/i915/gt/intel_engine_user.c:247:
+		GEM_BUG_ON(uabi_class >=

total: 0 errors, 2 warnings, 0 checks, 56 lines checked
df660f09b780 drm/i915/gt: Disable tests for CCS engines beyond the first
-:26: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#26: FILE: drivers/gpu/drm/i915/gt/intel_gt.h:195:
+#define for_each_available_engine(engine__, gt__, id__) \
+	for ((id__) = 0; \
+	     (id__) < I915_NUM_ENGINES; \
+	     (id__)++) \
+		for_each_if \
+			(((engine__) = (gt__)->engine[(id__)]) && \
+			 !(engine__->class == COMPUTE_CLASS && \
+			   engine__->instance))

-:26: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'engine__' - possible side-effects?
#26: FILE: drivers/gpu/drm/i915/gt/intel_gt.h:195:
+#define for_each_available_engine(engine__, gt__, id__) \
+	for ((id__) = 0; \
+	     (id__) < I915_NUM_ENGINES; \
+	     (id__)++) \
+		for_each_if \
+			(((engine__) = (gt__)->engine[(id__)]) && \
+			 !(engine__->class == COMPUTE_CLASS && \
+			   engine__->instance))

-:26: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id__' - possible side-effects?
#26: FILE: drivers/gpu/drm/i915/gt/intel_gt.h:195:
+#define for_each_available_engine(engine__, gt__, id__) \
+	for ((id__) = 0; \
+	     (id__) < I915_NUM_ENGINES; \
+	     (id__)++) \
+		for_each_if \
+			(((engine__) = (gt__)->engine[(id__)]) && \
+			 !(engine__->class == COMPUTE_CLASS && \
+			   engine__->instance))

total: 1 errors, 0 warnings, 2 checks, 107 lines checked
bd63173366d9 drm/i915/gt: Enable only one CCS for compute workload
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:16: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#16: 
Requires: 075e003a9e22 ("drm/i915/gt: Refactor uabi engine class/instance list creation")

-:66: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#66: 
new file mode 100644

-:140: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'cslice' may be better as '(cslice)' to avoid precedence issues
#140: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:1486:
+#define   XEHP_CCS_MODE_CSLICE(cslice, ccs)	(ccs << (cslice * XEHP_CCS_MODE_CSLICE_WIDTH))

-:140: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'ccs' may be better as '(ccs)' to avoid precedence issues
#140: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:1486:
+#define   XEHP_CCS_MODE_CSLICE(cslice, ccs)	(ccs << (cslice * XEHP_CCS_MODE_CSLICE_WIDTH))

total: 0 errors, 2 warnings, 2 checks, 112 lines checked


