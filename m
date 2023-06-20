Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4540373780D
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jun 2023 01:55:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D5F410E1A1;
	Tue, 20 Jun 2023 23:55:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1879510E1A0;
 Tue, 20 Jun 2023 23:55:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9899DAADEC;
 Tue, 20 Jun 2023 23:55:54 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "pengfuyuan" <pengfuyuan@kylinos.cn>
Date: Tue, 20 Jun 2023 23:55:54 -0000
Message-ID: <168730535457.10443.17450013087747753237@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230524102332.1483249-1-pengfuyuan@kylinos.cn>
In-Reply-To: <20230524102332.1483249-1-pengfuyuan@kylinos.cn>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915=3Afix_kernel-doc_trivial_warnings?=
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

Series: drm/i915:fix kernel-doc trivial warnings
URL   : https://patchwork.freedesktop.org/series/119620/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/119620/revisions/1/mbox/ not applied
Applying: drm/i915:fix kernel-doc trivial warnings
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/i915_active.h
M	drivers/gpu/drm/i915/i915_gpu_error.c
M	drivers/gpu/drm/i915/i915_perf.c
M	drivers/gpu/drm/i915/i915_scatterlist.h
M	drivers/gpu/drm/i915/i915_utils.h
M	drivers/gpu/drm/i915/i915_vma_resource.h
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/i915_vma_resource.h
Auto-merging drivers/gpu/drm/i915/i915_utils.h
Auto-merging drivers/gpu/drm/i915/i915_scatterlist.h
Auto-merging drivers/gpu/drm/i915/i915_perf.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/i915_perf.c
Auto-merging drivers/gpu/drm/i915/i915_gpu_error.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/i915_gpu_error.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 drm/i915:fix kernel-doc trivial warnings
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


