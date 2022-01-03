Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01E9648311A
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jan 2022 13:42:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F2D58931E;
	Mon,  3 Jan 2022 12:42:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7556C89312;
 Mon,  3 Jan 2022 12:41:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 72BF5A7DFC;
 Mon,  3 Jan 2022 12:41:59 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Mon, 03 Jan 2022 12:41:59 -0000
Message-ID: <164121371943.4703.12088186907853300819@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220103115947.92688-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20220103115947.92688-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Asynchronous_vma_unbinding_=28rev4=29?=
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

Series: drm/i915: Asynchronous vma unbinding (rev4)
URL   : https://patchwork.freedesktop.org/series/98055/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
4d8764c49999 drm/i915: Initial introduction of vma resources
-:245: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#245: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 626 lines checked
d5c764c68dbe drm/i915: Use the vma resource as argument for gtt binding / unbinding
6614ef6664e9 drm/i915: Use vma resources for async unbinding
-:570: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_node' - possible side-effects?
#570: FILE: drivers/gpu/drm/i915/i915_vma_resource.c:37:
+#define VMA_RES_LAST(_node) ((_node)->start + (_node)->node_size - 1)

-:722: WARNING:BRACES: braces {} are not necessary for single statement blocks
#722: FILE: drivers/gpu/drm/i915/i915_vma_resource.c:229:
+	if (vma_res->needs_wakeref) {
+		vma_res->wakeref = intel_runtime_pm_get_if_in_use(&vm->i915->runtime_pm);
+	}

total: 0 errors, 1 warnings, 1 checks, 927 lines checked
79cafac84ad4 drm/i915: Use struct vma_resource instead of struct vma_snapshot
-:604: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#604: 
deleted file mode 100644

total: 0 errors, 1 warnings, 0 checks, 499 lines checked


