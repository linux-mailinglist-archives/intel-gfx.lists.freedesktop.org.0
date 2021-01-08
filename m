Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 830162EEFC2
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jan 2021 10:38:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C626E6E7FA;
	Fri,  8 Jan 2021 09:38:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B524A6E7E6
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jan 2021 09:38:09 +0000 (UTC)
IronPort-SDR: U/YxqgK0sbn5L0i0Fx+fyLmLmaP6JIm84B4BMEHvm4IAqcuKtOgcUvVyejgw1csbjEciHyZ3hX
 md+M6D8FtZkg==
X-IronPort-AV: E=McAfee;i="6000,8403,9857"; a="157349472"
X-IronPort-AV: E=Sophos;i="5.79,330,1602572400"; d="scan'208";a="157349472"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 01:38:09 -0800
IronPort-SDR: OHefx7g83tF03FB6xl4pZyh//kkBsh/IlbhWYxVkAYFiLcdn7IkKQAdXs96DJzcYCRGRdO8qpH
 rST2oJlbfK5g==
X-IronPort-AV: E=Sophos;i="5.79,330,1602572400"; d="scan'208";a="351627326"
Received: from rgwhiteh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.213.205.160])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 01:38:07 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20210107112500.16216-1-anshuman.gupta@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210107112500.16216-1-anshuman.gupta@intel.com>
Date: Fri, 08 Jan 2021 11:38:04 +0200
Message-ID: <87ft3bzs3n.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pps: Reuse
 POWER_DOMAIN_DISPLAY_CORE in pps_{lock, unlock}
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 07 Jan 2021, Anshuman Gupta <anshuman.gupta@intel.com> wrote:
> We need a power_domain wakeref in pps_{lock,unlock} to prevent
> a race while resetting pps state in intel_power_sequencer_reset().
>
> intel_power_sequencer_reset() need a pps_mutex to access pps_pipe
> but it can't grab pps_mutex due to deadlock with power_well
> functions are called while holding pps_mutex.
> intel_power_sequencer_reset() is called by power_well function
> associated with legacy platforms like vlv and chv therefore re-use
> the POWER_DOMAIN_DISPLAY_CORE power domain, which only used
> by vlv and chv display power domain.
>
> This will avoids the unnecessary noise of unrelated power wells
> in pps_{lock,unlock}.
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>

Imre convinced me yesterday on irc that this should work.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

On the surface, this reduces the need to enable/disable the aux power so
much. It's unnecessary, so it stands to reason to optimize it. We should
only grab the domain references we actually need.

However, this *also* papers over an issue we've been seeing [1]. We need
to be aware the root cause for that remains unknown, and needs to be
figured out.

I presume simply doing aux transfers won't reproduce the problem,
because that disables the power asynchronously since commit f39194a7a8b9
("drm/i915: Disable power asynchronously during DP AUX
transfers"). Perhaps we wouldn't have seen this at all if pps_unlock()
also did that as suggested in the commit message.

Anyway, I'd like to get acks or rb's from Imre and Ville before merging
this.


BR,
Jani.


[1] http://lore.kernel.org/r/20201204081845.26528-1-anshuman.gupta@intel.com


> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 8a00e609085f..4f190a82d4ad 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -895,9 +895,7 @@ pps_lock(struct intel_dp *intel_dp)
>  	 * See intel_power_sequencer_reset() why we need
>  	 * a power domain reference here.
>  	 */
> -	wakeref = intel_display_power_get(dev_priv,
> -					  intel_aux_power_domain(dp_to_dig_port(intel_dp)));
> -
> +	wakeref = intel_display_power_get(dev_priv, POWER_DOMAIN_DISPLAY_CORE);
>  	mutex_lock(&dev_priv->pps_mutex);
>  
>  	return wakeref;
> @@ -909,9 +907,7 @@ pps_unlock(struct intel_dp *intel_dp, intel_wakeref_t wakeref)
>  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>  
>  	mutex_unlock(&dev_priv->pps_mutex);
> -	intel_display_power_put(dev_priv,
> -				intel_aux_power_domain(dp_to_dig_port(intel_dp)),
> -				wakeref);
> +	intel_display_power_put(dev_priv, POWER_DOMAIN_DISPLAY_CORE, wakeref);
>  	return 0;
>  }

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
