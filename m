Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 103B4135558
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2020 10:14:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5246E6E8E3;
	Thu,  9 Jan 2020 09:14:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A4976E8E3
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jan 2020 09:14:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19817816-1500050 for multiple; Thu, 09 Jan 2020 09:14:28 +0000
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <87muaxf1b4.fsf@gaia.fi.intel.com>
References: <20200109085839.873553-1-chris@chris-wilson.co.uk>
 <20200109085839.873553-11-chris@chris-wilson.co.uk>
 <87muaxf1b4.fsf@gaia.fi.intel.com>
Message-ID: <157856126607.13423.16621889387641618576@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 09 Jan 2020 09:14:26 +0000
Subject: Re: [Intel-gfx] [PATCH 11/14] drm/i915: Drop the shadow ring state
 from the error capture
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

Quoting Mika Kuoppala (2020-01-09 09:04:31)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > The shadow ring regs (ring->head, ring->tail) are meaningless in the
> > post-mortem dump as they do not related to anything on HW. Remove them
> > from the coredump.
> 
> We have been dumping these just to check that our bookkeepping matches?

Kind off, but they never really match since the ring->head is very lazy,
and ring->tail is wherever the user got up to. We have the relevant
information from the request where we expect to be in the ring for the
error, and the HW tells us where it was executing.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
