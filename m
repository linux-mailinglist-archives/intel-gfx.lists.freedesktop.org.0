Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 778B02B5E8A
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 12:42:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD1E86E1A2;
	Tue, 17 Nov 2020 11:42:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4786A6E1A2
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Nov 2020 11:42:45 +0000 (UTC)
IronPort-SDR: PwibQhyhwD2sPOB0qdoExOTRN3j5a63YSsZ0RFkW4GyyVfaytQHfR9PYWChl0xcZQxwim8imXl
 9a0mFcHASgbw==
X-IronPort-AV: E=McAfee;i="6000,8403,9807"; a="170124285"
X-IronPort-AV: E=Sophos;i="5.77,485,1596524400"; d="scan'208";a="170124285"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 03:42:44 -0800
IronPort-SDR: pTLYU2me4YZFFLdCbkGz0nuo+CuiUAajAE2ysGua1Eil4kybaZhyCqBevYMmVOwMV/jvy5JNdz
 URQeLWyrCyXA==
X-IronPort-AV: E=Sophos;i="5.77,485,1596524400"; d="scan'208";a="544015877"
Received: from jgagatko-mobl1.ger.corp.intel.com (HELO [10.252.50.93])
 ([10.252.50.93])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 03:42:43 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20201117113103.21480-1-chris@chris-wilson.co.uk>
 <20201117113103.21480-4-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <11644cd7-35a5-551b-7932-0ad1fc362557@linux.intel.com>
Date: Tue, 17 Nov 2020 11:42:41 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201117113103.21480-4-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 04/28] drm/i915/gt: Ignore dt==0 for
 reporting underflows
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 17/11/2020 11:30, Chris Wilson wrote:
> The presumption was that some time would always elapse between recording
> the start and the finish of a context switch. This turns out to be a
> regular occurrence and emitting a debug statement superfluous.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_lrc.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 8a51c1c3a091..52b84474f93a 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1307,7 +1307,7 @@ static void reset_active(struct i915_request *rq,
>   static void st_update_runtime_underflow(struct intel_context *ce, s32 dt)
>   {
>   #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
> -	ce->runtime.num_underflow += dt < 0;
> +	ce->runtime.num_underflow++;
>   	ce->runtime.max_underflow = max_t(u32, ce->runtime.max_underflow, -dt);
>   #endif
>   }
> @@ -1324,7 +1324,7 @@ static void intel_context_update_runtime(struct intel_context *ce)
>   	ce->runtime.last = intel_context_get_runtime(ce);
>   	dt = ce->runtime.last - old;
>   
> -	if (unlikely(dt <= 0)) {
> +	if (unlikely(dt < 0)) {
>   		CE_TRACE(ce, "runtime underflow: last=%u, new=%u, delta=%d\n",
>   			 old, ce->runtime.last, dt);
>   		st_update_runtime_underflow(ce, dt);
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
