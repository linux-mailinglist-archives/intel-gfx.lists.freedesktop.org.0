Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D8B83A8055
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jun 2021 15:36:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B65AD6E30D;
	Tue, 15 Jun 2021 13:36:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 595C66E30D;
 Tue, 15 Jun 2021 13:36:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 52357AA0ED;
 Tue, 15 Jun 2021 13:36:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ramalingam C" <ramalingam.c@intel.com>
Date: Tue, 15 Jun 2021 13:36:39 -0000
Message-ID: <162376419933.8819.4284370819516280088@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210615131451.61023-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210615131451.61023-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_i915_TTM_sync_accelerated_migration_and_clear_=28rev3=29?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: i915 TTM sync accelerated migration and clear (rev3)
URL   : https://patchwork.freedesktop.org/series/91463/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
84d52ccba4bc drm/i915: Reference objects on the ww object list
dad033f5d41d drm/i915: Break out dma_resv ww locking utilities to separate files
-:141: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#141: 
new file mode 100644

-:166: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#166: FILE: drivers/gpu/drm/i915/i915_gem_ww.c:21:
+	while ((obj = list_first_entry_or_null(&ww->obj_list, struct drm_i915_gem_object, obj_link))) {

total: 0 errors, 2 warnings, 0 checks, 183 lines checked
170905ae335a drm/i915: Introduce a ww transaction helper
-:56: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_ww' - possible side-effects?
#56: FILE: drivers/gpu/drm/i915/i915_gem_ww.h:46:
+#define for_i915_gem_ww(_ww, _err, _intr)			\
+	for (__i915_gem_ww_init(_ww, _intr); (_ww)->loop;	\
+	     _err = __i915_gem_ww_fini(_ww, _err))

-:56: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_err' - possible side-effects?
#56: FILE: drivers/gpu/drm/i915/i915_gem_ww.h:46:
+#define for_i915_gem_ww(_ww, _err, _intr)			\
+	for (__i915_gem_ww_init(_ww, _intr); (_ww)->loop;	\
+	     _err = __i915_gem_ww_fini(_ww, _err))

total: 0 errors, 0 warnings, 2 checks, 41 lines checked
1d7d203cc9de drm/i915/gt: Add an insert_entry for gen8_ppgtt
b8de4e1527e9 drm/i915/gt: Add a routine to iterate over the pagetables of a GTT
9c144ca818bb drm/i915/gt: Export the pinned context constructor and destructor
ee3ad654412a drm/i915/gt: Pipelined page migration
-:66: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#66: 
new file mode 100644

-:878: WARNING:LINE_SPACING: Missing a blank line after declarations
#878: FILE: drivers/gpu/drm/i915/gt/selftest_migrate.c:176:
+	struct drm_i915_private *i915 = migrate->context->engine->i915;
+	I915_RND_STATE(prng);

-:907: WARNING:LINE_SPACING: Missing a blank line after declarations
#907: FILE: drivers/gpu/drm/i915/gt/selftest_migrate.c:205:
+	struct threaded_migrate *thread;
+	I915_RND_STATE(prng);

-:932: WARNING:MSLEEP: msleep < 20ms can sleep for up to 20ms; see Documentation/timers/timers-howto.rst
#932: FILE: drivers/gpu/drm/i915/gt/selftest_migrate.c:230:
+	msleep(10); /* start all threads before we kthread_stop() */

total: 0 errors, 4 warnings, 0 checks, 931 lines checked
35222babd9d2 drm/i915/gt: Pipelined clear
-:355: WARNING:LINE_SPACING: Missing a blank line after declarations
#355: FILE: drivers/gpu/drm/i915/gt/selftest_migrate.c:311:
+	struct drm_i915_private *i915 = migrate->context->engine->i915;
+	I915_RND_STATE(prng);

total: 0 errors, 1 warnings, 0 checks, 380 lines checked
1196a59da677 drm/i915/gt: Setup a default migration context on the GT
54c4a427f357 drm/i915/ttm: accelerated move implementation
656ff10118e4 drm/i915/gem: Zap the client blt code
-:35: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#35: 
deleted file mode 100644

total: 0 errors, 1 warnings, 0 checks, 146 lines checked
51bd492a35f8 drm/i915/gem: Zap the i915_gem_object_blt code
-:29: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#29: 
deleted file mode 100644

total: 0 errors, 1 warnings, 0 checks, 65 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
