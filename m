Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E3364845AD
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jan 2022 16:56:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86EEF8972D;
	Tue,  4 Jan 2022 15:56:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 59DE28972D;
 Tue,  4 Jan 2022 15:56:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 46DCAAADDA;
 Tue,  4 Jan 2022 15:56:53 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Tue, 04 Jan 2022 15:56:53 -0000
Message-ID: <164131181328.30366.10873820141200263459@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220104125132.35179-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20220104125132.35179-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Asynchronous_vma_unbinding_=28rev5=29?=
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

Series: drm/i915: Asynchronous vma unbinding (rev5)
URL   : https://patchwork.freedesktop.org/series/98055/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
c8d84998c84d drm/i915: Initial introduction of vma resources
-:245: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#245: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 626 lines checked
353826018a53 drm/i915: Use the vma resource as argument for gtt binding / unbinding
f6a70ef9f9d6 drm/i915: Don't pin the object pages during pending vma binds
9e4353b6105e drm/i915: Use vma resources for async unbinding
-:588: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_node' - possible side-effects?
#588: FILE: drivers/gpu/drm/i915/i915_vma_resource.c:37:
+#define VMA_RES_LAST(_node) ((_node)->start + (_node)->node_size - 1)

total: 0 errors, 0 warnings, 1 checks, 940 lines checked
f109b0968e2a drm/i915: Asynchronous migration selftest
ffcebda37217 drm/i915: Use struct vma_resource instead of struct vma_snapshot
-:613: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#613: 
deleted file mode 100644

total: 0 errors, 1 warnings, 0 checks, 507 lines checked


