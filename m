Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB29B39F5F3
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jun 2021 14:02:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA7806E12C;
	Tue,  8 Jun 2021 12:02:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A41E16E12C;
 Tue,  8 Jun 2021 12:02:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9BE78A47E2;
 Tue,  8 Jun 2021 12:02:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Tue, 08 Jun 2021 12:02:21 -0000
Message-ID: <162315374160.421.14729507096318694308@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210608092846.64198-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210608092846.64198-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Prereqs_for_TTM_accelerated_migration?=
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

Series: Prereqs for TTM accelerated migration
URL   : https://patchwork.freedesktop.org/series/91155/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
2242ed7d4819 drm/i915: Reference objects on the ww object list
80e16d0ed0bd drm/i915: Break out dma_resv ww locking utilities to separate files
-:140: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#140: 
new file mode 100644

-:165: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#165: FILE: drivers/gpu/drm/i915/i915_gem_ww.c:21:
+	while ((obj = list_first_entry_or_null(&ww->obj_list, struct drm_i915_gem_object, obj_link))) {

total: 0 errors, 2 warnings, 0 checks, 183 lines checked
593821a10769 drm/i915: Introduce a ww transaction helper
-:55: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_ww' - possible side-effects?
#55: FILE: drivers/gpu/drm/i915/i915_gem_ww.h:46:
+#define for_i915_gem_ww(_ww, _err, _intr)			\
+	for (__i915_gem_ww_init(_ww, _intr); (_ww)->loop;	\
+	     _err = __i915_gem_ww_fini(_ww, _err))

-:55: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_err' - possible side-effects?
#55: FILE: drivers/gpu/drm/i915/i915_gem_ww.h:46:
+#define for_i915_gem_ww(_ww, _err, _intr)			\
+	for (__i915_gem_ww_init(_ww, _intr); (_ww)->loop;	\
+	     _err = __i915_gem_ww_fini(_ww, _err))

total: 0 errors, 0 warnings, 2 checks, 41 lines checked
c7566defcd7c drm/i915/gt: Add an insert_entry for gen8_ppgtt
26a16841f182 drm/i915/gt: Add a routine to iterate over the pagetables of a GTT
8e6cf3a8e8b3 drm/i915/gt: Export the pinned context constructor
8bd34da39144 drm/i915/gt: Pipelined page migration
-:66: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#66: 
new file mode 100644

-:879: WARNING:LINE_SPACING: Missing a blank line after declarations
#879: FILE: drivers/gpu/drm/i915/gt/selftest_migrate.c:176:
+	struct drm_i915_private *i915 = migrate->context->engine->i915;
+	I915_RND_STATE(prng);

-:908: WARNING:LINE_SPACING: Missing a blank line after declarations
#908: FILE: drivers/gpu/drm/i915/gt/selftest_migrate.c:205:
+	struct threaded_migrate *thread;
+	I915_RND_STATE(prng);

-:933: WARNING:MSLEEP: msleep < 20ms can sleep for up to 20ms; see Documentation/timers/timers-howto.rst
#933: FILE: drivers/gpu/drm/i915/gt/selftest_migrate.c:230:
+	msleep(10); /* start all threads before we kthread_stop() */

total: 0 errors, 4 warnings, 0 checks, 932 lines checked
09387b6a62ee drm/i915/gt: Pipelined clear
-:353: WARNING:LINE_SPACING: Missing a blank line after declarations
#353: FILE: drivers/gpu/drm/i915/gt/selftest_migrate.c:311:
+	struct drm_i915_private *i915 = migrate->context->engine->i915;
+	I915_RND_STATE(prng);

total: 0 errors, 1 warnings, 0 checks, 378 lines checked
15bf0f5044d2 drm/i915/gt: Setup a default migration context on the GT


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
