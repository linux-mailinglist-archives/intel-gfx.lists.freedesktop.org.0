Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BE8A1250B7
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 19:36:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFF986EA51;
	Wed, 18 Dec 2019 18:36:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 175946EA4D;
 Wed, 18 Dec 2019 18:36:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0FD82A47DB;
 Wed, 18 Dec 2019 18:36:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 18 Dec 2019 18:36:27 -0000
Message-ID: <157669418706.8356.17981152891714445192@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191218143111.3852266-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191218143111.3852266-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5B1/8=5D_drm/i915/gt=3A_Teach_veng_to_defe?=
 =?utf-8?q?r_the_context_allocation?=
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

Series: series starting with [1/8] drm/i915/gt: Teach veng to defer the context allocation
URL   : https://patchwork.freedesktop.org/series/71119/
State : failure

== Summary ==

Applying: drm/i915/gt: Teach veng to defer the context allocation
Applying: drm/i915: Drop GEM context as a direct link from i915_request
Applying: drm/i915: Push the use-semaphore marker onto the intel_context
Applying: drm/i915: Remove i915->kernel_context
Applying: drm/i915: Move i915_gem_init_contexts() earlier
Applying: drm/i915/gt: Pull GT initialisation under intel_gt_init()
error: sha1 information is lacking or useless (drivers/gpu/drm/i915/gt/intel_lrc.c).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch' to see the failed patch
Patch failed at 0006 drm/i915/gt: Pull GT initialisation under intel_gt_init()
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
