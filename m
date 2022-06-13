Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55EF554814C
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jun 2022 10:10:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86B5D10E79F;
	Mon, 13 Jun 2022 08:10:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7066010E79F
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jun 2022 08:10:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655107843; x=1686643843;
 h=message-id:date:mime-version:subject:to:references:cc:
 from:in-reply-to:content-transfer-encoding;
 bh=K2bFZh4JqPAsX5KmREZHAl/RloAF785qNR4SbBD7GVc=;
 b=n+2q9YpF6aWuWFkHhQ9lstrjOm41Ha8hfm/wRGAnH9nbAUAUwJqEzFuG
 J1UDGyH6+T9oodLO+HeQW4D2VQjhXxCq0ourpFbIRs4zVS6DePGvCoAek
 tQV9ewpX8Sc5XJfnNpxaBYEGZswnlIZU8yCYXpGs4kQznGZ1DNjpm/T6q
 I6Z7E5iZI3FTNKDLNjwvcyn0I2ht/h1xcJfK/t0v4YsWISXQ11yZyA457
 z3Z1yMdjzBIJvpPeoIkn+6r6KE+38Yk1227UkXo6HxSnIXfsWnEjwDdT1
 MO6BGfYzrNg0StY8cDmgGZp2TCY8I+pOWID2jciuoxz0nLF+51BfPNKKc g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10376"; a="258647639"
X-IronPort-AV: E=Sophos;i="5.91,296,1647327600"; d="scan'208";a="258647639"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2022 01:10:42 -0700
X-IronPort-AV: E=Sophos;i="5.91,296,1647327600"; d="scan'208";a="651286024"
Received: from npower-mobl.ger.corp.intel.com (HELO [10.213.222.108])
 ([10.213.222.108])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2022 01:10:41 -0700
Message-ID: <e583609b-8ca6-d064-6afd-6d4eaf907e6c@linux.intel.com>
Date: Mon, 13 Jun 2022 09:10:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Alan Previn <alan.previn.teres.alexis@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20220611172711.2154962-1-alan.previn.teres.alexis@intel.com>
 <20220611172711.2154962-2-alan.previn.teres.alexis@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220611172711.2154962-2-alan.previn.teres.alexis@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [Intel-gfx 1/1] drm/i915/guc: Don't update engine
 busyness stats too frequently
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


On 11/06/2022 18:27, Alan Previn wrote:
> Using igt's gem-create and with additional patches to track object
> creation time, it was measured that guc_update_engine_gt_clks was
> getting called over 188 thousand times in the span of 15 seconds
> (running the test three times).
> 
> Get a jiffies sample on every trigger and ensure we skip sampling
> if we are being called too soon. Use half of the ping_delay as a
> safe threshold.
> 
> NOTE: with this change, the number of calls went down to just 14
> over the same span of time (matching the original intent of running
> about once every 24 seconds, at 19.2Mhz GT freq, per engine).

+ Umesh

What is the effect on accuracy? AFAIR up to date clock was needed for 
correct accounting of running contexts.

Regards,

Tvrtko

> 
> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_engine_types.h      | 10 ++++++++++
>   drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c |  9 +++++++++
>   2 files changed, 19 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> index 2286f96f5f87..63f4ecdf1606 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> @@ -323,6 +323,16 @@ struct intel_engine_guc_stats {
>   	 * @start_gt_clk: GT clock time of last idle to active transition.
>   	 */
>   	u64 start_gt_clk;
> +
> +	/**
> +	 * @last_jiffies: Jiffies at last actual stats collection time
> +	 *
> +	 * We use this timestamp to ensure we don't oversample the
> +	 * stats because runtime power management events can trigger
> +	 * stats collection at much higher rates than required.
> +	 */
> +	u64 last_jiffies;
> +
>   };
>   
>   struct intel_engine_cs {
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 5a1dfacf24ea..8f8bf6e40ccb 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -1167,6 +1167,15 @@ static void guc_update_engine_gt_clks(struct intel_engine_cs *engine)
>   	struct intel_engine_guc_stats *stats = &engine->stats.guc;
>   	struct intel_guc *guc = &engine->gt->uc.guc;
>   	u32 last_switch, ctx_id, total;
> +	u64 newjiffs;
> +
> +	/* Don't worry about jiffies wrap-around, a rare additional sample won't have any impact */
> +	newjiffs = get_jiffies_64();
> +	if (stats->last_jiffies && (newjiffs - stats->last_jiffies <
> +	   (guc->timestamp.ping_delay << 1)))
> +		return;
> +
> +	stats->last_jiffies = newjiffs;
>   
>   	lockdep_assert_held(&guc->timestamp.lock);
>   
