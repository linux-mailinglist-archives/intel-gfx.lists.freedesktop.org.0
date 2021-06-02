Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D50B3991B7
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Jun 2021 19:31:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95E716EE1D;
	Wed,  2 Jun 2021 17:31:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 68EA26EE1D;
 Wed,  2 Jun 2021 17:31:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 60BF7A8836;
 Wed,  2 Jun 2021 17:31:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Wed, 02 Jun 2021 17:31:37 -0000
Message-ID: <162265509739.11226.13087655977031018311@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210602170716.280491-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210602170716.280491-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915=3A_Move_system_memory_to_TTM_for_discrete?=
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

Series: drm/i915: Move system memory to TTM for discrete
URL   : https://patchwork.freedesktop.org/series/90898/
State : failure

== Summary ==

Applying: drm/i915: Update object placement flags to be mutable
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/gem/i915_gem_mman.c
M	drivers/gpu/drm/i915/gem/i915_gem_object.c
M	drivers/gpu/drm/i915/gem/i915_gem_object.h
M	drivers/gpu/drm/i915/gem/i915_gem_object_types.h
M	drivers/gpu/drm/i915/gem/i915_gem_pages.c
A	drivers/gpu/drm/i915/gem/i915_gem_ttm.c
M	drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
CONFLICT (modify/delete): drivers/gpu/drm/i915/gem/i915_gem_ttm.c deleted in HEAD and modified in drm/i915: Update object placement flags to be mutable. Version drm/i915: Update object placement flags to be mutable of drivers/gpu/drm/i915/gem/i915_gem_ttm.c left in tree.
Auto-merging drivers/gpu/drm/i915/gem/i915_gem_pages.c
Auto-merging drivers/gpu/drm/i915/gem/i915_gem_object_types.h
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gem/i915_gem_object_types.h
Auto-merging drivers/gpu/drm/i915/gem/i915_gem_object.h
Auto-merging drivers/gpu/drm/i915/gem/i915_gem_object.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gem/i915_gem_object.c
Auto-merging drivers/gpu/drm/i915/gem/i915_gem_mman.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gem/i915_gem_mman.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 drm/i915: Update object placement flags to be mutable
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
