Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71B8082483A
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 19:32:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 029D010E39D;
	Thu,  4 Jan 2024 18:32:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA3D410E39D
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jan 2024 18:32:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704393168; x=1735929168;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=rF1rg4JA1iS2KM0acdEmRfadWOKJYuqvsA3vErYhZSw=;
 b=HjK5jpRXdwX/xmggk0GPz4yrHj//Ka5soo/9wrT/sZDgGLaJ+0UaQK0q
 QDKHdJtG7yoN7JujQVDu7J8jgzNyKVBtuqhbbiOzik1Ai+WLN2+UAV8fz
 8u+Heq1mXrWfNNSv5rmHpBXJcKEyub0z0h140zw52yDPO3OLqSEdOQ/+Y
 29MuRJmggE0roavNDInkMJ885sPtAyUkSNk7bnh0wnkS1Yowunafp4Qzz
 +m45sAzsMqc9WfhkBPYjxzyDw8yJQDxCsZX2AMJdqMRpa43X4ezJE/lTW
 eKWCGvx5PlNze/fVCKP7aNC4seVcc5JtbSHs9OjXsKMaafxcOoRHQ4d8i Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="4144150"
X-IronPort-AV: E=Sophos;i="6.04,331,1695711600"; 
   d="scan'208";a="4144150"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 10:32:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="809329489"
X-IronPort-AV: E=Sophos;i="6.04,331,1695711600"; d="scan'208";a="809329489"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.16.69])
 ([10.213.16.69])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 10:32:45 -0800
Message-ID: <30c57098-a259-4982-8be3-2c3a20be953e@intel.com>
Date: Thu, 4 Jan 2024 19:32:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915: don't make assumptions about intel_wakeref_t
 type
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <20240104164600.783371-1-jani.nikula@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20240104164600.783371-1-jani.nikula@intel.com>
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 04.01.2024 17:46, Jani Nikula wrote:
> intel_wakeref_t is supposed to be a mostly opaque cookie to its
> users. It should only be checked for being non-zero and set to
> zero. Debug logging its actual value is meaningless. Switch to just
> debug logging whether the async_put_wakeref is non-zero.
>
> The issue dates back to much earlier than
> commit b49e894c3fd8 ("drm/i915: Replace custom intel runtime_pm tracker
> with ref_tracker library"), but this is the one that brought about a
> build failure due to the printf format.
>
> Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
> Closes: https://lore.kernel.org/r/20240102111222.2db11208@canb.auug.org.au
> Fixes: b49e894c3fd8 ("drm/i915: Replace custom intel runtime_pm tracker with ref_tracker library")
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej

> ---
>   drivers/gpu/drm/i915/display/intel_display_power.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 5f091502719b..6fd4fa52253a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -405,8 +405,8 @@ print_async_put_domains_state(struct i915_power_domains *power_domains)
>   						     struct drm_i915_private,
>   						     display.power.domains);
>   
> -	drm_dbg(&i915->drm, "async_put_wakeref %lu\n",
> -		power_domains->async_put_wakeref);
> +	drm_dbg(&i915->drm, "async_put_wakeref: %s\n",
> +		str_yes_no(power_domains->async_put_wakeref));
>   
>   	print_power_domains(power_domains, "async_put_domains[0]",
>   			    &power_domains->async_put_domains[0]);

