Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CF757153A13
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 22:22:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66B786EA00;
	Wed,  5 Feb 2020 21:22:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 916966EA00
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Feb 2020 21:22:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20129642-1500050 for multiple; Wed, 05 Feb 2020 21:22:01 +0000
MIME-Version: 1.0
To: Andi Shyti <andi@etezian.org>,
 Mika Kuoppala <mika.kuoppala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200205184055.GA3088@jack.zhora.eu>
References: <20200205105749.1769982-1-chris@chris-wilson.co.uk>
 <87v9ol9kcl.fsf@gaia.fi.intel.com> <20200205184055.GA3088@jack.zhora.eu>
Message-ID: <158093771927.2213.17610894216776447724@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 05 Feb 2020 21:21:59 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: add basic selftests for
 rc6
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Andi Shyti (2020-02-05 18:40:55)
> Hi Mika,
>
> > I have a faint memory that the interval was not always 1.28us
> > but gen dependant.
> 
> 1.28 is the incremental step and I haven't seen any different
> value in the docs. Have you?

The rc6 residency counter does flip over to a different clock on
vlv/bsw. But the lack of information abounds, and I haven't seen
anything that suggests these registers are anything but units of
1280ns. If we get to the point where we can differentiate between 833ns
or 1280ns that will be very impressive.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
