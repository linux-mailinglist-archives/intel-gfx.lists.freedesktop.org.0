Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA1BE212FAB
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jul 2020 00:46:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABBEE6E181;
	Thu,  2 Jul 2020 22:46:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 4341 seconds by postgrey-1.36 at gabe;
 Thu, 02 Jul 2020 22:46:46 UTC
Received: from 16.mo7.mail-out.ovh.net (16.mo7.mail-out.ovh.net
 [46.105.72.216])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79F876E181
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jul 2020 22:46:46 +0000 (UTC)
Received: from player788.ha.ovh.net (unknown [10.110.208.124])
 by mo7.mail-out.ovh.net (Postfix) with ESMTP id 966DB16FE2E
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jul 2020 00:09:52 +0200 (CEST)
Received: from etezian.org (213-243-141-64.bb.dnainternet.fi [213.243.141.64])
 (Authenticated sender: andi@etezian.org)
 by player788.ha.ovh.net (Postfix) with ESMTPSA id DF31714038A3F;
 Thu,  2 Jul 2020 22:09:47 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass
 (GARM-99G00349b074a2-b52a-4d94-aec4-40f78c93e13a,330C922CC493531D64D5056C63BB4F2290C4140E)
 smtp.auth=andi@etezian.org
Date: Fri, 3 Jul 2020 01:09:44 +0300
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200702220944.GD1969@jack.zhora.eu>
References: <20200702083225.20044-1-chris@chris-wilson.co.uk>
 <20200702083225.20044-2-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200702083225.20044-2-chris@chris-wilson.co.uk>
X-Ovh-Tracer-Id: 6570751856860512777
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduiedrtdehgddthecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisegvthgviihirghnrdhorhhgqeenucggtffrrghtthgvrhhnpedtgfduudfhfeeuueejfeeihedtfeetgfegveehgfeuleelhfduteegieekudeifeenucfkpheptddrtddrtddrtddpvddufedrvdegfedrudeguddrieegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeekkedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhg
Subject: Re: [Intel-gfx] [PATCH 02/23] drm/i915/gem: Split the context's
 obj:vma lut into its own mutex
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

> @@ -1312,11 +1314,11 @@ static int set_ppgtt(struct drm_i915_file_private *file_priv,
>  	if (vm == rcu_access_pointer(ctx->vm))
>  		goto unlock;
>  
> +	old = __set_ppgtt(ctx, vm);
> +
>  	/* Teardown the existing obj:vma cache, it will have to be rebuilt. */
>  	lut_close(ctx);
>  
> -	old = __set_ppgtt(ctx, vm);
> -
>  	/*
>  	 * We need to flush any requests using the current ppgtt before
>  	 * we release it as the requests do not hold a reference themselves,
> @@ -1330,6 +1332,7 @@ static int set_ppgtt(struct drm_i915_file_private *file_priv,
>  	if (err) {
>  		i915_vm_close(__set_ppgtt(ctx, old));
>  		i915_vm_close(old);
> +		lut_close(ctx); /* rebuild the old obj:vma cache */

I don't really understand this but it doesn't hurt

> diff --git a/drivers/gpu/drm/i915/gem/selftests/mock_context.c b/drivers/gpu/drm/i915/gem/selftests/mock_context.c
> index aa0d06cf1903..51b5a3421b40 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/mock_context.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/mock_context.c
> @@ -23,6 +23,8 @@ mock_context(struct drm_i915_private *i915,
>  	INIT_LIST_HEAD(&ctx->link);
>  	ctx->i915 = i915;
>  
> +	mutex_init(&ctx->mutex);
> +
>  	spin_lock_init(&ctx->stale.lock);
>  	INIT_LIST_HEAD(&ctx->stale.engines);
>  
> @@ -35,7 +37,7 @@ mock_context(struct drm_i915_private *i915,
>  	RCU_INIT_POINTER(ctx->engines, e);
>  
>  	INIT_RADIX_TREE(&ctx->handles_vma, GFP_KERNEL);
> -	mutex_init(&ctx->mutex);
> +	mutex_init(&ctx->lut_mutex);

...and I don't really understand why moved the first
init(&ctx->mutex) above, is it just aesthetic?

Reviewed-by: Andi Shyti <andi.shyti@intel.com>

Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
