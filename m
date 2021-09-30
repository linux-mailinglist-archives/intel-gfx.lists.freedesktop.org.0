Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3605641DB3E
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Sep 2021 15:37:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32DB76EB93;
	Thu, 30 Sep 2021 13:37:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82F4C6EB93
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Sep 2021 13:37:54 +0000 (UTC)
Date: Thu, 30 Sep 2021 15:37:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1633009072;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=3VOnQCFEBMv/EIrcibNy4TfUctKwhmyDT6Flu7VJBlA=;
 b=vIDYEsCazl0FCUyF7KYkzhPYd7sDauHLD8KpXFXoo9Ng2mScnOjYyqbLwUdoyzp6KSDxVu
 Os5iIHCDNSZILNwlz+uSYGeTx6va/+DdbXwznhwzVtwI1mKiHP0Z2++fAsPfxhUYTUKnzy
 zz0VEXYwLFW2INxl/C99JrHzFb7AlXwLkt9kGtISwcVg3C4SDGyEJ+EjnPpaE4iCKiR3OK
 mBIC0luq6qGuLGpsv5Hv339JcouCcASr9WHKoobze2s+h+57Vsitsl2FSqARsPDrY5MnDn
 tUxaO0xVI/PG+Surfo/laidJSJYCVjfN1YS930s9W+Hb/c6IRvW4mpzvSc0u3w==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1633009072;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=3VOnQCFEBMv/EIrcibNy4TfUctKwhmyDT6Flu7VJBlA=;
 b=dQDKqJFg3pNEWytqMpFkJ8O0yFXmXNx/tMchr3ym/PjhRE8lXmdwNHcZ7vFO4wj4CC7c9y
 cBI769zASHOq1rAw==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Anton Lundin <glance@acc.umu.se>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <20210930133751.pouqnfklay4etup2@linutronix.de>
References: <20210929160659.GI108031@montezuma.acc.umu.se>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20210929160659.GI108031@montezuma.acc.umu.se>
Subject: Re: [Intel-gfx] Picture stutter on i915 Graphics P630]
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2021-09-29 18:07:00 [+0200], Anton Lundin wrote:
> Hi.
Hi,

> While I was chasing some other bugs I tested 5.15-rc3-rt5 and noted your
> code e446c2038b58 ("drm/i915/gt: Use spin_lock_irq() instead of
> local_irq_disable() + spin_lock()") and noted that this patch created a
> lot of visual glitches, freeze-frames for about 0.5s every couple of
> seconds.
> 
> The card identifies itself as: (if that matters)
> Intel Corporation CoffeeLake-S GT2 [UHD Graphics P630] [8086:3e96]
> 
> Reverting that patch resolved quite a lot of the glitches but there are
> still a couple of minor ones left, that I'm trying to chase down.
> 
> 
> None of those glitches are there on the same workload on a regular
> 5.15-rc3 kernel.

You are talking about that commit and 5.15-rc3-rt5 with PREEMPT_RT
enabled?

> 
> //Anton

Sebastian
