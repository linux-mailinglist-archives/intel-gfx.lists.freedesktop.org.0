Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C153D3CB7DD
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jul 2021 15:29:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BD706E97E;
	Fri, 16 Jul 2021 13:29:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B334A6E97E;
 Fri, 16 Jul 2021 13:29:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AAD25A8169;
 Fri, 16 Jul 2021 13:29:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Fri, 16 Jul 2021 13:29:18 -0000
Message-ID: <162644215867.12778.11441248695542020843@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210713205153.1896059-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210713205153.1896059-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_shmem_helpers_for_vgem_=28rev8=29?=
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

Series: shmem helpers for vgem (rev8)
URL   : https://patchwork.freedesktop.org/series/90670/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
00aa5f72115a dma-buf: Require VM_PFNMAP vma for mmap
-:34: WARNING:TYPO_SPELLING: 'entires' may be misspelled - perhaps 'entries'?
#34: 
From auditing the various functions to insert pfn pte entires
                                                      ^^^^^^^

-:39: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#39: 
References: https://lore.kernel.org/lkml/CAKMK7uHi+mG0z0HUmNt13QCCvutuRVjpcR0NjRL12k-WbWzkRg@mail.gmail.com/

-:97: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 3 warnings, 0 checks, 39 lines checked
2b0ccd0f00e9 drm/shmem-helper: Switch to vmf_insert_pfn
-:14: WARNING:TYPO_SPELLING: 'wont' may be misspelled - perhaps 'won't'?
#14: 
helpers for these drivers on those platforms. As-is this wont work.
                                                         ^^^^

-:17: WARNING:TYPO_SPELLING: 'wont' may be misspelled - perhaps 'won't'?
#17: 
definitely wont fly in practice since the pages are non-contig to
           ^^^^

-:108: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 3 warnings, 0 checks, 55 lines checked
5fe5ed0ff28d drm/shmem-helpers: Allocate wc pages on x86
-:71: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 32 lines checked
89fea3e9a7a7 drm/vgem: use shmem helpers
-:22: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 0cf2ef46c6c0 ("drm/shmem-helper: Use cached mappings by default")'
#22: 
v4: I got tricked by 0cf2ef46c6c0 ("drm/shmem-helper: Use cached

-:330: WARNING:TYPO_SPELLING: 'wont' may be misspelled - perhaps 'won't'?
#330: FILE: drivers/gpu/drm/vgem/vgem_drv.c:104:
+	 * coherent memory or dma-buf sharing just wont work.
 	                                           ^^^^

-:461: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 1 errors, 2 warnings, 0 checks, 402 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
