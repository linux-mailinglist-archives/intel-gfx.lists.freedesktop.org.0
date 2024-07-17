Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C375A933F3B
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2024 17:06:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7170210E029;
	Wed, 17 Jul 2024 15:06:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kGx+NCGO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACF7210E029
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2024 15:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721228759; x=1752764759;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=ejIpcsjleqrLMjv6bA93plu1C2l65qkZEspQQLVJClU=;
 b=kGx+NCGOMPYymoJ1Vvd2/IV4NB+Lngw21fJBQeme1YHO5jYP8LHc/vOQ
 IglCoS8eUO8GIbem5bernDDtcQAFu9S7Z/6EXWccykfnOjDRs7wumikFy
 9hlRfnI5hBeMRHsdIsdPC4sX+WiXre1gqZBcau05s3cUQ/ltfabvP/RE1
 TggJEuzNiBKE0ffxgd50v86GW7xeBcxoyapMhZYesG3USc95IhZURhGBu
 NZkgxAK2UnHpvujmUR++yhwX0JVqzaq8qWrNluY/vXP8Ua0446Hop1iKq
 RcRz2i1NbCFrWCfrKFy346906eqpRw7czIEHicXHktgblOvg9RsemAneP w==;
X-CSE-ConnectionGUID: /e1jvqVLQIm/EOozHoCKrg==
X-CSE-MsgGUID: khVNYFrBRSycKUfrZNo49g==
X-IronPort-AV: E=McAfee;i="6700,10204,11136"; a="18926010"
X-IronPort-AV: E=Sophos;i="6.09,215,1716274800"; d="scan'208";a="18926010"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2024 08:05:59 -0700
X-CSE-ConnectionGUID: VckN6/wKTtKHj2OqfzNhCg==
X-CSE-MsgGUID: 4Wl7iNIlQDiYrG5gBTF50w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,215,1716274800"; d="scan'208";a="55567758"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.246.38.191])
 ([10.246.38.191])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2024 08:05:57 -0700
Message-ID: <e113ec37-3d8e-49fc-b55b-525ef481f540@linux.intel.com>
Date: Wed, 17 Jul 2024 17:05:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915: Allow NULL memory region
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: saurabhg.gupta@intel.com, dan.carpenter@linaro.org,
 chris.p.wilson@linux.intel.com, Andi Shyti <andi.shyti@linux.intel.com>
References: <20240712214156.3969584-1-jonathan.cavitt@intel.com>
Content-Language: en-US
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <20240712214156.3969584-1-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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


On 7/12/2024 11:41 PM, Jonathan Cavitt wrote:
> Prevent a NULL pointer access in intel_memory_regions_hw_probe.
>
> Fixes: 05da7d9f717b ("drm/i915/gem: Downgrade stolen lmem setup warning")
> Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> ---
>   drivers/gpu/drm/i915/intel_memory_region.c | 6 ++++--
>   1 file changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
> index 172dfa7c3588b..d40ee1b42110a 100644
> --- a/drivers/gpu/drm/i915/intel_memory_region.c
> +++ b/drivers/gpu/drm/i915/intel_memory_region.c
> @@ -368,8 +368,10 @@ int intel_memory_regions_hw_probe(struct drm_i915_private *i915)
>   			goto out_cleanup;
>   		}
>   
> -		mem->id = i;
> -		i915->mm.regions[i] = mem;

There is a check for mem just before that. You could use 
IS_ERR_OR_NULL(mem) instead of IS_ERR().


Regards,

Nirmoy

> +		if (mem) { /* Skip on non-fatal errors */
> +			mem->id = i;
> +			i915->mm.regions[i] = mem;
> +		}
>   	}
>   
>   	for (i = 0; i < ARRAY_SIZE(i915->mm.regions); i++) {
