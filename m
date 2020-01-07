Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A4CC132824
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2020 14:53:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA65B6E088;
	Tue,  7 Jan 2020 13:53:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A22E6E088;
 Tue,  7 Jan 2020 13:53:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19796329-1500050 for multiple; Tue, 07 Jan 2020 13:53:24 +0000
MIME-Version: 1.0
To: airlied@linux.ie, daniel@ffwll.ch, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, matthew.auld@intel.com,
 rodrigo.vivi@intel.com, tvrtko.ursulin@intel.com,
 ville.syrjala@linux.intel.com, yuehaibing@huawei.com
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200107135014.36472-1-yuehaibing@huawei.com>
References: <20200107135014.36472-1-yuehaibing@huawei.com>
Message-ID: <157840520192.2273.1930989415602076960@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 07 Jan 2020 13:53:21 +0000
Subject: Re: [Intel-gfx] [PATCH -next] drm/i915: Add missing include file
 <linux/math64.h>
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting YueHaibing (2020-01-07 13:50:14)
> Fix build error:
> ./drivers/gpu/drm/i915/selftests/i915_random.h: In function i915_prandom_u32_max_state:
> ./drivers/gpu/drm/i915/selftests/i915_random.h:48:23: error:
>  implicit declaration of function mul_u32_u32; did you mean mul_u64_u32_div? [-Werror=implicit-function-declaration]
>   return upper_32_bits(mul_u32_u32(prandom_u32_state(state), ep_ro));
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Fixes: 7ce5b6850b47 ("drm/i915/selftests: Use mul_u32_u32() for 32b x 32b -> 64b result")

While technically true, that doesn't explain why it only just started
appearing on -next.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
