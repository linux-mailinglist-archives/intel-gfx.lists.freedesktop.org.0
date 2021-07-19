Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ACDCA3CEB0B
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Jul 2021 20:38:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A182C89E7B;
	Mon, 19 Jul 2021 18:38:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B020B89E7B;
 Mon, 19 Jul 2021 18:38:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A9225A47E1;
 Mon, 19 Jul 2021 18:38:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jason Ekstrand" <jason@jlekstrand.net>
Date: Mon, 19 Jul 2021 18:38:11 -0000
Message-ID: <162671989167.8478.3377933552287120335@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210719183047.2624569-1-jason@jlekstrand.net>
In-Reply-To: <20210719183047.2624569-1-jason@jlekstrand.net>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Fix_the_debugfs_splat_from_mock_selftests?=
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

Series: Fix the debugfs splat from mock selftests
URL   : https://patchwork.freedesktop.org/series/92729/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ee28cc1d9eee drm/i915: Call i915_globals_exit() after i915_pmu_exit()
175239d5619b drm/i915: Call i915_globals_exit() if pci_register_device() fails
1f5efaa53ad2 drm/i915: Always call i915_globals_exit() from i915_exit()
-:69: ERROR:INITIALISED_STATIC: do not initialise statics to false
#69: FILE: drivers/gpu/drm/i915/i915_pci.c:1197:
+static bool i915_fully_loaded = false;

total: 1 errors, 0 warnings, 0 checks, 61 lines checked
920bf5ea1d38 drm/ttm: Force re-init if ttm_global_init() fails
a959d8c1714d drm/ttm: Initialize debugfs from ttm_global_init()
825df92b5659 drm/i915: Make the kmem slab for i915_buddy_block a global


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
