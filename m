Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 719D71EA3C8
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jun 2020 14:22:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D48F6E1BD;
	Mon,  1 Jun 2020 12:22:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E2806E1BD
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jun 2020 12:22:43 +0000 (UTC)
IronPort-SDR: ElRKMBIysK57MQMupgyXQ/lSLv1pg8g/eYue5ceH9oRkfKzox7S8B1y3ZDXnlKe9u/uGUX5jWb
 IzWxzyVg7prA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2020 05:22:42 -0700
IronPort-SDR: uwnGpBH537zLiK+fyj6TXHFlQ78T7xyNxMiRWZo/0pC14wFxdGJoBm/bEmtK7Zo25aXoo05bH/
 /8MQyWdh4zvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,460,1583222400"; d="scan'208";a="470304890"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga005.fm.intel.com with ESMTP; 01 Jun 2020 05:22:40 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 916F55C2C42; Mon,  1 Jun 2020 15:20:14 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200601072446.19548-13-chris@chris-wilson.co.uk>
References: <20200601072446.19548-1-chris@chris-wilson.co.uk>
 <20200601072446.19548-13-chris@chris-wilson.co.uk>
Date: Mon, 01 Jun 2020 15:20:14 +0300
Message-ID: <87ftbfhta9.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 13/36] drm/i915: Relinquish forcewake
 immediately after manual grouping
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Our forcewake utilisation is split into categories: automatic and
> manual. Around bare register reads, we look up the right forcewake
> domain and automatically acquire and release [upon a timer] the
> forcewake domain. For other access, where we know we require the
> forcewake across a group of register reads, we manually acquire the
> forcewake domain and release it at the end. Again, this currently arms
> the domain timer for a later release.
>
> However, looking at some energy utilisation profiles, we have tried to
> avoid using forcewake [and rely on the natural wake up to post register
> updates] due to that even keep the fw active for a brief period
> contributes to a significant power draw [i.e. when the gpu is sleeping
> with rc6 at high clocks]. But as it turns out, not posting the writes
> immediately also has unintended consequences, such as not reducing the
> clocks and so conserving power while busy.
>
> As a compromise, let us only arm the domain timer for automatic
> forcewake usage around bare register access, but immediately release the
> forcewake when manually acquired by intel_uncore_forcewake_get/_put.
>
> The corollary to this is that we may instead have to take forcewake more
> often, and so incur a latency penalty in doing so. For Sandybridge this
> was significant, and even on the latest machines, taking forcewake at
> interrupt frequency is a huge impact. [So we don't do that anymore!
> Hopefully, this will spare us from still needing the mitigation of the
> timer for steady state execution.]
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>

I am not a fan of having explicit put relying on timer,
Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/intel_uncore.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
> index a61cb8ca4d50..7d6b9ae7403c 100644
> --- a/drivers/gpu/drm/i915/intel_uncore.c
> +++ b/drivers/gpu/drm/i915/intel_uncore.c
> @@ -709,7 +709,7 @@ static void __intel_uncore_forcewake_put(struct intel_uncore *uncore,
>  			continue;
>  		}
>  
> -		fw_domain_arm_timer(domain);
> +		uncore->funcs.force_wake_put(uncore, domain->mask);
>  	}
>  }
>  
> -- 
> 2.20.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
