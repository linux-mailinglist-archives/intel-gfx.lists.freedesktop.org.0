Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB212292899
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Oct 2020 15:50:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A39766E9A2;
	Mon, 19 Oct 2020 13:50:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 1461 seconds by postgrey-1.36 at gabe;
 Mon, 19 Oct 2020 08:03:57 UTC
Received: from www.kot-begemot.co.uk (ivanoab7.miniserver.com [37.128.132.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 800586E0D5;
 Mon, 19 Oct 2020 08:03:57 +0000 (UTC)
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1kUPl5-0003bi-LB; Mon, 19 Oct 2020 07:39:07 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1kUPl3-00080t-CR; Mon, 19 Oct 2020 08:39:07 +0100
To: Allen Pais <allen.cryptic@gmail.com>, jdike@addtoit.com, richard@nod.at,
 3chas3@gmail.com, axboe@kernel.dk, stefanr@s5r6.in-berlin.de,
 airlied@linux.ie, daniel@ffwll.ch, sre@kernel.org,
 James.Bottomley@HansenPartnership.com, kys@microsoft.com, deller@gmx.de,
 dmitry.torokhov@gmail.com, jassisinghbrar@gmail.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, maximlevitsky@gmail.com, oakad@yahoo.com,
 ulf.hansson@linaro.org, mporter@kernel.crashing.org, alex.bou9@gmail.com,
 broonie@kernel.org, martyn@welchs.me.uk, manohar.vanga@gmail.com,
 mitch@sfgoth.com, davem@davemloft.net, kuba@kernel.org
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Message-ID: <3359192b-8f02-feb4-a9a7-a13b5d876998@cambridgegreys.com>
Date: Mon, 19 Oct 2020 08:39:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20200817091617.28119-1-allen.cryptic@gmail.com>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-Mailman-Approved-At: Mon, 19 Oct 2020 13:50:27 +0000
Subject: Re: [Intel-gfx] [PATCH] arch: um: convert tasklets to use new
 tasklet_setup() API
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
Cc: devel@driverdev.osuosl.org, linux-s390@vger.kernel.org,
 linux-hyperv@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 keescook@chromium.org, linux-parisc@vger.kernel.org, linux-mmc@vger.kernel.org,
 netdev@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-atm-general@lists.sourceforge.net, linux-um@lists.infradead.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-spi@vger.kernel.org, linux-block@vger.kernel.org,
 Allen Pais <allen.lkml@gmail.com>, linux-ntb@googlegroups.com,
 openipmi-developer@lists.sourceforge.net,
 Romain Perier <romain.perier@gmail.com>, linux-input@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 17/08/2020 10:15, Allen Pais wrote:
> From: Allen Pais <allen.lkml@gmail.com>
> 
> In preparation for unconditionally passing the
> struct tasklet_struct pointer to all tasklet
> callbacks, switch to using the new tasklet_setup()
> and from_tasklet() to pass the tasklet pointer explicitly.
> 
> Signed-off-by: Romain Perier <romain.perier@gmail.com>
> Signed-off-by: Allen Pais <allen.lkml@gmail.com>
> ---
>   arch/um/drivers/vector_kern.c | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/um/drivers/vector_kern.c b/arch/um/drivers/vector_kern.c
> index 8735c468230a..06980870ae23 100644
> --- a/arch/um/drivers/vector_kern.c
> +++ b/arch/um/drivers/vector_kern.c
> @@ -1196,9 +1196,9 @@ static int vector_net_close(struct net_device *dev)
>   
>   /* TX tasklet */
>   
> -static void vector_tx_poll(unsigned long data)
> +static void vector_tx_poll(struct tasklet_struct *t)
>   {
> -	struct vector_private *vp = (struct vector_private *)data;
> +	struct vector_private *vp = from_tasklet(vp, t, tx_poll);
>   
>   	vp->estats.tx_kicks++;
>   	vector_send(vp->tx_queue);
> @@ -1629,7 +1629,7 @@ static void vector_eth_configure(
>   	});
>   
>   	dev->features = dev->hw_features = (NETIF_F_SG | NETIF_F_FRAGLIST);
> -	tasklet_init(&vp->tx_poll, vector_tx_poll, (unsigned long)vp);
> +	tasklet_setup(&vp->tx_poll, vector_tx_poll);
>   	INIT_WORK(&vp->reset_tx, vector_reset_tx);
>   
>   	timer_setup(&vp->tl, vector_timer_expire, 0);
> 

Acked-By: Anton Ivanov <anton.ivanov@cambridgegreys.com>

-- 
Anton R. Ivanov
Cambridgegreys Limited. Registered in England. Company Number 10273661
https://www.cambridgegreys.com/
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
