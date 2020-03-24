Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C91CA190693
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2020 08:46:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C35789319;
	Tue, 24 Mar 2020 07:46:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3DAF89319
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Mar 2020 07:46:25 +0000 (UTC)
IronPort-SDR: 5HIf8IDzt24fw89dQejsd1TxiocODm8mJx1Z23219o3zru0qd2LtaaywcDwnTW9lsyG/8C57oH
 m/H2C/i2R1NQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2020 00:46:25 -0700
IronPort-SDR: A7x6VkwSj+p5VEtO02CdB34fWS6CfrD8uzNQgli9oT5GOJQd35FdT380KMoAUwifRZSipEoPBP
 ji1RS5Bnt2sw==
X-IronPort-AV: E=Sophos;i="5.72,299,1580803200"; d="scan'208";a="419798189"
Received: from preuss-mobl1.ger.corp.intel.com (HELO [10.252.56.19])
 ([10.252.56.19])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2020 00:46:24 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200323192029.20723-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <76916031-5e6d-9119-fc93-4514190c806f@linux.intel.com>
Date: Tue, 24 Mar 2020 07:46:21 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200323192029.20723-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Only delay the barrier pm
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


On 23/03/2020 19:20, Chris Wilson wrote:
> It is strictly sufficient to only delay the intel_engine_pm_put from the
> context barrier (and not from the context exit) in order to prevent the
> gem_exec_nop contention. Adding the delay to the context exit incurs
> noticably extra penalty for soft-rc6.
> 
> Fixes: edee52c927ef ("drm/i915/gt: Delay release of engine-pm after last retirement")
> Testcase: igt/i915_pm_rc6_residency/rc6-idle
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_context.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
> index 622ff425fce9..e4aece20bc80 100644
> --- a/drivers/gpu/drm/i915/gt/intel_context.c
> +++ b/drivers/gpu/drm/i915/gt/intel_context.c
> @@ -350,7 +350,7 @@ void intel_context_enter_engine(struct intel_context *ce)
>   void intel_context_exit_engine(struct intel_context *ce)
>   {
>   	intel_timeline_exit(ce->timeline);
> -	intel_engine_pm_put_delay(ce->engine, 1);
> +	intel_engine_pm_put(ce->engine);
>   }
>   
>   int intel_context_prepare_remote_request(struct intel_context *ce,
> 

I wanted to ask during review about the effect on soft rc6 but thought 
you looked at it.

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
