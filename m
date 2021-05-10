Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63599377F2E
	for <lists+intel-gfx@lfdr.de>; Mon, 10 May 2021 11:14:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F30689F97;
	Mon, 10 May 2021 09:14:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DE4F89EBD
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 May 2021 09:14:50 +0000 (UTC)
IronPort-SDR: P5ZgcFAxDzkDCfZL82pthn3GiZRbE6eE/BO0AR/fdOJFmQm8Zw9/w30lYqB8pfrgPA1d4rtbrZ
 F/3apUbrzN7Q==
X-IronPort-AV: E=McAfee;i="6200,9189,9979"; a="178737425"
X-IronPort-AV: E=Sophos;i="5.82,287,1613462400"; d="scan'208";a="178737425"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2021 02:14:49 -0700
IronPort-SDR: zql81OlQuQXstO1FU3Fyoj+R+ElaQeZmSyiwpz3BQEt/3E+3wquNu3abJsQ4hBbWn41VLDEz6v
 cNm871HCSjEg==
X-IronPort-AV: E=Sophos;i="5.82,287,1613462400"; d="scan'208";a="536313389"
Received: from agriffin-mobl1.ger.corp.intel.com (HELO [10.213.193.195])
 ([10.213.193.195])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2021 02:14:48 -0700
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210507144251.376538-1-janusz.krzysztofik@linux.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <2abba1b7-ac7b-a983-39af-87b1b86b765a@linux.intel.com>
Date: Mon, 10 May 2021 10:14:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210507144251.376538-1-janusz.krzysztofik@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Do release kernel context if
 breadcrumb measure fails
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 07/05/2021 15:42, Janusz Krzysztofik wrote:
> Commit fb5970da1b42 ("drm/i915/gt: Use the kernel_context to measure the
> breadcrumb size") reordered some operations inside engine_init_common()
> and added an error unwind path to that function.  In that path, a
> reference to a kernel context candidate supposed to be released on error
> was put, but the context, pinned when created, was not unpinned first.
> Fix it by replacing intel_context_put() with destroy_pinned_context()
> introduced later by commit b436a5f8b6c8 ("drm/i915/gt: Track all timelines
> created using the HWSP").
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/gt/intel_engine_cs.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index 6dbdbde00f14..eba2da9679a5 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -898,7 +898,7 @@ static int engine_init_common(struct intel_engine_cs *engine)
>   	return 0;
>   
>   err_context:
> -	intel_context_put(ce);
> +	destroy_pinned_context(ce);
>   	return ret;
>   }
>   
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Found by some test or code inspection?

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
