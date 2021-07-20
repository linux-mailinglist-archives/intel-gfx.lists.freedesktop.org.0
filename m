Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F5EE3D01B3
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jul 2021 20:29:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81FB789BF6;
	Tue, 20 Jul 2021 18:29:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3AB9B89BF6;
 Tue, 20 Jul 2021 18:29:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3408FA882E;
 Tue, 20 Jul 2021 18:29:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jason Ekstrand" <jason@jlekstrand.net>
Date: Tue, 20 Jul 2021 18:29:33 -0000
Message-ID: <162680577319.12851.16260031743829963980@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210720181357.2760720-1-jason@jlekstrand.net>
In-Reply-To: <20210720181357.2760720-1-jason@jlekstrand.net>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Fix_the_debugfs_splat_from_mock_selftests_=28rev2=29?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Fix the debugfs splat from mock selftests (rev2)
URL   : https://patchwork.freedesktop.org/series/92729/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
531e0b47d229 drm/i915: Call i915_globals_exit() after i915_pmu_exit()
ae1ccb8d0035 drm/i915: Call i915_globals_exit() if pci_register_device() fails
580e7d3f4cb5 drm/i915: Use a table for i915_init/exit
-:140: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#140: FILE: drivers/gpu/drm/i915/i915_pci.c:1233:
+   int (*init)(void);$

-:141: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#141: FILE: drivers/gpu/drm/i915/i915_pci.c:1234:
+   void (*exit)(void);$

-:150: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#150: FILE: drivers/gpu/drm/i915/i915_pci.c:1243:
+};
+static int init_progress;

total: 0 errors, 2 warnings, 1 checks, 188 lines checked
79c110dc83b7 drm/ttm: Force re-init if ttm_global_init() fails
59dff2f3d2db drm/ttm: Initialize debugfs from ttm_global_init()
54ab43a0264b drm/i915: Make the kmem slab for i915_buddy_block a global


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
