Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9210D987B44
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2024 00:50:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A6CB10E32E;
	Thu, 26 Sep 2024 22:50:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2590B10E0B8;
 Thu, 26 Sep 2024 22:50:26 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_drm=3A_Provide_client_set?=
 =?utf-8?q?up_helper_and_convert_drivers_=28rev5=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Zimmermann" <tzimmermann@suse.de>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Sep 2024 22:50:26 -0000
Message-ID: <172739102614.1109224.15498157286660936908@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240924071734.98201-1-tzimmermann@suse.de>
In-Reply-To: <20240924071734.98201-1-tzimmermann@suse.de>
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

Series: drm: Provide client setup helper and convert drivers (rev5)
URL   : https://patchwork.freedesktop.org/series/137389/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/137389/revisions/5/mbox/ not applied
Applying: drm/fbdev-helper: Move color-mode lookup into 4CC format helper
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/drm_fb_helper.c
M	drivers/gpu/drm/drm_fourcc.c
M	include/drm/drm_fourcc.h
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/drm_fb_helper.c
No changes -- Patch already applied.
Applying: drm/fbdev-helper: Set and clear VGA switcheroo client from fb_info
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/drm_fb_helper.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/drm_fb_helper.c
No changes -- Patch already applied.
Applying: drm/fbdev: Add memory-agnostic fbdev client
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/Makefile
M	drivers/gpu/drm/drm_fb_helper.c
M	include/drm/drm_drv.h
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/Makefile
No changes -- Patch already applied.
Applying: drm: Add client-agnostic setup helper
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/Kconfig
M	drivers/gpu/drm/Makefile
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/Makefile
Auto-merging drivers/gpu/drm/Kconfig
No changes -- Patch already applied.
Applying: drm/fbdev-dma: Support struct drm_driver.fbdev_probe
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/drm_fbdev_dma.c
M	include/drm/drm_fbdev_dma.h
Falling back to patching base and 3-way merge...
Auto-merging include/drm/drm_fbdev_dma.h
CONFLICT (content): Merge conflict in include/drm/drm_fbdev_dma.h
Auto-merging drivers/gpu/drm/drm_fbdev_dma.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/drm_fbdev_dma.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0005 drm/fbdev-dma: Support struct drm_driver.fbdev_probe
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


