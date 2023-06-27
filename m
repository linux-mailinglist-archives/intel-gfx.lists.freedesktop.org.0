Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 40C2E740436
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jun 2023 22:02:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B968510E058;
	Tue, 27 Jun 2023 20:02:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A0F6C10E00D;
 Tue, 27 Jun 2023 20:02:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9DC18AADD7;
 Tue, 27 Jun 2023 20:02:01 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Qi Zheng" <zhengqi.arch@bytedance.com>
Date: Tue, 27 Jun 2023 20:02:01 -0000
Message-ID: <168789612164.2459.9303926015115144933@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230622085335.77010-1-zhengqi.arch@bytedance.com>
In-Reply-To: <20230622085335.77010-1-zhengqi.arch@bytedance.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciB1?=
 =?utf-8?q?se_refcount+RCU_method_to_implement_lockless_slab_shrink?=
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

Series: use refcount+RCU method to implement lockless slab shrink
URL   : https://patchwork.freedesktop.org/series/119926/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/119926/revisions/1/mbox/ not applied
Applying: mm: shrinker: add shrinker::private_data field
Applying: mm: vmscan: introduce some helpers for dynamically allocating shrinker
Applying: drm/i915: dynamically allocate the i915_gem_mm shrinker
Applying: drm/msm: dynamically allocate the drm-msm_gem shrinker
Applying: drm/panfrost: dynamically allocate the drm-panfrost shrinker
Applying: dm: dynamically allocate the dm-bufio shrinker
Applying: dm zoned: dynamically allocate the dm-zoned-meta shrinker
Applying: md/raid5: dynamically allocate the md-raid5 shrinker
Applying: bcache: dynamically allocate the md-bcache shrinker
Applying: vmw_balloon: dynamically allocate the vmw-balloon shrinker
Applying: virtio_balloon: dynamically allocate the virtio-balloon shrinker
Applying: mbcache: dynamically allocate the mbcache shrinker
Applying: ext4: dynamically allocate the ext4-es shrinker
Applying: jbd2, ext4: dynamically allocate the jbd2-journal shrinker
Applying: NFSD: dynamically allocate the nfsd-client shrinker
Applying: NFSD: dynamically allocate the nfsd-reply shrinker
Applying: xfs: dynamically allocate the xfs-buf shrinker
Applying: xfs: dynamically allocate the xfs-inodegc shrinker
Applying: xfs: dynamically allocate the xfs-qm shrinker
Applying: zsmalloc: dynamically allocate the mm-zspool shrinker
Using index info to reconstruct a base tree...
M	mm/zsmalloc.c
Falling back to patching base and 3-way merge...
Auto-merging mm/zsmalloc.c
Applying: fs: super: dynamically allocate the s_shrink
Using index info to reconstruct a base tree...
M	fs/btrfs/super.c
M	fs/super.c
M	include/linux/fs.h
Falling back to patching base and 3-way merge...
Auto-merging include/linux/fs.h
Auto-merging fs/super.c
Auto-merging fs/btrfs/super.c
Applying: drm/ttm: introduce pool_shrink_rwsem
error: sha1 information is lacking or useless (mm/vmscan.c).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0022 drm/ttm: introduce pool_shrink_rwsem
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


