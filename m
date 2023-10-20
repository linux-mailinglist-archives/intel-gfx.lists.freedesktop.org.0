Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D9A77D0A2F
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Oct 2023 10:03:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A74510E58D;
	Fri, 20 Oct 2023 08:03:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4846810E58D
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Oct 2023 08:03:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697789010; x=1729325010;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=9kPE9TWMyjwn//mJREi1LgsN4JEdEcRc9lh4fUPWOxo=;
 b=IoERv7+6f2X6Dv0Yp8Nx2/mgNjRKiHM/zzjsyZJ6tSgi2W2tG4SZDosK
 faXJSxKh0h9SOWLFHdhUJCOoKTXsNzvcuVcD+cKX1uw/6ANfTNSIETSRc
 Xkbp+2rNSj6EI6PXVOEYLCOKUJsu2++5W8JWlhUVK5Dtuuzk1XVktjzlB
 ZzfUv3G7zUiPyChzaoE7MrZcm986lN4cuECVifpV/cGDBGszj7DB27nLa
 VNk4r5QIzKSsUUm1pICWHTg0VsuxNwianF8BvFcdlM7+y7SOaEAjMmSoR
 6UjMfXCH9dApgSMSur7pbD2xQiFnesS7sjQEVSwge43HiafUsJK08e5mY A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10868"; a="8017225"
X-IronPort-AV: E=Sophos;i="6.03,238,1694761200"; 
   d="scan'208";a="8017225"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2023 01:03:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,238,1694761200"; 
   d="scan'208";a="5308438"
Received: from boylanda-mobl1.ger.corp.intel.com (HELO [10.213.227.183])
 ([10.213.227.183])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2023 01:03:29 -0700
Message-ID: <f343cec5-ea3f-bd01-de4a-34c38ad4acce@linux.intel.com>
Date: Fri, 20 Oct 2023 09:03:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20231019182836.3761023-1-umesh.nerlige.ramappa@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20231019182836.3761023-1-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pmu: Check if pmu is closed before
 stopping event
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


On 19/10/2023 19:28, Umesh Nerlige Ramappa wrote:
> When the driver unbinds, pmu is unregistered and i915->uabi_engines is
> set to RB_ROOT. Due to this, when i915 PMU tries to stop the engine
> events, it issues a warn_on because engine lookup fails.
> 
> All perf hooks are taking care of this using a pmu->closed flag that is
> set when PMU unregisters. The stop event seems to have been left out.
> 
> Check for pmu->closed in pmu_event_stop as well.
> 
> Based on discussion here -
> https://patchwork.freedesktop.org/patch/492079/?series=105790&rev=2
> 
> v2: s/is/if/ in commit title
> 
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Fixes: b00bccb3f0bb ("drm/i915/pmu: Handle PCI unbind")
Cc: <stable@vger.kernel.org> # v5.11+

> ---
>   drivers/gpu/drm/i915/i915_pmu.c | 9 +++++++++
>   1 file changed, 9 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
> index 108b675088ba..f861863eb7c1 100644
> --- a/drivers/gpu/drm/i915/i915_pmu.c
> +++ b/drivers/gpu/drm/i915/i915_pmu.c
> @@ -831,9 +831,18 @@ static void i915_pmu_event_start(struct perf_event *event, int flags)
>   
>   static void i915_pmu_event_stop(struct perf_event *event, int flags)
>   {
> +	struct drm_i915_private *i915 =
> +		container_of(event->pmu, typeof(*i915), pmu.base);
> +	struct i915_pmu *pmu = &i915->pmu;
> +
> +	if (pmu->closed)
> +		goto out;
> +
>   	if (flags & PERF_EF_UPDATE)
>   		i915_pmu_event_read(event);
>   	i915_pmu_disable(event);
> +
> +out:
>   	event->hw.state = PERF_HES_STOPPED;
>   }
>   

You reminded me of this yesterday and it looks fine to me. Thanks for 
sending the fix!

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
