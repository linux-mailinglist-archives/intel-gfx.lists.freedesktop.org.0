Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 20C0639A5C8
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jun 2021 18:32:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BD576F4C8;
	Thu,  3 Jun 2021 16:32:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0CDC36F4DC;
 Thu,  3 Jun 2021 16:32:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 05FF0A47EB;
 Thu,  3 Jun 2021 16:32:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jason Ekstrand" <jason@jlekstrand.net>
Date: Thu, 03 Jun 2021 16:32:33 -0000
Message-ID: <162273795399.8034.15199995170510836747@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210603154027.594906-1-jason@jlekstrand.net>
In-Reply-To: <20210603154027.594906-1-jason@jlekstrand.net>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Get_rid_of_fence_error_propagation_=28rev2=29?=
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

Series: drm/i915: Get rid of fence error propagation (rev2)
URL   : https://patchwork.freedesktop.org/series/90891/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
20301afd39c9 drm/i915: Revert "drm/i915/gem: Asynchronous cmdparser"
-:6: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 686c7c35abc2 ("drm/i915/gem: Asynchronous cmdparser")'
#6: 
This reverts 686c7c35abc2 ("drm/i915/gem: Asynchronous cmdparser").  The

-:23: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 0edbb9ba1bfe ("drm/i915: Move cmd parser pinning to execbuffer")'
#23: 
This also reverts most of 0edbb9ba1bfe ("drm/i915: Move cmd parser

total: 2 errors, 0 warnings, 0 checks, 482 lines checked
b6fda25b1d9f Revert "drm/i915: Propagate errors on awaiting already signaled fences"
-:34: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#34: 
https://lore.kernel.org/dri-devel/20210602164149.391653-2-jason@jlekstrand.net/

total: 0 errors, 1 warnings, 0 checks, 22 lines checked
7b00404854f1 drm/i915: Remove allow_alloc from i915_gem_object_get_sg*
-:6: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 0edbb9ba1bfe ("drm/i915: Move cmd parser pinning to execbuffer")'
#6: 
This reverts the rest of 0edbb9ba1bfe ("drm/i915: Move cmd parser

total: 1 errors, 0 warnings, 0 checks, 86 lines checked
8e472c11e36c drm/i915: Drop error handling from dma_fence_work
1013d3982bcb Revert "drm/i915: Skip over MI_NOOP when parsing"
-:6: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit a6c5e2aea704 ("drm/i915: Skip over MI_NOOP when parsing")'
#6: 
This reverts a6c5e2aea704 ("drm/i915: Skip over MI_NOOP when parsing").

total: 1 errors, 0 warnings, 0 checks, 83 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
