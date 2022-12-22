Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BAA86545BE
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Dec 2022 18:50:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39D2710E086;
	Thu, 22 Dec 2022 17:50:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0977A10E086;
 Thu, 22 Dec 2022 17:50:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0356EA0BA8;
 Thu, 22 Dec 2022 17:50:12 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Thu, 22 Dec 2022 17:50:12 -0000
Message-ID: <167173141297.14835.8205657541970966171@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221222110620.276311-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20221222110620.276311-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Fix_same_object_multiple_mmap_memory_leak?=
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

Series: drm/i915: Fix same object multiple mmap memory leak
URL   : https://patchwork.freedesktop.org/series/112166/
State : warning

== Summary ==

Error: dim checkpatch failed
ac57a13bb1d3 drm/i915: Fix same object multiple mmap memory leak
-:10: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 786555987207 ("drm/i915/gem: Store mmap_offsets in an rbtree rather than a plain list")'
#10: 
close a memory leak caused by refactoring done in 786555987207

-:88: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 786555987207 ("drm/i915/gem: Store mmap_offsets in an rbtree rather than a plain list")'
#88: 
Root cause is that 786555987207 started caching (and sharing) the

-:95: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 786555987207 ("drm/i915/gem: Store mmap_offsets in an rbtree rather than a plain list")'
#95: 
before 786555987207 is that it is now possible to mmap an offset belonging

-:98: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 786555987207 ("drm/i915/gem: Store mmap_offsets in an rbtree rather than a plain list")'
#98: 
Fix here is to partially revert to behaviour before 786555987207 - that is

-:103: WARNING:BAD_SIGN_OFF: Co-developed-by: must be immediately followed by Signed-off-by:
#103: 
Co-developed-by: Chuansheng Liu <chuansheng.liu@intel.com>
Fixes: 786555987207 ("drm/i915/gem: Store mmap_offsets in an rbtree rather than a plain list")
total: 4 errors, 1 warnings, 0 checks, 11 lines checked


