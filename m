Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DA16589EE2
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Aug 2022 17:45:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A45159BCA3;
	Thu,  4 Aug 2022 15:45:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E24F09BC93;
 Thu,  4 Aug 2022 15:45:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B4AC9A00FD;
 Thu,  4 Aug 2022 15:45:24 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dmitry Osipenko" <dmitry.osipenko@collabora.com>
Date: Thu, 04 Aug 2022 15:45:24 -0000
Message-ID: <165962792473.14889.16944921655352842884@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220725151839.31622-1-dmitry.osipenko@collabora.com>
In-Reply-To: <20220725151839.31622-1-dmitry.osipenko@collabora.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBN?=
 =?utf-8?q?ove_all_drivers_to_a_common_dma-buf_locking_convention?=
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

Series: Move all drivers to a common dma-buf locking convention
URL   : https://patchwork.freedesktop.org/series/106980/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/106980/revisions/1/mbox/ not applied
Applying: dma-buf: Add _unlocked postfix to function names
Using index info to reconstruct a base tree...
M	drivers/dma-buf/dma-buf.c
M	drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
M	drivers/gpu/drm/armada/armada_gem.c
A	drivers/gpu/drm/drm_gem_cma_helper.c
M	drivers/gpu/drm/drm_gem_shmem_helper.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/drm_gem_shmem_helper.c
Auto-merging drivers/gpu/drm/drm_gem_dma_helper.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/drm_gem_dma_helper.c
Auto-merging drivers/gpu/drm/armada/armada_gem.c
Auto-merging drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
Auto-merging drivers/dma-buf/dma-buf.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 dma-buf: Add _unlocked postfix to function names
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


