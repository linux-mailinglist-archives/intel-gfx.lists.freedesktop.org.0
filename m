Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C5E370DAE4
	for <lists+intel-gfx@lfdr.de>; Tue, 23 May 2023 12:52:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 588AB10E428;
	Tue, 23 May 2023 10:52:09 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A63EC10E428;
 Tue, 23 May 2023 10:52:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684839127; x=1716375127;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Fl7lAx1nZ3NNYmGa0TT4eqgKI2k9MHkspnqXOC4u7dI=;
 b=DqL+gK1vbH50CGLC+5X1s0cclqjcxJNB8kVkusypY5FqrP5ulfmhEY69
 6A5qEeTS2EGhNwtAa+3oZBMuK+aYC3wGLqVN8xFFLqvOge3r9Rpa30kLR
 B4JX5eoXFCxCWwdwv37HmJgPb+UiPIYBmrN5qqWuXiBDM8gbIE7ebsgTK
 o6AQcNm001Fx0A/PNBLDTsTfo2MXDn4pZMKYYLecZLIOFsgdQf0+dGdPc
 s7nnqjw9YUM4aQNpvEDw2AIZ39kAZ5jXJjA+8i5D3Jb93wWY41knpP6R+
 skj2l4Yrh7GbLLPKEkhsLmLJbPL+kKNtxMg2x4DJWrvKlx8MjO+YaXGYk Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="332817046"
X-IronPort-AV: E=Sophos;i="6.00,186,1681196400"; d="scan'208";a="332817046"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2023 03:52:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="793684874"
X-IronPort-AV: E=Sophos;i="6.00,186,1681196400"; d="scan'208";a="793684874"
Received: from dprzala-mobl.ger.corp.intel.com (HELO localhost)
 ([10.213.3.133])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2023 03:52:00 -0700
Date: Tue, 23 May 2023 12:51:58 +0200
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <20230523105158.wsjsnbjld4knkbr3@kamilkon-desk1>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Intel-gfx@lists.freedesktop.org, Rob Clark <robdclark@chromium.org>
References: <20230515133630.2163170-1-tvrtko.ursulin@linux.intel.com>
 <20230515133630.2163170-3-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230515133630.2163170-3-tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH i-g-t 2/2] intel_gpu_top: Move client name
 last
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

On 2023-05-15 at 14:36:30 +0100, Tvrtko Ursulin wrote:
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
>  tools/intel_gpu_top.c | 19 +++++++++----------
>  1 file changed, 9 insertions(+), 10 deletions(-)
> 
> diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
> index 453090c298bc..937280a7151a 100644
> --- a/tools/intel_gpu_top.c
> +++ b/tools/intel_gpu_top.c
> @@ -1809,9 +1809,7 @@ print_clients_header(struct igt_drm_clients *clients, int lines,
>  			return lines;
>  
>  		printf("\033[7m");
> -		len = printf("%*s %*s ",
> -			     clients->max_pid_len, "PID",
> -			     clients->max_name_len, "NAME");
> +		len = printf("%*s ", clients->max_pid_len, "PID");
>  
>  		if (lines++ >= con_h || len >= con_w)
>  			return lines;
> @@ -1825,7 +1823,9 @@ print_clients_header(struct igt_drm_clients *clients, int lines,
>  					num_active++;
>  			}
>  
> -			*class_w = width = (con_w - len) / num_active;
> +			*class_w = width =
> +				(con_w - len - clients->max_name_len - 1) /
> +				num_active;
>  
>  			for (i = 0; i <= iclients->classes.max_engine_id; i++) {
>  				const char *name = iclients->classes.names[i];
> @@ -1846,8 +1846,7 @@ print_clients_header(struct igt_drm_clients *clients, int lines,
>  			}
>  		}
>  
> -		n_spaces(con_w - len);
> -		printf("\033[0m\n");
> +		printf(" %-*s\033[0m\n", con_w - len - 1, "NAME");
>  	} else {
>  		if (iclients->classes.num_engines)
>  			pops->open_struct("clients");
> @@ -1866,6 +1865,7 @@ print_client(struct igt_drm_client *c, struct engines *engines, double t, int li
>  	struct igt_drm_clients *clients = c->clients;
>  	struct intel_clients *iclients = clients->private_data;
>  	unsigned int i;
> +	int len;
>  
>  	if (output_mode == INTERACTIVE) {
>  		if (filter_idle && (!c->total_runtime || c->samples < 2))
> @@ -1873,9 +1873,7 @@ print_client(struct igt_drm_client *c, struct engines *engines, double t, int li
>  
>  		lines++;
>  
> -		printf("%*s %*s ",
> -		       clients->max_pid_len, c->pid_str,
> -		       clients->max_name_len, c->print_name);
> +		len = printf("%*s ", clients->max_pid_len, c->pid_str);
>  
>  		for (i = 0;
>  		     c->samples > 1 && i <= iclients->classes.max_engine_id;
> @@ -1898,9 +1896,10 @@ print_client(struct igt_drm_client *c, struct engines *engines, double t, int li
>  
>  			print_percentage_bar(pct, max, *class_w,
>  					     numeric_clients);
> +			len += *class_w;
>  		}
>  
> -		putchar('\n');
> +		printf(" %-*s\n", con_w - len - 1, c->print_name);
>  	} else if (output_mode == JSON) {
>  		char buf[64];
>  
> -- 
> 2.37.2
> 
