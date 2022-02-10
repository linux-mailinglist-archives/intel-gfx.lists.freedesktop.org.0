Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 312C34B119F
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 16:24:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B76310E893;
	Thu, 10 Feb 2022 15:24:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 40C8E10E87F;
 Thu, 10 Feb 2022 15:24:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3CE98A00FD;
 Thu, 10 Feb 2022 15:24:53 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Thu, 10 Feb 2022 15:24:53 -0000
Message-ID: <164450669324.24640.3662672518330170450@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220210121313.701004-1-matthew.auld@intel.com>
In-Reply-To: <20220210121313.701004-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBJ?=
 =?utf-8?q?nitial_support_for_small_BAR_recovery_=28rev3=29?=
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

Series: Initial support for small BAR recovery (rev3)
URL   : https://patchwork.freedesktop.org/series/99370/
State : failure

== Summary ==

Applying: drm/i915: add io_size plumbing
Applying: drm/i915/ttm: require mappable by default
Applying: drm/i915: add I915_BO_ALLOC_GPU_ONLY
Applying: drm/i915/buddy: track available visible size
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
M	drivers/gpu/drm/i915/i915_ttm_buddy_manager.h
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/i915_ttm_buddy_manager.h
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/i915_ttm_buddy_manager.h
Auto-merging drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0004 drm/i915/buddy: track available visible size
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


