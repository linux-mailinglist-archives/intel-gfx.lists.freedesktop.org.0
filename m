Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DFDE61BAEA9
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2020 22:04:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E85589B97;
	Mon, 27 Apr 2020 20:04:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 273E489B97
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Apr 2020 20:03:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21039703-1500050 for multiple; Mon, 27 Apr 2020 21:03:56 +0100
MIME-Version: 1.0
In-Reply-To: <20200427195247.GB3168@jack.zhora.eu>
References: <20200427085408.13879-1-chris@chris-wilson.co.uk>
 <20200427085408.13879-2-chris@chris-wilson.co.uk>
 <20200427195247.GB3168@jack.zhora.eu>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Andi Shyti <andi@etezian.org>
Message-ID: <158801783494.17035.12443833459251562558@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 27 Apr 2020 21:03:54 +0100
Subject: Re: [Intel-gfx] [PATCH 2/9] drm/i915/gt: Fix up clock frequency
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

Quoting Andi Shyti (2020-04-27 20:52:47)
> Hi Chris,
> 
> On Mon, Apr 27, 2020 at 09:54:01AM +0100, Chris Wilson wrote:
> > The bspec lists both the clock frequency and the effective interval. The
> > interval corresponds to observed behaviour, so adjust the frequency to
> > match.
> 
> what is the observed behavior?

The PM intervals are 1280ns for older HW, not 640ns as implied by the
25MHz clock. Wrote a selftest to measure the PM ticks and confirmed the
intervals are correct, the frequency isn't.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
