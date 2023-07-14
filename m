Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74D717541EC
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jul 2023 20:00:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 036E710E086;
	Fri, 14 Jul 2023 18:00:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3C9AC10E086;
 Fri, 14 Jul 2023 18:00:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 34283A0078;
 Fri, 14 Jul 2023 18:00:30 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Yang, Fei" <fei.yang@intel.com>
Date: Fri, 14 Jul 2023 18:00:30 -0000
Message-ID: <168935763018.13875.1921649848309085871@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230713152718.645488-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20230713152718.645488-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5BRFC=2C1/2=5D_drm/i915=3A_Refactor_PAT/ob?=
 =?utf-8?q?ject_cache_handling_=28rev2=29?=
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

Series: series starting with [RFC,1/2] drm/i915: Refactor PAT/object cache handling (rev2)
URL   : https://patchwork.freedesktop.org/series/120686/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/120686/revisions/2/mbox/ not applied
Applying: drm/i915: Refactor PAT/object cache handling
Applying: drm/i915: Remove PAT hack from i915_gem_object_can_bypass_llc
error: patch failed: drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c:258
error: drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c: patch does not apply
error: patch failed: drivers/gpu/drm/i915/gem/i915_gem_shmem.c:254
error: drivers/gpu/drm/i915/gem/i915_gem_shmem.c: patch does not apply
error: patch failed: drivers/gpu/drm/i915/gem/i915_gem_userptr.c:170
error: drivers/gpu/drm/i915/gem/i915_gem_userptr.c: patch does not apply
error: Did you hand edit your patch?
It does not apply to blobs recorded in its index.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/gem/i915_gem_shmem.c
M	drivers/gpu/drm/i915/gem/i915_gem_userptr.c
Patch failed at 0002 drm/i915: Remove PAT hack from i915_gem_object_can_bypass_llc
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


