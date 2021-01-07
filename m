Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 650DC2ED390
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Jan 2021 16:33:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0E176E491;
	Thu,  7 Jan 2021 15:33:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 137406E499;
 Thu,  7 Jan 2021 15:33:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0D488A8836;
 Thu,  7 Jan 2021 15:33:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Zimmermann" <tzimmermann@suse.de>
Date: Thu, 07 Jan 2021 15:33:57 -0000
Message-ID: <161003363703.21183.4684999581015610862@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210107080748.4768-1-tzimmermann@suse.de>
In-Reply-To: <20210107080748.4768-1-tzimmermann@suse.de>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm=3A_Move_struct_drm=5Fdevice=2Epdev_to_legacy_=28rev3=29?=
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

Series: drm: Move struct drm_device.pdev to legacy (rev3)
URL   : https://patchwork.freedesktop.org/series/84205/
State : failure

== Summary ==

Applying: drm/amdgpu: Fix trailing whitespaces
Applying: drm/amdgpu: Remove references to struct drm_device.pdev
Applying: drm/hibmc: Remove references to struct drm_device.pdev
Applying: drm/i915: Remove references to struct drm_device.pdev
Applying: drm/i915/gt: Remove references to struct drm_device.pdev
Applying: drm/i915/gvt: Remove references to struct drm_device.pdev
Applying: drm/nouveau: Remove references to struct drm_device.pdev
Applying: drm: Upcast struct drm_device.dev to struct pci_device; replace pdev
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/drm_pci.c
M	include/drm/drm_device.h
Falling back to patching base and 3-way merge...
Auto-merging include/drm/drm_device.h
CONFLICT (content): Merge conflict in include/drm/drm_device.h
Auto-merging drivers/gpu/drm/drm_pci.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0008 drm: Upcast struct drm_device.dev to struct pci_device; replace pdev
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
