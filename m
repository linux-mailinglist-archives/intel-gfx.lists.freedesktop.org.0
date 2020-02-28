Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C70131736AD
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 12:56:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4188F6F434;
	Fri, 28 Feb 2020 11:56:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22BDF6F434
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 11:56:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20384042-1500050 for multiple; Fri, 28 Feb 2020 11:56:54 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200227085723.1961649-1-chris@chris-wilson.co.uk>
 <20200227085723.1961649-3-chris@chris-wilson.co.uk>
 <878skn7wt9.fsf@gaia.fi.intel.com>
In-Reply-To: <878skn7wt9.fsf@gaia.fi.intel.com>
Message-ID: <158289101241.24106.8869827794418521125@skylake-alporthouse-com>
Date: Fri, 28 Feb 2020 11:56:52 +0000
Subject: Re: [Intel-gfx] [PATCH 03/20] drm/i915/perf: Manually acquire
 engine-wakeref around use of kernel_context
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

Quoting Mika Kuoppala (2020-02-28 11:53:06)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > The engine->kernel_context is a special case for request emission. Since
> > it is used as the barrier within the engine's wakeref, we must acquire the
> > wakeref before submitting a request to the kernel_context.
> 
> I am a bit surprised that the kernel ctx is used in this capacity...

I am happy that you are surprised, and I hope you quickly forget and
return to your happy innocence. :)
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
