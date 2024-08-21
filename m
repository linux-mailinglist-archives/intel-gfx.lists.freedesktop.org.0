Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9C82959E95
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2024 15:26:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74FB810E511;
	Wed, 21 Aug 2024 13:26:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B076210E511;
 Wed, 21 Aug 2024 13:25:59 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_CCS_static_load_bala?=
 =?utf-8?q?nce_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Aug 2024 13:25:59 -0000
Message-ID: <172424675971.721436.15380911533692593173@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240821124349.295259-1-andi.shyti@linux.intel.com>
In-Reply-To: <20240821124349.295259-1-andi.shyti@linux.intel.com>
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

Series: CCS static load balance (rev3)
URL   : https://patchwork.freedesktop.org/series/136381/
State : warning

== Summary ==

Error: dim checkpatch failed
a83eb75cdbc8 drm/i915/gt: Avoid using masked workaround for CCS_MODE setting
4dd7557e0a08 drm/i915/gt: Move the CCS mode variable to a global position
2aada0c6af3f drm/i915/gt: Allow the creation of multi-mode CCS masks
748db046ba77 drm/i915/gt: Refactor uabi engine class/instance list creation
-:54: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#54: FILE: drivers/gpu/drm/i915/gt/intel_engine_user.c:233:
+		GEM_BUG_ON(uabi_class >= ARRAY_SIZE(class_instance));

-:70: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#70: FILE: drivers/gpu/drm/i915/gt/intel_engine_user.c:247:
+		GEM_BUG_ON(uabi_class >=

total: 0 errors, 2 warnings, 0 checks, 56 lines checked
5e9de7086748 drm/i915/gem: Mark and verify UABI engine validity
e9452b6f6694 drm/i915/gt: Introduce for_each_enabled_engine() and apply it in selftests
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
5a081ad385c7 drm/i915/gt: Manage CCS engine creation within UABI exposure
2ac4c405fcbf drm/i915/gt: Remove cslices mask value from the CCS structure
61f093adc110 drm/i915/gt: Expose the number of total CCS slices
da3b9203bf54 drm/i915/gt: Store engine-related sysfs kobjects
d4b610cabc89 drm/i915/gt: Store active CCS mask
-:86: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#86: FILE: drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c:112:
+	GEM_BUG_ON(ccs_mode);

total: 0 errors, 1 warnings, 0 checks, 100 lines checked
ec4704e8a4e0 drm/i915/gt: Isolate single sysfs engine file creation
8e5d0fdd75de drm/i915/gt: Implement creation and removal routines for CCS engines
5cbbd0825434 drm/i915/gt: Allow the user to change the CCS mode through sysfs


