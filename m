Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE6E220A10
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2020 12:34:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6692C6EA8F;
	Wed, 15 Jul 2020 10:34:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7642F6EA8F;
 Wed, 15 Jul 2020 10:34:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21825123-1500050 for multiple; Wed, 15 Jul 2020 11:34:29 +0100
MIME-Version: 1.0
In-Reply-To: <CAP+8YyF9djTo++3Gww2NNkOE_=fu9n+HzjoN7e78pVgJf_SP7A@mail.gmail.com>
References: <20200715100432.13928-1-chris@chris-wilson.co.uk>
 <CAP+8YyF9djTo++3Gww2NNkOE_=fu9n+HzjoN7e78pVgJf_SP7A@mail.gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Bas Nieuwenhuizen <bas@basnieuwenhuizen.nl>
Date: Wed, 15 Jul 2020 11:34:27 +0100
Message-ID: <159480926758.13728.809663901463022623@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] sw_sync deadlock avoidance, take 3
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
Cc: intel-gfx@lists.freedesktop.org,
 ML dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Bas Nieuwenhuizen (2020-07-15 11:23:35)
> Hi Chris,
> 
> My concern with going in this direction was that we potentially allow
> an application to allocate a lot of kernel memory but not a lot of fds
> by creating lots of fences and then closing the fds but never
> signaling them. Is that not an issue?

I did look to see if there was a quick way we could couple into the
sync_file release itself to remove the syncpt from the timeline, but
decided that for a debug feature, it wasn't a pressing concern.

Maybe now is the time to ask: are you using sw_sync outside of
validation?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
