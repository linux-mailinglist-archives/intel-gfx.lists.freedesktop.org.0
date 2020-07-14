Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 97EC8220064
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2020 00:06:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B3A76E96D;
	Tue, 14 Jul 2020 22:06:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 368C56E96C;
 Tue, 14 Jul 2020 22:06:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2F418A0099;
 Tue, 14 Jul 2020 22:06:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 14 Jul 2020 22:06:03 -0000
Message-ID: <159476436316.24022.10774802142027367423@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200714212401.15825-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200714212401.15825-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv2=2C1/3=5D_dma-buf/sw=5Fsync=3A_Av?=
 =?utf-8?q?oid_recursive_lock_during_fence_signal=2E?=
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

Series: series starting with [v2,1/3] dma-buf/sw_sync: Avoid recursive lock during fence signal.
URL   : https://patchwork.freedesktop.org/series/79498/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e9ba9f18591d dma-buf/sw_sync: Avoid recursive lock during fence signal.
-:20: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit d3862e44daa7 ("dma-buf/sw-sync: Fix locking around sync_timeline lists")'
#20: 
d3862e44daa7 ("dma-buf/sw-sync: Fix locking around sync_timeline lists")

-:22: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit d3c6dd1fb30d ("dma-buf/sw_sync: Synchronize signal vs syncpt free")'
#22: 
d3c6dd1fb30d ("dma-buf/sw_sync: Synchronize signal vs syncpt free")

total: 2 errors, 0 warnings, 0 checks, 49 lines checked
7357a731fd32 dma-buf/sw_sync: Separate signal/timeline locks
-:140: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#140: FILE: drivers/dma-buf/sync_debug.h:60:
+	spinlock_t lock;

total: 0 errors, 0 warnings, 1 checks, 116 lines checked
64fa4401e3f3 dma-buf/selftests: Add locking selftests for sw_sync
-:40: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#40: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 345 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
