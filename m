Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CEB47FCDFD
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Nov 2023 05:41:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 367DC10E187;
	Wed, 29 Nov 2023 04:41:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A105510E187;
 Wed, 29 Nov 2023 04:41:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9A918AADEA;
 Wed, 29 Nov 2023 04:41:00 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Date: Wed, 29 Nov 2023 04:41:00 -0000
Message-ID: <170123286060.12091.15416425952366916087@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231128153920.1553148-1-jouni.hogander@intel.com>
In-Reply-To: <20231128153920.1553148-1-jouni.hogander@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Prepare_intel=5Ffb_for_Xe_=28rev8=29?=
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

Series: Prepare intel_fb for Xe (rev8)
URL   : https://patchwork.freedesktop.org/series/126507/
State : warning

== Summary ==

Error: dim checkpatch failed
3c9de2e1382f drm/i915/display: use intel_bo_to_drm_bo in intel_fb.c
caa9b612d5f7 drm/i915/display: Convert intel_fb_modifier_to_tiling as non-static
345c45f2b813 drm/i915/display: Handle invalid fb_modifier in intel_fb_modifier_to_tiling
28f1fdc98e43 drm/i915/display: Split i915 specific code away from intel_fb.c
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:168: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#168: 
new file mode 100644

-:173: WARNING:SPDX_LICENSE_TAG: Improper SPDX comment style for 'drivers/gpu/drm/i915/display/intel_fb_bo.c', please use '//' instead
#173: FILE: drivers/gpu/drm/i915/display/intel_fb_bo.c:1:
+/* SPDX-License-Identifier: MIT */

-:173: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#173: FILE: drivers/gpu/drm/i915/display/intel_fb_bo.c:1:
+/* SPDX-License-Identifier: MIT */

total: 0 errors, 3 warnings, 0 checks, 238 lines checked


