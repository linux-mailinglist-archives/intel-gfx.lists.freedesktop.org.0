Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 177FA416C7C
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Sep 2021 09:04:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 449876EDF3;
	Fri, 24 Sep 2021 07:04:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B52C96E159;
 Fri, 24 Sep 2021 07:04:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AB9B6AADD2;
 Fri, 24 Sep 2021 07:04:51 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Fernando Ramos" <greenfoo@u92.eu>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Sep 2021 07:04:51 -0000
Message-ID: <163246709167.20560.3388795520357940181@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210924064324.229457-1-greenfoo@u92.eu>
In-Reply-To: <20210924064324.229457-1-greenfoo@u92.eu>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm=3A_cleanup=3A_Use_DRM=5FMODESET=5FLOCK=5FALL=5F*_helpers_whe?=
 =?utf-8?q?re_possible_=28rev2=29?=
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

Series: drm: cleanup: Use DRM_MODESET_LOCK_ALL_* helpers where possible (rev2)
URL   : https://patchwork.freedesktop.org/series/94786/
State : failure

== Summary ==

Applying: drm: cleanup: drm_modeset_lock_all_ctx() --> DRM_MODESET_LOCK_ALL_BEGIN()
Applying: drm/i915: cleanup: drm_modeset_lock_all_ctx() --> DRM_MODESET_LOCK_ALL_BEGIN()
Applying: drm/msm: cleanup: drm_modeset_lock_all_ctx() --> DRM_MODESET_LOCK_ALL_BEGIN()
Applying: drm: cleanup: drm_modeset_lock_all() --> DRM_MODESET_LOCK_ALL_BEGIN()
Applying: drm/vmwgfx: cleanup: drm_modeset_lock_all() --> DRM_MODESET_LOCK_ALL_BEGIN()
Applying: drm/tegra: cleanup: drm_modeset_lock_all() --> DRM_MODESET_LOCK_ALL_BEGIN()
Applying: drm/shmobile: cleanup: drm_modeset_lock_all() --> DRM_MODESET_LOCK_ALL_BEGIN()
Applying: drm/radeon: cleanup: drm_modeset_lock_all() --> DRM_MODESET_LOCK_ALL_BEGIN()
Applying: drm/omapdrm: cleanup: drm_modeset_lock_all() --> DRM_MODESET_LOCK_ALL_BEGIN()
Applying: drm/nouveau: cleanup: drm_modeset_lock_all() --> DRM_MODESET_LOCK_ALL_BEGIN()
Applying: drm/msm: cleanup: drm_modeset_lock_all() --> DRM_MODESET_LOCK_ALL_BEGIN()
Applying: drm/i915: cleanup: drm_modeset_lock_all() --> DRM_MODESET_LOCK_ALL_BEGIN()
error: sha1 information is lacking or useless (drivers/gpu/drm/i915/display/intel_display.c).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0012 drm/i915: cleanup: drm_modeset_lock_all() --> DRM_MODESET_LOCK_ALL_BEGIN()
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


