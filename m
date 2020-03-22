Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 085B318EC45
	for <lists+intel-gfx@lfdr.de>; Sun, 22 Mar 2020 21:47:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A73AF6E041;
	Sun, 22 Mar 2020 20:47:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 537 seconds by postgrey-1.36 at gabe;
 Sun, 22 Mar 2020 20:46:59 UTC
Received: from 11.mo5.mail-out.ovh.net (11.mo5.mail-out.ovh.net
 [46.105.47.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CB596E041
 for <intel-gfx@lists.freedesktop.org>; Sun, 22 Mar 2020 20:46:59 +0000 (UTC)
Received: from player693.ha.ovh.net (unknown [10.108.42.202])
 by mo5.mail-out.ovh.net (Postfix) with ESMTP id 67137272664
 for <intel-gfx@lists.freedesktop.org>; Sun, 22 Mar 2020 21:38:00 +0100 (CET)
Received: from etezian.org (213-243-141-64.bb.dnainternet.fi [213.243.141.64])
 (Authenticated sender: andi@etezian.org)
 by player693.ha.ovh.net (Postfix) with ESMTPSA id 6556D10A420B9;
 Sun, 22 Mar 2020 20:37:58 +0000 (UTC)
Date: Sun, 22 Mar 2020 22:37:57 +0200
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200322203757.GB131048@jack.zhora.eu>
References: <20200322163225.28791-1-chris@chris-wilson.co.uk>
 <20200322163225.28791-2-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200322163225.28791-2-chris@chris-wilson.co.uk>
X-Ovh-Tracer-Id: 14746755505442636297
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedugedrudegiedgudegudcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisegvthgviihirghnrdhorhhgqeenucfkpheptddrtddrtddrtddpvddufedrvdegfedrudeguddrieegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrieelfedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhg
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Leave rps->cur_freq on
 unpark
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

On Sun, Mar 22, 2020 at 04:32:25PM +0000, Chris Wilson wrote:
> Don't override our previous frequency we used after parking, and avoid
> continually spiking back to the efficient frequency for mostly idle
> workloads. Trust our ability to autotune across a workload switch.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Andi Shyti <andi.shyti@intel.com>
> Cc: Lyude Paul <lyude@redhat.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_rps.c | 7 ++-----
>  1 file changed, 2 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
> index 50884aeac49c..487c89593125 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rps.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
> @@ -187,10 +187,8 @@ static void gen5_rps_init(struct intel_rps *rps)
>  		fmax, fmin, fstart);
>  
>  	rps->min_freq = fmax;
> +	rps->efficient_freq = fstart;
>  	rps->max_freq = fmin;
> -
> -	rps->idle_freq = rps->min_freq;
> -	rps->cur_freq = rps->idle_freq;
>  }
>  
>  static unsigned long
> @@ -726,7 +724,6 @@ void intel_rps_unpark(struct intel_rps *rps)
>  
>  	WRITE_ONCE(rps->active, true);
>  
> -	freq = max(rps->cur_freq, rps->efficient_freq),
>  	freq = clamp(freq, rps->min_freq_softlimit, rps->max_freq_softlimit);
>  	intel_rps_set(rps, freq);
>  
> @@ -1672,7 +1669,7 @@ void intel_rps_init(struct intel_rps *rps)
>  	/* Finally allow us to boost to max by default */
>  	rps->boost_freq = rps->max_freq;
>  	rps->idle_freq = rps->min_freq;
> -	rps->cur_freq = rps->idle_freq;
> +	rps->cur_freq = rps->efficient_freq; /* start in the middle */

right... thank you!

Reviewed-by: Andi Shyti <andi.shyti@intel.com>

Thanks,
Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
