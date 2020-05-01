Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA9481C126E
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 14:53:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1B916E22B;
	Fri,  1 May 2020 12:53:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D93546E22B
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 May 2020 12:53:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21082448-1500050 for multiple; Fri, 01 May 2020 13:53:42 +0100
MIME-Version: 1.0
In-Reply-To: <8f82fa9c-9d01-4569-03b1-341d574b77e5@linux.intel.com>
References: <20200501101900.22543-1-chris@chris-wilson.co.uk>
 <20200501101900.22543-3-chris@chris-wilson.co.uk>
 <8f82fa9c-9d01-4569-03b1-341d574b77e5@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158833762179.27513.5778978710948549945@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 01 May 2020 13:53:41 +0100
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/gem: Try an alternate engine
 for relocations
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

Quoting Tvrtko Ursulin (2020-05-01 13:47:36)
> 
> On 01/05/2020 11:19, Chris Wilson wrote:
> If you are not worried about the context create dance on SNB, and it is 
> limited to VCS, then neither am I.

In the short term, since it's limited to vcs on SNB so that means it is
just a plain kmalloc (as there is no logical state), I'm not worrying.

Longer term, I do intend on having a pool of logical states cached on
the engine.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
