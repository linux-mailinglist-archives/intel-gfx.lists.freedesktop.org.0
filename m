Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FCA847CCE6
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Dec 2021 07:12:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D111D10F5AD;
	Wed, 22 Dec 2021 06:12:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4ED1C10F5AD;
 Wed, 22 Dec 2021 06:12:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 46DEAA00A0;
 Wed, 22 Dec 2021 06:12:38 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: ira.weiny@intel.com
Date: Wed, 22 Dec 2021 06:12:38 -0000
Message-ID: <164015355826.15676.13385078435540629413@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211210232404.4098157-1-ira.weiny@intel.com>
In-Reply-To: <20211210232404.4098157-1-ira.weiny@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBE?=
 =?utf-8?q?RM_kmap=28=29_fixes_and_kmap=5Flocal=5Fpage=28=29_conversions_?=
 =?utf-8?b?KHJldjMp?=
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

Series: DRM kmap() fixes and kmap_local_page() conversions (rev3)
URL   : https://patchwork.freedesktop.org/series/97889/
State : failure

== Summary ==

Applying: drm/i915: Replace kmap() with kmap_local_page()
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/gem/i915_gem_shmem.c
M	drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
M	drivers/gpu/drm/i915/i915_gem.c
M	drivers/gpu/drm/i915/i915_gpu_error.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/i915_gpu_error.c
Auto-merging drivers/gpu/drm/i915/i915_gem.c
Auto-merging drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
Auto-merging drivers/gpu/drm/i915/gem/i915_gem_shmem.c
Applying: drm/amd: Replace kmap() with kmap_local_page()
Applying: drm/gma: Remove calls to kmap()
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/gma500/gma_display.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/gma500/gma_display.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/gma500/gma_display.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0003 drm/gma: Remove calls to kmap()
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


