Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 16207147415
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 23:55:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61B446FE94;
	Thu, 23 Jan 2020 22:55:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4A70A6FE93;
 Thu, 23 Jan 2020 22:55:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2EE22A0088;
 Thu, 23 Jan 2020 22:55:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Yannick Fertre" <yannick.fertre@st.com>
Date: Thu, 23 Jan 2020 22:55:06 -0000
Message-ID: <157982010618.1144.5514118363637257886@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200123135943.24140-1-tzimmermann@suse.de>
In-Reply-To: <20200123135943.24140-1-tzimmermann@suse.de>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm=3A_Clean_up_VBLANK_callbacks_in_struct_drm=5Fdriver_=28rev9?=
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

Series: drm: Clean up VBLANK callbacks in struct drm_driver (rev9)
URL   : https://patchwork.freedesktop.org/series/71873/
State : failure

== Summary ==

Applying: drm: Remove internal setup of struct drm_device.vblank_disable_immediate
Applying: drm: Add get_scanout_position() to struct drm_crtc_helper_funcs
Applying: drm: Add get_vblank_timestamp() to struct drm_crtc_funcs
Applying: drm/amdgpu: Convert to struct drm_crtc_helper_funcs.get_scanout_position()
Applying: drm/amdgpu: Convert to CRTC VBLANK callbacks
Applying: drm/gma500: Convert to CRTC VBLANK callbacks
Applying: drm/i915: Convert to CRTC VBLANK callbacks
Applying: drm/nouveau: Convert to struct drm_crtc_helper_funcs.get_scanout_position()
Applying: drm/nouveau: Convert to CRTC VBLANK callbacks
Applying: drm/radeon: Convert to struct drm_crtc_helper_funcs.get_scanout_position()
Applying: drm/radeon: Convert to CRTC VBLANK callbacks
Applying: drm/msm: Convert to struct drm_crtc_helper_funcs.get_scanout_position()
Applying: drm/msm: Convert to CRTC VBLANK callbacks
Applying: drm/stm: Convert to struct drm_crtc_helper_funcs.get_scanout_position()
Applying: drm/stm: Convert to CRTC VBLANK callbacks
Applying: drm/sti: Convert to CRTC VBLANK callbacks
Applying: drm/vc4: Convert to struct drm_crtc_helper_funcs.get_scanout_position()
Applying: drm/vc4: Convert to CRTC VBLANK callbacks
Applying: drm/vkms: Convert to CRTC VBLANK callbacks
Applying: drm/vmwgfx: Convert to CRTC VBLANK callbacks
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/vmwgfx/vmwgfx_drv.c
M	drivers/gpu/drm/vmwgfx/vmwgfx_drv.h
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/vmwgfx/vmwgfx_drv.h
Auto-merging drivers/gpu/drm/vmwgfx/vmwgfx_drv.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/vmwgfx/vmwgfx_drv.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch' to see the failed patch
Patch failed at 0020 drm/vmwgfx: Convert to CRTC VBLANK callbacks
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
