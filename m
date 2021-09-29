Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 76B5641C5BD
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Sep 2021 15:34:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CB506EA6B;
	Wed, 29 Sep 2021 13:34:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3F5F26EA6B;
 Wed, 29 Sep 2021 13:34:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 36D4DAA917;
 Wed, 29 Sep 2021 13:34:18 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Sep 2021 13:34:18 -0000
Message-ID: <163292245818.27097.10762288743283809764@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210929132629.353541-1-matthew.auld@intel.com>
In-Reply-To: <20210929132629.353541-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5B1/3=5D_drm/ttm=3A_s/FLAG=5FSG/FLAG=5FEXT?=
 =?utf-8?q?ERNAL/?=
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

Series: series starting with [1/3] drm/ttm: s/FLAG_SG/FLAG_EXTERNAL/
URL   : https://patchwork.freedesktop.org/series/95219/
State : failure

== Summary ==

Applying: drm/ttm: s/FLAG_SG/FLAG_EXTERNAL/
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
M	drivers/gpu/drm/i915/gem/i915_gem_ttm.c
M	drivers/gpu/drm/nouveau/nouveau_bo.c
M	drivers/gpu/drm/ttm/ttm_bo_util.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/ttm/ttm_bo_util.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/ttm/ttm_bo_util.c
Auto-merging drivers/gpu/drm/nouveau/nouveau_bo.c
Auto-merging drivers/gpu/drm/i915/gem/i915_gem_ttm.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gem/i915_gem_ttm.c
Auto-merging drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 drm/ttm: s/FLAG_SG/FLAG_EXTERNAL/
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


