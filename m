Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B97BA1EFE59
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jun 2020 18:58:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C67FA6E94B;
	Fri,  5 Jun 2020 16:58:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DE80F6E949;
 Fri,  5 Jun 2020 16:58:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D8395A47E6;
 Fri,  5 Jun 2020 16:58:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 05 Jun 2020 16:58:17 -0000
Message-ID: <159137629785.18509.513731909955759287@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200605095858.28455-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200605095858.28455-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5B1/5=5D_drm/i915=3A_Add_list=5Ffor=5Feach?=
 =?utf-8?q?=5Fentry=5Fsafe=5Fcontinue=5Freverse_=28rev2=29?=
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

Series: series starting with [1/5] drm/i915: Add list_for_each_entry_safe_continue_reverse (rev2)
URL   : https://patchwork.freedesktop.org/series/78031/
State : failure

== Summary ==

Applying: drm/i915: Add list_for_each_entry_safe_continue_reverse
Applying: drm/i915/gem: Separate reloc validation into an earlier step
Applying: drm/i915/gem: Lift GPU relocation allocation
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0003 drm/i915/gem: Lift GPU relocation allocation
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
