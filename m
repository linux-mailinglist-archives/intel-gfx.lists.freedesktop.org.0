Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C5C737D4FA8
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 14:20:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BC8310E361;
	Tue, 24 Oct 2023 12:20:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BE2E10E361
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 12:20:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698150037; x=1729686037;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=lYmBzITJOyBGYtHf4xg0RdGKmfdhdZx0HVURRbjhEvY=;
 b=n5QrTL3uPaLv7EXXPYrIvbgZAtZilXUc8E2Y6tflisGunZZ36TGvo4Vq
 ckXYG9rPybTb6UCZmcQL4FhwyUY14XvP/iah6FwsTrRatNG+ZUvJHaw24
 YP4qKqtFOs8Si1fIrgW7KrviFJBaSeBH45MfdebZnzDFqGE++8uYLRJgP
 PjV4r+Chm32ULkp+cCc9I7yXEm6LuIRpc+Mw/m8W0uy8ZmNzdUdt534sJ
 ngNK1ibD0bt0CmX70eQQB4BQwDsyg1cGRHhpv/USrURdwGeLYM6Nw/Ste
 /UA2LD5+2bza/u54ul2FJWHpGQW/D7FwIUdjDVvp0UOjzwluodbDuVsn0 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="385937538"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="385937538"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 05:20:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; 
   d="scan'208";a="6433810"
Received: from yaminehx-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.33.158])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 05:20:29 -0700
Date: Tue, 24 Oct 2023 14:20:33 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Message-ID: <ZTe2ka9rOHQDxs8t@ashyti-mobl2.lan>
References: <20231020152441.3764850-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231020152441.3764850-1-umesh.nerlige.ramappa@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Umesh,

On Fri, Oct 20, 2023 at 08:24:41AM -0700, Umesh Nerlige Ramappa wrote:
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
> v3: Add fixes tag and cc stable
> 
> Cc: <stable@vger.kernel.org> # v5.11+
> Fixes: b00bccb3f0bb ("drm/i915/pmu: Handle PCI unbind")
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

argh! 4th time that this patch has been sent. Please next time
use:

   git format-patch -v <version number>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

No need to resend :-)

Andi

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
>  
> -- 
> 2.38.1
