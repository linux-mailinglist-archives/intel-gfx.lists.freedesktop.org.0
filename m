Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 411113A0E23
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 09:54:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 722BF6E408;
	Wed,  9 Jun 2021 07:54:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6F8B76E408;
 Wed,  9 Jun 2021 07:54:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 66F8FA47E2;
 Wed,  9 Jun 2021 07:54:54 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Wed, 09 Jun 2021 07:54:54 -0000
Message-ID: <162322529439.27476.804040964434359083@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210609063436.284332-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210609063436.284332-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Prereqs_for_TTM_accelerated_migration_=28rev2=29?=
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

Series: Prereqs for TTM accelerated migration (rev2)
URL   : https://patchwork.freedesktop.org/series/91155/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
be1926db749f drm/i915: Reference objects on the ww object list
ae3f71f8fc2d drm/i915: Break out dma_resv ww locking utilities to separate files
-:141: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#141: 
new file mode 100644

-:166: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#166: FILE: drivers/gpu/drm/i915/i915_gem_ww.c:21:
+	while ((obj = list_first_entry_or_null(&ww->obj_list, struct drm_i915_gem_object, obj_link))) {

total: 0 errors, 2 warnings, 0 checks, 183 lines checked
8bf111e86cf9 drm/i915: Introduce a ww transaction helper
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
50f6709e7fff drm/i915/gt: Add an insert_entry for gen8_ppgtt
e63c320c3025 drm/i915/gt: Add a routine to iterate over the pagetables of a GTT
86e3a5a7d285 drm/i915/gt: Export the pinned context constructor and destructor
5fcf6685a775 drm/i915/gt: Pipelined page migration
-:66: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#66: 
new file mode 100644

-:880: WARNING:LINE_SPACING: Missing a blank line after declarations
#880: FILE: drivers/gpu/drm/i915/gt/selftest_migrate.c:176:
+	struct drm_i915_private *i915 = migrate->context->engine->i915;
+	I915_RND_STATE(prng);

-:909: WARNING:LINE_SPACING: Missing a blank line after declarations
#909: FILE: drivers/gpu/drm/i915/gt/selftest_migrate.c:205:
+	struct threaded_migrate *thread;
+	I915_RND_STATE(prng);

-:934: WARNING:MSLEEP: msleep < 20ms can sleep for up to 20ms; see Documentation/timers/timers-howto.rst
#934: FILE: drivers/gpu/drm/i915/gt/selftest_migrate.c:230:
+	msleep(10); /* start all threads before we kthread_stop() */

total: 0 errors, 4 warnings, 0 checks, 933 lines checked
b4f5bf5e3091 drm/i915/gt: Pipelined clear
-:353: WARNING:LINE_SPACING: Missing a blank line after declarations
#353: FILE: drivers/gpu/drm/i915/gt/selftest_migrate.c:311:
+	struct drm_i915_private *i915 = migrate->context->engine->i915;
+	I915_RND_STATE(prng);

total: 0 errors, 1 warnings, 0 checks, 378 lines checked
a6745617acf0 drm/i915/gt: Setup a default migration context on the GT


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
