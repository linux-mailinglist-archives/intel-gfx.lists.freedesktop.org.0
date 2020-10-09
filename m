Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CFE02887F0
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Oct 2020 13:40:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B178E6ECC8;
	Fri,  9 Oct 2020 11:40:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 346876ECC6;
 Fri,  9 Oct 2020 11:40:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2D502A0099;
 Fri,  9 Oct 2020 11:40:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 09 Oct 2020 11:40:27 -0000
Message-ID: <160224362715.1826.5519533252462784051@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201009102132.22770-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201009102132.22770-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/vgem=3A_Replace_vgem=5Fobject=5Ffuncs_with_the_common_d?=
 =?utf-8?q?rm_shmem_helper?=
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

Series: drm/vgem: Replace vgem_object_funcs with the common drm shmem helper
URL   : https://patchwork.freedesktop.org/series/82509/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
bb53064b196f drm/vgem: Replace vgem_object_funcs with the common drm shmem helper
-:133: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#133: FILE: drivers/gpu/drm/vgem/vgem_drv.c:88:
+static struct drm_gem_shmem_object *__vgem_gem_create(struct drm_device *dev,
 						unsigned long size)

total: 0 errors, 0 warnings, 1 checks, 359 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
