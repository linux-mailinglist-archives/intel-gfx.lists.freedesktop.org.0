Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 824404E70F0
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Mar 2022 11:13:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D43610EB68;
	Fri, 25 Mar 2022 10:13:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D68A310EB66;
 Fri, 25 Mar 2022 10:13:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648203229; x=1679739229;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=G2oITc6jhUAF+kNuW4IqSK5XYztv2+O4+A6fWe4TkZ0=;
 b=YJCtEvhlWWk7lMC3rskpSXq+/1wAUaJSg9dOapAv1rnk72Nhaeow1i6X
 BG1DRrK0Mz09u2In7FcGw0rOKkjllk8f6TmyB/9fiSN5MyfKM7Qcc0mOQ
 GuQMBA444dtYyJNKmw4z8ebv1GAolH564L27OO10UPiRSVtFnweNSS2nG
 16VB5WLhOrEtTtS0FuJ64Rj8ikLLZcJKE/Mrg/5iUGo8zNRRg51kXMTAk
 FrATrR74pRtfjCGFlZROwAcPrwNxGS2hDnQcjxJhJnG2Z+jVFZNGup8xn
 kIwcslIIkN7LPio/up7ERKOtwIdRsjDhCqqyZ98d//47TuA2GLsUKTMen w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10296"; a="319309563"
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="319309563"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 03:13:34 -0700
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="561777647"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.61.27])
 ([10.252.61.27])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 03:13:33 -0700
Message-ID: <48a192ae-dd05-823a-ac82-98284c6ebae4@linux.intel.com>
Date: Fri, 25 Mar 2022 11:13:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, igt-dev@lists.freedesktop.org
References: <20220324142621.347452-1-matthew.auld@intel.com>
 <20220324142621.347452-4-matthew.auld@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
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
Cc: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, CQ Tang <cq.tang@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>

On 3/24/2022 3:26 PM, Matthew Auld wrote:
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
