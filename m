Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 67E652F58DA
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jan 2021 04:19:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5958D89CDB;
	Thu, 14 Jan 2021 03:19:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 1093 seconds by postgrey-1.36 at gabe;
 Thu, 14 Jan 2021 03:19:37 UTC
Received: from 20.mo3.mail-out.ovh.net (20.mo3.mail-out.ovh.net [178.33.47.94])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F2CC89CDB
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Jan 2021 03:19:37 +0000 (UTC)
Received: from player788.ha.ovh.net (unknown [10.108.42.142])
 by mo3.mail-out.ovh.net (Postfix) with ESMTP id 418DF27379B
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Jan 2021 04:01:21 +0100 (CET)
Received: from etezian.org (213-243-141-64.bb.dnainternet.fi [213.243.141.64])
 (Authenticated sender: andi@etezian.org)
 by player788.ha.ovh.net (Postfix) with ESMTPSA id 0786A1A049C1C;
 Thu, 14 Jan 2021 03:01:16 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass
 (GARM-98R002a89574ce-fc32-4dd7-98a1-d5bbfc04334f,
 72D3C5DAFF26A6515C48D523C3EFD44FB281F22F) smtp.auth=andi@etezian.org
X-OVh-ClientIp: 213.243.141.64
Date: Thu, 14 Jan 2021 05:01:15 +0200
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <X/+z+wPUkADDKCAd@jack.zhora.eu>
References: <20210113124600.656-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210113124600.656-1-chris@chris-wilson.co.uk>
X-Ovh-Tracer-Id: 12970648404118061577
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedukedrtdeggdehfecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisegvthgviihirghnrdhorhhgqeenucggtffrrghtthgvrhhnpedtgfduudfhfeeuueejfeeihedtfeetgfegveehgfeuleelhfduteegieekudeifeenucfkpheptddrtddrtddrtddpvddufedrvdegfedrudeguddrieegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeekkedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhg
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

> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index 0b1a46a0d866..784c05ac5cca 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -276,7 +276,7 @@ static void remove_from_engine(struct i915_request *rq)
>  
>  bool i915_request_retire(struct i915_request *rq)
>  {
> -	if (!i915_request_completed(rq))
> +	if (!__i915_request_is_complete(rq))


>  		return false;
>  
>  	RQ_TRACE(rq, "\n");
> @@ -342,8 +342,7 @@ void i915_request_retire_upto(struct i915_request *rq)
>  	struct i915_request *tmp;
>  
>  	RQ_TRACE(rq, "\n");
> -
> -	GEM_BUG_ON(!i915_request_completed(rq));
> +	GEM_BUG_ON(!__i915_request_is_complete(rq));

I might be a bit shallow, but where is the lock here?

Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
