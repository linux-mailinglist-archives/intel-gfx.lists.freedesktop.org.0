Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC0CF1D12DE
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2020 14:37:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AB1F892EE;
	Wed, 13 May 2020 12:37:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 048EE892EE
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 May 2020 12:37:25 +0000 (UTC)
IronPort-SDR: fulxI/5bJQwZNgWAND+knyVTKr4BL5HazuyRwqzWdaRHw15PxwwEiXcqwWyHbKlSea0PnyRiGF
 8HoISY9PMazQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2020 05:37:25 -0700
IronPort-SDR: qufAtG1fSI0hcTz212kCeE8YTevqyewsNVrrgZey+HY9uEpGjxmp5rstMQeHSSu8EX/sJsnbLc
 bV4Xi5x5ZVkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,387,1583222400"; d="scan'208";a="251238374"
Received: from irsmsx104.ger.corp.intel.com ([163.33.3.159])
 by orsmga007.jf.intel.com with ESMTP; 13 May 2020 05:37:24 -0700
Received: from irsmsx604.ger.corp.intel.com (163.33.146.137) by
 IRSMSX104.ger.corp.intel.com (163.33.3.159) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 13 May 2020 13:37:23 +0100
Received: from irsmsx604.ger.corp.intel.com (163.33.146.137) by
 IRSMSX604.ger.corp.intel.com (163.33.146.137) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 May 2020 13:37:23 +0100
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137]) by
 IRSMSX604.ger.corp.intel.com ([163.33.146.137]) with mapi id 15.01.1713.004;
 Wed, 13 May 2020 13:37:23 +0100
From: "Patelczyk, Maciej" <maciej.patelczyk@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 02/24] dma-buf: Use atomic_fetch_add() for
 the context id
Thread-Index: AQHWKPr7Y+gM5k7hGkeVk68ac2aECail43WA
Date: Wed, 13 May 2020 12:37:23 +0000
Message-ID: <87zhac1074.fsf@dev.i-did-not-set--mail-host-address--so-tickle-me>
References: <20200513074809.18194-1-chris@chris-wilson.co.uk>
 <20200513074809.18194-2-chris@chris-wilson.co.uk>
In-Reply-To: <20200513074809.18194-2-chris@chris-wilson.co.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.253.164]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 02/24] dma-buf: Use atomic_fetch_add() for
 the context id
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Now that atomic64_fetch_add() exists we can use it to return the base
> context id, rather than the atomic64_add_return(N) - N concoction.
>
> Suggested-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> ---
>  drivers/dma-buf/dma-fence.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/dma-buf/dma-fence.c b/drivers/dma-buf/dma-fence.c
> index 052a41e2451c..90edf2b281b0 100644
> --- a/drivers/dma-buf/dma-fence.c
> +++ b/drivers/dma-buf/dma-fence.c
> @@ -106,7 +106,7 @@ EXPORT_SYMBOL(dma_fence_get_stub);
>  u64 dma_fence_context_alloc(unsigned num)
>  {
>  	WARN_ON(!num);
> -	return atomic64_add_return(num, &dma_fence_context_counter) - num;
> +	return atomic64_fetch_add(num, &dma_fence_context_counter);
>  }
>  EXPORT_SYMBOL(dma_fence_context_alloc);
>

Looks good.

Reviewed-by: Maciej Patelczyk <maciej.patelczyk@intel.com>

-MaciejP.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
