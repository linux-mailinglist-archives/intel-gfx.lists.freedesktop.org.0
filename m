Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 99D0719E049
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 23:29:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28EA16ECAE;
	Fri,  3 Apr 2020 21:29:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C9D26ECAE
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2020 21:29:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20794248-1500050 for multiple; Fri, 03 Apr 2020 22:29:12 +0100
MIME-Version: 1.0
In-Reply-To: <2e16cf3229e6a49f12cc3f4d42d713588f779d1b.camel@redhat.com>
References: <20200322154018.15951-1-chris@chris-wilson.co.uk>
 <2e16cf3229e6a49f12cc3f4d42d713588f779d1b.camel@redhat.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Lyude Paul <lyude@redhat.com>, intel-gfx@lists.freedesktop.org
Message-ID: <158594935100.5852.5568230749562214374@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 03 Apr 2020 22:29:11 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Treat idling as a RPS
 downclock event
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

Quoting Lyude Paul (2020-04-03 22:25:43)
> Hey - almost forgot to reply to this, I actually probably won't be able to
> test this properly for a while since my razer laptop is actually stuck in the
> office I work at, and I legally can't get to it with COVID-19 shelter-in-
> place. Sorry about that!

No worries, but I'll probably forget to ping you when the world settles
down again. It's just something for you to keep in mind in case we get
some strange bug reports in 6 months time.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
