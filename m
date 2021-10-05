Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07C644234B5
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Oct 2021 01:56:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E08666E486;
	Tue,  5 Oct 2021 23:56:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 89FA26E486;
 Tue,  5 Oct 2021 23:55:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 826C0AA916;
 Tue,  5 Oct 2021 23:55:59 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 05 Oct 2021 23:55:59 -0000
Message-ID: <163347815949.19282.11983476195885748037@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211005182405.915100-1-matthew.auld@intel.com>
In-Reply-To: <20211005182405.915100-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv6=2C1/8=5D_drm/i915/gem=3A_Break_o?=
 =?utf-8?q?ut_some_shmem_backend_utils?=
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

Series: series starting with [v6,1/8] drm/i915/gem: Break out some shmem backend utils
URL   : https://patchwork.freedesktop.org/series/95476/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
605eef61ebf9 drm/i915/gem: Break out some shmem backend utils
b116a99cc04e drm/i915/ttm: add tt shmem backend
-:16: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#16: 
    dropping the shrinker LRU lock and acquiring the object lock it could for

total: 0 errors, 1 warnings, 0 checks, 486 lines checked
14f612b9093f drm/i915/gtt: drop unneeded make_unshrinkable
32c05a4de159 drm/i915: drop unneeded make_unshrinkable in free_object
0999a655bf2a drm/i915: add some kernel-doc for shrink_pin and friends
c6e18e36eb58 drm/i915/ttm: move shrinker management into adjust_lru
-:19: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#19: 
     an object. Importantly this covers the case where TTM moves something from

total: 0 errors, 1 warnings, 0 checks, 264 lines checked
df1f7fa12f7b drm/i915/ttm: use cached system pages when evicting lmem
fc764587e539 drm/i915/ttm: enable shmem tt backend


