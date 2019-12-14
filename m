Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DBF811EFE3
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Dec 2019 03:07:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF12F6E08A;
	Sat, 14 Dec 2019 02:07:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 83A9A6E072;
 Sat, 14 Dec 2019 02:07:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 75234A363B;
 Sat, 14 Dec 2019 02:07:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi@etezian.org>
Date: Sat, 14 Dec 2019 02:07:02 -0000
Message-ID: <157628922245.13803.2550187429024585617@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191213210050.33611-1-andi@etezian.org>
In-Reply-To: <20191213210050.33611-1-andi@etezian.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBT?=
 =?utf-8?q?ome_debugfs_enhancements_=28rev5=29?=
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

Series: Some debugfs enhancements (rev5)
URL   : https://patchwork.freedesktop.org/series/70658/
State : failure

== Summary ==

Applying: drm/i915/rps: Add frequency translation helpers
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/gt/intel_rps.c
M	drivers/gpu/drm/i915/gt/intel_rps.h
M	drivers/gpu/drm/i915/i915_debugfs.c
M	drivers/gpu/drm/i915/i915_sysfs.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/i915_sysfs.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/i915_sysfs.c
Auto-merging drivers/gpu/drm/i915/i915_debugfs.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/i915_debugfs.c
Auto-merging drivers/gpu/drm/i915/gt/intel_rps.h
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gt/intel_rps.h
Auto-merging drivers/gpu/drm/i915/gt/intel_rps.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch' to see the failed patch
Patch failed at 0001 drm/i915/rps: Add frequency translation helpers
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
