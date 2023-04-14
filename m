Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 62EB96E26EB
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Apr 2023 17:26:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A066C10E1A9;
	Fri, 14 Apr 2023 15:26:52 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4A3010E1A9;
 Fri, 14 Apr 2023 15:26:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681486010; x=1713022010;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=eMe5kVmBaI/+cXUhUeuCusg3+WthUrrm9zsVcmc2CZo=;
 b=BCzEk9+W73QehLOtML4NEmCAkleR1I6WyqUSPBY8eaVhlWiamlaV8kNE
 ekk4qx5pw5ZBKmd5p9J1lSpWMZ3MQWZbuvNWFYRHoAXLefLLGrovaSMaQ
 Z9P79UIx4gE+KMaEQLpkZDlaqZfPbxckvwmBvRO4ZrXceCIe3Emsj4m5r
 VEsVWGD3RZ6h7kLcf1TkklaLptc4FuYL7oBNoHq6W4vVCzMIPpXsdm+Tr
 IWaRpDPvn5knyk0Hbs5ww7+S0uXNRj+Db+h9zFltBjDsAViw5P6fPgRhM
 Do21ph3Gv67sMxXH25DKWeYR19xhytOZudFPSSCbtahgGuPAF1CtRs9ch A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10680"; a="409690038"
X-IronPort-AV: E=Sophos;i="5.99,197,1677571200"; d="scan'208";a="409690038"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 08:26:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10680"; a="754482157"
X-IronPort-AV: E=Sophos;i="5.99,197,1677571200"; d="scan'208";a="754482157"
Received: from norfali-mobl.ger.corp.intel.com (HELO localhost)
 ([10.213.17.105])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 08:26:42 -0700
Date: Fri, 14 Apr 2023 17:26:40 +0200
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <20230414152640.dlxtiibthvjyby6a@kamilkon-desk1>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Intel-gfx@lists.freedesktop.org
References: <20230328125429.1970202-1-tvrtko.ursulin@linux.intel.com>
 <20230328125429.1970202-3-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230328125429.1970202-3-tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 2/3] intel_gpu_top: Use full
 console width for global metrics
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
Cc: Intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2023-03-28 at 13:54:28 +0100, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> It appears we had an off by one of a kind where we were not using the full
> width of the terminal window for the global metrics section.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

> ---
>  tools/intel_gpu_top.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
> index 39be916297e4..36da016c3df0 100644
> --- a/tools/intel_gpu_top.c
> +++ b/tools/intel_gpu_top.c
> @@ -1960,8 +1960,7 @@ print_engines_header(struct engines *engines, double t,
>  				a = "          ENGINE     BUSY  ";
>  
>  			printf("\033[7m%s%*s%s\033[0m\n",
> -			       a, (int)(con_w - 1 - strlen(a) - strlen(b)),
> -			       " ", b);
> +			       a, (int)(con_w - strlen(a) - strlen(b)), " ", b);
>  
>  			lines++;
>  		}
> @@ -2000,7 +1999,6 @@ print_engine(struct engines *engines, unsigned int i, double t,
>  	print_groups(groups);
>  
>  	if (output_mode == INTERACTIVE) {
> -		unsigned int max_w = con_w - 1;
>  		unsigned int len;
>  		char buf[128];
>  		double val;
> @@ -2012,7 +2010,7 @@ print_engine(struct engines *engines, unsigned int i, double t,
>  			      engine->display_name, engine_items[0].buf);
>  
>  		val = pmu_calc(&engine->busy.val, 1e9, t, 100);
> -		print_percentage_bar(val, max_w > len ? max_w - len : 0, false);
> +		print_percentage_bar(val, con_w > len ? con_w - len : 0, false);
>  
>  		printf("%s\n", buf);
>  
> -- 
> 2.37.2
> 
