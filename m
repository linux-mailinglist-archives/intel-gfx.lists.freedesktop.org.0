Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E8EC638879
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Nov 2022 12:18:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95B9810E730;
	Fri, 25 Nov 2022 11:17:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 795BA10E730;
 Fri, 25 Nov 2022 11:17:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 72792AADD7;
 Fri, 25 Nov 2022 11:17:57 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
Date: Fri, 25 Nov 2022 11:17:57 -0000
Message-ID: <166937507746.7726.6153141791175734762@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221125102137.1801-1-christian.koenig@amd.com>
In-Reply-To: <20221125102137.1801-1-christian.koenig@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/9=5D_drm/amdgpu=3A_generally_allo?=
 =?utf-8?q?w_over-commit_during_BO_allocation?=
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

Series: series starting with [1/9] drm/amdgpu: generally allow over-commit during BO allocation
URL   : https://patchwork.freedesktop.org/series/111337/
State : warning

== Summary ==

Error: dim checkpatch failed
e90cbfda09c3 drm/amdgpu: generally allow over-commit during BO allocation
-:74: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 42 lines checked
709a97d8ed9c drm/ttm: remove ttm_bo_(un)lock_delayed_workqueue
-:168: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 119 lines checked
015bfda0abf6 drm/ttm: use per BO cleanup workers
-:301: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#301: FILE: include/drm/ttm/ttm_bo_api.h:137:
+	unsigned priority;

-:302: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#302: FILE: include/drm/ttm/ttm_bo_api.h:138:
+	unsigned pin_count;

-:355: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 3 warnings, 0 checks, 290 lines checked
e3a743aadfe8 drm/ttm: merge ttm_bo_api.h and ttm_bo_driver.h
-:11: WARNING:TYPO_SPELLING: 'unecessary' may be misspelled - perhaps 'unnecessary'?
#11: 
drop unecessary includes from the header.
     ^^^^^^^^^^

-:1050: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#1050: 
rename from include/drm/ttm/ttm_bo_api.h

-:1166: ERROR:CODE_INDENT: code indent should use tabs where possible
#1166: FILE: include/drm/ttm/ttm_bo.h:135:
+        struct sg_table *sg;$

-:1166: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#1166: FILE: include/drm/ttm/ttm_bo.h:135:
+        struct sg_table *sg;$

-:1225: WARNING:LINE_SPACING: Missing a blank line after declarations
#1225: FILE: include/drm/ttm/ttm_bo.h:246:
+		bool success;
+		if (WARN_ON(ticket))

-:1389: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#1389: FILE: include/drm/ttm/ttm_bo.h:364:
+			 uint32_t alignment, struct ttm_operation_ctx *ctx,

-:1391: WARNING:SPACING: Unnecessary space before function pointer arguments
#1391: FILE: include/drm/ttm/ttm_bo.h:366:
+			 void (*destroy) (struct ttm_buffer_object *));

-:1394: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#1394: FILE: include/drm/ttm/ttm_bo.h:369:
+			 uint32_t alignment, bool interruptible,

-:1396: WARNING:SPACING: Unnecessary space before function pointer arguments
#1396: FILE: include/drm/ttm/ttm_bo.h:371:
+			 void (*destroy) (struct ttm_buffer_object *));

-:1515: ERROR:CODE_INDENT: code indent should use tabs where possible
#1515: FILE: include/drm/ttm/ttm_bo.h:413:
+                     u32 num_pages,$

-:1515: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#1515: FILE: include/drm/ttm/ttm_bo.h:413:
+                     u32 num_pages,$

-:1516: ERROR:CODE_INDENT: code indent should use tabs where possible
#1516: FILE: include/drm/ttm/ttm_bo.h:414:
+                     struct ttm_kmap_iter *dst_iter,$

-:1516: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#1516: FILE: include/drm/ttm/ttm_bo.h:414:
+                     struct ttm_kmap_iter *dst_iter,$

-:1517: ERROR:CODE_INDENT: code indent should use tabs where possible
#1517: FILE: include/drm/ttm/ttm_bo.h:415:
+                     struct ttm_kmap_iter *src_iter);$

-:1517: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#1517: FILE: include/drm/ttm/ttm_bo.h:415:
+                     struct ttm_kmap_iter *src_iter);$

-:1856: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 4 errors, 10 warnings, 2 checks, 1234 lines checked
7ef9eceb4636 drm/nouveau: stop using ttm_bo_wait
-:67: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 42 lines checked
3e3fc83b8053 drm/qxl: stop using ttm_bo_wait
-:47: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 28 lines checked
98ec1b67a785 drm/i915: stop using ttm_bo_wait
-:37: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 19 lines checked
2b6141fc5caa drm/ttm: use ttm_bo_wait_ctx instead of ttm_bo_wait
-:34: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 16 lines checked
5b9d81a993ea drm/ttm: move ttm_bo_wait into VMWGFX
-:171: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 135 lines checked


