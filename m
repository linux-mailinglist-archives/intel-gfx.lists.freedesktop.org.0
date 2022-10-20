Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1311E60609B
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Oct 2022 14:52:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 146BF10E46E;
	Thu, 20 Oct 2022 12:52:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BCE1F10E46B;
 Thu, 20 Oct 2022 12:51:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B1D28AA917;
 Thu, 20 Oct 2022 12:51:56 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Zimmermann" <tzimmermann@suse.de>
Date: Thu, 20 Oct 2022 12:51:56 -0000
Message-ID: <166627031669.8587.1412939846611021034@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221020103755.24058-1-tzimmermann@suse.de>
In-Reply-To: <20221020103755.24058-1-tzimmermann@suse.de>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/fb-helper=3A_Untangle_fbdev_emulation_and_helpers?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/fb-helper: Untangle fbdev emulation and helpers
URL   : https://patchwork.freedesktop.org/series/109942/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/109942/revisions/1/mbox/ not applied
Applying: drm/amdgpu: Don't set struct drm_driver.lastclose
Applying: drm/imx: Don't set struct drm_driver.lastclose
Applying: drm/ingenic: Don't set struct drm_driver.lastclose
Applying: drm/komeda: Don't set struct drm_driver.lastclose
Applying: drm/logicvc: Don't set struct drm_driver.lastclose
Applying: drm/mcde: Don't set struct drm_driver.lastclose
Applying: drm/rockchip: Don't set struct drm_driver.lastclose
Applying: drm/vboxvideo: Don't set struct drm_driver.lastclose
Applying: drm/panel-ili9341: Include <linux/backlight.h>
Applying: drm/tve200: Include <linux/of.h>
Applying: drm/fb-helper: Cleanup include statements in header file
Applying: drm/fb_helper: Rename field fbdev to info in struct drm_fb_helper
Applying: drm/fb-helper: Rename drm_fb_helper_alloc_fbi() to use _info postfix
error: sha1 information is lacking or useless (drivers/gpu/drm/i915/display/intel_fbdev.c).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0013 drm/fb-helper: Rename drm_fb_helper_alloc_fbi() to use _info postfix
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


