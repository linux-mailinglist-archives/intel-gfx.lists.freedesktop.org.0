Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E8536A91CE
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Mar 2023 08:41:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D33710E07E;
	Fri,  3 Mar 2023 07:41:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 657EC10E07C;
 Fri,  3 Mar 2023 07:41:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5C0F3A03D2;
 Fri,  3 Mar 2023 07:41:01 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Somalapuram Amaranath" <amaranath.somalapuram@amd.com>
Date: Fri, 03 Mar 2023 07:41:01 -0000
Message-ID: <167782926137.9996.11634529781557754241@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230303071659.1213074-1-Amaranath.Somalapuram@amd.com>
In-Reply-To: <20230303071659.1213074-1-Amaranath.Somalapuram@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBD?=
 =?utf-8?q?hange_the_meaning_of_the_fields_in_the_ttm=5Fplace_structure_fr?=
 =?utf-8?q?om_pfn_to_bytes?=
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

Series: Change the meaning of the fields in the ttm_place structure from pfn to bytes
URL   : https://patchwork.freedesktop.org/series/114603/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/114603/revisions/1/mbox/ not applied
Applying: Change the meaning of the fields in the ttm_place structure from pfn to bytes
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
Patch failed at 0001 Change the meaning of the fields in the ttm_place structure from pfn to bytes
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


