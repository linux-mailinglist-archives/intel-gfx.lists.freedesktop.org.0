Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66F031B158F
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2020 21:14:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDD096E850;
	Mon, 20 Apr 2020 19:14:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7112D6E84C;
 Mon, 20 Apr 2020 19:13:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20963990-1500050 for multiple; Mon, 20 Apr 2020 20:13:47 +0100
MIME-Version: 1.0
In-Reply-To: <1587361342-83494-1-git-send-email-xiyuyang19@fudan.edu.cn>
References: <1587361342-83494-1-git-send-email-xiyuyang19@fudan.edu.cn>
To: Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
 Imre Deak <imre.deak@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Matthew Auld <matthew.auld@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Xiyu Yang <xiyuyang19@fudan.edu.cn>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158741002592.19285.15203193760043173103@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 20 Apr 2020 20:13:45 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Fix i915_address_space
 refcnt leak
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
Cc: Xin Tan <tanxin.ctf@gmail.com>, yuanxzhang@fudan.edu.cn, kjlu@umn.edu,
 Xiyu Yang <xiyuyang19@fudan.edu.cn>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Xiyu Yang (2020-04-20 06:41:54)
> igt_ppgtt_pin_update() invokes i915_gem_context_get_vm_rcu(), which
> returns a reference of the i915_address_space object to "vm" with
> increased refcount.
> 
> When igt_ppgtt_pin_update() returns, "vm" becomes invalid, so the
> refcount should be decreased to keep refcount balanced.
> 
> The reference counting issue happens in two exception handling paths of
> igt_ppgtt_pin_update(). When i915_gem_object_create_internal() returns
> IS_ERR, the refcnt increased by i915_gem_context_get_vm_rcu() is not
> decreased, causing a refcnt leak.
> 
> Fix this issue by jumping to "out_vm" label when
> i915_gem_object_create_internal() returns IS_ERR.
> 
> Fixes: 4049866f0913 ("drm/i915/selftests: huge page tests")

Actually,
Fixes: a4e7ccdac38e ("drm/i915: Move context management under GEM")

> Signed-off-by: Xiyu Yang <xiyuyang19@fudan.edu.cn>
> Signed-off-by: Xin Tan <tanxin.ctf@gmail.com>

Other than that,
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
