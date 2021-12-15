Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48EA3475800
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Dec 2021 12:39:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F4E010EB6B;
	Wed, 15 Dec 2021 11:39:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 06A7F10EB6B;
 Wed, 15 Dec 2021 11:39:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F2335AA917;
 Wed, 15 Dec 2021 11:39:46 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Wed, 15 Dec 2021 11:39:46 -0000
Message-ID: <163956838696.18074.7667621842801838464@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211215103611.777665-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20211215103611.777665-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Asynchronous_vma_unbinding?=
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

Series: drm/i915: Asynchronous vma unbinding
URL   : https://patchwork.freedesktop.org/series/98055/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
40ccf1d6e849 drm/i915: Avoid using the i915_fence_array when collecting dependencies
c45e38a63dd7 drm/i915: Break out the i915_deps utility
-:254: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#254: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 532 lines checked
4ffb2d025bd5 drm/i915: Require the vm mutex for i915_vma_bind()
aea239ccfd55 drm/i915: Initial introduction of vma resources
-:245: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#245: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 626 lines checked
af7795ce58dc drm/i915: Use the vma resource as argument for gtt binding / unbinding
7fa874798925 drm/i915: Use vma resources for async unbinding
-:459: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_node' - possible side-effects?
#459: FILE: drivers/gpu/drm/i915/i915_vma_resource.c:38:
+#define VMA_RES_LAST(_node) ((_node)->start + (_node)->node_size - 1)

total: 0 errors, 0 warnings, 1 checks, 763 lines checked
9c26545a94e5 drm/i915: Use struct vma_resource instead of struct vma_snapshot
-:587: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#587: 
deleted file mode 100644

total: 0 errors, 1 warnings, 0 checks, 486 lines checked


