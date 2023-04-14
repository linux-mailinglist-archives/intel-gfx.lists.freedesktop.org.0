Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A7B46E26FB
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Apr 2023 17:28:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFA8910ED74;
	Fri, 14 Apr 2023 15:28:20 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA63D10E1DA;
 Fri, 14 Apr 2023 15:28:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681486098; x=1713022098;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=eUXd2RDDfjb2I8FFK+0Lf2do+g+lTV8hb00GTlo9w1Q=;
 b=cGl4EX9quQpRKsfcw3py+VCiK0NvE4/EIfEINZB01DyqppyxiJE8xONA
 dEUWzuAjuvaZMXcU9cIz+yyWii2WFQo4Es4ihrW+oHYDBcsH1M9QZlAEg
 UXtvasxYJynbI9T3qymKCWzXnQ5bmHqcs4gGLFXNa+xTaIhTYArYBUM5Y
 z8zDSBd8hA4JmaQIxJWjTCz8VCf7FhdVq8FaWr64H42qhjmq+ysAHzZyI
 qobtofrc3RBObuspt7SOk2yMq7EFQ4P8GqsMAlbV+OPVPyvkko2Kynnm0
 3uTPHxLLLra03oRXrTjtL0VRdcHBsdkokkpRIGGrfxMvPm9mvwanfK6yN w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10680"; a="341985960"
X-IronPort-AV: E=Sophos;i="5.99,197,1677571200"; d="scan'208";a="341985960"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 08:28:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10680"; a="759138743"
X-IronPort-AV: E=Sophos;i="5.99,197,1677571200"; d="scan'208";a="759138743"
Received: from norfali-mobl.ger.corp.intel.com (HELO localhost)
 ([10.213.17.105])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 08:28:16 -0700
Date: Fri, 14 Apr 2023 17:28:14 +0200
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <20230414152814.vynozqkcrdete2bp@kamilkon-desk1>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Intel-gfx@lists.freedesktop.org
References: <20230328125429.1970202-1-tvrtko.ursulin@linux.intel.com>
 <20230328125429.1970202-4-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230328125429.1970202-4-tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH i-g-t 3/3] intel_gpu_top: Show
 non-normalized client usage in numeric mode
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

On 2023-03-28 at 13:54:29 +0100, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> When numeric display is selected in the interactive mode it is more
> descriptive to show client's non-normalized (by number of engines per
> class) usage. Rendering of the visual representation (bar) is kept the
> same.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

> ---
>  tools/intel_gpu_top.c | 20 +++++++++++---------
>  1 file changed, 11 insertions(+), 9 deletions(-)
> 
> diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
> index 36da016c3df0..b6827b3de9bd 100644
> --- a/tools/intel_gpu_top.c
> +++ b/tools/intel_gpu_top.c
> @@ -1275,14 +1275,14 @@ static void n_spaces(const unsigned int n)
>  }
>  
>  static void
> -print_percentage_bar(double percent, int max_len, bool numeric)
> +print_percentage_bar(double percent, double max, int max_len, bool numeric)
>  {
>  	int bar_len, i, len = max_len - 2;
>  	const int w = 8;
>  
>  	assert(max_len > 0);
>  
> -	bar_len = ceil(w * percent * len / 100.0);
> +	bar_len = ceil(w * percent * len / max);
>  	if (bar_len > w * len)
>  		bar_len = w * len;
>  
> @@ -2010,7 +2010,8 @@ print_engine(struct engines *engines, unsigned int i, double t,
>  			      engine->display_name, engine_items[0].buf);
>  
>  		val = pmu_calc(&engine->busy.val, 1e9, t, 100);
> -		print_percentage_bar(val, con_w > len ? con_w - len : 0, false);
> +		print_percentage_bar(val, 100.0, con_w > len ? con_w - len : 0,
> +				     false);
>  
>  		printf("%s\n", buf);
>  
> @@ -2292,23 +2293,24 @@ print_client(struct client *c, struct engines *engines, double t, int lines,
>  		       clients->max_name_len, c->print_name);
>  
>  		for (i = 0; c->samples > 1 && i < clients->num_classes; i++) {
> -			double pct;
> +			double pct, max;
>  
>  			if (!clients->class[i].num_engines)
>  				continue; /* Assert in the ideal world. */
>  
> -			pct = (double)c->val[i] / period_us / 1e3 * 100 /
> -			      clients->class[i].num_engines;
> +			pct = (double)c->val[i] / period_us / 1e3 * 100;
>  
>  			/*
>  			 * Guard against possible time-drift between sampling
>  			 * client data and time we obtained our time-delta from
>  			 * PMU.
>  			 */
> -			if (pct > 100.0)
> -				pct = 100.0;
> +			max = 100.0 * clients->class[i].num_engines;
> +			if (pct > max)
> +				pct = max;
>  
> -			print_percentage_bar(pct, *class_w, numeric_clients);
> +			print_percentage_bar(pct, max, *class_w,
> +					     numeric_clients);
>  		}
>  
>  		putchar('\n');
> -- 
> 2.37.2
> 
