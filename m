Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C32FD30A419
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Feb 2021 10:12:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 312486E516;
	Mon,  1 Feb 2021 09:12:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FE5E6E517
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Feb 2021 09:12:38 +0000 (UTC)
IronPort-SDR: zgg+LEmQMaOEbprlKWjP4g9JJBpvToGSGv9qCzNXP1ieeNvf4Ev8MwnaBO1OlqusNOKJwuClVT
 uZd802UU8P0Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9881"; a="199547906"
X-IronPort-AV: E=Sophos;i="5.79,392,1602572400"; d="scan'208";a="199547906"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 01:12:38 -0800
IronPort-SDR: SWqYAeCo4+lXemMaB1LZcXM4W+E3dwhN4IEQn9LmsFwUe7StRc/c5MYtM2TErT0xu3KeYRNvpE
 9odDrBFYRYVQ==
X-IronPort-AV: E=Sophos;i="5.79,392,1602572400"; d="scan'208";a="369562740"
Received: from rmeir2x-mobl.ger.corp.intel.com (HELO [10.214.231.94])
 ([10.214.231.94])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 01:12:37 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210131031153.3399123-1-chris@chris-wilson.co.uk>
 <20210201085358.3408367-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <41a68d1b-3074-a33f-2c43-1f4329310d5f@linux.intel.com>
Date: Mon, 1 Feb 2021 09:12:34 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210201085358.3408367-1-chris@chris-wilson.co.uk>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 01/02/2021 08:53, Chris Wilson wrote:
> Hide inactive clients by pressing 'i' (toggle in interactive mode).
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> ---
>   tools/intel_gpu_top.c | 7 +++++++
>   1 file changed, 7 insertions(+)
> 
> diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
> index 60ff62d28..edf0dedac 100644
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
> @@ -1689,6 +1690,9 @@ print_engines_footer(struct engines *engines, double t,
>   	pops->close_struct();
>   
>   	if (output_mode == INTERACTIVE) {
> +		if (filter_idle && !c->total_runtime)
> +			return;
> +
>   		if (lines++ < con_h)
>   			printf("\n");
>   	}
> @@ -2115,6 +2119,9 @@ static void process_stdin(unsigned int timeout_us)
>   		case 'q':
>   			stop_top = true;
>   			break;
> +		case 'i':
> +			filter_idle ^= true;
> +			break;
>   		case '1':
>   			class_view ^= true;
>   			break;
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
