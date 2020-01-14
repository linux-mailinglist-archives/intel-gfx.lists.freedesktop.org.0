Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96C1A13B58A
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2020 23:55:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B47318935A;
	Tue, 14 Jan 2020 22:55:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E776389354
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jan 2020 22:55:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19881711-1500050 for multiple; Tue, 14 Jan 2020 22:54:53 +0000
MIME-Version: 1.0
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <157904207833.5559.9894672106993486116@skylake-alporthouse-com>
References: <20200114224508.3302967-1-matthew.d.roper@intel.com>
 <157904207833.5559.9894672106993486116@skylake-alporthouse-com>
Message-ID: <157904249072.5559.17330332451430123199@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 14 Jan 2020 22:54:50 +0000
Subject: Re: [Intel-gfx] [RFC] drm/i915: Restrict legacy color key ioctl to
 pre-gen12
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

Quoting Chris Wilson (2020-01-14 22:47:58)
> Quoting Matt Roper (2020-01-14 22:45:08)
> > Since gen12 platform support isn't finalized yet, let's kill off the
> > legacy color key ioctl for this platform; there's no userspace today
> > that can run on this platform that utilizes this legacy ioctl, so we can
> > safely kill it now before it becomes ABI.
> > 
> > Color key functionality never got integrated into the property / atomic
> > interface, and the only known open source consumer was the Intel DDX
> > which was never updated to run on platforms beyond gen9.  If color
> > keying is desired going forward, it should really be exposed as a
> > property so that it can be applied atomically with other display updates
> > (and should probably be standardized in a way all drivers can choose to
> > support rather than being i915-specific).
> 
> But it does run on those platforms and exposes the sprite plane via Xv.

What you can say is that the color_key is not required by the Xv sprite
code. We will just unfortunately advertise it to clients, but not
actually do anything.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
