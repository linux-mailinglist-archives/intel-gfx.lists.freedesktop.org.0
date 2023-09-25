Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93C347AD4C5
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Sep 2023 11:44:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0423410E227;
	Mon, 25 Sep 2023 09:44:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2F01C10E225;
 Mon, 25 Sep 2023 09:44:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 26BB8A73C7;
 Mon, 25 Sep 2023 09:44:14 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Zimmermann" <tzimmermann@suse.de>
Date: Mon, 25 Sep 2023 09:44:14 -0000
Message-ID: <169563505415.21534.1886072881065538549@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230925073315.11627-1-tzimmermann@suse.de>
In-Reply-To: <20230925073315.11627-1-tzimmermann@suse.de>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Convert_fbdev_to_DRM_client_=28rev3=29?=
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

Series: drm/i915: Convert fbdev to DRM client (rev3)
URL   : https://patchwork.freedesktop.org/series/115714/
State : warning

== Summary ==

Error: dim checkpatch failed
6a1984dd35f8 drm/i915: Unregister in-kernel clients
b7f5e140477a drm/client: Do not acquire module reference
b8c4364e8591 drm/client: Export drm_client_dev_unregister()
dcee278a6088 drm/i915: Move fbdev functions
-:119: CHECK:ALLOC_SIZEOF_STRUCT: Prefer kzalloc(sizeof(*ifbdev)...) over kzalloc(sizeof(struct intel_fbdev)...)
#119: FILE: drivers/gpu/drm/i915/display/intel_fbdev.c:683:
+	ifbdev = kzalloc(sizeof(struct intel_fbdev), GFP_KERNEL);

-:120: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!ifbdev"
#120: FILE: drivers/gpu/drm/i915/display/intel_fbdev.c:684:
+	if (ifbdev == NULL)

total: 0 errors, 0 warnings, 2 checks, 172 lines checked
97918400aff0 drm/i915: Initialize fbdev DRM client with callback functions
143959f00c72 drm/i915: Implement fbdev client callbacks
e0321fb46f70 drm/i915: Implement fbdev emulation as in-kernel client


