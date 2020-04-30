Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D5EB1C0B03
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 01:39:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B03C6EA50;
	Thu, 30 Apr 2020 23:39:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38EA76EA50;
 Thu, 30 Apr 2020 23:39:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21076626-1500050 for multiple; Fri, 01 May 2020 00:39:01 +0100
MIME-Version: 1.0
In-Reply-To: <158828800721.31919.954029766333496706@emeril.freedesktop.org>
References: <20200430194107.7073-1-chris@chris-wilson.co.uk>
 <158828800721.31919.954029766333496706@emeril.freedesktop.org>
Subject: Re:  ✗ Fi.CI.BAT: failure for drm/i915: Implement vm_ops->access for gdb access into mmaps (rev3)
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Patchwork <patchwork@emeril.freedesktop.org>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158828994109.26180.7872088874997347497@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 01 May 2020 00:39:01 +0100
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Patchwork (2020-05-01 00:06:47)
> #### Possible regressions ####
> 
>   * igt@i915_selftest@live@mman:
>     - fi-gdg-551:         [PASS][1] -> [DMESG-FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8403/fi-gdg-551/igt@i915_selftest@live@mman.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17532/fi-gdg-551/igt@i915_selftest@live@mman.html

The nightmare of the incoherent GTT. Nothing much we can do for
userspace (ptracing), but in our selftest we may have to use the
intel_gt_flush_ggtt_writes() hammer?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
