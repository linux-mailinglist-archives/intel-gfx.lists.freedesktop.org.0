Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E01F53EAA74
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Aug 2021 20:48:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB7226E44A;
	Thu, 12 Aug 2021 18:48:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 03AAB6E44A;
 Thu, 12 Aug 2021 18:48:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EFD74A00FD;
 Thu, 12 Aug 2021 18:48:13 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Aug 2021 18:48:13 -0000
Message-ID: <162879409396.21761.7442564141095303997@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210812131412.2487363-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210812131412.2487363-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/4=5D_dma-buf=3A_Require_VM=5FPFNM?=
 =?utf-8?q?AP_vma_for_mmap?=
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

Series: series starting with [1/4] dma-buf: Require VM_PFNMAP vma for mmap
URL   : https://patchwork.freedesktop.org/series/93639/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
4cfb224816d9 dma-buf: Require VM_PFNMAP vma for mmap
-:34: WARNING:TYPO_SPELLING: 'entires' may be misspelled - perhaps 'entries'?
#34: 
From auditing the various functions to insert pfn pte entires
                                                      ^^^^^^^

-:41: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#41: 
References: https://lore.kernel.org/lkml/CAKMK7uHi+mG0z0HUmNt13QCCvutuRVjpcR0NjRL12k-WbWzkRg@mail.gmail.com/

-:101: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 3 warnings, 0 checks, 39 lines checked
cac7099118e9 drm/shmem-helper: Switch to vmf_insert_pfn
-:44: WARNING:TYPO_SPELLING: 'wont' may be misspelled - perhaps 'won't'?
#44: 
helpers for these drivers on those platforms. As-is this wont work.
                                                         ^^^^

-:47: WARNING:TYPO_SPELLING: 'wont' may be misspelled - perhaps 'won't'?
#47: 
definitely wont fly in practice since the pages are non-contig to
           ^^^^

-:141: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 3 warnings, 0 checks, 55 lines checked
fb4b3609ebe7 drm/shmem-helpers: Allocate wc pages on x86
-:79: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 37 lines checked
bf8635ed65f4 drm/vgem: use shmem helpers
-:22: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 0cf2ef46c6c0 ("drm/shmem-helper: Use cached mappings by default")'
#22: 
v4: I got tricked by 0cf2ef46c6c0 ("drm/shmem-helper: Use cached

-:330: WARNING:TYPO_SPELLING: 'wont' may be misspelled - perhaps 'won't'?
#330: FILE: drivers/gpu/drm/vgem/vgem_drv.c:104:
+	 * coherent memory or dma-buf sharing just wont work.
 	                                           ^^^^

-:461: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 1 errors, 2 warnings, 0 checks, 402 lines checked


