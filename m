Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C8F311A4727
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2020 16:02:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3896B6E0E5;
	Fri, 10 Apr 2020 14:02:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 2148 seconds by postgrey-1.36 at gabe;
 Fri, 10 Apr 2020 14:02:47 UTC
Received: from 20.mo5.mail-out.ovh.net (20.mo5.mail-out.ovh.net
 [91.121.55.239])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81B766E0E5
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Apr 2020 14:02:47 +0000 (UTC)
Received: from player716.ha.ovh.net (unknown [10.110.115.178])
 by mo5.mail-out.ovh.net (Postfix) with ESMTP id E443E273708
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Apr 2020 15:47:11 +0200 (CEST)
Received: from etezian.org (213-243-141-64.bb.dnainternet.fi [213.243.141.64])
 (Authenticated sender: andi@etezian.org)
 by player716.ha.ovh.net (Postfix) with ESMTPSA id 634EA113C45CA;
 Fri, 10 Apr 2020 13:47:08 +0000 (UTC)
Date: Fri, 10 Apr 2020 16:47:02 +0300
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200410134702.GA264232@jack.zhora.eu>
References: <20200410083347.25128-1-chris@chris-wilson.co.uk>
 <20200410083535.25464-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200410083535.25464-1-chris@chris-wilson.co.uk>
X-Ovh-Tracer-Id: 8709680207301296649
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduhedrvddvgdejtdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisegvthgviihirghnrdhorhhgqeenucfkpheptddrtddrtddrtddpvddufedrvdegfedrudeguddrieegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeduiedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhg
Subject: Re: [Intel-gfx] [PATCH] agp/intel: Reinforce the barrier after GTT
 updates
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Chris,

> After changing the timing between GTT updates and execution on the GPU,
> we started seeing sporadic failures on Ironlake. These were narrowed
> down to being an insufficiently strong enough barrier/delay after
> updating the GTT and scheduling execution on the GPU. By forcing the
> uncached read, and adding the missing barrier for the singular
> insert_page (relocation paths), the sporadic failures go away.
> 
> Fixes: 983d308cb8f6 ("agp/intel: Serialise after GTT updates")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: stable@vger.kernel.org # v4.0+

Acked-by: Andi Shyti <andi.shyti@intel.com>

Andi

> ---
>  drivers/char/agp/intel-gtt.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/char/agp/intel-gtt.c b/drivers/char/agp/intel-gtt.c
> index 66a62d17a3f5..3d42fc4290bc 100644
> --- a/drivers/char/agp/intel-gtt.c
> +++ b/drivers/char/agp/intel-gtt.c
> @@ -846,6 +846,7 @@ void intel_gtt_insert_page(dma_addr_t addr,
>  			   unsigned int flags)
>  {
>  	intel_private.driver->write_entry(addr, pg, flags);
> +	readl(intel_private.gtt + pg);
>  	if (intel_private.driver->chipset_flush)
>  		intel_private.driver->chipset_flush();
>  }
> @@ -871,7 +872,7 @@ void intel_gtt_insert_sg_entries(struct sg_table *st,
>  			j++;
>  		}
>  	}
> -	wmb();
> +	readl(intel_private.gtt + j - 1);
>  	if (intel_private.driver->chipset_flush)
>  		intel_private.driver->chipset_flush();
>  }
> @@ -1105,6 +1106,7 @@ static void i9xx_cleanup(void)
>  
>  static void i9xx_chipset_flush(void)
>  {
> +	wmb();
>  	if (intel_private.i9xx_flush_page)
>  		writel(1, intel_private.i9xx_flush_page);
>  }
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
