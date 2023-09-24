Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F7127AD86A
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Sep 2023 14:59:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CC3110E045;
	Mon, 25 Sep 2023 12:59:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx.treblig.org (mx.treblig.org [IPv6:2a00:1098:5b::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1592910E125
 for <intel-gfx@lists.freedesktop.org>; Sun, 24 Sep 2023 12:16:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=treblig.org
 ; s=bytemarkmx;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID
 :Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID
 :Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
 Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe
 :List-Post:List-Owner:List-Archive;
 bh=wW0fsRw7EYcij+1N7xjVLAT1acKLYpEaD/gSjMzJs4s=; b=AFljQZncfHJN+Ozfw2IKiKh8oO
 D9DjDMw3E7BwV4V+fbJamtcIYqjIXArxS0L33XtN8MCaQ1k+KHGsvUIilf86r6nTlbMXr+H/cQ6Uo
 rgL1Iif3Y9qpiXIY1h3RwsY6TLzlwJTuHyjTjo5H9LGE4XCGmaKLvYXKDAKpq+zZBRqY9bBySQMmC
 1+3RF4Vnt2xdTEZ6irDJ1MI5igrh1qdYOw9kABVY6gltaktLZxuvwZ9yJKh63PI7PtOQJzXasDcq9
 H+NNMjnigtXAoBYSpWmVYK9/HIC8YeBv3xfB5KSy2blqnVKPCdpmn2ojGAhyuE9gFTJyN2RrxppBO
 bvXoimvw==;
Received: from dg by mx.treblig.org with local (Exim 4.96)
 (envelope-from <dg@treblig.org>) id 1qkO1w-001A0c-0e;
 Sun, 24 Sep 2023 12:16:08 +0000
Date: Sun, 24 Sep 2023 12:16:08 +0000
From: "Dr. David Alan Gilbert" <dave@treblig.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Message-ID: <ZRAoiGafRSv7SM6C@gallifrey>
References: <ZQ+Fo9WKyGphwI8R@gallifrey>
 <b3813a4e-3956-254c-a7cf-0fca65dc2cdd@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
In-Reply-To: <b3813a4e-3956-254c-a7cf-0fca65dc2cdd@linaro.org>
X-Chocolate: 70 percent or better cocoa solids preferably
X-Operating-System: Linux/6.1.0-12-amd64 (x86_64)
X-Uptime: 12:06:53 up 8 days, 15:05, 2 users, load average: 0.03, 0.03, 0.00
User-Agent: Mutt/2.2.9 (2022-11-12)
X-Mailman-Approved-At: Mon, 25 Sep 2023 12:59:26 +0000
Subject: Re: [Intel-gfx] ERR_PTR(0) in a couple of places
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
Cc: intel-gfx@lists.freedesktop.org, airlied@gmail.com, mgreer@animalcreek.com,
 linux-kernel@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

* Krzysztof Kozlowski (krzysztof.kozlowski@linaro.org) wrote:
> On 24/09/2023 02:41, Dr. David Alan Gilbert wrote:
> > Hi,
> >   I randomly noticed there are a couple of places in the kernel that
> > do
> >    ERR_PTR(0);
> > 
> > and thought that was odd - shouldn't those just be NULL's ?
> > 
> > 1) i915
> >   drivers/gpu/drm/i915/gt/uc/selftest_guc_multi_lrc.c : 47
> > 
> >     if (i <= 1)
> >       return ERR_PTR(0);
> > 
> >   from f9d72092cb490 
> > 
> > 2) trf7970a
> >   drivers/nfc/trf7970a.c : 896
> > 
> >       trf->ignore_timeout =
> >          !cancel_delayed_work(&trf->timeout_work);
> >       trf->rx_skb = ERR_PTR(0);
> 
> I would guess that code is relying on rx_skb being valid pointer or ERR
> (if (!IS_ERR(...))).

If seems mixed, that function calls trf7970a_send_upstream which has
both:

  if (trf->rx_skb && !IS_ERR(trf->rx_skb) && !trf->aborting)
    print_hex_dump_debug("trf7970a rx data: ", DUMP_PREFIX_NONE,
             16, 1, trf->rx_skb->data, trf->rx_skb->len,
             false);
and
    if (!IS_ERR(trf->rx_skb)) {
      kfree_skb(trf->rx_skb);
      trf->rx_skb = ERR_PTR(-ECANCELED);
    }

It's not clear to me whether it's expecteing that 2nd if to happen or
not.

I notice err.h gained a IS_ERR_OR_NULL to help that case as well.

Dave

> Best regards,
> Krzysztof
> 
-- 
 -----Open up your eyes, open up your mind, open up your code -------   
/ Dr. David Alan Gilbert    |       Running GNU/Linux       | Happy  \ 
\        dave @ treblig.org |                               | In Hex /
 \ _________________________|_____ http://www.treblig.org   |_______/
