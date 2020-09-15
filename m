Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A2AE26A99D
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Sep 2020 18:22:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA0796E88B;
	Tue, 15 Sep 2020 16:22:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4F0206E86D;
 Tue, 15 Sep 2020 16:22:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 45D20A0118;
 Tue, 15 Sep 2020 16:22:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Zimmermann" <tzimmermann@suse.de>
Date: Tue, 15 Sep 2020 16:22:11 -0000
Message-ID: <160018693128.30602.16153587201365958084@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200915145958.19993-1-tzimmermann@suse.de>
In-Reply-To: <20200915145958.19993-1-tzimmermann@suse.de>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Convert_all_remaining_drivers_to_GEM_object_functions_=28re?=
 =?utf-8?b?djIp?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Convert all remaining drivers to GEM object functions (rev2)
URL   : https://patchwork.freedesktop.org/series/80593/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
3975f25bdb58 drm/amdgpu: Introduce GEM object functions
c6ad3a511161 drm/armada: Introduce GEM object functions
c8098f5d6e95 drm/etnaviv: Introduce GEM object functions
a81e48db00e5 drm/exynos: Introduce GEM object functions
53210f7f0722 drm/gma500: Introduce GEM object functions
dbfefd13964e drm/i915: Introduce GEM object functions
ba32f8dd23b5 drm/mediatek: Introduce GEM object functions
504106e74ccc drm/msm: Introduce GEM object funcs
324848fd8dc0 drm/nouveau: Introduce GEM object functions
a37cb8db61ac drm/omapdrm: Introduce GEM object functions
a40c13d7fe1c drm/pl111: Introduce GEM object functions
8cfbfcdfaf7b drm/radeon: Introduce GEM object functions
-:97: WARNING:AVOID_EXTERNS: externs should be avoided in .c files
#97: FILE: drivers/gpu/drm/radeon/radeon_gem.c:41:
+int radeon_gem_prime_pin(struct drm_gem_object *obj);

-:98: WARNING:AVOID_EXTERNS: externs should be avoided in .c files
#98: FILE: drivers/gpu/drm/radeon/radeon_gem.c:42:
+void radeon_gem_prime_unpin(struct drm_gem_object *obj);

-:100: WARNING:AVOID_EXTERNS: externs should be avoided in .c files
#100: FILE: drivers/gpu/drm/radeon/radeon_gem.c:44:
+void radeon_gem_prime_vunmap(struct drm_gem_object *obj, void *vaddr);

total: 0 errors, 3 warnings, 0 checks, 118 lines checked
376266125805 drm/rockchip: Convert to drm_gem_object_funcs
4b77e1b2c5a8 drm/tegra: Introduce GEM object functions
cd6d5c4922a9 drm/vc4: Introduce GEM object functions
716d7874560f drm/vgem: Introduce GEM object functions
8bbc5ccb9b19 drm/virtgpu: Set PRIME export function in struct drm_gem_object_funcs
ac18c0a1f4e6 drm/vkms: Introduce GEM object functions
0e96620ce337 drm/xen: Introduce GEM object functions
308dcf21fda5 drm/xlnx: Initialize DRM driver instance with CMA helper macro
cab017216e88 drm: Remove obsolete GEM and PRIME callbacks from struct drm_driver


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
