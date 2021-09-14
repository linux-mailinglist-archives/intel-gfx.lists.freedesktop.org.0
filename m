Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E54740AB4C
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Sep 2021 12:01:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3A416E45C;
	Tue, 14 Sep 2021 10:01:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 82FCB6E45C;
 Tue, 14 Sep 2021 10:01:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 79CF0A00E8;
 Tue, 14 Sep 2021 10:01:07 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Sep 2021 10:01:07 -0000
Message-ID: <163161366746.3456.400318035909316860@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210914085033.2833993-1-matthew.auld@intel.com>
In-Reply-To: <20210914085033.2833993-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv2=2C1/7=5D_drm/i915/gem=3A_Break_o?=
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

Series: series starting with [v2,1/7] drm/i915/gem: Break out some shmem backend utils
URL   : https://patchwork.freedesktop.org/series/94648/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
d3fcbc14d6ee drm/i915/gem: Break out some shmem backend utils
5e8ae127a95f drm/ttm: add TTM_PAGE_FLAG_SHMEM
56dd3266c291 drm/i915/ttm: add tt shmem backend
89087b82443e drm/i915/ttm: use cached system pages when evicting lmem
3eb4ab240a73 drm/i915: try to simplify make_{un}shrinkable
-:164: CHECK:LINE_SPACING: Please don't use multiple blank lines
#164: FILE: drivers/gpu/drm/i915/gem/i915_gem_shrinker.c:510:
 
+

total: 0 errors, 0 warnings, 1 checks, 194 lines checked
f2013b99cd76 drm/i915/ttm: make evicted shmem pages visible to the shrinker
dba19f313885 drm/i915/ttm: enable shmem tt backend


