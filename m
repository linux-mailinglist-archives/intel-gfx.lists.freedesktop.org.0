Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B91C0174341
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Feb 2020 00:37:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09D426F532;
	Fri, 28 Feb 2020 23:37:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2747C6F537;
 Fri, 28 Feb 2020 23:37:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20391406-1500050 for multiple; Fri, 28 Feb 2020 23:37:24 +0000
MIME-Version: 1.0
To: Andi Shyti <andi@etezian.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200228233448.GE11891@jack.zhora.eu>
References: <20200228104340.2895082-1-chris@chris-wilson.co.uk>
 <20200228104340.2895082-4-chris@chris-wilson.co.uk>
 <20200228233448.GE11891@jack.zhora.eu>
Message-ID: <158293304248.29794.5765520201928001036@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 28 Feb 2020 23:37:22 +0000
Subject: Re: [Intel-gfx] [PATCH i-g-t 4/5] i915: Exercise sysfs heartbeat
 controls
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

Quoting Andi Shyti (2020-02-28 23:34:48)
> On Fri, Feb 28, 2020 at 10:43:39AM +0000, Chris Wilson wrote:
> > We [will] expose various per-engine scheduling controls. One of which,
> > 'heartbeat_duration_ms', defines how often we send a heartbeat down the
> > engine to check upon the health of the engine. If a heartbeat does not
> > complete within the interval (or two), the engine is declared hung.
> > 
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> 
> Someone with not a good eye might swear to have read this patch
> once, and at patch 5/5 he will ask again the same question.
> 
> Why don't we put together in a library the things that patch
> 3/4/5 have in common?

They are. It's basically a repeating pattern of testing with local
assumptions. For the sole reason that I'm not very inventive.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
