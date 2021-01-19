Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DE4DB2FC45D
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Jan 2021 00:05:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D94089AAD;
	Tue, 19 Jan 2021 23:05:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B3BF889AA6;
 Tue, 19 Jan 2021 23:05:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AB732A0009;
 Tue, 19 Jan 2021 23:05:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 19 Jan 2021 23:05:35 -0000
Message-ID: <161109753567.4866.3018138137206244686@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210119214336.1463-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210119214336.1463-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2C1/6=5D_drm/i915/gem=3A_Almagam?=
 =?utf-8?q?ate_clflushes_on_suspend?=
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

Series: series starting with [CI,1/6] drm/i915/gem: Almagamate clflushes on suspend
URL   : https://patchwork.freedesktop.org/series/86058/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
8184e40923e4 drm/i915/gem: Almagamate clflushes on suspend
-:24: WARNING:INCLUDE_LINUX: Use #include <linux/smp.h> instead of <asm/smp.h>
#24: FILE: drivers/gpu/drm/i915/gem/i915_gem_pm.c:15:
+#include <asm/smp.h>

total: 0 errors, 1 warnings, 0 checks, 68 lines checked
c444dde57c98 drm/i915/gem: Almagamate clflushes on freeze
bd254ec28830 drm/i915/gem: Move stolen node into GEM object union
f6677b5d148d drm/i915/gem: Use shrinkable status for unknown swizzle quirks
79a63169ce54 drm/i915/gem: Protect used framebuffers from casual eviction
3b57afba781a drm/i915/gem: Drop lru bumping on display unpinning


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
