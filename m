Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB3F7D4FBC
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 14:29:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0670610E365;
	Tue, 24 Oct 2023 12:29:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7834C10E365
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 12:29:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698150589; x=1729686589;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=zkSR/36h2WtZWvFPddY0WEYZPhvPpZZhzrlTbq8pI4A=;
 b=ZpD1VlKirqny5AHixntuiQR5ZjAZpAo9E2LtcZcZjzNo4N+QMHPSTXg/
 AXcP146pFe/MsXzh7p+p37Vj6XwBBjtkJAYqRJZieqLstOiJ7jTvF4DyE
 AA7o/x2B5QMW0mSFp6qztw/NEcAK6Yk14jGwjAlKiXpQwQJ1coAIztmLS
 y6hVLkuB4f3odphgByeN+y2zH1PjNOFfX5MjOF2PlnCtiGuE77SXuTZsf
 fHEHN8nbayAZzuXH860mDC98s+RSzkTyIGbDsWRZd5fievLpa+QHlxAD/
 Iysfjtr+pZNX33rCOmfZ+UnBpfYKqLLyo8coxMBw9Us+2U+Q2Zd4EyOjL A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="418169736"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="418169736"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 05:29:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="902153212"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="902153212"
Received: from yaminehx-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.33.158])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 05:27:29 -0700
Date: Tue, 24 Oct 2023 14:29:47 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZTe4uzgC7sIPGzwV@ashyti-mobl2.lan>
References: <20231023150256.438331-1-jani.nikula@intel.com>
 <20231023150256.438331-2-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231023150256.438331-2-jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/pmu: add event_to_pmu() helper
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jani,

On Mon, Oct 23, 2023 at 06:02:55PM +0300, Jani Nikula wrote:
> It's tedious to duplicate the container_of() everywhere. Add a helper.
> 
> Also do the logical steps of first getting from struct perf_event to
> struct i915_pmu, and then from struct i915_pmu to struct
> drm_i915_private if needed, instead of perf_event->i915->pmu. Not all
> places even need the i915 pointer.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_pmu.c | 45 +++++++++++++++------------------
>  1 file changed, 20 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
> index dcae2fcd8d36..d45b40ec6d47 100644
> --- a/drivers/gpu/drm/i915/i915_pmu.c
> +++ b/drivers/gpu/drm/i915/i915_pmu.c
> @@ -31,6 +31,11 @@
>  static cpumask_t i915_pmu_cpumask;
>  static unsigned int i915_pmu_target_cpu = -1;
>  
> +static struct i915_pmu *event_to_pmu(struct perf_event *event)

I would call it perfevent (or perf_event), event is too generic.
We have other kind of events, too.

> +{
> +	return container_of(event->pmu, struct i915_pmu, base);
> +}
> +
>  static struct drm_i915_private *pmu_to_i915(struct i915_pmu *pmu)
>  {
>  	return container_of(pmu, struct drm_i915_private, pmu);
> @@ -510,8 +515,8 @@ static enum hrtimer_restart i915_sample(struct hrtimer *hrtimer)
>  
>  static void i915_pmu_event_destroy(struct perf_event *event)
>  {
> -	struct drm_i915_private *i915 =
> -		container_of(event->pmu, typeof(*i915), pmu.base);
> +	struct i915_pmu *pmu = event_to_pmu(event);
> +	struct drm_i915_private *i915 = pmu_to_i915(pmu);

perf_event_to_i915() ?

Andi
