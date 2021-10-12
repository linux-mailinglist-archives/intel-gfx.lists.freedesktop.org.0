Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9420E429CC0
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Oct 2021 06:51:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 100B189B51;
	Tue, 12 Oct 2021 04:51:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AE42189B51;
 Tue, 12 Oct 2021 04:51:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A690CA00C9;
 Tue, 12 Oct 2021 04:51:35 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dave Airlie" <airlied@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 12 Oct 2021 04:51:35 -0000
Message-ID: <163401429565.14288.3768745567174241224@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211012043502.1377715-1-airlied@gmail.com>
In-Reply-To: <20211012043502.1377715-1-airlied@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/display=3A_refactor_plane_config_+_pin_out_=28rev2?=
 =?utf-8?q?=29?=
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

Series: drm/i915/display: refactor plane config + pin out (rev2)
URL   : https://patchwork.freedesktop.org/series/95541/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
569a494f9314 drm/i915/display: move plane prepare/cleanup to intel_atomic_plane.c
-:38: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#38: FILE: drivers/gpu/drm/i915/display/intel_atomic_plane.c:613:
+			unsigned mode, int sync, void *key)

-:157: CHECK:LINE_SPACING: Please don't use multiple blank lines
#157: FILE: drivers/gpu/drm/i915/display/intel_atomic_plane.c:732:
+
+

total: 0 errors, 1 warnings, 1 checks, 456 lines checked
719e999a3ade drm/i915/display: let intel_plane_uses_fence be used from other places.
fe9de0be3625 drm/i915/display: refactor out initial plane config for crtcs
db2228c1c8b5 drm/i915/display: refactor initial plane config to a separate file
-:363: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#363: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 626 lines checked
32d63dc32c0a drm/i915/display: move pin/unpin fb/plane code to a new file.
-:351: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#351: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 621 lines checked
e08334b38c2a drm/i915/display: refactor fbdev pin/unpin out into functions.
-:29: WARNING:BRACES: braces {} are not necessary for single statement blocks
#29: FILE: drivers/gpu/drm/i915/display/intel_fbdev.c:184:
+	if (IS_ERR(ifbdev->vma)) {
+		return PTR_ERR(ifbdev->vma);
+	}

-:74: WARNING:BRACES: braces {} are not necessary for single statement blocks
#74: FILE: drivers/gpu/drm/i915/display/intel_fbdev.c:252:
+	if (ret) {
 		goto out_unlock;
 	}

total: 0 errors, 2 warnings, 0 checks, 117 lines checked
11c921fdcfbf drm/i915/display: move fbdev pin code into fb_pin
-:49: WARNING:BRACES: braces {} are not necessary for single statement blocks
#49: FILE: drivers/gpu/drm/i915/display/intel_fb_pin.c:287:
+	if (IS_ERR(ifbdev->vma)) {
+		return PTR_ERR(ifbdev->vma);
+	}

total: 0 errors, 1 warnings, 0 checks, 111 lines checked
71cfd613f697 drm/i915/display: drop unused parameter to dpt pin


