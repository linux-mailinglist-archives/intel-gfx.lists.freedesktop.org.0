Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 25D0E478B52
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Dec 2021 13:25:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E582A10FA1A;
	Fri, 17 Dec 2021 12:25:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A2B0A10FA1B;
 Fri, 17 Dec 2021 12:25:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9A22BA363D;
 Fri, 17 Dec 2021 12:25:07 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Fri, 17 Dec 2021 12:25:07 -0000
Message-ID: <163974390760.10413.3251942204085608002@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211217091929.105781-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20211217091929.105781-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Asynchronous_vma_unbinding_=28rev2=29?=
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

Series: drm/i915: Asynchronous vma unbinding (rev2)
URL   : https://patchwork.freedesktop.org/series/98055/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
04617ab4c517 drm/i915: Avoid using the i915_fence_array when collecting dependencies
c9d9298d1a0b drm/i915: Break out the i915_deps utility
-:252: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#252: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 522 lines checked
9b0cf54fb6e3 drm/i915: Require the vm mutex for i915_vma_bind()
15ecf8b1fb33 drm/i915: Initial introduction of vma resources
-:245: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#245: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 626 lines checked
ade3187fa6ce drm/i915: Use the vma resource as argument for gtt binding / unbinding
2bdd5f2b6f3c drm/i915: Use vma resources for async unbinding
-:541: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_node' - possible side-effects?
#541: FILE: drivers/gpu/drm/i915/i915_vma_resource.c:36:
+#define VMA_RES_LAST(_node) ((_node)->start + (_node)->node_size - 1)

total: 0 errors, 0 warnings, 1 checks, 870 lines checked
17439602d54e drm/i915: Use struct vma_resource instead of struct vma_snapshot
-:602: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#602: 
deleted file mode 100644

total: 0 errors, 1 warnings, 0 checks, 497 lines checked


