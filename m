Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1266721FE89
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2020 22:27:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E339B6E8AF;
	Tue, 14 Jul 2020 20:27:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5304D6E8A4;
 Tue, 14 Jul 2020 20:27:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4D8FBA47EA;
 Tue, 14 Jul 2020 20:27:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 14 Jul 2020 20:27:06 -0000
Message-ID: <159475842628.24021.6412196392141080841@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200714200646.14041-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200714200646.14041-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/3=5D_dma-buf/sw=5Fsync=3A_Avoid_r?=
 =?utf-8?q?ecursive_lock_during_fence_signal=2E_=28rev2=29?=
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

Series: series starting with [1/3] dma-buf/sw_sync: Avoid recursive lock during fence signal. (rev2)
URL   : https://patchwork.freedesktop.org/series/79492/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
4c0522b51aec dma-buf/sw_sync: Avoid recursive lock during fence signal.
-:20: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit d3862e44daa7 ("dma-buf/sw-sync: Fix locking around sync_timeline lists")'
#20: 
d3862e44daa7 ("dma-buf/sw-sync: Fix locking around sync_timeline lists")

-:22: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit d3c6dd1fb30d ("dma-buf/sw_sync: Synchronize signal vs syncpt free")'
#22: 
d3c6dd1fb30d ("dma-buf/sw_sync: Synchronize signal vs syncpt free")

total: 2 errors, 0 warnings, 0 checks, 49 lines checked
0d98bf72b219 dma-buf/sw_sync: Separate signal/timeline locks
-:102: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#102: FILE: drivers/dma-buf/sync_debug.h:64:
+	spinlock_t lock;

total: 0 errors, 0 warnings, 1 checks, 78 lines checked
0c8eefe28333 dma-buf/selftests: Add locking selftests for sw_sync
-:39: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#39: 
new file mode 100644

-:44: WARNING:SPDX_LICENSE_TAG: Improper SPDX comment style for 'drivers/dma-buf/st-sw_sync.c', please use '//' instead
#44: FILE: drivers/dma-buf/st-sw_sync.c:1:
+/* SPDX-License-Identifier: MIT */

-:44: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#44: FILE: drivers/dma-buf/st-sw_sync.c:1:
+/* SPDX-License-Identifier: MIT */

total: 0 errors, 3 warnings, 0 checks, 345 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
