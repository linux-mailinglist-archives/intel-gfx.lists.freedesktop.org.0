Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 15C8979F50E
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Sep 2023 00:34:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73DCD10E171;
	Wed, 13 Sep 2023 22:34:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A8BA510E114;
 Wed, 13 Sep 2023 22:34:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 95C4BAADF2;
 Wed, 13 Sep 2023 22:34:13 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Zimmermann" <tzimmermann@suse.de>
Date: Wed, 13 Sep 2023 22:34:13 -0000
Message-ID: <169464445361.31249.16011415013904848776@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230913150425.5742-1-tzimmermann@suse.de>
In-Reply-To: <20230913150425.5742-1-tzimmermann@suse.de>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Convert_fbdev_to_DRM_client_=28rev2=29?=
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

Series: drm/i915: Convert fbdev to DRM client (rev2)
URL   : https://patchwork.freedesktop.org/series/115714/
State : warning

== Summary ==

Error: dim checkpatch failed
e92810deb3f2 drm/i915: Move fbdev functions
-:119: CHECK:ALLOC_SIZEOF_STRUCT: Prefer kzalloc(sizeof(*ifbdev)...) over kzalloc(sizeof(struct intel_fbdev)...)
#119: FILE: drivers/gpu/drm/i915/display/intel_fbdev.c:683:
+	ifbdev = kzalloc(sizeof(struct intel_fbdev), GFP_KERNEL);

-:120: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!ifbdev"
#120: FILE: drivers/gpu/drm/i915/display/intel_fbdev.c:684:
+	if (ifbdev == NULL)

total: 0 errors, 0 warnings, 2 checks, 172 lines checked
ee453b41ffc0 drm/i915: Initialize fbdev DRM client with callback functions
6c308c8ce62b drm/i915: Implement fbdev client callbacks
e8823e5a5cd3 drm/i915: Implement fbdev emulation as in-kernel client


