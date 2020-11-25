Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10BC42C3A6C
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Nov 2020 09:00:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50B596E837;
	Wed, 25 Nov 2020 08:00:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6A4B6E837
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Nov 2020 08:00:17 +0000 (UTC)
IronPort-SDR: zryXT+ggJmuFiajRyhtmlj+9XCTWEXb+1Cg8r7DsMItwP+FNunu2hT0UeTOpGHU3MKUCYmNy3u
 kZX7CgqiNL+w==
X-IronPort-AV: E=McAfee;i="6000,8403,9815"; a="256794729"
X-IronPort-AV: E=Sophos;i="5.78,368,1599548400"; d="scan'208";a="256794729"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 00:00:16 -0800
IronPort-SDR: sZoZqQ2kzwMb3WHW9WbXPyxcbz8UK/zwkeVC+8em8klnT7Vvna6TJRcuhI4PhPirLGfdtQNGoW
 5oZPMog2Vqig==
X-IronPort-AV: E=Sophos;i="5.78,368,1599548400"; d="scan'208";a="370744758"
Received: from genxfsim-desktop.iind.intel.com (HELO intel.com)
 ([10.223.74.178])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 00:00:13 -0800
Date: Wed, 25 Nov 2020 13:16:27 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <20201125074624.GJ13853@intel.com>
References: <20201124095847.14098-1-anshuman.gupta@intel.com>
 <20201124164406.GG1750458@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201124164406.GG1750458@ideak-desk.fi.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [RFC] drm/i915/dp: PPS registers doesn't require
 AUX power
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2020-11-24 at 18:44:06 +0200, Imre Deak wrote:
> On Tue, Nov 24, 2020 at 03:28:47PM +0530, Anshuman Gupta wrote:
> > Platforms with South Display Engine on PCH, doesn't
> > require to get/put the AUX power domain in order to
> > access PPS register because PPS registers are always on
> > with South display on PCH.
> > 
> > Cc: Imre Deak <imre.deak@intel.com>
> > Cc: <stable@vger.kernel.org>
> > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> 
> Could you describe the issue the patch is fixing?
This fixes the display glitches causes by race between brightness update thread 
and flip thread.
while brightness is being updated it reads pp_ctrl reg to check whether backlight
is enabled and get/put the AUX power domain, this enables and disable DC Off 
power well(DC3CO) back and forth.
IMO there are two work item for above race needed to be addressed.
1. Don't get AUX power for PPS register access (this patch addressed this).
2. skl_program_plane() should wait for DC3CO exit delay to avoid any race with
   DC3CO disable sequence. (WIP)      
> 
> For accessing PPS registers the AUX power well may not be needed, but
> I'm not sure if this also applies to PPS functionality in general. For
> instance forcing VDD is required for AUX functionality.
AFAIU edp_panel_vdd_on explicitly get AUX power in order to force the VDD.
> 
> In any case we do need a power reference for any register access, so I
> don't think not getting any power reference for PPS is ok.
IMO if PPS register lies in PCH(South Display), it is not correct to take
any power domain which are associated with north display power wells.

This patch is inspired from the comment in pps_lock, quoting that
"See intel_power_sequencer_reset() why we need a power domain reference here."

intel_power_sequencer_reset is not being called for platforms with split PCH,
stating that PPS registers are always on.
https://patchwork.freedesktop.org/patch/259077/ ((v4: (James Ausmus)))

Could you please provide your opinion to use intel_runtime_pm_get()
before accessing PPS register in order to get a wakeref.

Thanks,
Anshuman Gupta.
> 
> --Imre
> 
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 13 ++++++++-----
> >  1 file changed, 8 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 3896d08c4177..84a2c49e154c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -872,8 +872,9 @@ pps_lock(struct intel_dp *intel_dp)
> >  	 * See intel_power_sequencer_reset() why we need
> >  	 * a power domain reference here.
> >  	 */
> > -	wakeref = intel_display_power_get(dev_priv,
> > -					  intel_aux_power_domain(dp_to_dig_port(intel_dp)));
> > +	if (!HAS_PCH_SPLIT(dev_priv))
> > +		wakeref = intel_display_power_get(dev_priv,
> > +						  intel_aux_power_domain(dp_to_dig_port(intel_dp)));
> >  
> >  	mutex_lock(&dev_priv->pps_mutex);
> >  
> > @@ -886,9 +887,11 @@ pps_unlock(struct intel_dp *intel_dp, intel_wakeref_t wakeref)
> >  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> >  
> >  	mutex_unlock(&dev_priv->pps_mutex);
> > -	intel_display_power_put(dev_priv,
> > -				intel_aux_power_domain(dp_to_dig_port(intel_dp)),
> > -				wakeref);
> > +
> > +	if (!HAS_PCH_SPLIT(dev_priv))
> > +		intel_display_power_put(dev_priv,
> > +					intel_aux_power_domain(dp_to_dig_port(intel_dp)),
> > +					wakeref);
> >  	return 0;
> >  }
> >  
> > -- 
> > 2.26.2
> > 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
