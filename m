Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9972F27BEA4
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Sep 2020 10:00:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B00E689131;
	Tue, 29 Sep 2020 08:00:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83D6D89131
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Sep 2020 07:59:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22563773-1500050 for multiple; Tue, 29 Sep 2020 08:59:45 +0100
MIME-Version: 1.0
In-Reply-To: <CAKi4VAKdVLhah=1U+5MTFssWP9RHFi4pzC5QzqmTRxELn70+gw@mail.gmail.com>
References: <20200324201526.16571-1-chris@chris-wilson.co.uk>
 <20200324204455.2988-1-chris@chris-wilson.co.uk>
 <CAKi4VAKdVLhah=1U+5MTFssWP9RHFi4pzC5QzqmTRxELn70+gw@mail.gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Lucas De Marchi <lucas.de.marchi@gmail.com>
Date: Tue, 29 Sep 2020 08:59:48 +0100
Message-ID: <160136638867.20502.3970647670583496763@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Measure the energy
 consumed while in RC6
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
Cc: Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Lucas De Marchi (2020-09-29 00:56:54)
> On Tue, Mar 24, 2020 at 1:45 PM Chris Wilson <chris@chris-wilson.co.uk> wrote:
> >
> > Measure and compare the energy consumed, as reported by the rapl MSR,
> > by the GPU while in RC0 and RC6 states. Throw an error if RC6 does not
> > at least halve the energy consumption of RC0, as this more than likely
> > means we failed to enter RC0 correctly.
> >
> > If we can't measure the energy draw with the MSR, then it will report 0
> > for both measurements. Since the measurement works on all gen6+, this seems
> > worth flagging as an error.
> 
> I'm confused by this statement here. MSR is a *CPU* register and you are using
> it here, mixed with RC6. How is that supposed to work with, e.g., dgfx?

You abstract it with the right interface for hwmon. The card reports
energy draw, so the test remains the same, verify that a low power state
does consume substantially less energy (and if we can get fine enough
granularity that the GT powerwells draw 0).
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
