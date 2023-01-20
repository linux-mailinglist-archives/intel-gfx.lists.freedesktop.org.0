Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CFFA467572C
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Jan 2023 15:29:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D592010E033;
	Fri, 20 Jan 2023 14:29:48 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9356610E033;
 Fri, 20 Jan 2023 14:29:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674224987; x=1705760987;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=+ECmdq9y8d3BHEOsdCzMZUdA7f5uVa/5t9H5/xOx9UQ=;
 b=Sqtvc7k73lS2BgdX5npiEWgzl7rYabUo0gaNJLXqRF2DwoMRrIme5eoT
 p0ZNS1oPQRQLtadKu++o/euOYbY3cjL/2tUz1gO5ATxi6TgAKAYtt8nQt
 zgoIwDcbv/BxQZB2pbpU9MseixmgM3Ov2KQcStc8am2eYixVbaw3n7mx4
 AHnRZSo6SWH8IjJj43N5i1b8Ke8Y/8JP+vItF9uKLdD2mj7ASMDyzfQAZ
 prwTiV7/kZ495zvfDOkaEjqyTOQuQ+y6yNXXgu3t2uVnM9KrqxwJUeaFs
 GtNRhWU4Wa97orPD0ani+UYOaBeksGp+oTlgsX9DFWYiUu2stwYD3y7w+ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="309162907"
X-IronPort-AV: E=Sophos;i="5.97,232,1669104000"; d="scan'208";a="309162907"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2023 06:29:47 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="692874158"
X-IronPort-AV: E=Sophos;i="5.97,232,1669104000"; d="scan'208";a="692874158"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.251.222.253])
 ([10.251.222.253])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2023 06:29:45 -0800
Message-ID: <46f7db49-eb5c-515f-b450-75cac53d770e@linux.intel.com>
Date: Fri, 20 Jan 2023 15:29:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org
References: <20230119155428.3260937-1-tvrtko.ursulin@linux.intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <20230119155428.3260937-1-tvrtko.ursulin@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH i-g-t] intel_gpu_top: Fix cleanup on old
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Tvrtko,

On 1/19/2023 4:54 PM, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>
> Avoid trying to dereference null engines on exit when there are either
> none which are supported, or kernel does not have i915 PMU support.
>
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   tools/intel_gpu_top.c | 10 +++++++---
>   1 file changed, 7 insertions(+), 3 deletions(-)
>
> diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
> index 7aa233570463..517dc2995d26 100644
> --- a/tools/intel_gpu_top.c
> +++ b/tools/intel_gpu_top.c
> @@ -448,6 +448,9 @@ static void free_engines(struct engines *engines)
>   	};
>   	unsigned int i;
>   
> +	if (!engines)
> +		return;
> +


This check should happen before the  struct pmu_counter free_list 
generation.


Regards,

Nirmoy

>   	for (pmu = &free_list[0]; *pmu; pmu++) {
>   		if ((*pmu)->present)
>   			free((char *)(*pmu)->units);
> @@ -2568,7 +2571,7 @@ int main(int argc, char **argv)
>   			"Failed to detect engines! (%s)\n(Kernel 4.16 or newer is required for i915 PMU support.)\n",
>   			strerror(errno));
>   		ret = EXIT_FAILURE;
> -		goto err;
> +		goto err_engines;
>   	}
>   
>   	ret = pmu_init(engines);
> @@ -2585,7 +2588,7 @@ int main(int argc, char **argv)
>   "More information can be found at 'Perf events and tool security' document:\n"
>   "https://www.kernel.org/doc/html/latest/admin-guide/perf-security.html\n");
>   		ret = EXIT_FAILURE;
> -		goto err;
> +		goto err_pmu;
>   	}
>   
>   	ret = EXIT_SUCCESS;
> @@ -2699,8 +2702,9 @@ int main(int argc, char **argv)
>   		free_clients(clients);
>   
>   	free(codename);
> -err:
> +err_pmu:
>   	free_engines(engines);
> +err_engines:
>   	free(pmu_device);
>   exit:
>   	igt_devices_free();
