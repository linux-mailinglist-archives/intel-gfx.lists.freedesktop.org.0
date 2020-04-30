Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 58B8C1BF6D4
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2020 13:29:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1A926EB98;
	Thu, 30 Apr 2020 11:29:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 709D36EB98
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Apr 2020 11:29:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21069098-1500050 for multiple; Thu, 30 Apr 2020 12:28:57 +0100
MIME-Version: 1.0
In-Reply-To: <20200430111819.10262-8-chris@chris-wilson.co.uk>
References: <20200430111819.10262-1-chris@chris-wilson.co.uk>
 <20200430111819.10262-8-chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158824613568.7361.14613336037015296718@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Thu, 30 Apr 2020 12:28:55 +0100
Subject: Re: [Intel-gfx] [PATCH 8/9] drm/i915/gem: Asynchronous GTT unbinding
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Chris Wilson (2020-04-30 12:18:18)
> diff --git a/drivers/gpu/drm/i915/i915_gem_gtt.c b/drivers/gpu/drm/i915/i915_gem_gtt.c
> index cb43381b0d37..da081401142e 100644
> --- a/drivers/gpu/drm/i915/i915_gem_gtt.c
> +++ b/drivers/gpu/drm/i915/i915_gem_gtt.c
> @@ -219,6 +219,8 @@ int i915_gem_gtt_insert(struct i915_address_space *vm,
>                 mode = DRM_MM_INSERT_HIGHEST;
>         if (flags & PIN_MAPPABLE)
>                 mode = DRM_MM_INSERT_LOW;
> +       if (flags & PIN_NOSEARCH)
> +               mode = DRM_MM_INSERT_ONCE;

Fortuitously only used in patch with DRM_MM_INSERT_BEST, so the mistake
is not noticed, but it should be mode |= ONCE;

Now the question is does CI notice this mistake? Unlikely. Could CI even
notice? Unsure.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
