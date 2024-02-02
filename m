Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F200E84678A
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 06:42:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6395810EAC9;
	Fri,  2 Feb 2024 05:42:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B764410E9D0;
 Fri,  2 Feb 2024 05:42:55 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_fdinfo_shared_stats_?=
 =?utf-8?q?=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alex Deucher" <alexander.deucher@amd.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 02 Feb 2024 05:42:55 -0000
Message-ID: <170685257575.936066.18383790918998756917@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240130161235.3237122-1-alexander.deucher@amd.com>
In-Reply-To: <20240130161235.3237122-1-alexander.deucher@amd.com>
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

Series: fdinfo shared stats (rev2)
URL   : https://patchwork.freedesktop.org/series/129320/
State : warning

== Summary ==

Error: dim checkpatch failed
e04a4c99ad58 Documentation/gpu: Update documentation on drm-shared-*
adecec6569ab drm: add drm_gem_object_is_shared_for_memory_stats() helper
-:36: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'obj->handle_count > 1'
#36: FILE: drivers/gpu/drm/drm_gem.c:1520:
+	if ((obj->handle_count > 1) || obj->dma_buf)

total: 0 errors, 0 warnings, 1 checks, 26 lines checked
c2e076a963f7 drm: update drm_show_memory_stats() for dma-bufs
0b822e585927 drm/amdgpu: add shared fdinfo stats
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
dabe061f5d89 drm/i915: Update shared stats to use the new gem helper
d46cfda8ad66 drm/xe: Update shared stats to use the new gem helper


