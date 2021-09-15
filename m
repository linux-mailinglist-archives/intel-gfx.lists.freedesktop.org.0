Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9B9540CD3D
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Sep 2021 21:32:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC2776EA03;
	Wed, 15 Sep 2021 19:32:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 753516EA03;
 Wed, 15 Sep 2021 19:32:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6E57BA01BB;
 Wed, 15 Sep 2021 19:32:26 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Sep 2021 19:32:26 -0000
Message-ID: <163173434644.30118.9170720679818994813@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210915185954.3114858-1-matthew.auld@intel.com>
In-Reply-To: <20210915185954.3114858-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv3=2C01/12=5D_drm/ttm=3A_stop_setti?=
 =?utf-8?q?ng_page-=3Eindex_for_the_ttm=5Ftt?=
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

Series: series starting with [v3,01/12] drm/ttm: stop setting page->index for the ttm_tt
URL   : https://patchwork.freedesktop.org/series/94705/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
13d749649308 drm/ttm: stop setting page->index for the ttm_tt
-:11: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 58aa6622d32a ("drm/ttm: Correctly set page mapping and -index members")'
#11: 
commit 58aa6622d32af7d2c08d45085f44c54554a16ed7

total: 1 errors, 0 warnings, 0 checks, 19 lines checked
625b6c6d2e8a drm/ttm: move ttm_tt_{add, clear}_mapping into amdgpu
437d165efeea drm/ttm: remove TTM_PAGE_FLAG_NO_RETRY
7f778166b103 drm/ttm: s/FLAG_SG/FLAG_EXTERNAL/
d5ca5e74a3c8 drm/ttm: add some kernel-doc for TTM_PAGE_FLAG_*
fa296d488d3b drm/ttm: add TTM_PAGE_FLAG_EXTERNAL_MAPPABLE
-:11: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 667a50db0477 ("drm/ttm: Refuse to fault (prime-) imported pages")'
#11: 
commit 667a50db0477d47fdff01c666f5ee1ce26b5264c

total: 1 errors, 0 warnings, 0 checks, 30 lines checked
fc851ac1bf9e drm/i915/gem: Break out some shmem backend utils
6ebd10cc602b drm/i915/ttm: add tt shmem backend
3674047745cb drm/i915/ttm: use cached system pages when evicting lmem
de3f5e9a7e28 drm/i915: try to simplify make_{un}shrinkable
-:164: CHECK:LINE_SPACING: Please don't use multiple blank lines
#164: FILE: drivers/gpu/drm/i915/gem/i915_gem_shrinker.c:510:
 
+

total: 0 errors, 0 warnings, 1 checks, 194 lines checked
7b31a03b4172 drm/i915/ttm: make evicted shmem pages visible to the shrinker
7401d4e19fbe drm/i915/ttm: enable shmem tt backend


