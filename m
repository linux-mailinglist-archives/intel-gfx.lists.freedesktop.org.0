Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C2A427EDDC2
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Nov 2023 10:37:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEB5510E25D;
	Thu, 16 Nov 2023 09:37:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3197F10E25D;
 Thu, 16 Nov 2023 09:37:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 29CECAADDA;
 Thu, 16 Nov 2023 09:37:30 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Date: Thu, 16 Nov 2023 09:37:30 -0000
Message-ID: <170012745016.3094.5686593557029425131@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231116080619.4020162-1-jouni.hogander@intel.com>
In-Reply-To: <20231116080619.4020162-1-jouni.hogander@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Prepare_intel=5Ffb_for_Xe?=
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

Series: Prepare intel_fb for Xe
URL   : https://patchwork.freedesktop.org/series/126507/
State : warning

== Summary ==

Error: dim checkpatch failed
edbacde37ec5 drm/i915/display: use intel_bo_to_drm_bo in intel_fb.c
154645913940 drm/i915/display: Convert intel_fb_modifier_to_tiling as non-static
0b83c1a3bd7d drm/i915/display: Split i915 specific code away from intel_fb.c
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:144: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#144: 
new file mode 100644

-:149: WARNING:SPDX_LICENSE_TAG: Improper SPDX comment style for 'drivers/gpu/drm/i915/display/intel_fb_bo.c', please use '//' instead
#149: FILE: drivers/gpu/drm/i915/display/intel_fb_bo.c:1:
+/* SPDX-License-Identifier: MIT */

-:149: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#149: FILE: drivers/gpu/drm/i915/display/intel_fb_bo.c:1:
+/* SPDX-License-Identifier: MIT */

total: 0 errors, 3 warnings, 0 checks, 229 lines checked


