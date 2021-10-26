Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 29F4643B340
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Oct 2021 15:37:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57AAA89D5E;
	Tue, 26 Oct 2021 13:37:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CCF1A89D5E;
 Tue, 26 Oct 2021 13:37:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C6D3EA00E8;
 Tue, 26 Oct 2021 13:37:47 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arnd Bergmann" <arnd@kernel.org>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Oct 2021 13:37:47 -0000
Message-ID: <163525546778.9775.7802194995337772553@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211026083423.3461555-1-arnd@kernel.org>
In-Reply-To: <20211026083423.3461555-1-arnd@kernel.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/dmabuf=3A_include_asm/smp=2Eh_for_cache_operations?=
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

Series: drm/i915/dmabuf: include asm/smp.h for cache operations
URL   : https://patchwork.freedesktop.org/series/96300/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
a0c95634697f drm/i915/dmabuf: include asm/smp.h for cache operations
-:25: WARNING:INCLUDE_LINUX: Use #include <linux/smp.h> instead of <asm/smp.h>
#25: FILE: drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c:10:
+#include <asm/smp.h>

total: 0 errors, 1 warnings, 0 checks, 7 lines checked


