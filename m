Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C69C2F6293
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jan 2021 15:01:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87DEB89FDE;
	Thu, 14 Jan 2021 14:01:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 20.mo7.mail-out.ovh.net (20.mo7.mail-out.ovh.net
 [46.105.49.208])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D820389FDE
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Jan 2021 14:01:51 +0000 (UTC)
Received: from player756.ha.ovh.net (unknown [10.108.4.98])
 by mo7.mail-out.ovh.net (Postfix) with ESMTP id B358118F983
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Jan 2021 14:44:17 +0100 (CET)
Received: from etezian.org (213-243-141-64.bb.dnainternet.fi [213.243.141.64])
 (Authenticated sender: andi@etezian.org)
 by player756.ha.ovh.net (Postfix) with ESMTPSA id 57E481932B8FF;
 Thu, 14 Jan 2021 13:44:10 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass
 (GARM-96R0014b763843-cf93-48b6-b821-c6a6c132cdaf,
 72D3C5DAFF26A6515C48D523C3EFD44FB281F22F) smtp.auth=andi@etezian.org
X-OVh-ClientIp: 213.243.141.64
Date: Thu, 14 Jan 2021 15:44:06 +0200
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <YABKplEe6AFumR3x@jack.zhora.eu>
References: <20210113124600.656-1-chris@chris-wilson.co.uk>
 <X/+z+wPUkADDKCAd@jack.zhora.eu>
 <161062581173.19482.11361639362425651645@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161062581173.19482.11361639362425651645@build.alporthouse.com>
X-Ovh-Tracer-Id: 5382083032536826377
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduledrtddtgdeftdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisegvthgviihirghnrdhorhhgqeenucggtffrrghtthgvrhhnpedtgfduudfhfeeuueejfeeihedtfeetgfegveehgfeuleelhfduteegieekudeifeenucfkpheptddrtddrtddrtddpvddufedrvdegfedrudeguddrieegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeehiedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhg
Subject: Re: [Intel-gfx] [PATCH 01/10] drm/i915: Mark up protected uses of
 'i915_request_completed'
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

Hi Chris,

> > > diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> > > index 0b1a46a0d866..784c05ac5cca 100644
> > > --- a/drivers/gpu/drm/i915/i915_request.c
> > > +++ b/drivers/gpu/drm/i915/i915_request.c
> > > @@ -276,7 +276,7 @@ static void remove_from_engine(struct i915_request *rq)
> > >  
> > >  bool i915_request_retire(struct i915_request *rq)
> > >  {
> > > -     if (!i915_request_completed(rq))
> > > +     if (!__i915_request_is_complete(rq))
> > 
> > 
> > >               return false;
> > >  
> > >       RQ_TRACE(rq, "\n");
> > > @@ -342,8 +342,7 @@ void i915_request_retire_upto(struct i915_request *rq)
> > >       struct i915_request *tmp;
> > >  
> > >       RQ_TRACE(rq, "\n");
> > > -
> > > -     GEM_BUG_ON(!i915_request_completed(rq));
> > > +     GEM_BUG_ON(!__i915_request_is_complete(rq));
> > 
> > I might be a bit shallow, but where is the lock here?
> 
> This holds the request->context->timeline->mutex.
> 
> The locking is basically split between frontend/backend:
> 
>   construction/destruction - under the timeline->mutex
> 
>   execution - under the engine->active.lock (coordinates with
>               timeline->mutex)
> 
> At all other times, RCU protected access (using the SLAB_TYPESAFE_BY_RCU
> so approach with caution).

Right! Thanks!

Reviewed-by: Andi Shyti <andi.shyti@intel.com>

Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
