Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D73B67AB0F
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jan 2023 08:39:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CAD810E73A;
	Wed, 25 Jan 2023 07:39:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9111010E044
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Jan 2023 07:39:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674632391; x=1706168391;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=tXxKahf8sM6Jxqo0d4F0bXh9RHV6ct3cmuqtTDSJnNg=;
 b=C+9mFRvzXuAdoGZ90pdqI5syFydiM+vjpsoblZZskJUKm7L/cvO5yMWD
 EgAKCnhpKN8LwYeCU7ukMuO6lVMxFSHXGWBQO/8ITqfMaA7FHkvTVMFqt
 ma2PhDILWaYMFOOp4TMNzYP/AdaY2BY8ssShua/CRMXBjmGm3KaORNkUA
 Srr1u7iSCBhXl/i+9SokOQqLqSNKGiPs/c/32wngEXT15MnW7muS8W6ja
 v+RvraceZuBsYcNpKc6ilFM5E+kvTE3ukkj9ZdpypdSD06v8Ypsfbzhnn
 aW9E7PmKMuSj4w4KpGndxPpy96rkFryK4+XMFzum3jbRn6YZYX2X+6D9Z g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="412733134"
X-IronPort-AV: E=Sophos;i="5.97,244,1669104000"; d="scan'208";a="412733134"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 23:39:50 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="662414977"
X-IronPort-AV: E=Sophos;i="5.97,244,1669104000"; d="scan'208";a="662414977"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.31.78])
 ([10.213.31.78])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 23:39:49 -0800
Message-ID: <d8b864e7-4ef3-5735-5ec7-9c85fb0140f4@intel.com>
Date: Wed, 25 Jan 2023 08:39:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.6.1
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20230124231111.1786429-1-umesh.nerlige.ramappa@intel.com>
Content-Language: en-US
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20230124231111.1786429-1-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Wa_22011802037: don't
 complain about missing regs on MTL
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 25.01.2023 00:11, Umesh Nerlige Ramappa wrote:
> From: John Harrison <John.C.Harrison@Intel.com>
> 
> Wa_22011802037 requires waiting for an engine-specific register to
> clear. A missing entry for GSC engine in the register table is flagged
> as a drm_err. The drm_err was originally intended to catch missing
> register entries for newer engines, however, it was later found that the
> WA is only required for 'legacy' engines. So just drop the drm_err.
> 
> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_engine_cs.c | 5 +----
>   1 file changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index 922f1bb22dc6..f99bcc2113cb 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -1584,11 +1584,8 @@ static u32 __cs_pending_mi_force_wakes(struct intel_engine_cs *engine)
>   	};
>   	u32 val;
>   
> -	if (!_reg[engine->id].reg) {
> -		drm_err(&engine->i915->drm,
> -			"MSG IDLE undefined for engine id %u\n", engine->id);
> +	if (!_reg[engine->id].reg)
>   		return 0;
> -	}

While at it you can convert to i915_mmio_reg_valid.
With or without this:
Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej

>   
>   	val = intel_uncore_read(engine->uncore, _reg[engine->id]);
>   

