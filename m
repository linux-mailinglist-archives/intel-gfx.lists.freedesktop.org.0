Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FBBC3FC32D
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Aug 2021 09:17:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7429289BAF;
	Tue, 31 Aug 2021 07:17:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9FDCF89B30;
 Tue, 31 Aug 2021 07:17:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 98897A00CC;
 Tue, 31 Aug 2021 07:17:05 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 31 Aug 2021 07:17:05 -0000
Message-ID: <163039422562.10658.11722849913638323008@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210831071536.80636-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210831071536.80636-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/ttm=3A_Fix_ttm=5Fbo=5Fmove=5Fmemcpy=28=29_for_subclassed_str?=
 =?utf-8?q?uct_ttm=5Fresource_=28rev2=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/ttm: Fix ttm_bo_move_memcpy() for subclassed struct ttm_resource (rev2)
URL   : https://patchwork.freedesktop.org/series/94154/
State : failure

== Summary ==

Applying: drm/ttm: Fix ttm_bo_move_memcpy() for subclassed struct ttm_resource
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/ttm/ttm_bo_util.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/ttm/ttm_bo_util.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/ttm/ttm_bo_util.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 drm/ttm: Fix ttm_bo_move_memcpy() for subclassed struct ttm_resource
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


