Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 515AB7D3A75
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Oct 2023 17:13:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1630910E08F;
	Mon, 23 Oct 2023 15:13:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DAB110E08F
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Oct 2023 15:13:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698074031; x=1729610031;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=63CueaqUO5cqIZhH66/iqzX4PbCKhbLYlpmGIqW2qkU=;
 b=UiDAULpoV+rfK6ogNNvvAVZqs3dzMCSAeECiVIfFlH7mLuA/zP6pym0k
 m9IzXaFjMlQBYvBKmASvYmEPPNLplC7vHKQPhLIFXLTYa8Rvs0t1LdtDJ
 zIGwqKcLjnRf8o3id05KtkD2CuHpChLIrIaQOL76GwEQW9jRstZwzlgcN
 RAVFkdgfWro6K3cIwomz3xUuPNhYau/DBmJZhts5zKmSVfM1shmHIG/H2
 +VAVNtWr3t0CF1H0o2CJRBBwr6U46sQ49ewHZ0TPCjdGbwfPuxcI2oZxV
 w1mexKy2Atlh+nnxyBXJE7z2Qbvr8WGMyngXpTuFpHhMl1lR9ZU98W1h0 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="384061470"
X-IronPort-AV: E=Sophos;i="6.03,244,1694761200"; d="scan'208";a="384061470"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 08:13:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,244,1694761200"; 
   d="scan'208";a="6113502"
Received: from evlad-mobl.ger.corp.intel.com (HELO localhost) ([10.252.47.180])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 08:13:44 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231019182720.3742536-1-umesh.nerlige.ramappa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231019182720.3742536-1-umesh.nerlige.ramappa@intel.com>
Date: Mon, 23 Oct 2023 18:13:46 +0300
Message-ID: <87bkcpbcd1.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pmu: Check is pmu is closed before
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

On Thu, 19 Oct 2023, Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com> wrote:
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
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_pmu.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
> index 108b675088ba..f861863eb7c1 100644
> --- a/drivers/gpu/drm/i915/i915_pmu.c
> +++ b/drivers/gpu/drm/i915/i915_pmu.c
> @@ -831,9 +831,18 @@ static void i915_pmu_event_start(struct perf_event *event, int flags)
>  
>  static void i915_pmu_event_stop(struct perf_event *event, int flags)
>  {
> +	struct drm_i915_private *i915 =
> +		container_of(event->pmu, typeof(*i915), pmu.base);
> +	struct i915_pmu *pmu = &i915->pmu;

This inspired me to write [1]. Please review.

BR,
Jani.

[1] https://patchwork.freedesktop.org/series/125464/


> +
> +	if (pmu->closed)
> +		goto out;
> +
>  	if (flags & PERF_EF_UPDATE)
>  		i915_pmu_event_read(event);
>  	i915_pmu_disable(event);
> +
> +out:
>  	event->hw.state = PERF_HES_STOPPED;
>  }

-- 
Jani Nikula, Intel
