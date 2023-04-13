Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BE336E112B
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 17:31:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CA5210EB57;
	Thu, 13 Apr 2023 15:31:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74CA410EB01;
 Thu, 13 Apr 2023 15:31:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681399900; x=1712935900;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=BEHXL3jXGpKUbY+bvpIW4tnQqI6+zMX8BByAxAMnDsE=;
 b=P6IWlsRamT/7JQph05e0EqSoD7SIdVDDXH7Bg9LWfUldea/lAhjpAiJt
 8UsBuCB0aJrV6nAwZfyBQ9XfBEXXKzeRTLEsQnjXbI2WSeiFCQvtAA2W+
 DD9aPgedBunQT2QMUGNckehssCRrTniGb1F+D1UcuOKaskJ8SdyVIFRW6
 al58f/7WdKGwl4hh1Q4vDObJu5WJBOPPhOuqS08KC4UrJyvNgMGf9WJrP
 33BuUQSb+d8WjFBFGNnOgRt8uHFlYwi55T+AmcxSc3tUYYS/TK+ZcB6u+
 3G11bwIACKPAJXVvCL6d3O+Ctj5a8cYqaDEGF/SJGioPG4x8Gmr5H5tuQ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="430498209"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="430498209"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 08:31:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="800849601"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="800849601"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.3.63])
 ([10.213.3.63])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 08:31:38 -0700
Message-ID: <ff016423-edb8-bcd5-c75e-f05c0eaf1c8a@intel.com>
Date: Thu, 13 Apr 2023 17:31:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.9.1
Content-Language: en-US
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org
References: <20230413143626.311639-1-janusz.krzysztofik@linux.intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20230413143626.311639-1-janusz.krzysztofik@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/gem_reset_stats: Don't allow
 request watchdog to interfere
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
Cc: intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 13.04.2023 16:36, Janusz Krzysztofik wrote:
> A user reported recently that some subtests are failing.  The test was
> blocklisted in 2018, so we've lost CI feedback on its results since then.
>
> In 2021, request watchdog with 20 seconds timeout was introduced to i915.
> Kernel logs from failed subtest runs indicate that the request watchdog
> interfers with engine heartbeat and request preemption used by the test
> for exercising reset statistics.
>
> Disable request watchdog during the test execution.
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8310
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>   tests/i915/gem_reset_stats.c | 7 +++++++
>   1 file changed, 7 insertions(+)
>
> diff --git a/tests/i915/gem_reset_stats.c b/tests/i915/gem_reset_stats.c
> index baa101517d..7b003d88b6 100644
> --- a/tests/i915/gem_reset_stats.c
> +++ b/tests/i915/gem_reset_stats.c
> @@ -906,6 +906,7 @@ igt_main
>   	igt_fixture {
>   		bool has_reset_stats;
>   		bool using_full_reset;
> +		char *tmp;
>   
>   		device = drm_open_driver(DRIVER_INTEL);
>   		devid = intel_get_drm_devid(device);
> @@ -922,6 +923,12 @@ igt_main
>   			      "No reset stats ioctl support. Too old kernel?\n");
>   		igt_require_f(using_full_reset,
>   			      "Full GPU reset is not enabled. Is enable_hangcheck set?\n");
> +
> +		/* Don't allow request watchdog to interfere */
> +		tmp = __igt_params_get(device, "request_timeout_ms");

With presence of igt_params_scanf it would be simpler.

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej

> +		if (tmp && atoi(tmp))
> +			igt_params_save_and_set(device, "request_timeout_ms", "%u", 0);
> +		free(tmp);
>   	}
>   
>   	igt_subtest("params")

