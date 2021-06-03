Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 85E2A39A2F6
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jun 2021 16:22:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C3E46EA71;
	Thu,  3 Jun 2021 14:22:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7F88F6EA71;
 Thu,  3 Jun 2021 14:22:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 782F2A008A;
 Thu,  3 Jun 2021 14:22:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Thu, 03 Jun 2021 14:22:04 -0000
Message-ID: <162273012446.8034.7902314670985158003@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210527141337.3857901-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210527141337.3857901-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_shmem_helpers_for_vgem_=28rev2=29?=
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

Series: shmem helpers for vgem (rev2)
URL   : https://patchwork.freedesktop.org/series/90670/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
a1fb989b5b4e dma-buf: Require VM_PFNMAP vma for mmap
-:34: WARNING:TYPO_SPELLING: 'entires' may be misspelled - perhaps 'entries'?
#34: 
From auditing the various functions to insert pfn pte entires
                                                      ^^^^^^^

-:39: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#39: 
References: https://lore.kernel.org/lkml/CAKMK7uHi+mG0z0HUmNt13QCCvutuRVjpcR0NjRL12k-WbWzkRg@mail.gmail.com/

-:97: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 3 warnings, 0 checks, 39 lines checked
30c0bfaaf5ce drm/vgem: use shmem helpers
-:424: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 381 lines checked
798ca0897370 drm/shmem-helper: Switch to vmf_insert_pfn
-:38: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 16 lines checked
07cf6c8cf755 drm/shmem-helper: Align to page size in dumb_create
-:37: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 15 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
