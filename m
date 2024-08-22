Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFCAE95BDD8
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2024 20:00:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2006B10EBBB;
	Thu, 22 Aug 2024 18:00:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B121210EBBB;
 Thu, 22 Aug 2024 18:00:37 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_CCS_static_load_bala?=
 =?utf-8?q?nce_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Aug 2024 18:00:37 -0000
Message-ID: <172434963771.726612.8382943605601687288@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240822172832.494994-1-andi.shyti@linux.intel.com>
In-Reply-To: <20240822172832.494994-1-andi.shyti@linux.intel.com>
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

Series: CCS static load balance (rev4)
URL   : https://patchwork.freedesktop.org/series/136381/
State : warning

== Summary ==

Error: dim checkpatch failed
e9ca266646fc drm/i915/gt: Avoid using masked workaround for CCS_MODE setting
1d5f81814217 drm/i915/gt: Move the CCS mode variable to a global position
4599c695fe33 drm/i915/gt: Allow the creation of multi-mode CCS masks
ef2ad5df8ecb drm/i915/gt: Refactor uabi engine class/instance list creation
-:54: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#54: FILE: drivers/gpu/drm/i915/gt/intel_engine_user.c:233:
+		GEM_BUG_ON(uabi_class >= ARRAY_SIZE(class_instance));

-:70: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#70: FILE: drivers/gpu/drm/i915/gt/intel_engine_user.c:247:
+		GEM_BUG_ON(uabi_class >=

total: 0 errors, 2 warnings, 0 checks, 56 lines checked
ddfd5f86c641 drm/i915/gem: Mark and verify UABI engine validity
619604877a5a drm/i915/gt: Introduce for_each_enabled_engine() and apply it in selftests
-:30: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#30: FILE: drivers/gpu/drm/i915/gt/intel_gt.h:196:
+#define for_each_enabled_engine(engine__, gt__, id__) \
+	for ((id__) = 0; \
+	     (id__) < I915_NUM_ENGINES; \
+	     (id__)++) \
+		for_each_if ( ((engine__) = (gt__)->engine[(id__)]) && \
+			      (!RB_EMPTY_NODE(&(engine__)->uabi_node)) )

-:30: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'engine__' - possible side-effects?
#30: FILE: drivers/gpu/drm/i915/gt/intel_gt.h:196:
+#define for_each_enabled_engine(engine__, gt__, id__) \
+	for ((id__) = 0; \
+	     (id__) < I915_NUM_ENGINES; \
+	     (id__)++) \
+		for_each_if ( ((engine__) = (gt__)->engine[(id__)]) && \
+			      (!RB_EMPTY_NODE(&(engine__)->uabi_node)) )

-:30: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id__' - possible side-effects?
#30: FILE: drivers/gpu/drm/i915/gt/intel_gt.h:196:
+#define for_each_enabled_engine(engine__, gt__, id__) \
+	for ((id__) = 0; \
+	     (id__) < I915_NUM_ENGINES; \
+	     (id__)++) \
+		for_each_if ( ((engine__) = (gt__)->engine[(id__)]) && \
+			      (!RB_EMPTY_NODE(&(engine__)->uabi_node)) )

-:34: WARNING:SPACING: space prohibited between function name and open parenthesis '('
#34: FILE: drivers/gpu/drm/i915/gt/intel_gt.h:200:
+		for_each_if ( ((engine__) = (gt__)->engine[(id__)]) && \

-:34: ERROR:SPACING: space prohibited after that open parenthesis '('
#34: FILE: drivers/gpu/drm/i915/gt/intel_gt.h:200:
+		for_each_if ( ((engine__) = (gt__)->engine[(id__)]) && \

-:35: ERROR:SPACING: space prohibited before that close parenthesis ')'
#35: FILE: drivers/gpu/drm/i915/gt/intel_gt.h:201:
+			      (!RB_EMPTY_NODE(&(engine__)->uabi_node)) )

total: 3 errors, 1 warnings, 2 checks, 738 lines checked
e56a53c0af00 drm/i915/gt: Manage CCS engine creation within UABI exposure
ee100ab0e745 drm/i915/gt: Remove cslices mask value from the CCS structure
4555592bede5 drm/i915/gt: Expose the number of total CCS slices
862022e6d3a5 drm/i915/gt: Store engine-related sysfs kobjects
2019456f9e34 drm/i915/gt: Store active CCS mask
-:70: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#70: FILE: drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c:120:
+	GEM_BUG_ON(ccs_mode);

total: 0 errors, 1 warnings, 0 checks, 83 lines checked
850680221810 drm/i915: Protect access to the UABI engines list with a mutex
e8ceaf9c9895 drm/i915/gt: Isolate single sysfs engine file creation
2cda8bb488e0 drm/i915/gt: Implement creation and removal routines for CCS engines
-:125: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#125: FILE: drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c:212:
+		GEM_BUG_ON(intel_engine_lookup_user(i915, e->uabi_class,

total: 0 errors, 1 warnings, 0 checks, 145 lines checked
52a06fb632fb drm/i915/gt: Allow the user to change the CCS mode through sysfs


