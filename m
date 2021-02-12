Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E8FA31A149
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Feb 2021 16:16:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E57C6E7D2;
	Fri, 12 Feb 2021 15:16:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E86466E7D2;
 Fri, 12 Feb 2021 15:16:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from localhost (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23851161-1500050 for multiple; Fri, 12 Feb 2021 15:16:07 +0000
MIME-Version: 1.0
In-Reply-To: <CACvgo51auuU-AR5nPPo-7Q8Ho84cqOYXuTjgjGDzmPjXRtjZ0w@mail.gmail.com>
References: <20210204121121.2660-1-chris@chris-wilson.co.uk>
 <20210204121121.2660-3-chris@chris-wilson.co.uk>
 <CACvgo51auuU-AR5nPPo-7Q8Ho84cqOYXuTjgjGDzmPjXRtjZ0w@mail.gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Emil Velikov <emil.l.velikov@gmail.com>
Date: Fri, 12 Feb 2021 15:16:07 +0000
Message-ID: <161314296740.4581.15495829753022855916@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [RFC 3/3] drm/i915/gt: Export device and
 per-process runtimes via procfs
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 ML dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Emil Velikov (2021-02-12 14:57:56)
> Hi Chris,
> 
> On Thu, 4 Feb 2021 at 12:11, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> >
> > Register with /proc/gpu to provide the client runtimes for generic
> > top-like overview, e.g. gnome-system-monitor can use this information to
> > show the per-process multi-GPU usage.
> >
> Exposing this information to userspace sounds great IMHO and like the
> proposed "channels" for the device engines.
> If it were me, I would have the channel names a) exposed to userspace
> and b) be a "fixed set".

- Total
- Graphics
- Compute
- Unified
- Video
- Copy
- Display
- Other

Enough versatility for the foreseeable future?
But plan for extension.

The other aspect then is the capacity of each channel. We can keep it
simple as the union/average (whichever the driver has to hand) runtime in
nanoseconds over all IP blocks within a channel.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
