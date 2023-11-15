Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3C007EC1F6
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Nov 2023 13:14:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62D5910E54C;
	Wed, 15 Nov 2023 12:14:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9B46B10E54B;
 Wed, 15 Nov 2023 12:14:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 94CDCA7E03;
 Wed, 15 Nov 2023 12:14:20 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Date: Wed, 15 Nov 2023 12:14:20 -0000
Message-ID: <170005046060.649.10610319781857661868@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231115090719.3210079-1-jouni.hogander@intel.com>
In-Reply-To: <20231115090719.3210079-1-jouni.hogander@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Prepare_intel=5Ffbdev_for_Xe?=
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

Series: Prepare intel_fbdev for Xe
URL   : https://patchwork.freedesktop.org/series/126446/
State : warning

== Summary ==

Error: dim checkpatch failed
9df37f0b7675 drm/i915/display: split i915 specific code from intel_fbdev
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:147: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#147: FILE: drivers/gpu/drm/i915/display/intel_fbdev.c:192:
+		intel_fb = ifbdev->fb = to_intel_framebuffer(fb);

-:204: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#204: 
new file mode 100644

-:209: WARNING:SPDX_LICENSE_TAG: Improper SPDX comment style for 'drivers/gpu/drm/i915/display/intel_fbdev_fb.c', please use '//' instead
#209: FILE: drivers/gpu/drm/i915/display/intel_fbdev_fb.c:1:
+/* SPDX-License-Identifier: MIT */

-:209: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#209: FILE: drivers/gpu/drm/i915/display/intel_fbdev_fb.c:1:
+/* SPDX-License-Identifier: MIT */

total: 0 errors, 3 warnings, 1 checks, 308 lines checked
30e3f06043b3 drm/i915/display: use intel_bo_to_drm_bo in intel_fbdev


