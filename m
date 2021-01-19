Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A4D62FC077
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jan 2021 21:01:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C15216E42D;
	Tue, 19 Jan 2021 20:01:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4BA8F6E415;
 Tue, 19 Jan 2021 20:00:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3740CA0099;
 Tue, 19 Jan 2021 20:00:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 19 Jan 2021 20:00:58 -0000
Message-ID: <161108645822.4865.5116988504180644440@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210119121017.6888-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210119121017.6888-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5B1/9=5D_drm/i915/gt=3A_Show_the_per-engin?=
 =?utf-8?q?e_runtime_in_sysfs_=28rev2=29?=
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

Series: series starting with [1/9] drm/i915/gt: Show the per-engine runtime in sysfs (rev2)
URL   : https://patchwork.freedesktop.org/series/86040/
State : failure

== Summary ==

Applying: drm/i915/gt: Show the per-engine runtime in sysfs
Applying: drm/i915: Expose list of clients in sysfs
Applying: drm/i915: Update client name on context create
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/i915_drm_client.c
M	drivers/gpu/drm/i915/i915_drm_client.h
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/i915_drm_client.h
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/i915_drm_client.h
Auto-merging drivers/gpu/drm/i915/i915_drm_client.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/i915_drm_client.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0003 drm/i915: Update client name on context create
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
