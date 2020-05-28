Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC7001E5C8C
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2020 11:58:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A52E589C05;
	Thu, 28 May 2020 09:58:04 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E115489C05
 for <Intel-gfx@lists.freedesktop.org>; Thu, 28 May 2020 09:58:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21319861-1500050 for multiple; Thu, 28 May 2020 10:57:29 +0100
MIME-Version: 1.0
In-Reply-To: <20200527085322.25861-1-tvrtko.ursulin@linux.intel.com>
References: <20200527085322.25861-1-tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <159065984908.10651.3817818286053938468@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Thu, 28 May 2020 10:57:29 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Special handling for bonded
 requests
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
Cc: Xiaogang Li <xiaogang.li@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2020-05-27 09:53:22)
> +static void
> +mark_bonded_pair(struct i915_request *rq, struct i915_request *signal)
> +{
> +       /*
> +        * Give (temporary) special meaning to a pair requests with requested
> +        * aligned start along the video engines.
> +        *
> +        * They should be non-preemptable and have all ELSP ports to themselves
> +        * to avoid any deadlocks caused by inversions.
> +        *
> +        * Gen11+
> +        */
> +       if (INTEL_GEN(rq->i915) < 11 ||
> +           rq->engine->class != VIDEO_DECODE_CLASS ||
> +           rq->engine->class != signal->engine->class)
> +               return;
> +
> +       set_bit(I915_FENCE_FLAG_NOPREEMPT, &rq->fence.flags);
> +       set_bit(I915_FENCE_FLAG_NOPREEMPT, &signal->fence.flags);
> +
> +       intel_context_set_single_submission(rq->context);
> +       intel_context_set_single_submission(signal->context);

The thought that just popped into my head:

This can be after signal is already submitted into ELSP[1].
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
