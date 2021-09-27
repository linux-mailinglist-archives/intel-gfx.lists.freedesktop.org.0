Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C36B419CD5
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Sep 2021 19:31:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1175689CBE;
	Mon, 27 Sep 2021 17:31:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5E3C489C9D;
 Mon, 27 Sep 2021 17:31:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 55D74A0003;
 Mon, 27 Sep 2021 17:31:49 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Sep 2021 17:31:49 -0000
Message-ID: <163276390931.14084.5687160368680208473@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210927114114.152310-1-matthew.auld@intel.com>
In-Reply-To: <20210927114114.152310-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv5=2C01/13=5D_drm/ttm=3A_stop_calli?=
 =?utf-8?q?ng_tt=5Fswapin_in_vm=5Faccess?=
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

Series: series starting with [v5,01/13] drm/ttm: stop calling tt_swapin in vm_access
URL   : https://patchwork.freedesktop.org/series/95093/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
63f7046be80e drm/ttm: stop calling tt_swapin in vm_access
-:11: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 09ac4fcb3f25 ("drm/ttm: Implement vm_operations_struct.access v2")'
#11: 
commit 09ac4fcb3f255e9225967c75f5893325c116cdbe

total: 1 errors, 0 warnings, 0 checks, 11 lines checked
2d21266abd0f drm/ttm: stop setting page->index for the ttm_tt
-:11: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 58aa6622d32a ("drm/ttm: Correctly set page mapping and -index members")'
#11: 
commit 58aa6622d32af7d2c08d45085f44c54554a16ed7

total: 1 errors, 0 warnings, 0 checks, 19 lines checked
5eb69ebfcc1a drm/ttm: move ttm_tt_{add, clear}_mapping into amdgpu
bdd2fc691ea5 drm/ttm: remove TTM_PAGE_FLAG_NO_RETRY
643501af65f9 drm/ttm: s/FLAG_SG/FLAG_EXTERNAL/
19f76bc63e36 drm/ttm: add some kernel-doc for TTM_TT_FLAG_*
783333293777 drm/ttm: add TTM_TT_FLAG_EXTERNAL_MAPPABLE
-:11: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 667a50db0477 ("drm/ttm: Refuse to fault (prime-) imported pages")'
#11: 
commit 667a50db0477d47fdff01c666f5ee1ce26b5264c

total: 1 errors, 0 warnings, 0 checks, 50 lines checked
00214d4c089c drm/i915/gem: Break out some shmem backend utils
fc0e7596391b drm/i915/ttm: add tt shmem backend
-:16: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#16: 
    dropping the shrinker LRU lock and acquiring the object lock it could for

total: 0 errors, 1 warnings, 0 checks, 448 lines checked
1c423f436dab drm/i915: try to simplify make_{un}shrinkable
-:164: CHECK:LINE_SPACING: Please don't use multiple blank lines
#164: FILE: drivers/gpu/drm/i915/gem/i915_gem_shrinker.c:515:
 
+

total: 0 errors, 0 warnings, 1 checks, 194 lines checked
1d054b38014d drm/i915/ttm: make evicted shmem pages visible to the shrinker
-:21: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#21: 
     an object. Importantly this covers the case where TTM moves something from

total: 0 errors, 1 warnings, 0 checks, 128 lines checked
abeba24ed9b1 drm/i915/ttm: use cached system pages when evicting lmem
713ad3558e87 drm/i915/ttm: enable shmem tt backend


