Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1A206539D7
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Dec 2022 00:34:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FD3310E02D;
	Wed, 21 Dec 2022 23:34:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4A95B10E02D;
 Wed, 21 Dec 2022 23:34:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 42D6EA00E6;
 Wed, 21 Dec 2022 23:34:26 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Wed, 21 Dec 2022 23:34:26 -0000
Message-ID: <167166566624.32313.1482204855141117849@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <f849cc70-b21f-6476-ba26-08989d1243c2@alu.unizg.hr>
In-Reply-To: <f849cc70-b21f-6476-ba26-08989d1243c2@alu.unizg.hr>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBQ?=
 =?utf-8?q?ossible_regression_in_drm/i915_driver=3A_memleak?=
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

Series: Possible regression in drm/i915 driver: memleak
URL   : https://patchwork.freedesktop.org/series/112109/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/112109/revisions/1/mbox/ not applied
Applying: Possible regression in drm/i915 driver: memleak
error: patch failed: drivers/gpu/drm/i915/gem/i915_gem_mman.c:679
error: drivers/gpu/drm/i915/gem/i915_gem_mman.c: patch does not apply
error: Did you hand edit your patch?
It does not apply to blobs recorded in its index.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/gem/i915_gem_mman.c
Patch failed at 0001 Possible regression in drm/i915 driver: memleak
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


