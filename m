Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B221320FA98
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2020 19:30:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 631FF89BFC;
	Tue, 30 Jun 2020 17:30:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFF6889BFC
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jun 2020 17:29:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21666423-1500050 for multiple; Tue, 30 Jun 2020 18:29:55 +0100
MIME-Version: 1.0
In-Reply-To: <87imf84jh0.fsf@gaia.fi.intel.com>
References: <20200630152724.3734-1-chris@chris-wilson.co.uk>
 <87imf84jh0.fsf@gaia.fi.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Tue, 30 Jun 2020 18:29:55 +0100
Message-ID: <159353819588.22902.3876380735847727824@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Skip stale object handle for
 debugfs per-file-stats
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
Cc: stable@vger.kernel.org, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Mika Kuoppala (2020-06-30 17:16:43)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > As we close a handle GEM object, we update the drm_file's idr with an
> > error pointer to indicate the in-progress closure, and finally set it to
> 
> The error pointer part stage seems to be missing.

Yeah, the ERR_PTR stage seems to be my faulty memory, we just set it to
NULL to indicate in-progress. Ok, I'm not going totally mad:

commit f6cd7daecff558fab2c45d15283d3e52f688342d
Author: Chris Wilson <chris@chris-wilson.co.uk>
Date:   Fri Apr 15 12:55:08 2016 +0100

    drm: Release driver references to handle before making it available again

    ...

    v2: Use NULL rather than an ERR_PTR to avoid having to adjust callers.
    idr_alloc() tracks existing handles using an internal bitmap, so we are
    free to use the NULL object as our stale identifier.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
