Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B45FD4E710F
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Mar 2022 11:19:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E312F10E255;
	Fri, 25 Mar 2022 10:19:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E77910E24F;
 Fri, 25 Mar 2022 10:19:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648203580; x=1679739580;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=7qw0mdqRGJmI4dYCn9E7MdtR8VhGJTmWvsMeivbV5GQ=;
 b=k5yZr2Uw1JosU9+FP+Y1wKyAZFIgw0LCBNbcbY4sXJPlBq8+EbSupZKj
 9ZX6r0dOYnhAf5o6BV/HrFBseku1I7VM5fY3DLck6vg7w4k6deaJHcx1W
 bEvR1+wb2qAIN69InlFSC/CAZ+aNQF3uLjUYGo4d7sKeceYHDbMwrJasg
 wgyHxeI0NYYo5mExv3CH8xYLWI770imKqwScyEyDkTYgECqsZ1LiqlQcq
 pOvZlhf/T/lT4axAPl5+JLDmeBP/GyrNj7PTC4BHoYh5QG2GSEIpiXxSF
 DGcVtRgPrwfDvnGeAtXSEafpyrMNs1CtBpbsKJhoXnmaUActheFWoklhF w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10296"; a="258319671"
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="258319671"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 03:19:12 -0700
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="520156549"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.72.90])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 03:19:10 -0700
Received: from platvala by thrakatuluk with local (Exim 4.94.2)
 (envelope-from <petri.latvala@intel.com>)
 id 1nXh1s-00084x-1V; Fri, 25 Mar 2022 12:18:48 +0200
Date: Fri, 25 Mar 2022 12:18:48 +0200
From: Petri Latvala <petri.latvala@intel.com>
To: Matthew Auld <matthew.auld@intel.com>
Message-ID: <Yj2XCNwAQ4Y98r8L@platvala-desk.ger.corp.intel.com>
References: <20220324142621.347452-1-matthew.auld@intel.com>
 <20220324142621.347452-4-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220324142621.347452-4-matthew.auld@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 3/4]
 tests/gem_lmem_swapping: limit lmem to 4G
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
Cc: igt-dev@lists.freedesktop.org,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, CQ Tang <cq.tang@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 24, 2022 at 02:26:20PM +0000, Matthew Auld wrote:
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
>  tests/i915/gem_lmem_swapping.c | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/tests/i915/gem_lmem_swapping.c b/tests/i915/gem_lmem_swapping.c
> index 995a663f..ad1c989c 100644
> --- a/tests/i915/gem_lmem_swapping.c
> +++ b/tests/i915/gem_lmem_swapping.c
> @@ -526,7 +526,13 @@ igt_main_args("", long_options, help_str, opt_handler, NULL)
>  	igt_fixture {
>  		struct intel_execution_engine2 *e;
>  
> -		i915 = drm_open_driver(DRIVER_INTEL);
> +		igt_i915_driver_unload();
> +		if (igt_i915_driver_load("lmem_size=4096")) {
> +			igt_debug("i915 missing lmem_size modparam support\n");
> +			igt_assert_eq(igt_i915_driver_load(NULL), 0);
> +		}

Does the driver load truly fail with an unknown param?


-- 
Petri Latvala



> +
> +		i915 = __drm_open_driver(DRIVER_INTEL);
>  		igt_require_gem(i915);
>  		igt_require(gem_has_lmem(i915));
>  
> @@ -554,6 +560,7 @@ igt_main_args("", long_options, help_str, opt_handler, NULL)
>  	igt_fixture {
>  		free(regions);
>  		close(i915);
> +		igt_i915_driver_unload();
>  	}
>  
>  	igt_exit();
> -- 
> 2.34.1
> 
