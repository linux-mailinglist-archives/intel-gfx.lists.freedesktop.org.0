Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E8BB187772
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2020 02:30:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA38C6E231;
	Tue, 17 Mar 2020 01:30:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 540186E03B;
 Tue, 17 Mar 2020 01:30:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4354FA010F;
 Tue, 17 Mar 2020 01:30:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 17 Mar 2020 01:30:20 -0000
Message-ID: <158440862024.5179.13350437949180629370@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200316225153.3394-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200316225153.3394-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkRPQ1M6IHdhcm5pbmcgZm9yIGRy?=
 =?utf-8?q?m/i915/gem=3A_Avoid_gem=5Fcontext-=3Emutex_for_simple_vma_looku?=
 =?utf-8?q?p?=
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

Series: drm/i915/gem: Avoid gem_context->mutex for simple vma lookup
URL   : https://patchwork.freedesktop.org/series/74759/
State : warning

== Summary ==

$ make htmldocs 2>&1 > /dev/null | grep i915
Error: Cannot open file ./drivers/gpu/drm/i915/i915_gem_fence_reg.c
Error: Cannot open file ./drivers/gpu/drm/i915/i915_gem_fence_reg.c
Error: Cannot open file ./drivers/gpu/drm/i915/i915_gem_fence_reg.c
Error: Cannot open file ./drivers/gpu/drm/i915/i915_gem_fence_reg.c
WARNING: kernel-doc './scripts/kernel-doc -rst -enable-lineno -internal ./drivers/gpu/drm/i915/i915_gem_fence_reg.c' failed with return code 2
WARNING: kernel-doc './scripts/kernel-doc -rst -enable-lineno -function fence register handling ./drivers/gpu/drm/i915/i915_gem_fence_reg.c' failed with return code 1
WARNING: kernel-doc './scripts/kernel-doc -rst -enable-lineno -function tiling swizzling details ./drivers/gpu/drm/i915/i915_gem_fence_reg.c' failed with return code 1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
