Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B6EBC6CCC5C
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Mar 2023 23:54:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 927D510E134;
	Tue, 28 Mar 2023 21:54:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AC8F510E10A;
 Tue, 28 Mar 2023 21:54:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A166EA0BA8;
 Tue, 28 Mar 2023 21:54:49 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Zimmermann" <tzimmermann@suse.de>
Date: Tue, 28 Mar 2023 21:54:49 -0000
Message-ID: <168004048962.29056.6840472253588762336@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230328111422.23986-1-tzimmermann@suse.de>
In-Reply-To: <20230328111422.23986-1-tzimmermann@suse.de>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Convert_fbdev_to_DRM_client?=
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

Series: drm/i915: Convert fbdev to DRM client
URL   : https://patchwork.freedesktop.org/series/115714/
State : warning

== Summary ==

Error: dim checkpatch failed
0eb95c1b5ac4 drm/i915: Move fbdev functions
-:119: CHECK:ALLOC_SIZEOF_STRUCT: Prefer kzalloc(sizeof(*ifbdev)...) over kzalloc(sizeof(struct intel_fbdev)...)
#119: FILE: drivers/gpu/drm/i915/display/intel_fbdev.c:668:
+	ifbdev = kzalloc(sizeof(struct intel_fbdev), GFP_KERNEL);

-:120: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!ifbdev"
#120: FILE: drivers/gpu/drm/i915/display/intel_fbdev.c:669:
+	if (ifbdev == NULL)

total: 0 errors, 0 warnings, 2 checks, 172 lines checked
91a0ee910d74 drm/i915: Initialize fbdev DRM client with callback functions
cdadc97d2d4a drm/i915: Implement fbdev client callbacks
2862fcef6190 drm/i915: Implement fbdev emulation as in-kernel client


