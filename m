Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A7D412FE24
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2020 21:52:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FA4C6E34A;
	Fri,  3 Jan 2020 20:52:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D24486E348;
 Fri,  3 Jan 2020 20:52:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9D121A00E8;
 Fri,  3 Jan 2020 20:52:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 03 Jan 2020 20:52:03 -0000
Message-ID: <157808472361.20616.5108425656105213524@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200103204137.2131004-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200103204137.2131004-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2C1/3=5D_drm/i915/gem=3A_Extend_?=
 =?utf-8?q?mmap_support_for_lmem?=
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

Series: series starting with [CI,1/3] drm/i915/gem: Extend mmap support for lmem
URL   : https://patchwork.freedesktop.org/series/71616/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
905c9c1e0ac0 drm/i915/gem: Extend mmap support for lmem
154d982f9b59 drm/i915/selftests: Extend fault handler selftests to all memory regions
-:158: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'x' - possible side-effects?
#158: FILE: drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c:834:
+#define expand32(x) (((x) << 0) | ((x) << 8) | ((x) << 16) | ((x) << 24))

total: 0 errors, 0 warnings, 1 checks, 412 lines checked
60145208a94f drm/i915/selftests: Compare mmaps with GPU

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
