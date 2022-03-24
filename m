Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1094F4E654B
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Mar 2022 15:33:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 278A410E8B4;
	Thu, 24 Mar 2022 14:33:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFBAC10E8A6;
 Thu, 24 Mar 2022 14:33:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648132424; x=1679668424;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=Vny+9jgK1pl/waMOsyxlMCuOVr736cefHCU7EI2Tbas=;
 b=cPZIqKxUPdq1qjzWtukMuh9LW8F6OMROGF+u0g7WxUdVYfW8y/Ots7ev
 uxVQ7yOUTTRYyt8jg92qyH9cKn7XBlAis74yJI/XFlo6tqb57ux3576Pm
 Y2BdlCRLI/SYpBRD67i8mHPklV6O3rHHSZr4lQTMFy1xvbyHLa5fVysVI
 SZ2pm9/f/zRheI4k+DcrD6UOk7OKnc2P01pK7OhFiSf4lQC+d2NmzZ24D
 Rn0hXoy1xkfDlm3d954dfe9vFJ4qNgxv+3pZR78P0VUKPOD8eVoJ3sSNg
 hUTKSc2okjwQ5Yh0D8O3Cq3NpvjpCau1zsPw6r7+nFppTNChsIVl9VMzT A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="258101934"
X-IronPort-AV: E=Sophos;i="5.90,207,1643702400"; d="scan'208";a="258101934"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2022 07:33:44 -0700
X-IronPort-AV: E=Sophos;i="5.90,207,1643702400"; d="scan'208";a="717842659"
Received: from peiwangc-mobl1.ccr.corp.intel.com (HELO [10.249.254.237])
 ([10.249.254.237])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2022 07:33:42 -0700
Message-ID: <d2e27f20-99e3-38ad-0bb0-bf4f5a063197@linux.intel.com>
Date: Thu, 24 Mar 2022 15:33:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, igt-dev@lists.freedesktop.org
References: <20220324142621.347452-1-matthew.auld@intel.com>
 <20220324142621.347452-4-matthew.auld@intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
In-Reply-To: <20220324142621.347452-4-matthew.auld@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH i-g-t 3/4] tests/gem_lmem_swapping: limit
 lmem to 4G
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
Cc: intel-gfx@lists.freedesktop.org, CQ Tang <cq.tang@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 3/24/22 15:26, Matthew Auld wrote:
> From: CQ Tang <cq.tang@intel.com>
>
> On some systems lmem can be as large as 16G, which seems to trigger
> various CI timeouts, and in the best case just takes a long time. For
> the purposes of the test we should be able to limit to 4G, without any
> big loss in coverage.
>
> Signed-off-by: CQ Tang <cq.tang@intel.com>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> Cc: Nirmoy Das <nirmoy.das@linux.intel.com>

Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>



> ---
>   tests/i915/gem_lmem_swapping.c | 9 ++++++++-
>   1 file changed, 8 insertions(+), 1 deletion(-)
>
> diff --git a/tests/i915/gem_lmem_swapping.c b/tests/i915/gem_lmem_swapping.c
> index 995a663f..ad1c989c 100644
> --- a/tests/i915/gem_lmem_swapping.c
> +++ b/tests/i915/gem_lmem_swapping.c
> @@ -526,7 +526,13 @@ igt_main_args("", long_options, help_str, opt_handler, NULL)
>   	igt_fixture {
>   		struct intel_execution_engine2 *e;
>   
> -		i915 = drm_open_driver(DRIVER_INTEL);
> +		igt_i915_driver_unload();
> +		if (igt_i915_driver_load("lmem_size=4096")) {
> +			igt_debug("i915 missing lmem_size modparam support\n");
> +			igt_assert_eq(igt_i915_driver_load(NULL), 0);
> +		}
> +
> +		i915 = __drm_open_driver(DRIVER_INTEL);
>   		igt_require_gem(i915);
>   		igt_require(gem_has_lmem(i915));
>   
> @@ -554,6 +560,7 @@ igt_main_args("", long_options, help_str, opt_handler, NULL)
>   	igt_fixture {
>   		free(regions);
>   		close(i915);
> +		igt_i915_driver_unload();
>   	}
>   
>   	igt_exit();
