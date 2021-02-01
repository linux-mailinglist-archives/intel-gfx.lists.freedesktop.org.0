Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D60C30A4A8
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Feb 2021 10:53:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFB366E0ED;
	Mon,  1 Feb 2021 09:53:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1A9D6E0ED;
 Mon,  1 Feb 2021 09:53:26 +0000 (UTC)
IronPort-SDR: yjSpGqVnYxAFQYm7CTj3fXuzkWpw54uhqeatkxQpqqfgwfkvjk12K6V12fFcbeAOnXuaPSWZLY
 K7J4VOTuKWGQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9881"; a="177153618"
X-IronPort-AV: E=Sophos;i="5.79,392,1602572400"; d="scan'208";a="177153618"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 01:53:24 -0800
IronPort-SDR: IMgRaggRVAORV4fwmMvoaVdq16pNxS7kx8jATM/jmcW5zBweiiNpm/SYlEZWUlghhP2+7UXKjB
 RDs1VajJPFeg==
X-IronPort-AV: E=Sophos;i="5.79,392,1602572400"; d="scan'208";a="369759390"
Received: from rmeir2x-mobl.ger.corp.intel.com (HELO [10.214.231.94])
 ([10.214.231.94])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 01:53:22 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210201085358.3408367-1-chris@chris-wilson.co.uk>
 <20210201093123.3481855-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <59c9afb3-e4bd-b7f5-ffae-33f4e2077570@linux.intel.com>
Date: Mon, 1 Feb 2021 09:53:20 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210201093123.3481855-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t v2] intel_gpu_top: Hide unused clients
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


On 01/02/2021 09:31, Chris Wilson wrote:
> Hide inactive clients by pressing 'i' (toggle in interactive mode).
> 
> v2: Fix location of filter_idle.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> ---
>   tools/intel_gpu_top.c | 9 +++++++++
>   1 file changed, 9 insertions(+)
> 
> diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
> index 60ff62d28..d88b6cc61 100644
> --- a/tools/intel_gpu_top.c
> +++ b/tools/intel_gpu_top.c
> @@ -1595,6 +1595,7 @@ print_imc(struct engines *engines, double t, int lines, int con_w, int con_h)
>   }
>   
>   static bool class_view;
> +static bool filter_idle;
>   
>   static int
>   print_engines_header(struct engines *engines, double t,
> @@ -2115,6 +2116,9 @@ static void process_stdin(unsigned int timeout_us)
>   		case 'q':
>   			stop_top = true;
>   			break;
> +		case 'i':
> +			filter_idle ^= true;
> +			break;
>   		case '1':
>   			class_view ^= true;
>   			break;
> @@ -2323,9 +2327,14 @@ int main(int argc, char **argv)
>   
>   				for_each_client(clients, c, j) {
>   					assert(c->status != PROBE);
> +
>   					if (c->status != ALIVE)
>   						break; /* Active clients are first in the array. */
>   
> +					/* Active clients before idle */
> +					if (filter_idle && !c->total_runtime)
> +						break;
> +

Break won't be correct for id sort. I don't see what did not work with 
v1? It should be effectively the same apart from the break.

Regards,

Tvrtko

>   					if (lines >= con_h)
>   						break;
>   
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
