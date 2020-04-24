Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CB631B75EE
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2020 14:50:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E474389728;
	Fri, 24 Apr 2020 12:50:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 7.mo69.mail-out.ovh.net (7.mo69.mail-out.ovh.net [46.105.50.32])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0017189728
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Apr 2020 12:50:50 +0000 (UTC)
Received: from player730.ha.ovh.net (unknown [10.108.54.108])
 by mo69.mail-out.ovh.net (Postfix) with ESMTP id 2769D8CB40
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Apr 2020 14:50:49 +0200 (CEST)
Received: from etezian.org (213-243-141-64.bb.dnainternet.fi [213.243.141.64])
 (Authenticated sender: andi@etezian.org)
 by player730.ha.ovh.net (Postfix) with ESMTPSA id 89AAA1192E6A1;
 Fri, 24 Apr 2020 12:50:45 +0000 (UTC)
Date: Fri, 24 Apr 2020 15:50:40 +0300
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200424125040.GE460760@jack.zhora.eu>
References: <20200422001703.1697-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200422001703.1697-1-chris@chris-wilson.co.uk>
X-Ovh-Tracer-Id: 16188188864133972489
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugdehfecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisegvthgviihirghnrdhorhhgqeenucfkpheptddrtddrtddrtddpvddufedrvdegfedrudeguddrieegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeeftddrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhg
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/gt: Prefer soft-rc6 over RPS
 DOWN_TIMEOUT
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

On Wed, Apr 22, 2020 at 01:17:01AM +0100, Chris Wilson wrote:
> The RPS DOWN_TIMEOUT interrupt is signaled after a period of rc6, and
> upon receipt of that interrupt we reprogram the GPU clocks down to the
> next idle notch [to help convserve power during rc6]. However, on
> execlists, we benefit from soft-rc6 immediately parking the GPU and
> setting idle frequencies upon idling [within a jiffie], and here the
> interrupt prevents us from restarting from our last frequency.
> 
> In the process, we can simply opt for a static pm_events mask and rely
> on the enable/disable interrupts to flush the worker on parking.
> 
> This will reduce the amount of oscillation observed during steady
> workloads with microsleeps, as each time the rc6 timeout occurs we
> immediately follow with a waitboost for a dropped frame.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/gt/intel_rps.c | 41 +++++++++++++----------------
>  1 file changed, 18 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
> index 4dcfae16a7ce..785cd58fba76 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rps.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
> @@ -57,7 +57,7 @@ static u32 rps_pm_mask(struct intel_rps *rps, u8 val)
>  	if (val < rps->max_freq_softlimit)
>  		mask |= GEN6_PM_RP_UP_EI_EXPIRED | GEN6_PM_RP_UP_THRESHOLD;
>  
> -	mask &= READ_ONCE(rps->pm_events);
> +	mask &= rps->pm_events;

we are giving up the read/write ordering here because we thing
that removing the down interval we won't have anymore
inconsistent reads?

Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
