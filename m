Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DEA4537B40
	for <lists+intel-gfx@lfdr.de>; Mon, 30 May 2022 15:19:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CBB610E7E9;
	Mon, 30 May 2022 13:19:25 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 722E910E027;
 Mon, 30 May 2022 13:19:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653916764; x=1685452764;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=6bdjDW/db0+6TB54gISB7LKBNCgS+j8LvMPfNbfjAL8=;
 b=UtFhm97+jies4Xx7ZL6hd5k+E09T85VjTbIIhCS2jFYE437io9YZ+28Z
 Ygs/FHC/IblLNbHPLl7gdsL8f+ryw3bBBPjVwOWji55GraARw2iA65K3m
 kiTKIo09eRxVSUPWQ2yCV9KU5uLQdOCf1fpB+0VtvS8V0aLzSXVg8gv8d
 mlz44telc5bmA9SbdAf49iUbSnj4V6k/qm0z7xa61i2prftBiHcHvWSTC
 +dU0Im4fuatb1UkLe4XA4CvSwdclTBaIHOz+cgWeL5yL/aYytVJr8a/kr
 fSX3NB8Wk5UHp5CG4gsmBu4AIPBVeqHBLMRfjcxlda//z0leYVfYk3RZi A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10362"; a="300349162"
X-IronPort-AV: E=Sophos;i="5.91,263,1647327600"; d="scan'208";a="300349162"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2022 06:19:24 -0700
X-IronPort-AV: E=Sophos;i="5.91,263,1647327600"; d="scan'208";a="632613702"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.72.90])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2022 06:19:22 -0700
Received: from platvala by thrakatuluk with local (Exim 4.94.2)
 (envelope-from <petri.latvala@intel.com>)
 id 1nvfGg-000zDJ-V5; Mon, 30 May 2022 16:17:10 +0300
Date: Mon, 30 May 2022 16:17:10 +0300
From: Petri Latvala <petri.latvala@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <YpTD1tdlkwo411FR@platvala-desk.ger.corp.intel.com>
References: <20220527105042.2233128-1-tvrtko.ursulin@linux.intel.com>
 <20220527105042.2233128-3-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220527105042.2233128-3-tvrtko.ursulin@linux.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH i-g-t 3/3] intel_gpu_top: Free all memory on
 exit
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
Cc: igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, May 27, 2022 at 11:50:42AM +0100, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Be nice and explicitly free all memory on exit.
> 
> Also fix a Valgrind reported unitilised conditional jump.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Petri Latvala <petri.latvala@intel.com>

Reviewed-by: Petri Latvala <petri.latvala@intel.com>

> ---
>  tools/intel_gpu_top.c | 51 +++++++++++++++++++++++++++++++++++--------
>  1 file changed, 42 insertions(+), 9 deletions(-)
> 
> diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
> index 26986a822bb7..997aff582ff7 100644
> --- a/tools/intel_gpu_top.c
> +++ b/tools/intel_gpu_top.c
> @@ -437,6 +437,36 @@ static struct engines *discover_engines(char *device)
>  	return engines;
>  }
>  
> +static void free_engines(struct engines *engines)
> +{
> +	struct pmu_counter **pmu, *free_list[] = {
> +		&engines->r_gpu,
> +		&engines->r_pkg,
> +		&engines->imc_reads,
> +		&engines->imc_writes,
> +		NULL
> +	};
> +	unsigned int i;
> +
> +	for (pmu = &free_list[0]; *pmu; pmu++) {
> +		if ((*pmu)->present)
> +			free((char *)(*pmu)->units);
> +	}
> +
> +	for (i = 0; i < engines->num_engines; i++) {
> +		struct engine *engine = engine_ptr(engines, i);
> +
> +		free((char *)engine->name);
> +		free((char *)engine->short_name);
> +		free((char *)engine->display_name);
> +	}
> +
> +	closedir(engines->root);
> +
> +	free(engines->class);
> +	free(engines);
> +}
> +
>  #define _open_pmu(type, cnt, pmu, fd) \
>  ({ \
>  	int fd__; \
> @@ -1073,7 +1103,7 @@ static size_t freadat2buf(char *buf, const size_t sz, DIR *at, const char *name)
>  	return count;
>  }
>  
> -static struct clients *scan_clients(struct clients *clients)
> +static struct clients *scan_clients(struct clients *clients, bool display)
>  {
>  	struct dirent *proc_dent;
>  	struct client *c;
> @@ -1181,7 +1211,7 @@ next:
>  			break;
>  	}
>  
> -	return display_clients(clients);
> +	return display ? display_clients(clients) : clients;
>  }
>  
>  static const char *bars[] = { " ", "▏", "▎", "▍", "▌", "▋", "▊", "▉", "█" };
> @@ -2391,7 +2421,7 @@ static void process_stdin(unsigned int timeout_us)
>  
>  static bool has_drm_fdinfo(const struct igt_device_card *card)
>  {
> -	struct drm_client_fdinfo info;
> +	struct drm_client_fdinfo info = { };
>  	unsigned int cnt;
>  	int fd;
>  
> @@ -2572,7 +2602,7 @@ int main(int argc, char **argv)
>  	}
>  
>  	pmu_sample(engines);
> -	scan_clients(clients);
> +	scan_clients(clients, false);
>  	codename = igt_device_get_pretty_name(&card, false);
>  
>  	while (!stop_top) {
> @@ -2599,7 +2629,7 @@ int main(int argc, char **argv)
>  		pmu_sample(engines);
>  		t = (double)(engines->ts.cur - engines->ts.prev) / 1e9;
>  
> -		disp_clients = scan_clients(clients);
> +		disp_clients = scan_clients(clients, true);
>  
>  		if (stop_top)
>  			break;
> @@ -2649,21 +2679,24 @@ int main(int argc, char **argv)
>  			pops->close_struct();
>  		}
>  
> -		if (stop_top)
> -			break;
> -
>  		if (disp_clients != clients)
>  			free_clients(disp_clients);
>  
> +		if (stop_top)
> +			break;
> +
>  		if (output_mode == INTERACTIVE)
>  			process_stdin(period_us);
>  		else
>  			usleep(period_us);
>  	}
>  
> +	if (clients)
> +		free_clients(clients);
> +
>  	free(codename);
>  err:
> -	free(engines);
> +	free_engines(engines);
>  	free(pmu_device);
>  exit:
>  	igt_devices_free();
> -- 
> 2.32.0
> 
