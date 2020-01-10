Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 76081136A34
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2020 10:49:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E265E6E9A2;
	Fri, 10 Jan 2020 09:49:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 49C1A6E9A3;
 Fri, 10 Jan 2020 09:49:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3F1F4A0009;
 Fri, 10 Jan 2020 09:49:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Zimmermann" <tzimmermann@suse.de>
Date: Fri, 10 Jan 2020 09:49:17 -0000
Message-ID: <157864975723.30838.4219714689592450014@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200110092127.27847-1-tzimmermann@suse.de>
In-Reply-To: <20200110092127.27847-1-tzimmermann@suse.de>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?drm=3A_Clean_up_VBLANK_callbacks_in_struct_drm=5Fdriver?=
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

Series: drm: Clean up VBLANK callbacks in struct drm_driver
URL   : https://patchwork.freedesktop.org/series/71873/
State : warning

== Summary ==

$ dim sparse origin/drm-tip
Sparse version: v0.6.0
Commit: drm: Add get_scanout_position() to struct drm_crtc_helper_funcs
Okay!

Commit: drm/amdgpu: Convert to struct drm_crtc_helper_funcs.get_scanout_position()
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:4937:6: warning: symbol 'dm_drm_plane_destroy_state' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:4938:6: warning: symbol 'dm_drm_plane_destroy_state' was not declared. Should it be static?
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:8232:6: warning: symbol 'amdgpu_dm_psr_enable' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:8233:6: warning: symbol 'amdgpu_dm_psr_enable' was not declared. Should it be static?

Commit: drm/i915: Don't use struct drm_driver.get_scanout_position()
Okay!

Commit: drm/nouveau: Convert to struct drm_crtc_helper_funcs.get_scanout_position()
Okay!

Commit: drm/radeon: Convert to struct drm_crtc_helper_funcs.get_scanout_position()
Okay!

Commit: drm/msm: Convert to struct drm_crtc_helper_funcs.get_scanout_position()
Okay!

Commit: drm/vc4: Convert to struct drm_crtc_helper_funcs.get_scanout_position()
Okay!

Commit: drm/stm: Convert to struct drm_crtc_helper_funcs.get_scanout_position()
Okay!

Commit: drm: Remove struct drm_driver.get_scanout_position()
Okay!

Commit: drm: Evaluate struct drm_device.vblank_disable_immediate on each use
Okay!

Commit: drm: Add get_vblank_timestamp() to struct drm_crtc_funcs
Okay!

Commit: drm/amdgpu: Convert to CRTC VBLANK callbacks
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:4938:6: warning: symbol 'dm_drm_plane_destroy_state' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:4940:6: warning: symbol 'dm_drm_plane_destroy_state' was not declared. Should it be static?
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:8233:6: warning: symbol 'amdgpu_dm_psr_enable' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:8235:6: warning: symbol 'amdgpu_dm_psr_enable' was not declared. Should it be static?

Commit: drm/gma500: Convert to CRTC VBLANK callbacks
Okay!

Commit: drm/i915: Convert to CRTC VBLANK callbacks
Okay!

Commit: drm/msm: Convert to CRTC VBLANK callbacks
Okay!

Commit: drm/nouveau: Convert to CRTC VBLANK callbacks
Okay!

Commit: drm/radeon: Convert to CRTC VBLANK callbacks
Okay!

Commit: drm/sti: Convert to CRTC VBLANK callbacks
Okay!

Commit: drm/stm: Convert to CRTC VBLANK callbacks
Okay!

Commit: drm/vc4: Convert to CRTC VBLANK callbacks
Okay!

Commit: drm/vkms: Convert to CRTC VBLANK callbacks
Okay!

Commit: drm/vmwgfx: Convert to CRTC VBLANK callbacks
Okay!

Commit: drm: Cleanup VBLANK callbacks in struct drm_driver
Okay!

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
