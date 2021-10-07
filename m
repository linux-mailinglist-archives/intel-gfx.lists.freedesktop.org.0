Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A564B424C3C
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Oct 2021 05:36:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C84F56E81D;
	Thu,  7 Oct 2021 03:36:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DBD7A6E81D;
 Thu,  7 Oct 2021 03:36:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D2D99A47DF;
 Thu,  7 Oct 2021 03:36:31 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dave Airlie" <airlied@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 07 Oct 2021 03:36:31 -0000
Message-ID: <163357779181.5189.6762110635497052101@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211007031318.3088987-1-airlied@gmail.com>
In-Reply-To: <20211007031318.3088987-1-airlied@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/display=3A_refactor_plane_config_+_pin_out?=
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

Series: drm/i915/display: refactor plane config + pin out
URL   : https://patchwork.freedesktop.org/series/95541/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
366ca42bffbf drm/i915/display: move plane prepare/cleanup to intel_atomic_plane.c
-:38: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#38: FILE: drivers/gpu/drm/i915/display/intel_atomic_plane.c:613:
+			unsigned mode, int sync, void *key)

-:157: CHECK:LINE_SPACING: Please don't use multiple blank lines
#157: FILE: drivers/gpu/drm/i915/display/intel_atomic_plane.c:732:
+
+

total: 0 errors, 1 warnings, 1 checks, 456 lines checked
c9bb7cb0d997 drm/i915/display: move intel_plane_uses_fence to inline.
7f7279334e75 drm/i915/display: refactor out initial plane config for crtcs
093d68752076 drm/i915/display: refactor initial plane config to a separate file
-:363: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#363: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 626 lines checked
7d766a9f68b6 drm/i915/display: move pin/unpin fb/plane code to a new file.
-:351: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#351: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 621 lines checked
bf4c2b0ecc98 drm/i915/display: refactor fbdev pin/unpin out into functions.
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
0e6166bdb495 drm/i915/display: move fbdev pin code into fb_pin
-:49: WARNING:BRACES: braces {} are not necessary for single statement blocks
#49: FILE: drivers/gpu/drm/i915/display/intel_fb_pin.c:287:
+	if (IS_ERR(ifbdev->vma)) {
+		return PTR_ERR(ifbdev->vma);
+	}

total: 0 errors, 1 warnings, 0 checks, 111 lines checked
60156ef4b61e drm/i915/display: drop unused parameter to dpt pin


