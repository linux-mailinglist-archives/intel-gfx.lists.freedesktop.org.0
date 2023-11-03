Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 75E117E086A
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Nov 2023 19:47:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4744510E193;
	Fri,  3 Nov 2023 18:47:12 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17B9310E193;
 Fri,  3 Nov 2023 18:47:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699037230; x=1730573230;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=zw8xu7Bj/+KX01fWWYn7bt1EEGvw25nHV9knkacECLw=;
 b=ee6HqS96OFd+f75pKW+XKh0vIolIJ5cz2ZBunVCkea5f4J7OhLdk9y+Z
 byQYMlX6A6dqeicKQj9wTj13D6lJRL/KTZ3gYgLgrxma2d1iyI7LeFqeV
 /mlv6qX+9OQ/VEfa4dYvsk20roFz1kgsVTPFHPX67OTdVOyHjasdfM4Sq
 B65oKPhJbpmvjO0wi4aBK9ZbOdD5B6zzze4AO1Io6UxvvMtjwvmW61A2/
 sNE9vt57qFq0lqa8FCDNAk3cwRfmROIK20jcp/G5rludwkmasCe0RHvDj
 ZESJvRbOWAmuu7JhCbQfT2Kd6nW4nyxNQ5TfdttDpDI2jmGEyupBW7gpc Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10883"; a="1950992"
X-IronPort-AV: E=Sophos;i="6.03,273,1694761200"; 
   d="scan'208";a="1950992"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2023 11:47:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10883"; a="832106363"
X-IronPort-AV: E=Sophos;i="6.03,273,1694761200"; d="scan'208";a="832106363"
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.102.138.187])
 by fmsmga004-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Nov 2023 11:47:05 -0700
Date: Fri, 3 Nov 2023 19:47:04 +0100
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <20231103184704.npknmpz25uh5ilpf@kamilkon-desk.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>
References: <20231012081547.852052-1-tvrtko.ursulin@linux.intel.com>
 <20231012081547.852052-7-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20231012081547.852052-7-tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH i-g-t 6/9] lib/igt_drm_clients: Allow
 passing in the memory region map
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
Cc: Intel-gfx@lists.freedesktop.org, Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Tvrtko,
On 2023-10-12 at 09:15:44 +0100, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Same concept as with the engine map, allowing callers to pass in fixed
> map of names to indices, simplifying their implementation and avoiding
> auto-detection while parsing.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

> ---
>  lib/igt_drm_clients.c | 5 +++--
>  lib/igt_drm_clients.h | 3 ++-
>  tools/gputop.c        | 4 ++--
>  tools/intel_gpu_top.c | 8 +++++---
>  4 files changed, 12 insertions(+), 8 deletions(-)
> 
> diff --git a/lib/igt_drm_clients.c b/lib/igt_drm_clients.c
> index da51d7335b2b..025d60c51503 100644
> --- a/lib/igt_drm_clients.c
> +++ b/lib/igt_drm_clients.c
> @@ -445,7 +445,8 @@ struct igt_drm_clients *
>  igt_drm_clients_scan(struct igt_drm_clients *clients,
>  		     bool (*filter_client)(const struct igt_drm_clients *,
>  					   const struct drm_client_fdinfo *),
> -		     const char **name_map, unsigned int map_entries)
> +		     const char **name_map, unsigned int map_entries,
> +		     const char **region_map, unsigned int region_entries)
>  {
>  	struct dirent *proc_dent;
>  	struct igt_drm_client *c;
> @@ -524,7 +525,7 @@ igt_drm_clients_scan(struct igt_drm_clients *clients,
>  			if (!__igt_parse_drm_fdinfo(dirfd(fdinfo_dir),
>  						    fdinfo_dent->d_name, &info,
>  						    name_map, map_entries,
> -						    NULL, 0))
> +						    region_map, region_entries))
>  				continue;
>  
>  			if (filter_client && !filter_client(clients, &info))
> diff --git a/lib/igt_drm_clients.h b/lib/igt_drm_clients.h
> index cd37f8508b20..52888aedc25a 100644
> --- a/lib/igt_drm_clients.h
> +++ b/lib/igt_drm_clients.h
> @@ -93,7 +93,8 @@ struct igt_drm_clients *
>  igt_drm_clients_scan(struct igt_drm_clients *clients,
>  		     bool (*filter_client)(const struct igt_drm_clients *,
>  					   const struct drm_client_fdinfo *),
> -		     const char **name_map, unsigned int map_entries);
> +		     const char **name_map, unsigned int map_entries,
> +		     const char **region_map, unsigned int region_entries);
>  
>  struct igt_drm_clients *
>  igt_drm_clients_sort(struct igt_drm_clients *clients,
> diff --git a/tools/gputop.c b/tools/gputop.c
> index ea95e0333dd2..71e28f43ee4c 100644
> --- a/tools/gputop.c
> +++ b/tools/gputop.c
> @@ -253,7 +253,7 @@ int main(int argc, char **argv)
>  	if (!clients)
>  		exit(1);
>  
> -	igt_drm_clients_scan(clients, NULL, NULL, 0);
> +	igt_drm_clients_scan(clients, NULL, NULL, 0, NULL, 0);
>  
>  	for (;;) {
>  		struct igt_drm_client *c, *prevc = NULL;
> @@ -270,7 +270,7 @@ int main(int argc, char **argv)
>  			}
>  		}
>  
> -		igt_drm_clients_scan(clients, NULL, NULL, 0);
> +		igt_drm_clients_scan(clients, NULL, NULL, 0, NULL, 0);
>  		igt_drm_clients_sort(clients, client_cmp);
>  
>  		printf("\033[H\033[J");
> diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
> index 34fa99235e11..091fe28068dc 100644
> --- a/tools/intel_gpu_top.c
> +++ b/tools/intel_gpu_top.c
> @@ -2619,8 +2619,9 @@ int main(int argc, char **argv)
>  	}
>  
>  	pmu_sample(engines);
> -	igt_drm_clients_scan(clients, client_match, engine_map,
> -			     ARRAY_SIZE(engine_map));
> +	igt_drm_clients_scan(clients, client_match,
> +			     engine_map, ARRAY_SIZE(engine_map),
> +			     NULL, 0);
>  	gettime(&ts);
>  
>  	if (output_mode == JSON)
> @@ -2655,7 +2656,8 @@ int main(int argc, char **argv)
>  			display_clients(igt_drm_clients_scan(clients,
>  							     client_match,
>  							     engine_map,
> -							     ARRAY_SIZE(engine_map)));
> +							     ARRAY_SIZE(engine_map),
> +							     NULL, 0));
>  		scan_us = elapsed_us(&ts, period_us);
>  
>  		if (stop_top)
> -- 
> 2.39.2
> 
