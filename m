Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F38643937D7
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 23:17:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F6536F4E6;
	Thu, 27 May 2021 21:17:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AAA796F4E6;
 Thu, 27 May 2021 21:17:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A7BA2A47E8;
 Thu, 27 May 2021 21:17:14 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jason Ekstrand" <jason@jlekstrand.net>
Date: Thu, 27 May 2021 21:17:14 -0000
Message-ID: <162215023468.12240.13519807383762020998@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210527162650.1182544-1-jason@jlekstrand.net>
In-Reply-To: <20210527162650.1182544-1-jason@jlekstrand.net>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915/gem=3A_ioctl_clean-ups_=28rev5=29?=
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

Series: drm/i915/gem: ioctl clean-ups (rev5)
URL   : https://patchwork.freedesktop.org/series/89443/
State : failure

== Summary ==

Applying: drm/i915: Drop I915_CONTEXT_PARAM_RINGSIZE
Applying: drm/i915: Stop storing the ring size in the ring pointer (v2)
Applying: drm/i915: Drop I915_CONTEXT_PARAM_NO_ZEROMAP
Applying: drm/i915/gem: Set the watchdog timeout directly in intel_context_set_gem (v2)
Applying: drm/i915/gem: Return void from context_apply_all
Applying: drm/i915: Drop the CONTEXT_CLONE API (v2)
Applying: drm/i915: Implement SINGLE_TIMELINE with a syncobj (v4)
Applying: drm/i915: Drop getparam support for I915_CONTEXT_PARAM_ENGINES
Applying: drm/i915/gem: Disallow bonding of virtual engines (v3)
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/gt/intel_execlists_submission.c
M	drivers/gpu/drm/i915/gt/intel_execlists_submission.h
M	drivers/gpu/drm/i915/gt/selftest_execlists.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/gt/selftest_execlists.c
Auto-merging drivers/gpu/drm/i915/gt/intel_execlists_submission.h
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gt/intel_execlists_submission.h
Auto-merging drivers/gpu/drm/i915/gt/intel_execlists_submission.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0009 drm/i915/gem: Disallow bonding of virtual engines (v3)
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
