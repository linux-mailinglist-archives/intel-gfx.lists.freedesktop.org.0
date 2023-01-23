Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E3276779F0
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Jan 2023 12:16:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1032810E343;
	Mon, 23 Jan 2023 11:16:03 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92ADD10E33E;
 Mon, 23 Jan 2023 11:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674472560; x=1706008560;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=mWsrEG+v6MXJPhxRTNDC5Xe8X4Bqlq/HOwNkZ5rAkZI=;
 b=G0qUVOEsee8ZFmGgmpe6jZMDPrpIDOkQ9TySNqeE/Z6tPPTrF69Cg5vc
 DeqQ+MiccsxPxgJHQgqHadQnXfgAdSDn15Cot1z32ZEUjeByjaQY96Le2
 fTR53FfpLv6kJd6W6axxgA48G7rvfNy18zPAoZbMEIXKGBap7MYof9vR6
 GFpD1vGk+pVJVquSE4CDYyk7b5z+76yt0nBFgp30oi1kveQ8VTvjK4Ul+
 eOeZC+y/syq9QW2+rL2WxahddjPB6v0A71NSW+Gv66LlhCCJ8D7Qerc2p
 osBv915c81u3ZgAwl76pK/ilJfGtlcCPkSj0Ew3D5Z6J021Gg2IElvohs Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="305677431"
X-IronPort-AV: E=Sophos;i="5.97,239,1669104000"; d="scan'208";a="305677431"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 03:15:47 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="785556492"
X-IronPort-AV: E=Sophos;i="5.97,239,1669104000"; d="scan'208";a="785556492"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.57.143])
 ([10.252.57.143])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 03:15:46 -0800
Message-ID: <e77bdca1-6871-bbdc-7e93-9fac83d3d27a@linux.intel.com>
Date: Mon, 23 Jan 2023 12:15:44 +0100
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
Content-Transfer-Encoding: 7bit
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


On 1/19/2023 4:54 PM, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>
> Avoid trying to dereference null engines on exit when there are either
> none which are supported, or kernel does not have i915 PMU support.
>
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Acked-by: Nirmoy Das <nirmoy.das@intel.com>
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
