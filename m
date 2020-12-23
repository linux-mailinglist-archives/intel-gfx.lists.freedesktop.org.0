Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E72F2E1DAD
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Dec 2020 16:01:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A70206E128;
	Wed, 23 Dec 2020 15:01:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EE006E128
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Dec 2020 15:01:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23415061-1500050 for multiple; Wed, 23 Dec 2020 15:01:11 +0000
MIME-Version: 1.0
In-Reply-To: <87v9csy3jt.fsf@gaia.fi.intel.com>
References: <20201223122359.22562-1-chris@chris-wilson.co.uk>
 <87v9csy3jt.fsf@gaia.fi.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Wed, 23 Dec 2020 15:01:11 +0000
Message-ID: <160873567138.15843.13996944377330471366@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/selftests: Confirm
 CS_TIMESTAMP / CTX_TIMESTAMP share a clock
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

Quoting Mika Kuoppala (2020-12-23 14:56:06)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> > +     d_ctx *= RUNTIME_INFO(engine->i915)->cs_timestamp_frequency_hz;
> > +     if (IS_ICELAKE(engine->i915))
> > +             d_ring *= 12500000; /* Fixed 80ns for icl ctx timestamp? */
> 
> This is...weird. But I am not going to argue against hardware.
> 
> Will be interesting to see if this can find something funny.

Well it already found the icl funny :(
I didn't appreciate the joke myself.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
