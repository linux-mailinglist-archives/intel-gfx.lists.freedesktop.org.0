Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A70CA592E7
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Mar 2025 12:41:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0949A10E0D2;
	Mon, 10 Mar 2025 11:41:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 18a75f3d1eae (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81C3010E03A;
 Mon, 10 Mar 2025 11:41:35 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_Plane_Color_Pipeline_supp?=
 =?utf-8?q?ort_for_Intel_platforms_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Uma Shankar" <uma.shankar@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Mar 2025 11:41:35 -0000
Message-ID: <174160689552.13123.7734763654675313651@18a75f3d1eae>
X-Patchwork-Hint: ignore
References: <20250305132608.2379253-1-uma.shankar@intel.com>
In-Reply-To: <20250305132608.2379253-1-uma.shankar@intel.com>
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

Series: Plane Color Pipeline support for Intel platforms (rev3)
URL   : https://patchwork.freedesktop.org/series/129811/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/129811/revisions/3/mbox/ not applied
Applying: drm: color pipeline base work
Using index info to reconstruct a base tree...
M	Documentation/gpu/rfc/index.rst
M	drivers/gpu/drm/Makefile
M	drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
M	drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_plane.c
M	drivers/gpu/drm/vkms/Kconfig
M	drivers/gpu/drm/vkms/Makefile
M	drivers/gpu/drm/vkms/vkms_drv.h
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/vkms/vkms_drv.h
CONFLICT (add/add): Merge conflict in drivers/gpu/drm/vkms/tests/Makefile
Auto-merging drivers/gpu/drm/vkms/tests/Makefile
CONFLICT (add/add): Merge conflict in drivers/gpu/drm/vkms/tests/.kunitconfig
Auto-merging drivers/gpu/drm/vkms/tests/.kunitconfig
Auto-merging drivers/gpu/drm/vkms/Makefile
CONFLICT (content): Merge conflict in drivers/gpu/drm/vkms/Makefile
Auto-merging drivers/gpu/drm/vkms/Kconfig
CONFLICT (content): Merge conflict in drivers/gpu/drm/vkms/Kconfig
Auto-merging drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_plane.c
Auto-merging drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
Auto-merging drivers/gpu/drm/Makefile
Auto-merging Documentation/gpu/rfc/index.rst
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 drm: color pipeline base work
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


