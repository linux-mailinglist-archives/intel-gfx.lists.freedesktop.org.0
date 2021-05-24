Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0558E38E886
	for <lists+intel-gfx@lfdr.de>; Mon, 24 May 2021 16:17:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D93E6E824;
	Mon, 24 May 2021 14:17:38 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E87D46E824;
 Mon, 24 May 2021 14:17:35 +0000 (UTC)
IronPort-SDR: lxSlLbWBxfeCE043Z44y5KNtz1/FwydwyMZ3UUNaN6Eco2+3rWmQoJ/+lY2r6aCZLQa+YjacmT
 Q5f6WtqoHUXA==
X-IronPort-AV: E=McAfee;i="6200,9189,9993"; a="189065555"
X-IronPort-AV: E=Sophos;i="5.82,325,1613462400"; d="scan'208";a="189065555"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2021 07:17:32 -0700
IronPort-SDR: uyfuqofv99DOcNsJEWq/OD07TDPx+90ClRV/X/4y+z0By/K1RiGDlyskN4/s5NXy6rkSgXWXvg
 n7LRjkhnyZ7A==
X-IronPort-AV: E=Sophos;i="5.82,325,1613462400"; d="scan'208";a="545959921"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.68.154])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2021 07:17:28 -0700
Received: from platvala by thrakatuluk with local (Exim 4.94)
 (envelope-from <petri.latvala@intel.com>)
 id 1llBQ8-0006Xh-FE; Mon, 24 May 2021 17:19:04 +0300
Date: Mon, 24 May 2021 17:19:04 +0300
From: Petri Latvala <petri.latvala@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <YKu12MnURTmD1eHg@platvala-desk.ger.corp.intel.com>
References: <20210524140113.1782804-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210524140113.1782804-1-tvrtko.ursulin@linux.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] gem_watchdog: Skip test if
 default request expiry is not compiled in
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, May 24, 2021 at 03:01:13PM +0100, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Test incorrectly assumes no modparam means default expiry, while in
> reality no modparam means old kernel / de-selected feature in which
> case test should skip.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>  tests/i915/gem_watchdog.c | 16 +++++++---------
>  1 file changed, 7 insertions(+), 9 deletions(-)
> 
> diff --git a/tests/i915/gem_watchdog.c b/tests/i915/gem_watchdog.c
> index 8f9fb17750fb..89992a3c5099 100644
> --- a/tests/i915/gem_watchdog.c
> +++ b/tests/i915/gem_watchdog.c
> @@ -630,6 +630,7 @@ igt_main
>  
>  	igt_fixture {
>  		struct drm_i915_query_item item;
> +		const unsigned int timeout = 1;
>  		char *tmp;
>  
>  		i915 = drm_open_driver_master(DRIVER_INTEL);
> @@ -639,16 +640,13 @@ igt_main
>  		igt_require_gem(i915);
>  
>  		tmp = __igt_params_get(i915, "request_timeout_ms");
> -		if (tmp) {
> -			const unsigned int timeout = 1;
> +		igt_skip_on_f(!tmp || !atoi(tmp),
> +			      "Request expiry not supported!");

Newline missing at the end.


-- 
Petri Latvala


> +		free(tmp);
>  
> -			igt_params_save_and_set(i915, "request_timeout_ms",
> -						"%u", timeout * 1000);
> -			default_timeout_wait_s = timeout * 5;
> -			free(tmp);
> -		} else {
> -			default_timeout_wait_s = 12;
> -		}
> +		igt_params_save_and_set(i915, "request_timeout_ms", "%u",
> +					timeout * 1000);
> +		default_timeout_wait_s = timeout * 5;
>  
>  		i915 = gem_reopen_driver(i915); /* Apply modparam. */
>  
> -- 
> 2.30.2
> 
> _______________________________________________
> igt-dev mailing list
> igt-dev@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/igt-dev
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
