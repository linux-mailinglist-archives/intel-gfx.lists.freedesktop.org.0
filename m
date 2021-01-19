Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A1472FB585
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jan 2021 12:01:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 436E06E198;
	Tue, 19 Jan 2021 11:01:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F3986E198
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 11:01:50 +0000 (UTC)
IronPort-SDR: BEZXivSsSYtCL0FGCUMp11k/PNFRhyUSi5DHw/lkB+7naLz6w7F4D+sD0vz2BsUgm5qcNYX7xM
 z8v/HtHi/JTw==
X-IronPort-AV: E=McAfee;i="6000,8403,9868"; a="176337666"
X-IronPort-AV: E=Sophos;i="5.79,358,1602572400"; d="scan'208";a="176337666"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2021 03:01:50 -0800
IronPort-SDR: 8VyHZTXRXTxn3gldn89XlwqfJTChkqOaGlN3biixPx6vsYNSXx8VT+S0rEQ4aM0MHnfSGj15sQ
 rF5AY9I+qx4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,358,1602572400"; d="scan'208";a="466646910"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga001.fm.intel.com with ESMTP; 19 Jan 2021 03:01:49 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id C8BF45C20E6; Tue, 19 Jan 2021 12:59:03 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <161105247378.19402.6684577298292307177@build.alporthouse.com>
References: <20210119094053.6919-1-chris@chris-wilson.co.uk>
 <87pn21gr5h.fsf@gaia.fi.intel.com>
 <161105247378.19402.6684577298292307177@build.alporthouse.com>
Date: Tue, 19 Jan 2021 12:59:03 +0200
Message-ID: <87lfcpgpl4.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/gt: One more flush for
 Baytrail clear residuals
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

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Quoting Mika Kuoppala (2021-01-19 10:25:14)
>> Chris Wilson <chris@chris-wilson.co.uk> writes:
>> 
>> > CI reports that Baytail requires one more invalidate after CACHE_MODE
>> > for it to be happy.
>> >
>> > Fixes: ace44e13e577 ("drm/i915/gt: Clear CACHE_MODE prior to clearing residuals")
>> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>> > Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
>> > Cc: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/gt/gen7_renderclear.c | 9 ++++++---
>> >  1 file changed, 6 insertions(+), 3 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/gt/gen7_renderclear.c b/drivers/gpu/drm/i915/gt/gen7_renderclear.c
>> > index 39478712769f..8551e6de50e8 100644
>> > --- a/drivers/gpu/drm/i915/gt/gen7_renderclear.c
>> > +++ b/drivers/gpu/drm/i915/gt/gen7_renderclear.c
>> > @@ -353,19 +353,21 @@ static void gen7_emit_pipeline_flush(struct batch_chunk *batch)
>> >  
>> >  static void gen7_emit_pipeline_invalidate(struct batch_chunk *batch)
>> >  {
>> > -     u32 *cs = batch_alloc_items(batch, 0, 8);
>> > +     u32 *cs = batch_alloc_items(batch, 0, 10);
>> >  
>> >       /* ivb: Stall before STATE_CACHE_INVALIDATE */
>> > -     *cs++ = GFX_OP_PIPE_CONTROL(4);
>> > +     *cs++ = GFX_OP_PIPE_CONTROL(5);
>> >       *cs++ = PIPE_CONTROL_STALL_AT_SCOREBOARD |
>> >               PIPE_CONTROL_CS_STALL;
>> >       *cs++ = 0;
>> >       *cs++ = 0;
>> > +     *cs++ = 0;
>> 
>> dw[5] seems to be only for gen8+. Does it make a difference?
>
> Pipe-control has always supported a qword-write, so a packet-length of 4
> or 5 on gen4-7. As I recall the debate for gen8+ was whether
> pipe-control still supported only a dword-write, and so we went with
> always using the qword-length.

Yes, there seem to ample evidence that 5 is fine.

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> -Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
