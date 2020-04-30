Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A8FE1BECFD
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2020 02:34:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3B5C6EB23;
	Thu, 30 Apr 2020 00:34:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D39B66EB23
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Apr 2020 00:34:30 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21064304-1500050 for multiple; Thu, 30 Apr 2020 01:34:03 +0100
MIME-Version: 1.0
In-Reply-To: <20200430002035.21787-1-chris@chris-wilson.co.uk>
References: <20200430002035.21787-1-chris@chris-wilson.co.uk>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Message-ID: <158820684265.31013.13876074571648213585@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Thu, 30 Apr 2020 01:34:02 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Add tiled blits selftest
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Chris Wilson (2020-04-30 01:20:35)
> +static int igt_client_tiled_blits(void *arg)
> +{
> +       struct drm_i915_private *i915 = arg;
> +       I915_RND_STATE(prng);
> +       int inst = 0;
> +
> +       /* Test requires explicit BLT tiling controls */
> +       if (INTEL_GEN(i915) < 4)
> +               return 0;

We need to add a reject here for bit17 swizzling.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
