Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8D744133A2
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Sep 2021 14:59:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 861026E97A;
	Tue, 21 Sep 2021 12:59:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3540F6E97A;
 Tue, 21 Sep 2021 12:59:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2DB06AA0ED;
 Tue, 21 Sep 2021 12:59:34 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Sep 2021 12:59:34 -0000
Message-ID: <163222917415.15888.12652463852555646317@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210921110121.3783395-1-matthew.auld@intel.com>
In-Reply-To: <20210921110121.3783395-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv4=2C01/14=5D_drm/ttm=3A_stop_calli?=
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

Series: series starting with [v4,01/14] drm/ttm: stop calling tt_swapin in vm_access
URL   : https://patchwork.freedesktop.org/series/94886/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
4c8c8ce4ad51 drm/ttm: stop calling tt_swapin in vm_access
-:11: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 09ac4fcb3f25 ("drm/ttm: Implement vm_operations_struct.access v2")'
#11: 
commit 09ac4fcb3f255e9225967c75f5893325c116cdbe

total: 1 errors, 0 warnings, 0 checks, 11 lines checked
6f9c4d29f1cf drm/ttm: stop setting page->index for the ttm_tt
-:11: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 58aa6622d32a ("drm/ttm: Correctly set page mapping and -index members")'
#11: 
commit 58aa6622d32af7d2c08d45085f44c54554a16ed7

total: 1 errors, 0 warnings, 0 checks, 19 lines checked
86b4e3ec2a63 drm/ttm: move ttm_tt_{add, clear}_mapping into amdgpu
1f10d7074d1d drm/ttm: remove TTM_PAGE_FLAG_NO_RETRY
0e21d098a8e9 drm/ttm: s/FLAG_SG/FLAG_EXTERNAL/
ecadb622740d drm/ttm: add some kernel-doc for TTM_TT_FLAG_*
5ecfd25325c9 drm/ttm: add TTM_TT_FLAG_EXTERNAL_MAPPABLE
-:11: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 667a50db0477 ("drm/ttm: Refuse to fault (prime-) imported pages")'
#11: 
commit 667a50db0477d47fdff01c666f5ee1ce26b5264c

total: 1 errors, 0 warnings, 0 checks, 48 lines checked
c44cf6035477 drm/i915/gem: Break out some shmem backend utils
18ce4559d380 drm/i915/ttm: add tt shmem backend
-:16: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#16: 
    dropping the shrinker LRU lock and acquiring the object lock it could for

total: 0 errors, 1 warnings, 0 checks, 448 lines checked
da45813042ef drm/i915/ttm: hide shmem objects from TTM LRU
f2037dde2fd1 drm/i915/ttm: use cached system pages when evicting lmem
23d3db1c1be2 drm/i915: try to simplify make_{un}shrinkable
-:164: CHECK:LINE_SPACING: Please don't use multiple blank lines
#164: FILE: drivers/gpu/drm/i915/gem/i915_gem_shrinker.c:515:
 
+

total: 0 errors, 0 warnings, 1 checks, 194 lines checked
af412f040e8a drm/i915/ttm: make evicted shmem pages visible to the shrinker
7a0db0cd567e drm/i915/ttm: enable shmem tt backend


