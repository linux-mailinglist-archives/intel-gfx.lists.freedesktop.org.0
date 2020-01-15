Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E74D913C212
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 13:56:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AFAD6E9C8;
	Wed, 15 Jan 2020 12:56:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F3D086E9CC;
 Wed, 15 Jan 2020 12:56:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EAACEA011C;
 Wed, 15 Jan 2020 12:56:52 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Yannick FERTRE" <yannick.fertre@st.com>
Date: Wed, 15 Jan 2020 12:56:52 -0000
Message-ID: <157909301293.2007.637583231030119366@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200115121652.7050-1-tzimmermann@suse.de>
In-Reply-To: <20200115121652.7050-1-tzimmermann@suse.de>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?drm=3A_Clean_up_VBLANK_callbacks_in_struct_drm=5Fdriver_=28rev7?=
 =?utf-8?q?=29?=
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

Series: drm: Clean up VBLANK callbacks in struct drm_driver (rev7)
URL   : https://patchwork.freedesktop.org/series/71873/
State : warning

== Summary ==

$ dim sparse origin/drm-tip
Sparse version: v0.6.0
Commit: drm: Add get_scanout_position() to struct drm_crtc_helper_funcs
Okay!

Commit: drm: Evaluate struct drm_device.vblank_disable_immediate on each use
Okay!

Commit: drm: Add get_vblank_timestamp() to struct drm_crtc_funcs
Okay!

Commit: drm/amdgpu: Convert to struct drm_crtc_helper_funcs.get_scanout_position()
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:5054:6: warning: symbol 'dm_drm_plane_destroy_state' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:5055:6: warning: symbol 'dm_drm_plane_destroy_state' was not declared. Should it be static?
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:8390:6: warning: symbol 'amdgpu_dm_psr_enable' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:8391:6: warning: symbol 'amdgpu_dm_psr_enable' was not declared. Should it be static?

Commit: drm/amdgpu: Convert to CRTC VBLANK callbacks
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:5055:6: warning: symbol 'dm_drm_plane_destroy_state' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:5057:6: warning: symbol 'dm_drm_plane_destroy_state' was not declared. Should it be static?
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:8391:6: warning: symbol 'amdgpu_dm_psr_enable' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:8393:6: warning: symbol 'amdgpu_dm_psr_enable' was not declared. Should it be static?

Commit: drm/gma500: Convert to CRTC VBLANK callbacks
Okay!

Commit: drm/i915: Convert to CRTC VBLANK callbacks
Okay!

Commit: drm/nouveau: Convert to struct drm_crtc_helper_funcs.get_scanout_position()
Okay!

Commit: drm/nouveau: Convert to CRTC VBLANK callbacks
Okay!

Commit: drm/radeon: Convert to struct drm_crtc_helper_funcs.get_scanout_position()
Okay!

Commit: drm/radeon: Convert to CRTC VBLANK callbacks
Okay!

Commit: drm/msm: Convert to struct drm_crtc_helper_funcs.get_scanout_position()
Okay!

Commit: drm/msm: Convert to CRTC VBLANK callbacks
Okay!

Commit: drm/stm: Convert to struct drm_crtc_helper_funcs.get_scanout_position()
Okay!

Commit: drm/stm: Convert to CRTC VBLANK callbacks
Okay!

Commit: drm/sti: Convert to CRTC VBLANK callbacks
Okay!

Commit: drm/vc4: Convert to struct drm_crtc_helper_funcs.get_scanout_position()
Okay!

Commit: drm/vc4: Convert to CRTC VBLANK callbacks
Okay!

Commit: drm/vkms: Convert to CRTC VBLANK callbacks
Okay!

Commit: drm/vmwgfx: Convert to CRTC VBLANK callbacks
Okay!

Commit: drm: Clean-up VBLANK-related callbacks in struct drm_driver
Okay!

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
