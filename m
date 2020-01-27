Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F28D14A075
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2020 10:08:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 498746EA7A;
	Mon, 27 Jan 2020 09:08:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 492516EA75;
 Mon, 27 Jan 2020 09:08:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20018998-1500050 for multiple; Mon, 27 Jan 2020 09:08:04 +0000
MIME-Version: 1.0
To: Daniel Vetter <daniel@ffwll.ch>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200127090557.GU43062@phenom.ffwll.local>
References: <20200122125750.9737-1-wambui.karugax@gmail.com>
 <157996851987.2524.2577321446102599250@skylake-alporthouse-com>
 <20200127090557.GU43062@phenom.ffwll.local>
Message-ID: <158011608131.25356.4337758241793042878@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 27 Jan 2020 09:08:01 +0000
Subject: Re: [Intel-gfx] [PATCH 0/2] drm/i915/gem: conversion to new drm
 logging macros
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
Cc: airlied@linux.ie, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Daniel Vetter (2020-01-27 09:05:57)
> On Sat, Jan 25, 2020 at 04:08:39PM +0000, Chris Wilson wrote:
> > Quoting Wambui Karuga (2020-01-22 12:57:48)
> > > This series is a part of the conversion to  the new struct drm_device
> > > based logging macros in drm/i915.
> > > This series focuses on the drm/i915/gem directory and converts all
> > > straightforward instances of the printk based logging macros to the new
> > > macros.
> > 
> > Overall, I'm not keen on this as it perpetuates the mistake of putting
> > client debug message in dmesg and now gives them even more an air of
> > being device driver debug messages. We need a mechanism by which we
> > report the details of what a client did wrong back to that client
> > (tracefs + context/client getparam to return an isolated debug fd is my
> > idea).
> 
> Sean is working on that, but it's a global thing still.

Go look at how I suggest we can use tracefs in that thread :)
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
