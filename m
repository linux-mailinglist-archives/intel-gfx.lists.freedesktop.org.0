Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 01B6267EA79
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jan 2023 17:11:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE4A510E190;
	Fri, 27 Jan 2023 16:10:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECEC210E181;
 Fri, 27 Jan 2023 16:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674835854; x=1706371854;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Xcr3R2XBMBwRWQ4a9LqhbHzZgtmSKbm2t+BLutjim9c=;
 b=XQS13NIEPllcHM92GmDCj42EPFqiNOlZrXhdaUDDZo6Qby8BCqNmni/K
 Nqb1eDze2lDBP6So0/EEUj/hYQDUsHwrU8jSR2WnMzIYKJ+orEX8w9HKS
 5TR2sGg4ph6UKnwDylrKgHQco4hwugYg7hssq2mCL1s6eKIAY4Bhm9l64
 uUtL3T57uV0MW2GIU8J613J7ykA/NArePHrLNyQQebkqT+5/sM655vEhh
 jzHEjMPFtCny1oDuRM+dU10dy43B6vWHc/Dd7A3yccAplGJ2P96dmWqCy
 9YB6qispZdT1Bv9sIgoqAW9Z9EmpwUmM2EbV8cQDcGr6W9nUf7JYghaVt w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10603"; a="306767924"
X-IronPort-AV: E=Sophos;i="5.97,251,1669104000"; d="scan'208";a="306767924"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 08:10:54 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10603"; a="787258191"
X-IronPort-AV: E=Sophos;i="5.97,251,1669104000"; d="scan'208";a="787258191"
Received: from kwierzbi-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.213.2.161])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 08:10:52 -0800
Date: Fri, 27 Jan 2023 17:10:52 +0100
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <20230127161052.thz5q2sqxtge2cwn@kamilkon-desk1>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
References: <20230127111241.3624629-1-tvrtko.ursulin@linux.intel.com>
 <20230127111241.3624629-6-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230127111241.3624629-6-tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH i-g-t 5/6] intel_gpu_top: Fix cleanup on old
 kernels / unsupported GPU
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
Cc: intel-gfx@lists.freedesktop.org, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Tvrtko,

On 2023-01-27 at 11:12:40 +0000, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Avoid trying to dereference null engines on exit when there are either
> none which are supported, or kernel does not have i915 PMU support.
> 
> Also fix a memory leak on the same failure path just so Valgrind runs are
> quite.
> 
> v2:
>  * Fix a memory leak in the same failure mode too.

Please rebase, patch do not apply.

> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Acked-by: Nirmoy Das <nirmoy.das@intel.com> # v1
-------------------------------------------- ^^^^^
Delete this.

Rest looks good,

Regards,
Kamil

> ---
>  tools/intel_gpu_top.c | 21 ++++++++++++++-------
>  1 file changed, 14 insertions(+), 7 deletions(-)
> 
> diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
> index 7aa233570463..0a1de41b3374 100644
> --- a/tools/intel_gpu_top.c
> +++ b/tools/intel_gpu_top.c
> @@ -340,7 +340,7 @@ static struct engines *discover_engines(char *device)
>  
>  	d = opendir(sysfs_root);
>  	if (!d)
> -		return NULL;
> +		goto err;
>  
>  	while ((dent = readdir(d)) != NULL) {
>  		const char *endswith = "-busy";
> @@ -423,10 +423,8 @@ static struct engines *discover_engines(char *device)
>  	}
>  
>  	if (ret) {
> -		free(engines);
>  		errno = ret;
> -
> -		return NULL;
> +		goto err;
>  	}
>  
>  	qsort(engine_ptr(engines, 0), engines->num_engines,
> @@ -435,6 +433,11 @@ static struct engines *discover_engines(char *device)
>  	engines->root = d;
>  
>  	return engines;
> +
> +err:
> +	free(engines);
> +
> +	return NULL;
>  }
>  
>  static void free_engines(struct engines *engines)
> @@ -448,6 +451,9 @@ static void free_engines(struct engines *engines)
>  	};
>  	unsigned int i;
>  
> +	if (!engines)
> +		return;
> +
>  	for (pmu = &free_list[0]; *pmu; pmu++) {
>  		if ((*pmu)->present)
>  			free((char *)(*pmu)->units);
> @@ -2568,7 +2574,7 @@ int main(int argc, char **argv)
>  			"Failed to detect engines! (%s)\n(Kernel 4.16 or newer is required for i915 PMU support.)\n",
>  			strerror(errno));
>  		ret = EXIT_FAILURE;
> -		goto err;
> +		goto err_engines;
>  	}
>  
>  	ret = pmu_init(engines);
> @@ -2585,7 +2591,7 @@ int main(int argc, char **argv)
>  "More information can be found at 'Perf events and tool security' document:\n"
>  "https://www.kernel.org/doc/html/latest/admin-guide/perf-security.html\n");
>  		ret = EXIT_FAILURE;
> -		goto err;
> +		goto err_pmu;
>  	}
>  
>  	ret = EXIT_SUCCESS;
> @@ -2699,8 +2705,9 @@ int main(int argc, char **argv)
>  		free_clients(clients);
>  
>  	free(codename);
> -err:
> +err_pmu:
>  	free_engines(engines);
> +err_engines:
>  	free(pmu_device);
>  exit:
>  	igt_devices_free();
> -- 
> 2.34.1
> 
