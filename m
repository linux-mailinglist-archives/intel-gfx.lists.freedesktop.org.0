Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FBDC2F609A
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jan 2021 12:58:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D77F66E283;
	Thu, 14 Jan 2021 11:58:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C49A56E25B
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Jan 2021 11:58:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23593948-1500050 for multiple; Thu, 14 Jan 2021 11:58:09 +0000
MIME-Version: 1.0
In-Reply-To: <X/+0QdtgQY+GNj++@jack.zhora.eu>
References: <20210113124600.656-1-chris@chris-wilson.co.uk>
 <20210113124600.656-7-chris@chris-wilson.co.uk>
 <X/+0QdtgQY+GNj++@jack.zhora.eu>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Andi Shyti <andi@etezian.org>
Date: Thu, 14 Jan 2021 11:58:07 +0000
Message-ID: <161062548744.19482.11011467929481228051@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 07/10] drm/i915/gt: Extract busy-stats for
 ring-scheduler
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

Quoting Andi Shyti (2021-01-14 03:02:25)
> Hi Chris,
> 
> On Wed, Jan 13, 2021 at 12:45:57PM +0000, Chris Wilson wrote:
> > Lift the busy-stats context-in/out implementation out of intel_lrc, so
> > that we can reuse it for other scheduler implementations.
> > 
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_engine_stats.h  | 49 +++++++++++++++++++
> >  .../drm/i915/gt/intel_execlists_submission.c  | 34 +------------
> >  2 files changed, 50 insertions(+), 33 deletions(-)
> >  create mode 100644 drivers/gpu/drm/i915/gt/intel_engine_stats.h
> 
> this looks like just a copy paste...

It's closer now indeed. It's not quite identical yet, as in one case we
have boolean, the other an uint counter. (There's a third case for class
runtime stats where it would be an atomic_t.) So not quite hitting the
rule of 3 for adequate generalisation, though maybe with some magic
macro constructors...
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
