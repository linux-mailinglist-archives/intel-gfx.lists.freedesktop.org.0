Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 254AB7E088B
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Nov 2023 19:57:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFEB210E195;
	Fri,  3 Nov 2023 18:57:36 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27A8810E17C;
 Fri,  3 Nov 2023 18:57:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699037855; x=1730573855;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=HlTn55oowa0wj84ZgBgoxoO83BmZbpHQL603qpxUa6I=;
 b=XEDyAabgXaYLF68q8HWT15xUWMsmKoGZy4uTSvFnHOtHyZUGCzYRxvn8
 NXMZ9XjnE5rxRVauWl6r2ESguutdV8Soksd09X3jem/v7UncAoXrdBbir
 zBpHuaKEvUHAo3KfR8WhBNqN9ldZ2VFs7MM+TQfuqd3xTUlXkAuXzHZYc
 Zc+Bev3+Hc5jb561S72KOrL6c67IDwLEjdgdQyUV9ePcBPQ3XzoCmOpWW
 Btxe3M36vjaka4NPUyIZ9Krp2fCMxqVNW6yFceWevlHnoKMFb819xj1Ge
 ewbt7R4uQqu1J/iwyvG8dVxFJhiARqp1QQoMm4/H7biLiM7G8IAolHbFy Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10883"; a="420119425"
X-IronPort-AV: E=Sophos;i="6.03,275,1694761200"; d="scan'208";a="420119425"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2023 11:57:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10883"; a="905431518"
X-IronPort-AV: E=Sophos;i="6.03,275,1694761200"; d="scan'208";a="905431518"
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.102.138.187])
 by fmsmga001-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Nov 2023 11:57:32 -0700
Date: Fri, 3 Nov 2023 19:57:29 +0100
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <20231103185729.agdu2qkvty22rxwd@kamilkon-desk.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>
References: <20231012081547.852052-1-tvrtko.ursulin@linux.intel.com>
 <20231012081547.852052-8-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20231012081547.852052-8-tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 7/9] tools/intel_gpu_top:
 Fully wrap clients operations
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
On 2023-10-12 at 09:15:45 +0100, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Wrap all operations on clients via the Intel specific wrappers in order to
> simplify upcoming work.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

> ---
>  tools/intel_gpu_top.c | 42 ++++++++++++++++++++++--------------------
>  1 file changed, 22 insertions(+), 20 deletions(-)
> 
> diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
> index 091fe28068dc..b2e81d5f9ffb 100644
> --- a/tools/intel_gpu_top.c
> +++ b/tools/intel_gpu_top.c
> @@ -132,6 +132,7 @@ struct engines {
>  struct intel_clients {
>  	const char *pci_slot;
>  	struct igt_drm_client_engines classes;
> +	struct igt_drm_clients *clients;
>  };
>  
>  static struct termios termios_orig;
> @@ -2436,19 +2437,22 @@ intel_init_clients(struct intel_clients *iclients,
>  		iclients->classes.capacity[i] = engines->class[i].num_engines;
>  		iclients->classes.names[i] = strdup(engines->class[i].name);
>  	}
> +
> +	iclients->clients = igt_drm_clients_init(iclients);
>  }
>  
>  static void intel_free_clients(struct intel_clients *iclients)
>  {
> +	if (iclients->clients)
> +		igt_drm_clients_free(iclients->clients);
> +
>  	free((void *)iclients->pci_slot);
>  	free(iclients->classes.capacity);
>  	free(iclients->classes.names);
>  }
>  
> -int main(int argc, char **argv)
> +static void intel_scan_clients(struct intel_clients *iclients)
>  {
> -	unsigned int period_us = DEFAULT_PERIOD_MS * 1000;
> -	struct igt_drm_clients *clients = NULL;
>  	static const char *engine_map[] = {
>  		"render",
>  		"copy",
> @@ -2456,6 +2460,15 @@ int main(int argc, char **argv)
>  		"video-enhance",
>  		"compute",
>  	};
> +
> +	igt_drm_clients_scan(iclients->clients, client_match,
> +			     engine_map, ARRAY_SIZE(engine_map),
> +			     NULL, 0);
> +}
> +
> +int main(int argc, char **argv)
> +{
> +	unsigned int period_us = DEFAULT_PERIOD_MS * 1000;
>  	bool physical_engines = false;
>  	struct intel_clients iclients;
>  	int con_w = -1, con_h = -1;
> @@ -2613,15 +2626,11 @@ int main(int argc, char **argv)
>  
>  	init_engine_classes(engines);
>  
> -	if (has_drm_fdinfo(&card)) {
> +	if (has_drm_fdinfo(&card))
>  		intel_init_clients(&iclients, &card, engines);
> -		clients = igt_drm_clients_init(&iclients);
> -	}
>  
>  	pmu_sample(engines);
> -	igt_drm_clients_scan(clients, client_match,
> -			     engine_map, ARRAY_SIZE(engine_map),
> -			     NULL, 0);
> +	intel_scan_clients(&iclients);
>  	gettime(&ts);
>  
>  	if (output_mode == JSON)
> @@ -2652,12 +2661,8 @@ int main(int argc, char **argv)
>  		pmu_sample(engines);
>  		t = (double)(engines->ts.cur - engines->ts.prev) / 1e9;
>  
> -		disp_clients =
> -			display_clients(igt_drm_clients_scan(clients,
> -							     client_match,
> -							     engine_map,
> -							     ARRAY_SIZE(engine_map),
> -							     NULL, 0));
> +		intel_scan_clients(&iclients);
> +		disp_clients = display_clients(iclients.clients);
>  		scan_us = elapsed_us(&ts, period_us);
>  
>  		if (stop_top)
> @@ -2708,7 +2713,7 @@ int main(int argc, char **argv)
>  			pops->close_struct();
>  		}
>  
> -		if (disp_clients != clients)
> +		if (disp_clients != iclients.clients)
>  			free_display_clients(disp_clients);
>  
>  		if (stop_top)
> @@ -2723,10 +2728,7 @@ int main(int argc, char **argv)
>  	if (output_mode == JSON)
>  		printf("]\n");
>  
> -	if (clients) {
> -		igt_drm_clients_free(clients);
> -		intel_free_clients(&iclients);
> -	}
> +	intel_free_clients(&iclients);
>  
>  	free(codename);
>  err_pmu:
> -- 
> 2.39.2
> 
