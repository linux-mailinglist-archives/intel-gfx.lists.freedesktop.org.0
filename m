Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B89871A9D58
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 13:45:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBE176E9A5;
	Wed, 15 Apr 2020 11:45:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3EF66E9A3
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 11:45:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20905730-1500050 for multiple; Wed, 15 Apr 2020 12:45:53 +0100
MIME-Version: 1.0
In-Reply-To: <158694989939.24667.16243976890282267889@build.alporthouse.com>
References: <20200414161423.23830-1-chris@chris-wilson.co.uk>
 <20200415105659.GA50947@intel.intel>
 <158694989939.24667.16243976890282267889@build.alporthouse.com>
To: Andi Shyti <andi.shyti@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158695115200.24667.1030399675561260215@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 15 Apr 2020 12:45:52 +0100
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/gt: Try to smooth RPS spikes
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

Quoting Chris Wilson (2020-04-15 12:24:59)
> Quoting Andi Shyti (2020-04-15 11:56:59)
> > Hi Chris,
> > 
> > On Tue, Apr 14, 2020 at 05:14:22PM +0100, Chris Wilson wrote:
> > > By the time we respond to the RPS interrupt [inside a worker], the GPU
> > > may be running a different workload. As we look to make the evalution
> > > intervals shorter, these spikes are more likely to okay. Let's try to
> > > smooth over the spikes in the workload by comparing the EI interrupt
> > > [up/down events] with the most recently completed EI; if both say up,
> > > then increase the clocks, if they disagree stay the same. In principle,
> > > this means we now take 2 up EI to go increase into the next bin, and
> > > similary 2 down EI to decrease. However, if the worker runs fast enough,
> > > the previous EI in the registers will be the same as triggered the
> > > interrupt, so responsiveness remains unaffect. [Under the current scheme
> > > where EI are on the order of 10ms, it is likely that this is true and we
> > > compare the interrupt with the EI that caused it.]
> > 
> > looks reasonable to me. Wouldn't it make also sense to evaluate
> > the difference between the current and the previous pm_iir?
> 
> I was considering it... We can't look at IIR since we apply the mask,
> but ISR should be valid. Worth a looksee.

[   98.882025] bcs0: DOWN interrupt not recorded for idle, pm_iir:10, pm_isr:0, prev_down:0, down_threshold:3840, down_ei:5dc0

ISR doesn't seem helpful on first try.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
