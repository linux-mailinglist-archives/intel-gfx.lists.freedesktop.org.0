Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A8FBE30A31D
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Feb 2021 09:14:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99F9E6E450;
	Mon,  1 Feb 2021 08:14:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54AF96E450;
 Mon,  1 Feb 2021 08:14:51 +0000 (UTC)
IronPort-SDR: IgbmY/vQyAt27YgrP4h73PG9qkZmaGvzq+GgaNCJEIBMCoQV4CdIhAN417Ii27IpOm6Es9BBzt
 0mJ80/8KTMSw==
X-IronPort-AV: E=McAfee;i="6000,8403,9881"; a="159817228"
X-IronPort-AV: E=Sophos;i="5.79,391,1602572400"; d="scan'208";a="159817228"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 00:14:50 -0800
IronPort-SDR: f9YIvXZ0Z68ZOd0iaL1eY5zRwGIznUkF2WQ4oH5oeHRygsTxhCOGcH26TqcS2s70Rr/GPlsTro
 G/iXmquaUjkA==
X-IronPort-AV: E=Sophos;i="5.79,391,1602572400"; d="scan'208";a="369090487"
Received: from rmeir2x-mobl.ger.corp.intel.com (HELO [10.214.231.94])
 ([10.214.231.94])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 00:14:48 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210131031153.3399123-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <577e01ed-a463-301f-8fc8-c553c0b46ba7@linux.intel.com>
Date: Mon, 1 Feb 2021 08:14:45 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210131031153.3399123-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t] intel_gpu_top: Hide unused clients
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
Cc: igt-dev@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 31/01/2021 03:11, Chris Wilson wrote:
> Keep new clients hidden until they utilise the GPU.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> ---
>   tools/intel_gpu_top.c | 5 ++++-
>   1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
> index 60ff62d28..66a8effa6 100644
> --- a/tools/intel_gpu_top.c
> +++ b/tools/intel_gpu_top.c
> @@ -828,8 +828,11 @@ static void update_client(struct client *c, unsigned int pid, char *name)
>   		c->last[i] = val[i];
>   	}
>   
> -	c->samples++;
> +	if (!c->total_runtime)
> +		return;
> +
>   	c->status = ALIVE;
> +	c->samples++;
>   }
>   
>   static void
> 

Not sure we need to do it at this level and not instead at presentation 
time. Plus, in default sort mode they would be at the end of the list, 
so behind the more active clients. Or you go into sort by id and they 
annoy you there?

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
