Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 39217158CD0
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 11:38:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E60E589CB3;
	Tue, 11 Feb 2020 10:38:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC26989CB3;
 Tue, 11 Feb 2020 10:38:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20184889-1500050 for multiple; Tue, 11 Feb 2020 10:38:01 +0000
MIME-Version: 1.0
To: Andi Shyti <andi@etezian.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200211004255.GA2535@jack.zhora.eu>
References: <20200211003742.863630-1-chris@chris-wilson.co.uk>
 <20200211004255.GA2535@jack.zhora.eu>
Message-ID: <158141747934.5235.15646593670790864278@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 11 Feb 2020 10:37:59 +0000
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_exec_nop: Keep a copy of the
 names
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Andi Shyti (2020-02-11 00:42:55)
> Hi Chris,
> 
> On Tue, Feb 11, 2020 at 12:37:42AM +0000, Chris Wilson wrote:
> > The engine names are now stored inside the iterator and not as static
> > strings. If we wish to use them later, we need to make a copy.
> 
> But we are not using them later. Your patch just copies and frees
> an array.

They are used inside an igt_info() in the child processes. Output at the
moment is quite strange.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
