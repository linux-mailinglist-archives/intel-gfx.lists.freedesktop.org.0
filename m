Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 947BA487920
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jan 2022 15:39:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4F0010E933;
	Fri,  7 Jan 2022 14:39:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9A2CD10E2EB;
 Fri,  7 Jan 2022 14:39:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9486CA47DF;
 Fri,  7 Jan 2022 14:39:43 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Fri, 07 Jan 2022 14:39:43 -0000
Message-ID: <164156638358.24389.5706440576282225335@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220107142343.56811-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20220107142343.56811-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Asynchronous_vma_unbinding_=28rev6=29?=
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

Series: drm/i915: Asynchronous vma unbinding (rev6)
URL   : https://patchwork.freedesktop.org/series/98055/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
1beab04c3727 drm/i915: Initial introduction of vma resources
-:249: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#249: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 625 lines checked
d5fff0c4b18b drm/i915: Use the vma resource as argument for gtt binding / unbinding
fc9ed38f4093 drm/i915: Don't pin the object pages during pending vma binds
6a0bfdd521cd drm/i915: Use vma resources for async unbinding
-:593: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_node' - possible side-effects?
#593: FILE: drivers/gpu/drm/i915/i915_vma_resource.c:37:
+#define VMA_RES_LAST(_node) ((_node)->start + (_node)->node_size - 1)

total: 0 errors, 0 warnings, 1 checks, 941 lines checked
7c8d06e36225 drm/i915: Asynchronous migration selftest
d19498670038 drm/i915: Use struct vma_resource instead of struct vma_snapshot
-:613: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#613: 
deleted file mode 100644

total: 0 errors, 1 warnings, 0 checks, 507 lines checked


