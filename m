Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 464A51371F1
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2020 16:57:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B19E56EA40;
	Fri, 10 Jan 2020 15:57:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9E606EA40
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2020 15:57:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19836418-1500050 for multiple; Fri, 10 Jan 2020 15:57:16 +0000
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200110155334.1417942-1-chris@chris-wilson.co.uk>
References: <20200109141152.975687-1-chris@chris-wilson.co.uk>
 <20200110155334.1417942-1-chris@chris-wilson.co.uk>
Message-ID: <157867183547.10140.7221235067591478894@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 10 Jan 2020 15:57:15 +0000
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gt: Validate rotated vma bounds
 are within the object
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

Quoting Chris Wilson (2020-01-10 15:53:34)
> Quite understandably, we bug out when asked to find a page that doesn't
> belong to the object. However, we should report the error back to the
> user long before we attempt the out-of-bound access! In this case, it is
> insufficient validation on the rotated vma, with the simplest/cheapest
> point for us to insert a bound check when we are computing the rotated
> page lookups.
> 
> Similarly, it might be wise to see if we can validate the user input
> upon creating the rotated framebuffer.
Reminder to self, scratch this comment. They are, it's just a bug.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
