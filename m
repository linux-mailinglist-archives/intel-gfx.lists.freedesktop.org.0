Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A09841837F3
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 18:47:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 833466E250;
	Thu, 12 Mar 2020 17:47:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03C8C6E250
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Mar 2020 17:47:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Mar 2020 10:47:01 -0700
X-IronPort-AV: E=Sophos;i="5.70,545,1574150400"; d="scan'208";a="246448392"
Received: from pkosiack-mobl2.ger.corp.intel.com (HELO [10.252.21.27])
 ([10.252.21.27])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 12 Mar 2020 10:47:00 -0700
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200306100557.2077450-1-lionel.g.landwerlin@intel.com>
 <20200306100557.2077450-2-lionel.g.landwerlin@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <45535944-c1f0-3967-b2f1-e21ba0545bee@linux.intel.com>
Date: Thu, 12 Mar 2020 17:46:57 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200306100557.2077450-2-lionel.g.landwerlin@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v4 2/3] drm/i915/perf: remove redundant
 power configuration register override
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


On 06/03/2020 10:05, Lionel Landwerlin wrote:
> The caller of i915_oa_init_reg_state() already sets this.
> 
> Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_perf.c | 7 -------
>   1 file changed, 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index 0069f09b988c..86c6abaa3e0e 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -2098,9 +2098,6 @@ gen8_update_reg_state_unlocked(const struct intel_context *ce,
>   	for (i = 0; i < ARRAY_SIZE(flex_regs); i++)
>   		reg_state[ctx_flexeu0 + i * 2 + 1] =
>   			oa_config_flex_reg(stream->oa_config, flex_regs[i]);
> -
> -	reg_state[CTX_R_PWR_CLK_STATE] =
> -		intel_sseu_make_rpcs(ce->engine->i915, &ce->sseu);
>   }
>   
>   struct flex {
> @@ -2906,10 +2903,6 @@ void i915_oa_init_reg_state(const struct intel_context *ce,
>   
>   	/* perf.exclusive_stream serialised by lrc_configure_all_contexts() */
>   	stream = READ_ONCE(engine->i915->perf.exclusive_stream);
> -	/*
> -	 * For gen12, only CTX_R_PWR_CLK_STATE needs update, but the caller
> -	 * is already doing that, so nothing to be done for gen12 here.
> -	 */
>   	if (stream && INTEL_GEN(stream->perf->i915) < 12)
>   		gen8_update_reg_state_unlocked(ce, stream);
>   }
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
