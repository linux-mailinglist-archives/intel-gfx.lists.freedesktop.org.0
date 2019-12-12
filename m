Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9777411D4EB
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 19:09:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B8C36E0D1;
	Thu, 12 Dec 2019 18:09:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C1CD46E07F;
 Thu, 12 Dec 2019 18:09:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B9841A0138;
 Thu, 12 Dec 2019 18:09:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 12 Dec 2019 18:09:49 -0000
Message-ID: <157617418973.32008.13713259433976986319@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191212140459.1307617-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191212140459.1307617-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5B01/33=5D_drm/i915=3A_Use_EAGAIN_for_tryl?=
 =?utf-8?q?ock_failures?=
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

Series: series starting with [01/33] drm/i915: Use EAGAIN for trylock failures
URL   : https://patchwork.freedesktop.org/series/70833/
State : failure

== Summary ==

Applying: drm/i915: Use EAGAIN for trylock failures
Applying: drm/i915: Eliminate the trylock for awaiting an earlier request
Applying: drm/i915/gt: Eliminate the trylock for reading a timeline's hwsp
Applying: drm/i915/uc: Ignore maybe-unused debug-only i915 local
Applying: drm/i915/gem: Prepare gen7 cmdparser for async execution
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
M	drivers/gpu/drm/i915/gt/intel_gpu_commands.h
M	drivers/gpu/drm/i915/i915_cmd_parser.c
M	drivers/gpu/drm/i915/i915_drv.h
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/i915_cmd_parser.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/i915_cmd_parser.c
Auto-merging drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch' to see the failed patch
Patch failed at 0005 drm/i915/gem: Prepare gen7 cmdparser for async execution
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
