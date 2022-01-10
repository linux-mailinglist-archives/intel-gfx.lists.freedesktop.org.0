Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C2C2648A190
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jan 2022 22:10:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5F1610E762;
	Mon, 10 Jan 2022 21:10:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 12B5B10E89C;
 Mon, 10 Jan 2022 21:10:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1073EAADD4;
 Mon, 10 Jan 2022 21:10:53 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Mon, 10 Jan 2022 21:10:53 -0000
Message-ID: <164184905306.28742.16801545187996637425@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220110172219.107131-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20220110172219.107131-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Asynchronous_vma_unbinding_=28rev7=29?=
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

Series: drm/i915: Asynchronous vma unbinding (rev7)
URL   : https://patchwork.freedesktop.org/series/98055/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
fa2206c87130 drm/i915: Initial introduction of vma resources
-:249: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#249: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 625 lines checked
1191590313f3 drm/i915: Use the vma resource as argument for gtt binding / unbinding
98debb352edc drm/i915: Don't pin the object pages during pending vma binds
402bca0f34dc drm/i915: Use vma resources for async unbinding
-:596: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_node' - possible side-effects?
#596: FILE: drivers/gpu/drm/i915/i915_vma_resource.c:37:
+#define VMA_RES_LAST(_node) ((_node)->start + (_node)->node_size - 1)

total: 0 errors, 0 warnings, 1 checks, 941 lines checked
8adfa6f048ac drm/i915: Asynchronous migration selftest
b66f2c830d70 drm/i915: Use struct vma_resource instead of struct vma_snapshot
-:614: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#614: 
deleted file mode 100644

total: 0 errors, 1 warnings, 0 checks, 507 lines checked


