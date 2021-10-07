Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50CC2425E59
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Oct 2021 22:58:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A4576F4D4;
	Thu,  7 Oct 2021 20:58:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 18EC86E03C;
 Thu,  7 Oct 2021 20:58:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 14B63A8169;
 Thu,  7 Oct 2021 20:58:32 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Fernando Ramos" <greenfoo@u92.eu>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 07 Oct 2021 20:58:32 -0000
Message-ID: <163364031208.5187.990934714742838785@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211007193755.29579-1-greenfoo@u92.eu>
In-Reply-To: <20211007193755.29579-1-greenfoo@u92.eu>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm=3A_cleanup=3A_Use_DRM=5FMODESET=5FLOCK=5FALL=5F*_helper?=
 =?utf-8?q?s?=
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

Series: drm: cleanup: Use DRM_MODESET_LOCK_ALL_* helpers
URL   : https://patchwork.freedesktop.org/series/95578/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
8d34fdf1cc49 drm: cleanup: drm_modeset_lock_all_ctx() --> DRM_MODESET_LOCK_ALL_BEGIN()
7cbf763b4871 drm/i915: cleanup: drm_modeset_lock_all_ctx() --> DRM_MODESET_LOCK_ALL_BEGIN()
13cb92d49c02 drm/msm: cleanup: drm_modeset_lock_all_ctx() --> DRM_MODESET_LOCK_ALL_BEGIN()
b82af3f59874 drm: cleanup: drm_modeset_lock_all() --> DRM_MODESET_LOCK_ALL_BEGIN()
bb35bbdd26ff drm/vmwgfx: cleanup: drm_modeset_lock_all() --> DRM_MODESET_LOCK_ALL_BEGIN()
a8040ea39f2d drm/tegra: cleanup: drm_modeset_lock_all() --> DRM_MODESET_LOCK_ALL_BEGIN()
d44440712186 drm/shmobile: cleanup: drm_modeset_lock_all() --> DRM_MODESET_LOCK_ALL_BEGIN()
1de49f3f0810 drm/radeon: cleanup: drm_modeset_lock_all() --> DRM_MODESET_LOCK_ALL_BEGIN()
e3a175ef0c54 drm/omapdrm: cleanup: drm_modeset_lock_all() --> DRM_MODESET_LOCK_ALL_BEGIN()
5fa6223c7d3e drm/nouveau: cleanup: drm_modeset_lock_all() --> DRM_MODESET_LOCK_ALL_BEGIN()
696204f23cab drm/msm: cleanup: drm_modeset_lock_all() --> DRM_MODESET_LOCK_ALL_BEGIN()
fbd3d0b396bb drm/i915: cleanup: drm_modeset_lock_all() --> DRM_MODESET_LOCK_ALL_BEGIN()
91f0cc0ba780 drm/i915: cleanup: drm_modeset_lock_all() --> DRM_MODESET_LOCK_ALL_BEGIN() [part 2]
6726d668d7b3 drm/i915: cleanup: drm_modeset_lock_all() --> DRM_MODESET_LOCK_ALL_BEGIN() [part 3]
9ec5220dd5a1 drm/gma500: cleanup: drm_modeset_lock_all() --> DRM_MODESET_LOCK_ALL_BEGIN()
d3f57a3cd640 drm/amd: cleanup: drm_modeset_lock_all() --> DRM_MODESET_LOCK_ALL_BEGIN()
8dc492c630ae drm/amd: cleanup: drm_modeset_lock_all() --> DRM_MODESET_LOCK_ALL_BEGIN() [part 2]
dfeb0d16c1f7 drm/amd: cleanup: drm_modeset_lock_all() --> DRM_MODESET_LOCK_ALL_BEGIN() [part 3]
08b6e1f105d9 drm: cleanup: remove drm_modeset_(un)lock_all()
7bf784bb287c drm: cleanup: remove acquire_ctx from drm_mode_config
-:8: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:27: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 1 errors, 1 warnings, 0 checks, 16 lines checked


