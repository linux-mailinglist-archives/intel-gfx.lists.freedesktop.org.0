Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BA092FEEE5
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jan 2021 16:33:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 355D66E8FA;
	Thu, 21 Jan 2021 15:33:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8.mo2.mail-out.ovh.net (8.mo2.mail-out.ovh.net [188.165.52.147])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE53C6E8FA
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jan 2021 15:33:37 +0000 (UTC)
Received: from player758.ha.ovh.net (unknown [10.108.57.150])
 by mo2.mail-out.ovh.net (Postfix) with ESMTP id 3386A1F2533
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jan 2021 16:23:34 +0100 (CET)
Received: from etezian.org (213-243-141-64.bb.dnainternet.fi [213.243.141.64])
 (Authenticated sender: andi@etezian.org)
 by player758.ha.ovh.net (Postfix) with ESMTPSA id 1126C1A49C5B0;
 Thu, 21 Jan 2021 15:23:27 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass
 (GARM-96R0011b59609a-4c1e-4cb2-b49c-b830afc446ba,
 CAC1A779C7E69CC0B09A0D0E1FF85449833E868F) smtp.auth=andi@etezian.org
X-OVh-ClientIp: 213.243.141.64
Date: Thu, 21 Jan 2021 17:23:24 +0200
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <YAmcbB6oqW8w2/oA@jack.zhora.eu>
References: <20210120122205.2808-1-chris@chris-wilson.co.uk>
 <20210120122205.2808-2-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210120122205.2808-2-chris@chris-wilson.co.uk>
X-Ovh-Tracer-Id: 11274198720839729673
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduledrudeggdejkecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisegvthgviihirghnrdhorhhgqeenucggtffrrghtthgvrhhnpedtgfduudfhfeeuueejfeeihedtfeetgfegveehgfeuleelhfduteegieekudeifeenucfkpheptddrtddrtddrtddpvddufedrvdegfedrudeguddrieegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeehkedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhg
Subject: Re: [Intel-gfx] [PATCH 02/10] drm/i915/gt: Skip over completed
 active execlists, again
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

> Now that we are careful to always force-restore contexts upon rewinding
> (where necessary), we can restore our optimisation to skip over
> completed active execlists when dequeuing.
> 
> Referenecs: 35f3fd8182ba ("drm/i915/execlists: Workaround switching back to a completed context")
> References: 8ab3a3812aa9 ("drm/i915/gt: Incrementally check for rewinding")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> ---
>  .../drm/i915/gt/intel_execlists_submission.c  | 34 +++++++++----------
>  1 file changed, 16 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> index 524c8b54d220..ac1be7a632d3 100644
> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> @@ -1224,12 +1224,20 @@ static void set_preempt_timeout(struct intel_engine_cs *engine,
>  		     active_preempt_timeout(engine, rq));
>  }
>  
> +static bool completed(const struct i915_request *rq)
> +{
> +	if (i915_request_has_sentinel(rq))
> +		return false;
> +
> +	return __i915_request_is_complete(rq);
> +}
> +
>  static void execlists_dequeue(struct intel_engine_cs *engine)
>  {
>  	struct intel_engine_execlists * const execlists = &engine->execlists;
>  	struct i915_request **port = execlists->pending;
>  	struct i915_request ** const last_port = port + execlists->port_mask;
> -	struct i915_request *last = *execlists->active;
> +	struct i915_request *last, * const *active;
>  	struct virtual_engine *ve;
>  	struct rb_node *rb;
>  	bool submit = false;
> @@ -1266,21 +1274,13 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
>  	 * i.e. we will retrigger preemption following the ack in case
>  	 * of trouble.
>  	 *
> -	 * In theory we can skip over completed contexts that have not
> -	 * yet been processed by events (as those events are in flight):
> -	 *
> -	 * while ((last = *active) && i915_request_completed(last))
> -	 *	active++;
> -	 *
> -	 * However, the GPU cannot handle this as it will ultimately
> -	 * find itself trying to jump back into a context it has just
> -	 * completed and barf.
>  	 */
> +	active = execlists->active;
> +	while ((last = *active) && completed(last))
> +		active++;

looks reasonable to me...

Reviewed-by: Andi Shyti <andi.shyti@intel.com>

Thanks,
Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
