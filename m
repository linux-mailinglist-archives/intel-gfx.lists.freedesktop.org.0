Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 261EE1B2D09
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2020 18:46:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E4FE89590;
	Tue, 21 Apr 2020 16:46:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B132389590
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2020 16:46:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20974693-1500050 for multiple; Tue, 21 Apr 2020 17:46:20 +0100
MIME-Version: 1.0
In-Reply-To: <20200421164130.11135-1-chris@chris-wilson.co.uk>
References: <20200421164130.11135-1-chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158748757900.11203.459560733284643126@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 21 Apr 2020 17:46:19 +0100
Subject: Re: [Intel-gfx] [PATCH] RFC drm/i915/gem: Allow creation of
 contexts with an 'empty' VM
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

Quoting Chris Wilson (2020-04-21 17:41:30)
> Normally when we create a new context, and a new ppGTT to go with it, we
> point all the unused pages in the ppGTT to a 'safe' scratch page. Any
> inadvertent access outside of the declared user's area will result in a
> read/write to scratch instead. However, sometimes it is preferrable to
> that to cause a fault instead. This does not trap execution of the
> faulting batch, but it does record the error:
> 
> FAULT_TLB_DATA: 0x00000000 0x00000004
>     Address 0x0000000000004000 PPGTT
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Jason Ekstrand <jason@jlekstrand.net>
> ---
> The name and value semantics are horrendous. The non-trapping behaviour
> is also less than ideal. Worth it?

Note that we can ask for an interrupt on a page access error, however it
is a 'validation' error and we get an interrupt for every single access
and NOOP fixup (the single bit for all classes of validation errors).
They were quite frequent.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
