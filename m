Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5C3B7AE096
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Sep 2023 23:16:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5086610E1CE;
	Mon, 25 Sep 2023 21:16:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DD05710E1CE;
 Mon, 25 Sep 2023 21:16:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9E409AADF8;
 Mon, 25 Sep 2023 21:16:45 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Zimmermann" <tzimmermann@suse.de>
Date: Mon, 25 Sep 2023 21:16:45 -0000
Message-ID: <169567660561.21534.13193131792903656021@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230925073315.11627-1-tzimmermann@suse.de>
In-Reply-To: <20230925073315.11627-1-tzimmermann@suse.de>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Convert_fbdev_to_DRM_client_=28rev4=29?=
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

Series: drm/i915: Convert fbdev to DRM client (rev4)
URL   : https://patchwork.freedesktop.org/series/115714/
State : warning

== Summary ==

Error: dim checkpatch failed
190804c78b43 drm/i915: Unregister in-kernel clients
7943fb6e18ec drm/client: Do not acquire module reference
1f9d70ab2f79 drm/client: Export drm_client_dev_unregister()
d09fe71ce453 drm/i915: Move fbdev functions
-:119: CHECK:ALLOC_SIZEOF_STRUCT: Prefer kzalloc(sizeof(*ifbdev)...) over kzalloc(sizeof(struct intel_fbdev)...)
#119: FILE: drivers/gpu/drm/i915/display/intel_fbdev.c:683:
+	ifbdev = kzalloc(sizeof(struct intel_fbdev), GFP_KERNEL);

-:120: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!ifbdev"
#120: FILE: drivers/gpu/drm/i915/display/intel_fbdev.c:684:
+	if (ifbdev == NULL)

total: 0 errors, 0 warnings, 2 checks, 172 lines checked
94e9f0f53041 drm/i915: Initialize fbdev DRM client with callback functions
9df0528a504d drm/i915: Implement fbdev client callbacks
28fd624fff1f drm/i915: Implement fbdev emulation as in-kernel client


