Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F4961B7B3B
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2020 18:13:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C6A36EAC2;
	Fri, 24 Apr 2020 16:13:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 380FE6EAC2
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Apr 2020 16:13:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21010769-1500050 for multiple; Fri, 24 Apr 2020 17:13:08 +0100
MIME-Version: 1.0
In-Reply-To: <20200424160150.19704-4-mika.kuoppala@linux.intel.com>
References: <20200424160150.19704-1-mika.kuoppala@linux.intel.com>
 <20200424160150.19704-4-mika.kuoppala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158774478742.27391.12589061763261487634@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 24 Apr 2020 17:13:07 +0100
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915: Use indirect ctx bb to mend
 CMD_BUF_CCTL
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

Quoting Mika Kuoppala (2020-04-24 17:01:50)
> Use indirect ctx bb to load cmd buffer control value
> from context image to avoid corruption.
> 
> v2: add to lrc layout (Chris)
> v3: end to a cacheline (Chris)
> v4: add to lrc fixed (Chris)
> 
> Testcase: igt/i915_selftest/gt_lrc
> Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

Acked-by: Chris Wilson <chris@chris-wilson.co.uk>

If only we had some more fuzz validation tests.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
