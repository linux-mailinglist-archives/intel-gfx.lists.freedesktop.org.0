Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54C9A67C2C3
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jan 2023 03:22:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D570610E8DE;
	Thu, 26 Jan 2023 02:22:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E31AC10E8DD;
 Thu, 26 Jan 2023 02:22:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C73D4A47DF;
 Thu, 26 Jan 2023 02:22:20 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Zimmermann" <tzimmermann@suse.de>
Date: Thu, 26 Jan 2023 02:22:20 -0000
Message-ID: <167469974078.538.12256634487777963264@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230125200415.14123-1-tzimmermann@suse.de>
In-Reply-To: <20230125200415.14123-1-tzimmermann@suse.de>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/fb-helper=3A_Various_cleanups_=28rev3=29?=
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

Series: drm/fb-helper: Various cleanups (rev3)
URL   : https://patchwork.freedesktop.org/series/113220/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/113220/revisions/3/mbox/ not applied
Applying: drm/client: Test for connectors before sending hotplug event
Applying: drm/client: Add hotplug_failed flag
Applying: drm/fb-helper: Introduce drm_fb_helper_unprepare()
Applying: drm/fbdev-generic: Initialize fb-helper structure in generic setup
Applying: drm/fb-helper: Remove preferred_bpp parameter from fbdev internals
Applying: drm/fb-helper: Initialize fb-helper's preferred BPP in prepare function
Applying: drm/fbdev-generic: Minimize hotplug error handling
Applying: drm/fbdev-generic: Minimize client unregistering
Applying: drm/fbdev-generic: Inline clean-up helpers into drm_fbdev_fb_destroy()
Applying: drm/fbdev-generic: Rename struct fb_info 'fbi' to 'info'
error: sha1 information is lacking or useless (drivers/gpu/drm/drm_fbdev_generic.c).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0010 drm/fbdev-generic: Rename struct fb_info 'fbi' to 'info'
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


