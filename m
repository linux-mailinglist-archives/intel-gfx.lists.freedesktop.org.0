Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB1873AD4D1
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Jun 2021 00:09:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59B316EAB8;
	Fri, 18 Jun 2021 22:08:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1B1CC6EAB8;
 Fri, 18 Jun 2021 22:08:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1275EA0078;
 Fri, 18 Jun 2021 22:08:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Fri, 18 Jun 2021 22:08:58 -0000
Message-ID: <162405413805.1292.1695129962969915569@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210618214503.1773805-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210618214503.1773805-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/eb=3A_Fix_pagefault_disabling_in_the_first_slowpat?=
 =?utf-8?q?h?=
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

Series: drm/i915/eb: Fix pagefault disabling in the first slowpath
URL   : https://patchwork.freedesktop.org/series/91691/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
2a6b87403e3a drm/i915/eb: Fix pagefault disabling in the first slowpath
-:11: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit ebc0808fa2da ("drm/i915: Restrict pagefault disabling to just around copy_from_user()")'
#11: 
commit ebc0808fa2da0548a78e715858024cb81cd732bc

-:35: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 2889caa92321 ("drm/i915: Eliminate lots of iterations over the execobjects array")'
#35: 
commit 2889caa9232109afc8881f29a2205abeb5709d0c

-:46: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 7dd4f6729f92 ("drm/i915: Async GPU relocation processing")'
#46: 
commit 7dd4f6729f9243bd7046c6f04c107a456bda38eb

-:52: WARNING:REPEATED_WORD: Possible repeated word: 'all'
#52: 
by pushing all all the relocation patching to the gpu if the buffer

-:57: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 7dc8f1143778 ("drm/i915/gem: Drop relocation slowpath")'
#57: 
commit 7dc8f1143778a35b190f9413f228b3cf28f67f8d

-:65: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit fd1500fcd442 ("Revert "drm/i915/gem: Drop relocation slowpath".")'
#65: 
commit fd1500fcd4420eee06e2c7f3aa6067b78ac05871

-:103: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 5 errors, 2 warnings, 0 checks, 9 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
