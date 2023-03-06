Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C72AA6ACDA2
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Mar 2023 20:12:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB9DD10E432;
	Mon,  6 Mar 2023 19:12:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C761F10E430;
 Mon,  6 Mar 2023 19:12:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BF82DA0078;
 Mon,  6 Mar 2023 19:12:22 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Somalapuram Amaranath" <amaranath.somalapuram@amd.com>
Date: Mon, 06 Mar 2023 19:12:22 -0000
Message-ID: <167812994277.4156.13722128693656345615@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230306132343.41254-1-Amaranath.Somalapuram@amd.com>
In-Reply-To: <20230306132343.41254-1-Amaranath.Somalapuram@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/ttm=3A_Change_the_meaning_of_the_fields_in_the_ttm=5Fplace_s?=
 =?utf-8?q?tructure_from_pfn_to_bytes?=
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

Series: drm/ttm: Change the meaning of the fields in the ttm_place structure from pfn to bytes
URL   : https://patchwork.freedesktop.org/series/114706/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/114706/revisions/1/mbox/ not applied
Applying: drm/ttm: Change the meaning of the fields in the ttm_place structure from pfn to bytes
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/amd/amdgpu/amdgpu_object.c
M	drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c
M	drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
Auto-merging drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c
Auto-merging drivers/gpu/drm/amd/amdgpu/amdgpu_object.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/amd/amdgpu/amdgpu_object.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 drm/ttm: Change the meaning of the fields in the ttm_place structure from pfn to bytes
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


