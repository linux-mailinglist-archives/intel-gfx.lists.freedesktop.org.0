Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 864C51C9E75
	for <lists+intel-gfx@lfdr.de>; Fri,  8 May 2020 00:28:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 911EF6E0A5;
	Thu,  7 May 2020 22:28:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 133416E0A5
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 May 2020 22:28:32 +0000 (UTC)
IronPort-SDR: c09q10yXddCT93PrEbukLEYq/vH2IWUnKnl5UDXMFy76Bsd+yE4Kn0U/f2o/IdZbDXp4MeIT+b
 FmXai59IV10g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2020 15:28:31 -0700
IronPort-SDR: Y0A1WH5YD0To4TrDYHAxwgdltqJXR59gf1AjiWLTa6AeQRto6XV/H4KWeEarqFEVvYs5dEQMdR
 sMI3qsuvw0oA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,365,1583222400"; d="scan'208";a="264091255"
Received: from rantogno-mobl4.jf.intel.com (HELO
 rantogno-mobl4.amr.corp.intel.com) ([10.54.72.142])
 by orsmga006.jf.intel.com with SMTP; 07 May 2020 15:28:31 -0700
Date: Thu, 7 May 2020 15:28:31 -0700
From: Rafael Antognolli <rafael.antognolli@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200507222831.kndq74nc7wnxbcpn@rantogno-mobl4.amr.corp.intel.com>
References: <20200506144734.29297-1-mika.kuoppala@linux.intel.com>
 <20200506144734.29297-4-mika.kuoppala@linux.intel.com>
 <158877715660.927.5979318415732712309@build.alporthouse.com>
 <87lfm5nl8p.fsf@gaia.fi.intel.com>
 <158877912211.927.1049499765705286623@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <158877912211.927.1049499765705286623@build.alporthouse.com>
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/gen12: Invalidate aux table
 entries forcibly
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

On Wed, May 06, 2020 at 04:32:02PM +0100, Chris Wilson wrote:
> Quoting Mika Kuoppala (2020-05-06 16:20:22)
> > Chris Wilson <chris@chris-wilson.co.uk> writes:
> > 
> > > Quoting Mika Kuoppala (2020-05-06 15:47:34)
> > >> Aux table invalidation can fail on update. So
> > >> next access may cause memory access to be into stale entry.
> > >> 
> > >> Proposed workaround is to invalidate entries between
> > >> all batchbuffers.
> > >
> > > This sounds like it should have a sunset clause. Do we anticipate being
> > > able to drop this w/a in future?
> > 
> > Rafael kindly pointed out that Mesa already does this:
> > https://gitlab.freedesktop.org/mesa/mesa/-/blob/master/src/gallium/drivers/iris/iris_state.c#L5131
> > So I would say we can drop this patch.
> 
> Is the false hit self-contained? Is it caused by PTE update of the
> address or by a 3D state change i.e. is it a potential isolation issue?
> -Chris

There's no 3D state for the aux table. What we do in Iris is:
 - allocate buffers and cpu map them
 - write the multiple levels of the table (main buffers -> CCS buffers)
   and keep track of when it changes
 - whenever it changes, we emit LRI to 0x4208 to invalidate the cache.

Anv does something similar except it writes to the table from the GPU.

I tried removing the heuristics and invalidating the table on the
beginning of every batch, but it doesn't help. We can probably get
preempted mid-batch and then another context with a different aux table
and the wrong cache is probably causing the hang. The kernel
invalidating it seems to fix the problem.

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
