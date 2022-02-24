Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 014394C2193
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Feb 2022 03:10:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4218F10E1DD;
	Thu, 24 Feb 2022 02:10:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CF20610E1D1;
 Thu, 24 Feb 2022 02:10:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CA07FA008A;
 Thu, 24 Feb 2022 02:10:32 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arunpravin" <arunpravin.paneerselvam@amd.com>
Date: Thu, 24 Feb 2022 02:10:32 -0000
Message-ID: <164566863279.32674.7930449055141897320@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220222174845.2175-1-Arunpravin.PaneerSelvam@amd.com>
In-Reply-To: <20220222174845.2175-1-Arunpravin.PaneerSelvam@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5Bv2=2C1/7=5D_drm/selftests=3A_Move_i915_b?=
 =?utf-8?q?uddy_selftests_into_drm_=28rev2=29?=
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

Series: series starting with [v2,1/7] drm/selftests: Move i915 buddy selftests into drm (rev2)
URL   : https://patchwork.freedesktop.org/series/100598/
State : failure

== Summary ==

Applying: drm/selftests: Move i915 buddy selftests into drm
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/Kconfig
M	drivers/gpu/drm/selftests/Makefile
Falling back to patching base and 3-way merge...
CONFLICT (add/add): Merge conflict in drivers/gpu/drm/selftests/test-drm_buddy.c
Auto-merging drivers/gpu/drm/selftests/test-drm_buddy.c
CONFLICT (add/add): Merge conflict in drivers/gpu/drm/selftests/drm_buddy_selftests.h
Auto-merging drivers/gpu/drm/selftests/drm_buddy_selftests.h
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 drm/selftests: Move i915 buddy selftests into drm
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


