Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04DDBA2ABE3
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2025 15:52:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 441CE10E3A7;
	Thu,  6 Feb 2025 14:52:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD95510E3A7;
 Thu,  6 Feb 2025 14:51:44 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_drm/i915=3A_Fix_NULL_vs_I?=
 =?utf-8?q?S=5FERR=28=29_check_in_=5F=5Fshmem=5Fwriteback=28=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dan Carpenter" <dan.carpenter@linaro.org>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 06 Feb 2025 14:51:44 -0000
Message-ID: <173885350483.2073599.14079786914018664514@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <7f99a56b-d517-40b0-92b7-421c4fd813f2@stanley.mountain>
In-Reply-To: <7f99a56b-d517-40b0-92b7-421c4fd813f2@stanley.mountain>
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

Series: drm/i915: Fix NULL vs IS_ERR() check in __shmem_writeback()
URL   : https://patchwork.freedesktop.org/series/144406/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/144406/revisions/1/mbox/ not applied
Applying: drm/i915: Fix NULL vs IS_ERR() check in __shmem_writeback()
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/gem/i915_gem_shmem.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/gem/i915_gem_shmem.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gem/i915_gem_shmem.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 drm/i915: Fix NULL vs IS_ERR() check in __shmem_writeback()
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


