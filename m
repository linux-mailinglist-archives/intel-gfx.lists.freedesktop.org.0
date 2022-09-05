Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DD51A5AD905
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Sep 2022 20:30:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91D6F10E4A4;
	Mon,  5 Sep 2022 18:30:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4E1A910E49A;
 Mon,  5 Sep 2022 18:30:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 44E0EA7DFC;
 Mon,  5 Sep 2022 18:30:37 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Mon, 05 Sep 2022 18:30:37 -0000
Message-ID: <166240263725.1948.6678207693565586494@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1662400767.git.jani.nikula@intel.com>
In-Reply-To: <cover.1662400767.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_ipc_and_display_sub-struct_refactoring?=
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

Series: drm/i915: ipc and display sub-struct refactoring
URL   : https://patchwork.freedesktop.org/series/108157/
State : warning

== Summary ==

Error: dim checkpatch failed
9dbc6786b6df drm/i915/ipc: split out intel_ipc.[ch]
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:99: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#99: 
new file mode 100644

-:166: WARNING:SPDX_LICENSE_TAG: Improper SPDX comment style for 'drivers/gpu/drm/i915/display/intel_ipc.h', please use '/*' instead
#166: FILE: drivers/gpu/drm/i915/display/intel_ipc.h:1:
+// SPDX-License-Identifier: MIT

-:166: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#166: FILE: drivers/gpu/drm/i915/display/intel_ipc.h:1:
+// SPDX-License-Identifier: MIT

total: 0 errors, 3 warnings, 0 checks, 233 lines checked
19a0ebf31090 drm/i915/ipc: move IPC debugfs to intel_ipc.c
d510b07d9964 drm/i915/ipc: register debugfs only if IPC available
24998aaf8687 drm/i915/display: move IPC under display sub-struct
c2d4e3412342 drm/i915/display: move hdport under display sub-struct


