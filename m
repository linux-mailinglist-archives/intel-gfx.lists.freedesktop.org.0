Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D3ED14796F
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 09:30:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F29936FF5B;
	Fri, 24 Jan 2020 08:30:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 327366FF5B
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 08:30:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19990788-1500050 for multiple; Fri, 24 Jan 2020 08:30:24 +0000
MIME-Version: 1.0
To: Matt Roper <matthew.d.roper@intel.com>,
 Mika Kuoppala <mika.kuoppala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200124005117.GE459881@mdroper-desk1.amr.corp.intel.com>
References: <20200102131707.1463945-1-chris@chris-wilson.co.uk>
 <871rsg6azg.fsf@gaia.fi.intel.com>
 <20200124005117.GE459881@mdroper-desk1.amr.corp.intel.com>
Message-ID: <157985462200.6050.13893093150923439001@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 24 Jan 2020 08:30:22 +0000
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/gt: Include a bunch more rcs
 image state
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

Quoting Matt Roper (2020-01-24 00:51:17)
> On Fri, Jan 03, 2020 at 01:22:11PM +0200, Mika Kuoppala wrote:
> > Chris Wilson <chris@chris-wilson.co.uk> writes:
> > 
> > > Empirically the minimal context image we use for rcs is insufficient to
> > > state the engine. This is demonstrated if we poison the context image
> > > such that any uninitialised state is invalid, and so if the engine
> > > samples beyond our defined region, will fail to start.
> 
> Just out of curiosity, is this something we only need to worry about on
> gen9 and not on gen11/gen12?

We're testing on all gen, and only gen9 is eating the poison in BAT.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
