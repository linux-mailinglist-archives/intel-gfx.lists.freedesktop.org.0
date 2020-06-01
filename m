Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20DAC1EA660
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jun 2020 16:59:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70BD389DC7;
	Mon,  1 Jun 2020 14:59:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C15389DC7;
 Mon,  1 Jun 2020 14:59:25 +0000 (UTC)
IronPort-SDR: /Vg3vbL9488sWPzdiKXbb7W8m7fZSOnwgaDtW9fl0WrkdPk3HrKcE+4KBNvVjftqwGnNF2gv3v
 Gvvk1IYVhcww==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2020 07:59:25 -0700
IronPort-SDR: 2n1RRj2lBNVZaVRNFDnOkpqybnsQtpBTu/bjuLF2qQRuM0YQdlqfOgw7k9EmBjcGUgOIxSn7bR
 Z1rbTDNcwCdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,461,1583222400"; d="scan'208";a="286301742"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga002.jf.intel.com with ESMTP; 01 Jun 2020 07:59:23 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id EAFBA5C2C42; Mon,  1 Jun 2020 17:56:55 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200531191307.180023-1-chris@chris-wilson.co.uk>
References: <20200531191307.180023-1-chris@chris-wilson.co.uk>
Date: Mon, 01 Jun 2020 17:56:55 +0300
Message-ID: <87sgfesuko.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] i915/gem_exec_balancer:
 Disable pre-parser for rewritten batches
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
Cc: igt-dev@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> As we rewrite the batches on the fly to implement the non-preemptible
> lock, we need to tell Tigerlake to read the batch afresh each time.
> Amusingly, the disable is a part of an arb-check, so we have to be
> careful not to include the arbitration point inside our unpreemptible
> loop.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  tests/i915/gem_exec_balancer.c | 13 +++++++++----
>  1 file changed, 9 insertions(+), 4 deletions(-)
>
> diff --git a/tests/i915/gem_exec_balancer.c b/tests/i915/gem_exec_balancer.c
> index 026f8347e..0e3b52900 100644
> --- a/tests/i915/gem_exec_balancer.c
> +++ b/tests/i915/gem_exec_balancer.c
> @@ -1350,6 +1350,11 @@ static void __bonded_dual(int i915,
>  	*out = cycles;
>  }
>  
> +static uint32_t preparser_disable(void)
> +{
> +	return 0x5 << 23 | 1 << 8 | 1; /* preparser masked disable */

there is MI_ARB_CHECK

> +}
> +
>  static uint32_t sync_from(int i915, uint32_t addr, uint32_t target)
>  {
>  	uint32_t handle = gem_create(i915, 4096);
> @@ -1363,14 +1368,14 @@ static uint32_t sync_from(int i915, uint32_t addr, uint32_t target)
>  	*cs++ = 0;
>  	*cs++ = 0;
>  
> -	*cs++ = MI_NOOP;
> +	*cs++ = preparser_disable();
>  	*cs++ = MI_NOOP;
>  	*cs++ = MI_NOOP;
>  	*cs++ = MI_NOOP;
>  
>  	/* wait for them to cancel us */
>  	*cs++ = MI_BATCH_BUFFER_START | 1 << 8 | 1;
> -	*cs++ = addr + 16;
> +	*cs++ = addr + 24;

I must be totally confused about the layout as I can't get
the +8. You take one nop out and put one arb check in
and everything moves with 8?

-Mika

>  	*cs++ = 0;
>  
>  	/* self-heal */
> @@ -1393,14 +1398,14 @@ static uint32_t sync_to(int i915, uint32_t addr, uint32_t target)
>  
>  	cs = map = gem_mmap__device_coherent(i915, handle, 0, 4096, PROT_WRITE);
>  
> -	*cs++ = MI_NOOP;
> +	*cs++ = preparser_disable();
>  	*cs++ = MI_NOOP;
>  	*cs++ = MI_NOOP;
>  	*cs++ = MI_NOOP;
>  
>  	/* wait to be cancelled */
>  	*cs++ = MI_BATCH_BUFFER_START | 1 << 8 | 1;
> -	*cs++ = addr;
> +	*cs++ = addr + 8;
>  	*cs++ = 0;
>  
>  	/* cancel their spin as a compliment */
> -- 
> 2.27.0.rc2
>
> _______________________________________________
> igt-dev mailing list
> igt-dev@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/igt-dev
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
