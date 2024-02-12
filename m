Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 076E48522D1
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Feb 2024 00:57:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80E3210E0BA;
	Mon, 12 Feb 2024 23:57:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A438910E329;
 Mon, 12 Feb 2024 23:57:22 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_fdinfo_shared_stats_?=
 =?utf-8?q?=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alex Deucher" <alexander.deucher@amd.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Feb 2024 23:57:22 -0000
Message-ID: <170778224267.1201024.14957483831035685999@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240212210428.851952-1-alexander.deucher@amd.com>
In-Reply-To: <20240212210428.851952-1-alexander.deucher@amd.com>
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

Series: fdinfo shared stats (rev3)
URL   : https://patchwork.freedesktop.org/series/129320/
State : warning

== Summary ==

Error: dim checkpatch failed
f543b001e135 Documentation/gpu: Update documentation on drm-shared-*
ada32ab7c415 drm: add drm_gem_object_is_shared_for_memory_stats() helper
661de209cc69 drm: update drm_show_memory_stats() for dma-bufs
9b6f046c8313 drm/amdgpu: add shared fdinfo stats
-:23: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#23: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_fdinfo.c:100:
+	drm_printf(p, "drm-shared-vram:\t%llu KiB\n", stats.vram_shared/1024UL);
 	                                                               ^

-:24: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#24: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_fdinfo.c:101:
+	drm_printf(p, "drm-shared-gtt:\t%llu KiB\n", stats.gtt_shared/1024UL);
 	                                                             ^

-:25: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#25: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_fdinfo.c:102:
+	drm_printf(p, "drm-shared-cpu:\t%llu KiB\n", stats.cpu_shared/1024UL);
 	                                                             ^

-:80: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u64' over 'uint64_t'
#80: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_object.h:142:
+	uint64_t vram_shared;

-:86: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u64' over 'uint64_t'
#86: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_object.h:148:
+	uint64_t gtt_shared;

-:90: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u64' over 'uint64_t'
#90: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_object.h:152:
+	uint64_t cpu_shared;

total: 0 errors, 0 warnings, 6 checks, 64 lines checked
2cebf827908a drm/i915: Update shared stats to use the new gem helper
0bb93fed63de drm/xe: Update shared stats to use the new gem helper


