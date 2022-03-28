Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 20A5B4E9198
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Mar 2022 11:40:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5636810E648;
	Mon, 28 Mar 2022 09:40:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 836EA10E648;
 Mon, 28 Mar 2022 09:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648460453; x=1679996453;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=+PRpoBc5Rr6W/fFurmVgfYHQsUib90fsQy2rLOvE5Zg=;
 b=M5obSY/kz5y7hQZCpO3v1OSr7Xpr2MV7ydqI6pTmMJBbcJSCmLf0YqZW
 N4UzD+hPInSJK3q3tPK+acnlMMH4NMBTg2dvE4R+jutIHQrgvXTWAIMC7
 rfrBQ1K0A7xJAokbBBmLEvQqi5WXoLHk8PeqwUn5CMFAojDyblC+tktul
 0Du3pJvnjF7LxqVUHEghHJ5FIdH0LbQd2y6wFHH1Z1H2Z4PsgUA/PP0By
 KihsqXHCmtZGr8B06QIQs/CMwrqmybVHFBfBFRW4gDJ5e1NoWhbC5w4tP
 cplyiXxinwiKJSZvBW7ix05vzN4HWBVwISr5O7QyQNdl+356fYyc47ga9 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10299"; a="256534046"
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="256534046"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 02:40:53 -0700
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="719044166"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.72.90])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 02:40:51 -0700
Received: from platvala by thrakatuluk with local (Exim 4.94.2)
 (envelope-from <petri.latvala@intel.com>)
 id 1nYlrT-0004EB-EE; Mon, 28 Mar 2022 12:40:31 +0300
Date: Mon, 28 Mar 2022 12:40:31 +0300
From: Petri Latvala <petri.latvala@intel.com>
To: Matthew Auld <matthew.auld@intel.com>
Message-ID: <YkGCjznvCyAwMxz4@platvala-desk.ger.corp.intel.com>
References: <20220328092959.790392-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220328092959.790392-1-matthew.auld@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t v2] tests/gem_lmem_swapping:
 limit lmem to 4G
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
Cc: Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, igt-dev@lists.freedesktop.org,
 CQ Tang <cq.tang@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 28, 2022 at 10:29:59AM +0100, Matthew Auld wrote:
> From: CQ Tang <cq.tang@intel.com>
> 
> On some systems lmem can be as large as 16G, which seems to trigger
> various CI timeouts, and in the best case just takes a long time. For
> the purposes of the test we should be able to limit to 4G, without any
> big loss in coverage.
> 
> v2:
>  - No need to try again without the modparam; if it's not supported it
>    will still load the driver just fine.
> 
> Signed-off-by: CQ Tang <cq.tang@intel.com>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> Cc: Nirmoy Das <nirmoy.das@linux.intel.com>
> Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>  tests/i915/gem_lmem_swapping.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/tests/i915/gem_lmem_swapping.c b/tests/i915/gem_lmem_swapping.c
> index 31644bcd..69f7bae9 100644
> --- a/tests/i915/gem_lmem_swapping.c
> +++ b/tests/i915/gem_lmem_swapping.c
> @@ -527,7 +527,10 @@ igt_main_args("", long_options, help_str, opt_handler, NULL)
>  	igt_fixture {
>  		struct intel_execution_engine2 *e;
>  
> -		i915 = drm_open_driver(DRIVER_INTEL);
> +		igt_i915_driver_unload();
> +		igt_assert_eq(igt_i915_driver_load("lmem_size=4096"), 0);
> +
> +		i915 = __drm_open_driver(DRIVER_INTEL);


A debug print would still be lovely if the param is
missing. __igt_params_get() handily tells you if lmem_size exists.

igt_debug might not be good for that kind of a print, log buffer isn't
dumped on igt_runner timeouts. igt_info maybe, igt_warn might be
overkill.


-- 
Petri Latvala



>  		igt_require_gem(i915);
>  		igt_require(gem_has_lmem(i915));
>  
> @@ -556,6 +559,7 @@ igt_main_args("", long_options, help_str, opt_handler, NULL)
>  		intel_ctx_destroy(i915, ctx);
>  		free(regions);
>  		close(i915);
> +		igt_i915_driver_unload();
>  	}
>  
>  	igt_exit();
> -- 
> 2.34.1
> 
