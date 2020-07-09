Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 787E321A931
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 22:40:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D64F16EB2F;
	Thu,  9 Jul 2020 20:40:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6E8B6EB2F
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jul 2020 20:40:54 +0000 (UTC)
IronPort-SDR: 1taFwWILUeb0JsGlqpYCjEOI7zlIioCuD3dVwJT0XX/HgVwmBwnnXFEYAc7WNFU5sycpqv5K7o
 LfTf+F8y2/gg==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="136311840"
X-IronPort-AV: E=Sophos;i="5.75,332,1589266800"; d="scan'208";a="136311840"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 13:40:54 -0700
IronPort-SDR: db+4ov/U5/GEbH9FhRuYAOV15LglLhPkQMWLOt9wtOnZg8jGUWpPkNegXit6dgljTxY+Ob0hA6
 bEmj2hbKKdRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,332,1589266800"; d="scan'208";a="298200745"
Received: from samraoui-mobl.ger.corp.intel.com (HELO [10.249.47.244])
 ([10.249.47.244])
 by orsmga002.jf.intel.com with ESMTP; 09 Jul 2020 13:40:53 -0700
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200709195837.4285-1-umesh.nerlige.ramappa@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <99a68e1a-4008-8a06-a24b-6cfae38a3fe0@intel.com>
Date: Thu, 9 Jul 2020 23:40:50 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200709195837.4285-1-umesh.nerlige.ramappa@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/perf: Use GTT when
 saving/restoring engine GPR
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

On 09/07/2020 22:58, Umesh Nerlige Ramappa wrote:
> MI_STORE_REGISTER_MEM and MI_LOAD_REGISTER_MEM need to know which
> translation to use when saving restoring the engine general purpose
> registers to and from the GT scratch. Since GT scratch is mapped to
> ggtt, we need to set an additional bit in the command to use GTT.
>
> Fixes: daed3e44396d17 ("drm/i915/perf: implement active wait for noa configurations")
> Suggested-by: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Reviewed-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>


Thanks a lot!

> ---
>   drivers/gpu/drm/i915/i915_perf.c | 1 +
>   1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index de69d430b1ed..c6f6370283cf 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -1592,6 +1592,7 @@ static u32 *save_restore_register(struct i915_perf_stream *stream, u32 *cs,
>   	u32 d;
>   
>   	cmd = save ? MI_STORE_REGISTER_MEM : MI_LOAD_REGISTER_MEM;
> +	cmd |= MI_SRM_LRM_GLOBAL_GTT;
>   	if (INTEL_GEN(stream->perf->i915) >= 8)
>   		cmd++;
>   


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
