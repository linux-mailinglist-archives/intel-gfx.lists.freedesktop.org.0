Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 774183FC543
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Aug 2021 12:16:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABD5789A57;
	Tue, 31 Aug 2021 10:16:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id ACFFB899FF;
 Tue, 31 Aug 2021 10:16:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A3D0AA7E03;
 Tue, 31 Aug 2021 10:16:34 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 31 Aug 2021 10:16:34 -0000
Message-ID: <163040499463.10658.6497698319981937686@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210813203033.3179400-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210813203033.3179400-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_drm/i915=3A_Release_i915=5Fgem=5Fcontext_fr?=
 =?utf-8?q?om_a_worker_=28rev3=29?=
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

Series: series starting with drm/i915: Release i915_gem_context from a worker (rev3)
URL   : https://patchwork.freedesktop.org/series/93693/
State : failure

== Summary ==

Applying: drm/i915: Release i915_gem_context from a worker
Applying: drm/i915: Release ctx->syncobj on final put, not on ctx close
Applying: drm/i915: Keep gem ctx->vm alive until the final put
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/gem/i915_gem_context.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/gem/i915_gem_context.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gem/i915_gem_context.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0003 drm/i915: Keep gem ctx->vm alive until the final put
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


