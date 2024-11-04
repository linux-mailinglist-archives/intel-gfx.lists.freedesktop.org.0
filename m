Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DA7D9BB47A
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2024 13:17:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C45510E407;
	Mon,  4 Nov 2024 12:17:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D52CB10E404;
 Mon,  4 Nov 2024 12:17:44 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_Refactor_MST_DSC_Determin?=
 =?utf-8?q?ation_Policy?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Fangzhi Zuo" <jerry.zuo@amd.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 04 Nov 2024 12:17:44 -0000
Message-ID: <173072266486.1390606.3191368135230456708@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241101212546.4060-1-Jerry.Zuo@amd.com>
In-Reply-To: <20241101212546.4060-1-Jerry.Zuo@amd.com>
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

Series: Refactor MST DSC Determination Policy
URL   : https://patchwork.freedesktop.org/series/140832/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/140832/revisions/1/mbox/ not applied
Applying: drm/display/dsc: Refactor DRM MST DSC Determination Policy
Applying: drm/display/dsc: MST DSC Interface Change
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_debugfs.c
M	drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_helpers.c
M	drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c
M	drivers/gpu/drm/i915/display/intel_dp.c
M	drivers/gpu/drm/i915/display/intel_dp_mst.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/display/intel_dp_mst.c
Auto-merging drivers/gpu/drm/i915/display/intel_dp.c
Auto-merging drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c
Auto-merging drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_helpers.c
Auto-merging drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_debugfs.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0002 drm/display/dsc: MST DSC Interface Change
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


