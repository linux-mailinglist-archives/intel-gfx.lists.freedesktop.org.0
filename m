Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7806A14F2D7
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 20:38:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01CAF6FBE2;
	Fri, 31 Jan 2020 19:38:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1FD2C6FBE0;
 Fri, 31 Jan 2020 19:38:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 16EB2A0094;
 Fri, 31 Jan 2020 19:38:23 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 31 Jan 2020 19:38:23 -0000
Message-ID: <158049950309.13121.7138322619293038399@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200131081543.2251298-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200131081543.2251298-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5B1/2=5D_drm/i915/gt=3A_Also_use_async_bin?=
 =?utf-8?q?d_for_PIN=5FUSER_into_bsw/bxt_ggtt_=28rev3=29?=
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

Series: series starting with [1/2] drm/i915/gt: Also use async bind for PIN_USER into bsw/bxt ggtt (rev3)
URL   : https://patchwork.freedesktop.org/series/72809/
State : failure

== Summary ==

Applying: drm/i915/gt: Also use async bind for PIN_USER into bsw/bxt ggtt
.git/rebase-apply/patch:15: space before tab in indent.
		       	I915_VMA_GLOBAL_BIND | I915_VMA_LOCAL_BIND;
warning: 1 line adds whitespace errors.
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/gt/intel_ggtt.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/gt/intel_ggtt.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gt/intel_ggtt.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch' to see the failed patch
Patch failed at 0001 drm/i915/gt: Also use async bind for PIN_USER into bsw/bxt ggtt
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
