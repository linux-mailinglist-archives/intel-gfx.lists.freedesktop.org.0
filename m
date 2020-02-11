Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DE47158F79
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 14:05:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E82E86EA53;
	Tue, 11 Feb 2020 13:05:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85CAD89EB8;
 Tue, 11 Feb 2020 13:05:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20187002-1500050 for multiple; Tue, 11 Feb 2020 13:05:43 +0000
MIME-Version: 1.0
To: Andi Shyti <andi@etezian.org>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <52e2f277-e709-05b2-d66a-833fe8b234f1@linux.intel.com>
References: <20200211003742.863630-1-chris@chris-wilson.co.uk>
 <20200211004255.GA2535@jack.zhora.eu>
 <158141747934.5235.15646593670790864278@skylake-alporthouse-com>
 <52e2f277-e709-05b2-d66a-833fe8b234f1@linux.intel.com>
Message-ID: <158142634160.2303.16060810217569990410@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 11 Feb 2020 13:05:41 +0000
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] i915/gem_exec_nop: Keep a
 copy of the names
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

Quoting Tvrtko Ursulin (2020-02-11 13:00:19)
> 
> On 11/02/2020 10:37, Chris Wilson wrote:
> > Quoting Andi Shyti (2020-02-11 00:42:55)
> >> Hi Chris,
> >>
> >> On Tue, Feb 11, 2020 at 12:37:42AM +0000, Chris Wilson wrote:
> >>> The engine names are now stored inside the iterator and not as static
> >>> strings. If we wish to use them later, we need to make a copy.
> >>
> >> But we are not using them later. Your patch just copies and frees
> >> an array.
> > 
> > They are used inside an igt_info() in the child processes. Output at the
> > moment is quite strange.
> 
> I also don't get this - child has a copy of everything how can it not work?

A copy of what? The intel_engine_data is scoped to the for_each_engine
loop. We're leaking pointers to locations on stack, so they get
clobbered and we print garbage in %s.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
