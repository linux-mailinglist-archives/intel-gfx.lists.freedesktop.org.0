Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BD5E5B1CD0
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Sep 2022 14:24:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 437BA10EAAF;
	Thu,  8 Sep 2022 12:23:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A0AF10EAAF
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Sep 2022 12:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662639833; x=1694175833;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=pmFTTaFTqw5QMJknVKLZsfjLAaosrnLq4Rn67B1g1E0=;
 b=gA/DjbLKYA3kxAqhEv5buIS0UOOZbqmxIVAi94cUmKzyw1xdJi8bRnPi
 76vBr/pum9Wmmz2fSCzwCp5D1mSLK/xEtvMfswRXISkmkp28AqM6A1e3N
 aj2qZVHfDs7FrRgchBNAmGF1Rpo6S8nULK5s/ygmJNimXSN0xDL9G0Ume
 XjARMVNSqOS3bgJIcgXsAFpU648IzJ+GwH29Dq1ECH7HUWJRiC5VjFn8M
 dUZ1BmB4zw/5tHXaUfMXCuUjzpvEm0QWrAzUqZK50S/6jishYnMM/vnGy
 RalCP+KgPDv8+H3WFmbp8uDHM8uGfuHjoypZm7Nk3oxyV5L55lOqZkGhK A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10463"; a="297955914"
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="297955914"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 05:23:52 -0700
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="645061631"
Received: from jdemps5x-mobl.ger.corp.intel.com (HELO [10.213.237.77])
 ([10.213.237.77])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 05:23:52 -0700
Message-ID: <c21535d3-8f71-b385-4ef6-1b10a783c347@linux.intel.com>
Date: Thu, 8 Sep 2022 13:23:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20220906174609.23494-1-ville.syrjala@linux.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220906174609.23494-1-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Kick rcu harder to free objects
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


On 06/09/2022 18:46, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> On gen3 the selftests are pretty much always tripping this:
> <4> [383.822424] pci 0000:00:02.0: drm_WARN_ON(dev_priv->mm.shrink_count)
> <4> [383.822546] WARNING: CPU: 2 PID: 3560 at drivers/gpu/drm/i915/i915_gem.c:1223 i915_gem_cleanup_early+0x96/0xb0 [i915]
> 
> Looks to be due to the status page object lingering on the
> purge_list. Call synchronize_rcu() ahead of it to make more
> sure all objects have been freed.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/i915_gem.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
> index 0f49ec9d494a..5b61f7ad6473 100644
> --- a/drivers/gpu/drm/i915/i915_gem.c
> +++ b/drivers/gpu/drm/i915/i915_gem.c
> @@ -1098,6 +1098,7 @@ void i915_gem_drain_freed_objects(struct drm_i915_private *i915)
>   		flush_delayed_work(&i915->bdev.wq);
>   		rcu_barrier();
>   	}
> +	synchronize_rcu();

Looks a bit suspicious that a loop would not free all but one last rcu 
grace would. Definitely fixes the issue in your testing?

Perhaps the fact there is a cond_resched in __i915_gem_free_objects, but 
then again free count should reflect the state and keep it looping in here..

Regards,

Tvrtko
