Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 876AC50F917
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Apr 2022 11:49:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E032D10E53A;
	Tue, 26 Apr 2022 09:49:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53F4910E53A
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Apr 2022 09:49:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650966572; x=1682502572;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=yzOJmHL/ryfb4s9yUmaQdxPbt9a1BoYqiOvrMATzjBc=;
 b=k7nZjN5iqZ4lNdS33qzxr7vF0TthIaM2TXGuSMFOzs7113lJrdd7yDP5
 9BDtY5ZxRKXgdWCcFMuwADT24t0Tnkw/z6m0oXUHaoNSxh6jqDtw12PtU
 94WQFNdUQHFmFaoqcAbAfJ9fYcVVwXDTYfHH6YlEO8wEosI5f+soMvTvh
 wSPe1s/D3qSE89LrhoaIkvDMhAnp8Q8c9h8HpQKUXbV/tlKA87KMCKkOW
 fF/PgZUXXAbTmOSGEsbm0sYZ28f3nvTowA/8ZrOFftFi/9Xgo/d8uxARl
 z+tZqtczsGCf8AaSEF9mQj4eE5ZDT1ewALwguE3KbWFEiRABfnV14aq+E A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10328"; a="247456178"
X-IronPort-AV: E=Sophos;i="5.90,290,1643702400"; d="scan'208";a="247456178"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2022 02:49:31 -0700
X-IronPort-AV: E=Sophos;i="5.90,290,1643702400"; d="scan'208";a="730174877"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2022 02:49:30 -0700
Date: Tue, 26 Apr 2022 12:49:26 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YmfAJgD/ns6l7eyd@ideak-desk.fi.intel.com>
References: <20220408172154.807900-2-imre.deak@intel.com>
 <20220408224629.845887-1-imre.deak@intel.com>
 <87y208djn1.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87y208djn1.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 2/2] drm/i915/dp: Add workaround for
 spurious AUX timeouts/hotplugs on LTTPR links
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Apr 14, 2022 at 01:49:54PM +0300, Jani Nikula wrote:
> On Sat, 09 Apr 2022, Imre Deak <imre.deak@intel.com> wrote:
> > Some ADLP DP link configuration at least with multiple LTTPRs expects
> > the first DPCD access during the LTTPR/DPCD detection after hotplug to
> > be a read from the LTTPR range starting with
> > DP_LT_TUNABLE_PHY_REPEATER_FIELD_DATA_STRUCTURE_REV. The side effect of
> > this read is to put each LTTPR into the LTTPR transparent or LTTPR
> > non-transparent mode.
> >
> > The lack of the above read may leave some of the LTTPRs in non-LTTPR
> > mode, while other LTTPRs in LTTPR transparent or LTTPR non-transparent
> > mode (for instance LTTPRs after system suspend/resume that kept their
> > mode from before suspend). Due to the different AUX timeouts the
> > different modes imply, the DPCD access from a non-LTTPR range will
> > timeout and lead to an LTTPR generated hotplug towards the source (which
> > the LTTPR firmware uses to account for buggy TypeC adapters with a long
> > wake-up delay).
> >
> > To avoid the above AUX timeout and subsequent hotplug interrupt, make
> > sure that the first DPCD access during detection is a read from an
> > LTTPR register.
> >
> > VLK: SYSCROS-72939
> >
> > v2: Keep DPCD read-out working on non-LTTPR platforms.
> >
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> 
> I kinda dislike how complicated this looks for a diff so small. *shrug*.
> Seems to do what it says on the box,

I can have a better summary of what the patch does and why at the
beginning of the commit message. Imo the details for the related LTTPR
behavior are still useful for later reference; it's not too intuitive
with the read side-effects for instance, neither it is well documented
by the DP standard.

> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Thanks.

I pushed the dependent
d8bb92e70a43 ("drm/dp: Factor out a function to probe a DPCD address")
patch to drm-misc-next. Could you help back merging it to
drm-intel-next?

> > ---
> >  .../drm/i915/display/intel_dp_link_training.c | 33 ++++++++++---------
> >  1 file changed, 17 insertions(+), 16 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > index 26f9e2b748e40..9feaf1a589f38 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > @@ -82,19 +82,8 @@ static bool intel_dp_read_lttpr_common_caps(struct intel_dp *intel_dp,
> >  					    const u8 dpcd[DP_RECEIVER_CAP_SIZE])
> >  {
> >  	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
> > -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> >  	int ret;
> >  
> > -	if (intel_dp_is_edp(intel_dp))
> > -		return false;
> > -
> > -	/*
> > -	 * Detecting LTTPRs must be avoided on platforms with an AUX timeout
> > -	 * period < 3.2ms. (see DP Standard v2.0, 2.11.2, 3.6.6.1).
> > -	 */
> > -	if (DISPLAY_VER(i915) < 10 || IS_GEMINILAKE(i915))
> > -		return false;
> > -
> >  	ret = drm_dp_read_lttpr_common_caps(&intel_dp->aux, dpcd,
> >  					    intel_dp->lttpr_common_caps);
> >  	if (ret < 0)
> > @@ -197,13 +186,25 @@ static int intel_dp_init_lttpr(struct intel_dp *intel_dp, const u8 dpcd[DP_RECEI
> >   */
> >  int intel_dp_init_lttpr_and_dprx_caps(struct intel_dp *intel_dp)
> >  {
> > -	u8 dpcd[DP_RECEIVER_CAP_SIZE];
> > -	int lttpr_count;
> > +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> > +	int lttpr_count = 0;
> >  
> > -	if (drm_dp_read_dpcd_caps(&intel_dp->aux, dpcd))
> > -		return -EIO;
> > +	/*
> > +	 * Detecting LTTPRs must be avoided on platforms with an AUX timeout
> > +	 * period < 3.2ms. (see DP Standard v2.0, 2.11.2, 3.6.6.1).
> > +	 */
> > +	if (!intel_dp_is_edp(intel_dp) &&
> > +	    (DISPLAY_VER(i915) >= 10 && !IS_GEMINILAKE(i915))) {
> > +		u8 dpcd[DP_RECEIVER_CAP_SIZE];
> >  
> > -	lttpr_count = intel_dp_init_lttpr(intel_dp, dpcd);
> > +		if (drm_dp_dpcd_probe(&intel_dp->aux, DP_LT_TUNABLE_PHY_REPEATER_FIELD_DATA_STRUCTURE_REV))
> > +			return -EIO;
> > +
> > +		if (drm_dp_read_dpcd_caps(&intel_dp->aux, dpcd))
> > +			return -EIO;
> > +
> > +		lttpr_count = intel_dp_init_lttpr(intel_dp, dpcd);
> > +	}
> >  
> >  	/*
> >  	 * The DPTX shall read the DPRX caps after LTTPR detection, so re-read
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
