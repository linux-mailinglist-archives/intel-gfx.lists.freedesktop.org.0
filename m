Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93E3D11D7F4
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 21:39:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0FEF6E1D8;
	Thu, 12 Dec 2019 20:39:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78D9E6E1D7;
 Thu, 12 Dec 2019 20:39:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19560382-1500050 for multiple; Thu, 12 Dec 2019 20:38:54 +0000
MIME-Version: 1.0
To: Colin Ian King <colin.king@canonical.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <1d2c3c9d-5f11-db41-68ef-61ff9ec601cb@canonical.com>
References: <1d2c3c9d-5f11-db41-68ef-61ff9ec601cb@canonical.com>
Message-ID: <157618313562.7396.11949995525623174493@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 12 Dec 2019 20:38:55 +0000
Subject: Re: [Intel-gfx] drm/i915: Use the i915_device name for identifying
 our, request fences
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Colin Ian King (2019-12-12 19:53:33)
> Hi,
> 
> Static analysis with Coverity has picked up an issue with the following
> commit:
> 
> commit 65c29dbb19b2451990c5c477fef7ada3b8218f05
> Author: Chris Wilson <chris@chris-wilson.co.uk>
> Date:   Wed Dec 11 15:02:04 2019 +0000
> 
>     drm/i915: Use the i915_device name for identifying our request fences
> 
> In source drivers/gpu/drm/i915/i915_request.c and function
> i915_fence_get_timeline_name there is the following:
> 
>         return to_request(fence)->gem_context->name ?: "[" DRIVER_NAME "]";
> 
> However name is an array: char name[TASK_COMM_LEN + 8], so it can never
> be null, so the ternary operator will always return name and will never
> reaturn "[" DRIVER_NAME "]".  Should it instead be checking if name[0]
> is '\0' instead?

It's older than that patch, we made it a char[] some time ago. There's a
patch pending to make it conditional on ce->gem_context instead.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
