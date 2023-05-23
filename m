Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A0BF70DAD9
	for <lists+intel-gfx@lfdr.de>; Tue, 23 May 2023 12:50:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E72F10E426;
	Tue, 23 May 2023 10:50:40 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55C3010E426;
 Tue, 23 May 2023 10:50:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684839038; x=1716375038;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=kqIIscjhWabCTXHv21GEoQMlo8kH3or2LRjNDcrPfD0=;
 b=WEiE0CGetYBgQP0ZknpG845wzgRzKL6pl6vmZiHlXiWByEE539Zp7CnJ
 HNgFjwnTnFrosJ4CSuKGKLTT6bbj1V5BrdxbRPDSsQLVOHjOfXLT8divz
 HlGwCTUtj8VvPUdNRdmS2yAtz4bi1FRgAXOmKXTAjff+bDOs/88WDDqQ1
 1Nx759tG6Z8M2b09Q8Hyw1zT97lT6FHhIaO8x9us/xtZiGtBuPvgnz8RT
 0Kp0+7JbGQF39DW1+XB7JWVWzxDLpd/4xrSG4cP3YwXaPimotyqbQL2gq
 7yeXwW1VzEa/9tl2IBFPjNNfeJkV8KM27O3T1pwbd0xkZInc6IHKdZ1kG A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="332816696"
X-IronPort-AV: E=Sophos;i="6.00,186,1681196400"; d="scan'208";a="332816696"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2023 03:50:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="734700313"
X-IronPort-AV: E=Sophos;i="6.00,186,1681196400"; d="scan'208";a="734700313"
Received: from dprzala-mobl.ger.corp.intel.com (HELO localhost)
 ([10.213.3.133])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2023 03:50:34 -0700
Date: Tue, 23 May 2023 12:50:32 +0200
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <20230523105032.twzoy4oljqpykjxy@kamilkon-desk1>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Intel-gfx@lists.freedesktop.org, Rob Clark <robdclark@chromium.org>
References: <20230515133630.2163170-1-tvrtko.ursulin@linux.intel.com>
 <20230515133630.2163170-2-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230515133630.2163170-2-tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH i-g-t 1/2] gputop: Move client name last
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
Cc: Rob Clark <robdclark@chromium.org>, Intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2023-05-15 at 14:36:29 +0100, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Move client name to be the right most field which visually aligns better
> with top(1) and prepares for inserting memory usage fields somewhere in
> the middle.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Rob Clark <robdclark@chromium.org>

Acked-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

> ---
>  tools/gputop.c | 19 +++++++++----------
>  1 file changed, 9 insertions(+), 10 deletions(-)
> 
> diff --git a/tools/gputop.c b/tools/gputop.c
> index 4fb5ce63e07c..681f0a6bb748 100644
> --- a/tools/gputop.c
> +++ b/tools/gputop.c
> @@ -80,15 +80,15 @@ print_client_header(struct igt_drm_client *c, int lines, int con_w, int con_h,
>  		return lines;
>  
>  	putchar('\n');
> -	len = printf("%*s %*s ",
> -		     c->clients->max_pid_len, "PID",
> -		     c->clients->max_name_len, "NAME");
> +	len = printf("%*s ", c->clients->max_pid_len, "PID");
>  
>  	if (c->engines->num_engines) {
>  		unsigned int i;
>  		int width;
>  
> -		*engine_w = width = (con_w - len) / c->engines->num_engines;
> +		*engine_w = width =
> +			(con_w - len - c->clients->max_name_len - 1) /
> +			c->engines->num_engines;
>  
>  		for (i = 0; i <= c->engines->max_engine_id; i++) {
>  			const char *name = c->engines->names[i];
> @@ -109,8 +109,7 @@ print_client_header(struct igt_drm_client *c, int lines, int con_w, int con_h,
>  		}
>  	}
>  
> -	n_spaces(con_w - len);
> -	printf("\033[0m\n");
> +	printf(" %-*s\033[0m\n", con_w - len - 1, "NAME");
>  
>  	return lines;
>  }
> @@ -128,6 +127,7 @@ print_client(struct igt_drm_client *c, struct igt_drm_client **prevc,
>  	     unsigned int period_us, int *engine_w)
>  {
>  	unsigned int i;
> +	int len;
>  
>  	/* Filter out idle clients. */
>  	if (!c->total_runtime || c->samples < 2)
> @@ -142,9 +142,7 @@ print_client(struct igt_drm_client *c, struct igt_drm_client **prevc,
>  
>  	*prevc = c;
>  
> -	printf("%*s %*s ",
> -	       c->clients->max_pid_len, c->pid_str,
> -	       c->clients->max_name_len, c->print_name);
> +	len = printf("%*s ", c->clients->max_pid_len, c->pid_str);
>  	lines++;
>  
>  	for (i = 0; c->samples > 1 && i <= c->engines->max_engine_id; i++) {
> @@ -164,9 +162,10 @@ print_client(struct igt_drm_client *c, struct igt_drm_client **prevc,
>  			pct = 100.0;
>  
>  		print_percentage_bar(pct, *engine_w);
> +		len += *engine_w;
>  	}
>  
> -	putchar('\n');
> +	printf(" %-*s\n", con_w - len - 1, c->print_name);
>  
>  	return lines;
>  }
> -- 
> 2.37.2
> 
