Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46FCB302660
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 15:40:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF5AF6E0FB;
	Mon, 25 Jan 2021 14:40:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 729946E0FB
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jan 2021 14:40:51 +0000 (UTC)
IronPort-SDR: 304bnzIqm1RFPbogPlhEZnCOKh9tWhKsEPQ9+miYD2exY3/+C09Oz39Khfk+BY/QYNEe/KKKTA
 r/cZLzvmwIeA==
X-IronPort-AV: E=McAfee;i="6000,8403,9874"; a="264560405"
X-IronPort-AV: E=Sophos;i="5.79,373,1602572400"; d="scan'208";a="264560405"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2021 06:40:50 -0800
IronPort-SDR: O0AofaGw/qOy8tahRvhop7DKkCGFSYRgCn/KuWM76ViEhhxIYHNXlcAfOnUQJA05k8PFgr+0lL
 ea6X3mN3XY7g==
X-IronPort-AV: E=Sophos;i="5.79,373,1602572400"; d="scan'208";a="387406847"
Received: from fjohn-mobl1.ger.corp.intel.com (HELO [10.249.46.217])
 ([10.249.46.217])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2021 06:40:48 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210125140136.10494-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <9cc2ee92-adca-7d52-715f-96eca84148d9@linux.intel.com>
Date: Mon, 25 Jan 2021 14:40:46 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210125140136.10494-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 01/41] drm/i915/selftests: Check for
 engine-reset errors in the middle of workarounds
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
Cc: thomas.hellstrom@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 25/01/2021 14:00, Chris Wilson wrote:
> As we reset the engine between verifying the workarounds remain intact,
> report an engine reset failure.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/gt/selftest_workarounds.c | 16 +++++++++++++---
>   1 file changed, 13 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/selftest_workarounds.c b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
> index 37ea46907a7d..af33a720dbf8 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
> @@ -1219,7 +1219,11 @@ live_engine_reset_workarounds(void *arg)
>   			goto err;
>   		}
>   
> -		intel_engine_reset(engine, "live_workarounds:idle");
> +		ret = intel_engine_reset(engine, "live_workarounds:idle");
> +		if (ret) {
> +			pr_err("%s: Reset failed while idle\n", engine->name);
> +			goto err;
> +		}
>   
>   		ok = verify_wa_lists(gt, &lists, "after idle reset");
>   		if (!ok) {
> @@ -1240,12 +1244,18 @@ live_engine_reset_workarounds(void *arg)
>   
>   		ret = request_add_spin(rq, &spin);
>   		if (ret) {
> -			pr_err("Spinner failed to start\n");
> +			pr_err("%s: Spinner failed to start\n", engine->name);
>   			igt_spinner_fini(&spin);
>   			goto err;
>   		}
>   
> -		intel_engine_reset(engine, "live_workarounds:active");
> +		ret = intel_engine_reset(engine, "live_workarounds:active");
> +		if (ret) {
> +			pr_err("%s: Reset failed on an active spinner\n",
> +			       engine->name);
> +			igt_spinner_fini(&spin);
> +			goto err;
> +		}
>   
>   		igt_spinner_end(&spin);
>   		igt_spinner_fini(&spin);
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
