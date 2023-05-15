Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BED78703FDE
	for <lists+intel-gfx@lfdr.de>; Mon, 15 May 2023 23:35:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F237310E288;
	Mon, 15 May 2023 21:35:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4D3BB10E288;
 Mon, 15 May 2023 21:35:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 24F42A47E9;
 Mon, 15 May 2023 21:35:07 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Zimmermann" <tzimmermann@suse.de>
Date: Mon, 15 May 2023 21:35:07 -0000
Message-ID: <168418650712.22014.15690528530264621923@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230515094033.2133-1-tzimmermann@suse.de>
In-Reply-To: <20230515094033.2133-1-tzimmermann@suse.de>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/fbdev=3A_Remove_DRM=27s_helpers_for_fbdev_I/O_=28rev2=29?=
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

Series: drm/fbdev: Remove DRM's helpers for fbdev I/O (rev2)
URL   : https://patchwork.freedesktop.org/series/117671/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  MODPOST Module.symvers
ERROR: modpost: "fb_sys_write" [drivers/gpu/drm/drm_kms_helper.ko] undefined!
ERROR: modpost: "sys_imageblit" [drivers/gpu/drm/drm_kms_helper.ko] undefined!
ERROR: modpost: "sys_fillrect" [drivers/gpu/drm/drm_kms_helper.ko] undefined!
ERROR: modpost: "sys_copyarea" [drivers/gpu/drm/drm_kms_helper.ko] undefined!
ERROR: modpost: "fb_sys_read" [drivers/gpu/drm/drm_kms_helper.ko] undefined!
make[1]: *** [scripts/Makefile.modpost:136: Module.symvers] Error 1
make: *** [Makefile:1978: modpost] Error 2
Build failed, no error log produced


