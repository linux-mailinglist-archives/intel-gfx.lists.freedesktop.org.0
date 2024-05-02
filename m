Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 176BC8BA3B9
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 01:08:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72CA710F8AB;
	Thu,  2 May 2024 23:08:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8060210F8A9;
 Thu,  2 May 2024 23:08:16 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_fs=3A_Do_not_allow_g?=
 =?utf-8?q?et=5Ffile=28=29_to_resurrect_0_f=5Fcount?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kees Cook" <keescook@chromium.org>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 02 May 2024 23:08:16 -0000
Message-ID: <171469129652.1848696.13371127924656812711@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240502222252.work.690-kees@kernel.org>
In-Reply-To: <20240502222252.work.690-kees@kernel.org>
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

Series: fs: Do not allow get_file() to resurrect 0 f_count
URL   : https://patchwork.freedesktop.org/series/133157/
State : warning

== Summary ==

Error: dim checkpatch failed
05a74d02542d fs: Do not allow get_file() to resurrect 0 f_count
cb506a379959 drm/vmwgfx: Do not directly manipulate file->f_count
-:20: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "get_file"
#20: FILE: drivers/gpu/drm/vmwgfx/ttm_object.c:474:
+	return get_file(dmabuf->file) != NULL;

total: 0 errors, 0 warnings, 1 checks, 8 lines checked
82672373ae1d drm/i915: Do not directly manipulate file->f_count
1f5237fd1d94 refcount: Introduce refcount_long_t and APIs
-:58: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#58: 
new file mode 100644

-:398: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#398: FILE: include/linux/refcount-impl.h:336:
+extern __must_check bool refcount_dec_if_one(refcount_t *r);

-:399: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#399: FILE: include/linux/refcount-impl.h:337:
+extern __must_check bool refcount_dec_not_one(refcount_t *r);

-:400: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#400: FILE: include/linux/refcount-impl.h:338:
+extern __must_check bool refcount_dec_and_mutex_lock(refcount_t *r, struct mutex *lock) __cond_acquires(lock);

-:400: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#400: FILE: include/linux/refcount-impl.h:338:
+extern __must_check bool refcount_dec_and_mutex_lock(refcount_t *r, struct mutex *lock) __cond_acquires(lock);

-:401: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#401: FILE: include/linux/refcount-impl.h:339:
+extern __must_check bool refcount_dec_and_lock(refcount_t *r, spinlock_t *lock) __cond_acquires(lock);

-:401: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#401: FILE: include/linux/refcount-impl.h:339:
+extern __must_check bool refcount_dec_and_lock(refcount_t *r, spinlock_t *lock) __cond_acquires(lock);

-:402: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#402: FILE: include/linux/refcount-impl.h:340:
+extern __must_check bool refcount_dec_and_lock_irqsave(refcount_t *r,

-:787: WARNING:NEW_TYPEDEFS: do not add new typedefs
#787: FILE: include/linux/refcount_types.h:27:
+typedef struct refcount_long_struct {

total: 0 errors, 4 warnings, 5 checks, 780 lines checked
7c03be650afd fs: Convert struct file::f_count to refcount_long_t


