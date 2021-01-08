Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CFC42EF5E8
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jan 2021 17:41:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6C5389487;
	Fri,  8 Jan 2021 16:41:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86B2789487
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jan 2021 16:40:59 +0000 (UTC)
IronPort-SDR: VhuaW+SYAR+nLJI+qU/YT4v+U+Z8yVyxJ+SF/3gn2Cu64Vu+j9+2sKdL4SR0htFoc28DPJJZSX
 K8G/UBhGg/Mw==
X-IronPort-AV: E=McAfee;i="6000,8403,9857"; a="175041414"
X-IronPort-AV: E=Sophos;i="5.79,331,1602572400"; d="scan'208";a="175041414"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 08:40:58 -0800
IronPort-SDR: LlaTGbi0xC6RzLfQMyDGb8+AIYtnno1RVoYXT72xCjrq8lbnoXvCmxSifa8RI13g/7DwTwf4Ju
 qYcG2Z6E9VrQ==
X-IronPort-AV: E=Sophos;i="5.79,331,1602572400"; d="scan'208";a="422997129"
Received: from rgwhiteh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.213.205.160])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 08:40:56 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: imre.deak@intel.com
In-Reply-To: <20210108143351.GA233313@ideak-desk.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210107112500.16216-1-anshuman.gupta@intel.com>
 <87ft3bzs3n.fsf@intel.com> <20210108143351.GA233313@ideak-desk.fi.intel.com>
Date: Fri, 08 Jan 2021 18:40:53 +0200
Message-ID: <87o8hzxtyi.fsf@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 08 Jan 2021, Imre Deak <imre.deak@intel.com> wrote:
> On Fri, Jan 08, 2021 at 11:38:04AM +0200, Jani Nikula wrote:
>> On Thu, 07 Jan 2021, Anshuman Gupta <anshuman.gupta@intel.com> wrote:
>> > We need a power_domain wakeref in pps_{lock,unlock} to prevent
>> > a race while resetting pps state in intel_power_sequencer_reset().
>> >
>> > intel_power_sequencer_reset() need a pps_mutex to access pps_pipe
>> > but it can't grab pps_mutex due to deadlock with power_well
>> > functions are called while holding pps_mutex.
>> > intel_power_sequencer_reset() is called by power_well function
>> > associated with legacy platforms like vlv and chv therefore re-use
>> > the POWER_DOMAIN_DISPLAY_CORE power domain, which only used
>> > by vlv and chv display power domain.
>> >
>> > This will avoids the unnecessary noise of unrelated power wells
>> > in pps_{lock,unlock}.
>> >
>> > Cc: Jani Nikula <jani.nikula@intel.com>
>> > Cc: Imre Deak <imre.deak@intel.com>
>> > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
>> 
>> Imre convinced me yesterday on irc that this should work.
>> 
>> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
>> 
>> On the surface, this reduces the need to enable/disable the aux power so
>> much. It's unnecessary, so it stands to reason to optimize it. We should
>> only grab the domain references we actually need.
>> 
>> However, this *also* papers over an issue we've been seeing [1]. We need
>> to be aware the root cause for that remains unknown, and needs to be
>> figured out.
>> 
>> I presume simply doing aux transfers won't reproduce the problem,
>> because that disables the power asynchronously since commit f39194a7a8b9
>> ("drm/i915: Disable power asynchronously during DP AUX
>> transfers"). Perhaps we wouldn't have seen this at all if pps_unlock()
>> also did that as suggested in the commit message.
>> 
>> Anyway, I'd like to get acks or rb's from Imre and Ville before merging
>> this.
>
> Looks ok to me:
> Acked-by: Imre Deak <imre.deak@intel.com>

Thanks, pushed to din.

BR,
Jani.


>
>> 
>> 
>> BR,
>> Jani.
>> 
>> 
>> [1] http://lore.kernel.org/r/20201204081845.26528-1-anshuman.gupta@intel.com
>> 
>> 
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_dp.c | 8 ++------
>> >  1 file changed, 2 insertions(+), 6 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> > index 8a00e609085f..4f190a82d4ad 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> > @@ -895,9 +895,7 @@ pps_lock(struct intel_dp *intel_dp)
>> >  	 * See intel_power_sequencer_reset() why we need
>> >  	 * a power domain reference here.
>> >  	 */
>> > -	wakeref = intel_display_power_get(dev_priv,
>> > -					  intel_aux_power_domain(dp_to_dig_port(intel_dp)));
>> > -
>> > +	wakeref = intel_display_power_get(dev_priv, POWER_DOMAIN_DISPLAY_CORE);
>> >  	mutex_lock(&dev_priv->pps_mutex);
>> >  
>> >  	return wakeref;
>> > @@ -909,9 +907,7 @@ pps_unlock(struct intel_dp *intel_dp, intel_wakeref_t wakeref)
>> >  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>> >  
>> >  	mutex_unlock(&dev_priv->pps_mutex);
>> > -	intel_display_power_put(dev_priv,
>> > -				intel_aux_power_domain(dp_to_dig_port(intel_dp)),
>> > -				wakeref);
>> > +	intel_display_power_put(dev_priv, POWER_DOMAIN_DISPLAY_CORE, wakeref);
>> >  	return 0;
>> >  }
>> 
>> -- 
>> Jani Nikula, Intel Open Source Graphics Center
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
