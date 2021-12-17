Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4927C478873
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Dec 2021 11:12:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D47D10FDA0;
	Fri, 17 Dec 2021 10:12:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8DFDF10FD51;
 Fri, 17 Dec 2021 10:12:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 860FFA0BCB;
 Fri, 17 Dec 2021 10:12:00 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sundaresan, Sujaritha" <sujaritha.sundaresan@intel.com>
Date: Fri, 17 Dec 2021 10:12:00 -0000
Message-ID: <163973592054.10412.5668691914581702623@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211214193346.21231-1-andi.shyti@linux.intel.com>
In-Reply-To: <20211214193346.21231-1-andi.shyti@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBN?=
 =?utf-8?q?ore_preparation_for_multi_gt_patches_=28rev2=29?=
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

Series: More preparation for multi gt patches (rev2)
URL   : https://patchwork.freedesktop.org/series/98032/
State : failure

== Summary ==

Applying: drm/i915: Store backpointer to GT in uncore
Applying: drm/i915: Introduce to_gt() helper
Applying: drm/i915/display: Use to_gt() helper
Applying: drm/i915/gt: Use to_gt() helper
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/gt/uc/selftest_guc.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/gt/uc/selftest_guc.c
warning: quoted CRLF detected
Applying: drm/i915/gem: Use to_gt() helper
Applying: drm/i915/gvt: Use to_gt() helper
Applying: drm/i915/selftests: Use to_gt() helper
Applying: drm/i915/pxp: Use to_gt() helper
Applying: drm/i915: Use to_gt() helper
Applying: drm/i915: Rename i915->gt to i915->gt0
Applying: drm/i915/gem: Use to_gt() helper for GGTT accesses
error: corrupt patch at line 44
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0011 drm/i915/gem: Use to_gt() helper for GGTT accesses
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


