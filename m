Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1D5D87B963
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Mar 2024 09:38:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 097FD10F99A;
	Thu, 14 Mar 2024 08:38:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3246210EBFA;
 Thu, 14 Mar 2024 08:38:22 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/display=3A_?=
 =?utf-8?q?DMC_wakelock_implementation?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Luca Coelho" <luciano.coelho@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Mar 2024 08:38:22 -0000
Message-ID: <171040550220.753906.15430002694983420947@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240314073752.1245879-1-luciano.coelho@intel.com>
In-Reply-To: <20240314073752.1245879-1-luciano.coelho@intel.com>
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

Series: drm/i915/display: DMC wakelock implementation
URL   : https://patchwork.freedesktop.org/series/131124/
State : warning

== Summary ==

Error: dim checkpatch failed
80db5bb4bd35 drm/i915/display: add support for DMC wakelocks
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:237: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#237: 
new file mode 100644

-:242: WARNING:SPDX_LICENSE_TAG: Improper SPDX comment style for 'drivers/gpu/drm/i915/display/intel_dmc_wl.c', please use '//' instead
#242: FILE: drivers/gpu/drm/i915/display/intel_dmc_wl.c:1:
+/* SPDX-License-Identifier: MIT */

-:242: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#242: FILE: drivers/gpu/drm/i915/display/intel_dmc_wl.c:1:
+/* SPDX-License-Identifier: MIT */

-:381: WARNING:RETURN_VOID: void function return statements are not generally useful
#381: FILE: drivers/gpu/drm/i915/display/intel_dmc_wl.c:140:
+	return;
+}

-:410: WARNING:RETURN_VOID: void function return statements are not generally useful
#410: FILE: drivers/gpu/drm/i915/display/intel_dmc_wl.c:169:
+	return;
+}

-:458: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#458: FILE: drivers/gpu/drm/i915/display/intel_dmc_wl.c:217:
+	if (WARN_RATELIMIT(!refcount_read(&wl->refcount),
+		    "Tried to put wakelock with refcount zero\n"))

-:493: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#493: FILE: drivers/gpu/drm/i915/display/intel_dmc_wl.h:18:
+	spinlock_t lock;

total: 0 errors, 5 warnings, 2 checks, 452 lines checked
6aad00635acd drm/i915/display: don't allow DMC wakelock on older hardware
60597a92ce84 drm/i915/display: add module parameter to enable DMC wakelock
-:21: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#21: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:120:
+intel_display_param_named_unsafe(enable_dmc_wl, bool, 0400,
+	"Enable DMC wakelock "

total: 0 errors, 0 warnings, 1 checks, 54 lines checked
971e6ab0cf23 drm/i915/display: tie DMC wakelock to DC5/6 state transitions


