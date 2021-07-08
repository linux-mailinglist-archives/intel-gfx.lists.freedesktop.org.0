Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D15583C1B65
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jul 2021 00:19:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EAC06E92F;
	Thu,  8 Jul 2021 22:19:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 41D0D6E92F;
 Thu,  8 Jul 2021 22:19:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3B0E0A8836;
 Thu,  8 Jul 2021 22:19:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jason Ekstrand" <jason@jlekstrand.net>
Date: Thu, 08 Jul 2021 22:19:49 -0000
Message-ID: <162578278921.32075.513155209711766742@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210708154835.528166-1-jason@jlekstrand.net>
In-Reply-To: <20210708154835.528166-1-jason@jlekstrand.net>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915/gem=3A_ioctl_clean-ups_=28rev8=29?=
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

Series: drm/i915/gem: ioctl clean-ups (rev8)
URL   : https://patchwork.freedesktop.org/series/89443/
State : failure

== Summary ==

Applying: drm/i915: Drop I915_CONTEXT_PARAM_RINGSIZE
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/Makefile
M	drivers/gpu/drm/i915/gem/i915_gem_context.c
A	drivers/gpu/drm/i915/gt/intel_context_param.c
M	drivers/gpu/drm/i915/gt/intel_context_param.h
M	include/uapi/drm/i915_drm.h
Falling back to patching base and 3-way merge...
Auto-merging include/uapi/drm/i915_drm.h
Auto-merging drivers/gpu/drm/i915/gt/intel_context_param.h
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gt/intel_context_param.h
Auto-merging drivers/gpu/drm/i915/gem/i915_gem_context.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gem/i915_gem_context.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 drm/i915: Drop I915_CONTEXT_PARAM_RINGSIZE
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
