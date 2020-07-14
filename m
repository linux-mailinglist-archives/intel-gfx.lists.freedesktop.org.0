Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3199221F442
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2020 16:39:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EB5E6E983;
	Tue, 14 Jul 2020 14:39:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88F946E97F
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jul 2020 14:39:30 +0000 (UTC)
IronPort-SDR: SMSQRVtTp4iceUrDf0Fny2S50uGXemjeDS1hPNR4FFZKvstld8e/MgWF4MJ46agylik3GGhlPN
 tBlI3lkHnUaw==
X-IronPort-AV: E=McAfee;i="6000,8403,9681"; a="146405284"
X-IronPort-AV: E=Sophos;i="5.75,350,1589266800"; d="scan'208";a="146405284"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2020 07:39:30 -0700
IronPort-SDR: pwfsk84DrvanZWdQk3oMJGqMrEoRuXYfHDJODGhjCJz4w//qW35PP5n+Y7Wd7c5+jyZMWDEMgU
 fwVo4g9EOYlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,350,1589266800"; d="scan'208";a="325857745"
Received: from gruberda-mobl2.ger.corp.intel.com (HELO [10.249.32.254])
 ([10.249.32.254])
 by orsmga007.jf.intel.com with ESMTP; 14 Jul 2020 07:39:26 -0700
To: Dan Carpenter <dan.carpenter@oracle.com>,
 Jani Nikula <jani.nikula@linux.intel.com>
References: <20200714143652.GA337376@mwanda>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <29d5e25e-45e1-fca0-7d09-fd5e303b9eea@intel.com>
Date: Tue, 14 Jul 2020 17:39:21 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200714143652.GA337376@mwanda>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/selftest: Fix an error code in
 live_noa_gpr()
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
Cc: David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 kernel-janitors@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 14/07/2020 17:36, Dan Carpenter wrote:
> The error code needs to be set on this path.  It currently returns
> success.
>
> Fixes: ed2690a9ca89 ("drm/i915/selftest: Check that GPR are restored across noa_wait")
> Reported-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
> v2: Fix a different bug instead.  :P  Colin fixed mine already.
>
>   drivers/gpu/drm/i915/selftests/i915_perf.c | 1 +
>   1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/i915/selftests/i915_perf.c b/drivers/gpu/drm/i915/selftests/i915_perf.c
> index 0aa151501fb3..c232194c60a2 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_perf.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_perf.c
> @@ -358,6 +358,7 @@ static int live_noa_gpr(void *arg)
>   		cs = intel_ring_begin(rq, 4);
>   		if (IS_ERR(cs)) {
>   			i915_request_add(rq);
> +			err = PTR_ERR(cs);
>   			goto out_rq;
>   		}
>   

Reviewed-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
