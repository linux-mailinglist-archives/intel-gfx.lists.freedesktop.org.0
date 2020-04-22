Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C51F51B4D62
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2020 21:32:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14D7A89DE6;
	Wed, 22 Apr 2020 19:32:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F39289DE6
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Apr 2020 19:32:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20988859-1500050 for multiple; Wed, 22 Apr 2020 20:32:44 +0100
MIME-Version: 1.0
In-Reply-To: <20200421131633.8246-2-mika.kuoppala@linux.intel.com>
References: <20200421131633.8246-1-mika.kuoppala@linux.intel.com>
 <20200421131633.8246-2-mika.kuoppala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158758396323.5423.5203631607362988529@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 22 Apr 2020 20:32:43 +0100
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915: Add per ctx batchbuffer wa
 for timestamp
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

Quoting Mika Kuoppala (2020-04-21 14:16:30)
> Restoration of a previous timestamp can collide
> with updating the timestamp, causing a value corruption.
> 
> Combat this issue by using indirect ctx bb to
> modify the context image during restoring process.
> 
> For render engine, we can preload value into
> scratch register. From which we then do the actual
> write with LRR. LRR is faster and thus less error prone.
> For other engines, no scratch is available so we
> must do a more complex sequence of sync and async LRMs.
> As the LRM is slower, the probablity of racy write
> raises and thus we still see corruption sometimes.
> 
> v2: tidying (Chris)
> 
> References: HSDES#16010904313
> Testcase: igt/i915_selftest/gt_lrc
> Suggested-by: Joseph Koston <joseph.koston@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

It's antagonising checkpatch for no good reason.
Acked-by: Chris Wilson <chris@chris-wilson.co.uk>

The only thing we have no feeling for is the impact of using this
mechanism on context switch times.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
