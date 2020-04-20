Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A441B16B4
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2020 22:09:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61CEB6E84F;
	Mon, 20 Apr 2020 20:09:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9F2E26E84E;
 Mon, 20 Apr 2020 20:09:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 979FEA00E6;
 Mon, 20 Apr 2020 20:09:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 20 Apr 2020 20:09:46 -0000
Message-ID: <158741338661.29873.15863592231954057639@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200420172739.11620-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200420172739.11620-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5BCI=2C1/6=5D_drm/i915/selftests=3A_Verify?=
 =?utf-8?q?_frequency_scaling_with_RPS?=
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

Series: series starting with [CI,1/6] drm/i915/selftests: Verify frequency scaling with RPS
URL   : https://patchwork.freedesktop.org/series/76210/
State : failure

== Summary ==

Applying: drm/i915/selftests: Verify frequency scaling with RPS
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/gt/selftest_gt_pm.c
M	drivers/gpu/drm/i915/gt/selftest_rps.c
M	drivers/gpu/drm/i915/gt/selftest_rps.h
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/gt/selftest_rps.h
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gt/selftest_rps.h
Auto-merging drivers/gpu/drm/i915/gt/selftest_rps.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gt/selftest_rps.c
Auto-merging drivers/gpu/drm/i915/gt/selftest_gt_pm.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gt/selftest_gt_pm.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 drm/i915/selftests: Verify frequency scaling with RPS
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
