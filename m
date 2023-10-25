Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D5E67D7551
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 22:16:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C51010E6FF;
	Wed, 25 Oct 2023 20:16:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C883410E6FF;
 Wed, 25 Oct 2023 20:16:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C242DAADED;
 Wed, 25 Oct 2023 20:16:23 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Christian Brauner" <brauner@kernel.org>
Date: Wed, 25 Oct 2023 20:16:23 -0000
Message-ID: <169826498379.20487.7678246160343879388@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231025-formfrage-watscheln-84526cd3bd7d@brauner>
In-Reply-To: <20231025-formfrage-watscheln-84526cd3bd7d@brauner>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBm?=
 =?utf-8?q?ile=2C_i915=3A_fix_file_reference_for_mmap=5Fsingleton=28=29?=
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

Series: file, i915: fix file reference for mmap_singleton()
URL   : https://patchwork.freedesktop.org/series/125570/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/125570/revisions/1/mbox/ not applied
Applying: file, i915: fix file reference for mmap_singleton()
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/gem/i915_gem_mman.c
M	fs/file.c
M	include/linux/fs.h
Falling back to patching base and 3-way merge...
Auto-merging include/linux/fs.h
CONFLICT (content): Merge conflict in include/linux/fs.h
Auto-merging fs/file.c
CONFLICT (content): Merge conflict in fs/file.c
Auto-merging drivers/gpu/drm/i915/gem/i915_gem_mman.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gem/i915_gem_mman.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 file, i915: fix file reference for mmap_singleton()
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


