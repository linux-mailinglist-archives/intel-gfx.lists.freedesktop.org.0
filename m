Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A96891D0CB5
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2020 11:47:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03A846E9FA;
	Wed, 13 May 2020 09:47:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68A7B6E9EC
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 May 2020 09:47:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21184134-1500050 for multiple; Wed, 13 May 2020 10:47:01 +0100
MIME-Version: 1.0
In-Reply-To: <87ftc42n9m.fsf@gaia.fi.intel.com>
References: <20200513085934.9859-1-chris@chris-wilson.co.uk>
 <87ftc42n9m.fsf@gaia.fi.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158936321988.21674.12107898742121519356@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 13 May 2020 10:46:59 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Reset execlists registers
 before HWSP
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

Quoting Mika Kuoppala (2020-05-13 10:32:37)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > Upon gt resume, we first poison then sanitize the engine. However, our
> > testing shows that gen9 will very rarely retain the poisoned value from
> > the HWSP mappings of the execlists status registers. This suggests that
> > it is reading back from the HWSP, so rejig the register reset.
> >
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> 
> Acked-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

It failed in exactly the same way, got past the
	GEM_BUG_ON(*csb_write != reset_value)
and still ended up with
	*csb_write == 0x5a [90]
in process_csb.

How it's able to see 0x5a at all is a mystery.

We poison, we sanitize, we reset the GPU. The value comes back from out
of nowhere.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
