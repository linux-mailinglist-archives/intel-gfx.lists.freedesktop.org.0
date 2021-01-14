Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E2BA2F582F
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jan 2021 04:01:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E86E89C08;
	Thu, 14 Jan 2021 03:01:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 11.mo6.mail-out.ovh.net (11.mo6.mail-out.ovh.net
 [188.165.38.119])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D78E389C08
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Jan 2021 03:01:49 +0000 (UTC)
Received: from player711.ha.ovh.net (unknown [10.108.1.170])
 by mo6.mail-out.ovh.net (Postfix) with ESMTP id 874302380F9
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Jan 2021 04:01:47 +0100 (CET)
Received: from etezian.org (213-243-141-64.bb.dnainternet.fi [213.243.141.64])
 (Authenticated sender: andi@etezian.org)
 by player711.ha.ovh.net (Postfix) with ESMTPSA id 9AB8B19D80EC4;
 Thu, 14 Jan 2021 03:01:43 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass
 (GARM-98R0029934a32e-8689-4b99-a126-78738a6c0c20,
 72D3C5DAFF26A6515C48D523C3EFD44FB281F22F) smtp.auth=andi@etezian.org
X-OVh-ClientIp: 213.243.141.64
Date: Thu, 14 Jan 2021 05:01:42 +0200
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <X/+0FmpBmEAwwNTq@jack.zhora.eu>
References: <20210113124600.656-1-chris@chris-wilson.co.uk>
 <20210113124600.656-3-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210113124600.656-3-chris@chris-wilson.co.uk>
X-Ovh-Tracer-Id: 12977966752718307849
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedukedrtdeggdehfecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisegvthgviihirghnrdhorhhgqeenucggtffrrghtthgvrhhnpedtgfduudfhfeeuueejfeeihedtfeetgfegveehgfeuleelhfduteegieekudeifeenucfkpheptddrtddrtddrtddpvddufedrvdegfedrudeguddrieegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeduuddrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhg
Subject: Re: [Intel-gfx] [PATCH 03/10] drm/i915/gem: Reduce
 ctx->engine_mutex for reading the clone source
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

On Wed, Jan 13, 2021 at 12:45:53PM +0000, Chris Wilson wrote:
> When cloning the engines from the source context, we need to ensure that
> the engines are not freed as we copy them, and that the flags we clone
> from the source correspond with the engines we copy across. To do this
> we need only take a reference to the src->engines, rather than hold the
> src->engine_mutex, so long as we verify that nothing changed under the
> read.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Andi Shyti <andi.shyti@intel.com>

Thanks,
Andi

> +		if (user_engines)
> +			*user_engines = i915_gem_context_user_engines(ctx);
> +


> +		/* successful await => strong mb */

P.S.: mmhhh? :)

>  		if (unlikely(!i915_sw_fence_await(&engines->fence)))
>  			continue;
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
