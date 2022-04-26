Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 82B8E51005B
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Apr 2022 16:24:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD54710E045;
	Tue, 26 Apr 2022 14:24:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B95010E045
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Apr 2022 14:24:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650983042; x=1682519042;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=+GHaZzlTAsnw5V9yymAe5kqk52b3qcQxoRMXylHGLVQ=;
 b=dtKWqpaZJcGED0u7YiGMBPAXkuSon1eeE8nvWOqufzz7v7Ftq8Hgi3Gs
 hW9VFG08TIDrR9866Yc2pGOJpb1MvDMnVzwZUalR4GavHT26zoZn4oBSB
 Mz1mLNyP4k+mU5nXnDoz/hogTOi8JSMpNaP6XlPbWbCiToU2u6xra44DR
 cp8JD+5SBemMc+h2BPNPdx9e9bq4RYhpP2hGLa+94rAX0MLJBG4ViWYM/
 hJ0FXaJcVx0FJngMqNdWg7vjLyFv1URzs7xHshquBfuK7pSJaSdvE1FJx
 ElT3lQuGJFf8cyF/2ttAp6UKKGujQug9z0mk20AQCsXEgP03BmLQQTl2S Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10328"; a="265756927"
X-IronPort-AV: E=Sophos;i="5.90,291,1643702400"; d="scan'208";a="265756927"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2022 07:24:02 -0700
X-IronPort-AV: E=Sophos;i="5.90,291,1643702400"; d="scan'208";a="558332968"
Received: from vhlushch-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.132.136])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2022 07:24:00 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: imre.deak@intel.com
In-Reply-To: <YmfemiSW4j1Py5VQ@ideak-desk.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220408172154.807900-2-imre.deak@intel.com>
 <20220408224629.845887-1-imre.deak@intel.com> <87y208djn1.fsf@intel.com>
 <YmfAJgD/ns6l7eyd@ideak-desk.fi.intel.com> <87o80ot72c.fsf@intel.com>
 <YmfemiSW4j1Py5VQ@ideak-desk.fi.intel.com>
Date: Tue, 26 Apr 2022 17:23:57 +0300
Message-ID: <87ilqvudmq.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 26 Apr 2022, Imre Deak <imre.deak@intel.com> wrote:
> On Tue, Apr 26, 2022 at 02:31:07PM +0300, Jani Nikula wrote:
>> On Tue, 26 Apr 2022, Imre Deak <imre.deak@intel.com> wrote:
>> > On Thu, Apr 14, 2022 at 01:49:54PM +0300, Jani Nikula wrote:
>> >> On Sat, 09 Apr 2022, Imre Deak <imre.deak@intel.com> wrote:
>> >> > Some ADLP DP link configuration at least with multiple LTTPRs expects
>> >> > the first DPCD access during the LTTPR/DPCD detection after hotplug to
>> >> > be a read from the LTTPR range starting with
>> >> > DP_LT_TUNABLE_PHY_REPEATER_FIELD_DATA_STRUCTURE_REV. The side effect of
>> >> > this read is to put each LTTPR into the LTTPR transparent or LTTPR
>> >> > non-transparent mode.
>> >> >
>> >> > The lack of the above read may leave some of the LTTPRs in non-LTTPR
>> >> > mode, while other LTTPRs in LTTPR transparent or LTTPR non-transparent
>> >> > mode (for instance LTTPRs after system suspend/resume that kept their
>> >> > mode from before suspend). Due to the different AUX timeouts the
>> >> > different modes imply, the DPCD access from a non-LTTPR range will
>> >> > timeout and lead to an LTTPR generated hotplug towards the source (which
>> >> > the LTTPR firmware uses to account for buggy TypeC adapters with a long
>> >> > wake-up delay).
>> >> >
>> >> > To avoid the above AUX timeout and subsequent hotplug interrupt, make
>> >> > sure that the first DPCD access during detection is a read from an
>> >> > LTTPR register.
>> >> >
>> >> > VLK: SYSCROS-72939
>> >> >
>> >> > v2: Keep DPCD read-out working on non-LTTPR platforms.
>> >> >
>> >> > Signed-off-by: Imre Deak <imre.deak@intel.com>
>> >> 
>> >> I kinda dislike how complicated this looks for a diff so small. *shrug*.
>> >> Seems to do what it says on the box,
>> >
>> > I can have a better summary of what the patch does and why at the
>> > beginning of the commit message. Imo the details for the related LTTPR
>> > behavior are still useful for later reference; it's not too intuitive
>> > with the read side-effects for instance, neither it is well documented
>> > by the DP standard.
>> >
>> >> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
>> >
>> > Thanks.
>> >
>> > I pushed the dependent
>> > d8bb92e70a43 ("drm/dp: Factor out a function to probe a DPCD address")
>> > patch to drm-misc-next. Could you help back merging it to
>> > drm-intel-next?
>> 
>> So this is going to need drm-misc-next -> drm-next pull request before I
>> can backmerge drm-next to drm-intel-next.
>
> Ok. AFAICS drm-next includes already the above commit.

Did the backmerge.

BR,
Jani.

>
>> BR,
>> Jani.
>> 
>> 
>> 
>> >
>> >> > ---
>> >> >  .../drm/i915/display/intel_dp_link_training.c | 33 ++++++++++---------
>> >> >  1 file changed, 17 insertions(+), 16 deletions(-)
>> >> >
>> >> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> >> > index 26f9e2b748e40..9feaf1a589f38 100644
>> >> > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> >> > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> >> > @@ -82,19 +82,8 @@ static bool intel_dp_read_lttpr_common_caps(struct intel_dp *intel_dp,
>> >> >  					    const u8 dpcd[DP_RECEIVER_CAP_SIZE])
>> >> >  {
>> >> >  	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
>> >> > -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>> >> >  	int ret;
>> >> >  
>> >> > -	if (intel_dp_is_edp(intel_dp))
>> >> > -		return false;
>> >> > -
>> >> > -	/*
>> >> > -	 * Detecting LTTPRs must be avoided on platforms with an AUX timeout
>> >> > -	 * period < 3.2ms. (see DP Standard v2.0, 2.11.2, 3.6.6.1).
>> >> > -	 */
>> >> > -	if (DISPLAY_VER(i915) < 10 || IS_GEMINILAKE(i915))
>> >> > -		return false;
>> >> > -
>> >> >  	ret = drm_dp_read_lttpr_common_caps(&intel_dp->aux, dpcd,
>> >> >  					    intel_dp->lttpr_common_caps);
>> >> >  	if (ret < 0)
>> >> > @@ -197,13 +186,25 @@ static int intel_dp_init_lttpr(struct intel_dp *intel_dp, const u8 dpcd[DP_RECEI
>> >> >   */
>> >> >  int intel_dp_init_lttpr_and_dprx_caps(struct intel_dp *intel_dp)
>> >> >  {
>> >> > -	u8 dpcd[DP_RECEIVER_CAP_SIZE];
>> >> > -	int lttpr_count;
>> >> > +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>> >> > +	int lttpr_count = 0;
>> >> >  
>> >> > -	if (drm_dp_read_dpcd_caps(&intel_dp->aux, dpcd))
>> >> > -		return -EIO;
>> >> > +	/*
>> >> > +	 * Detecting LTTPRs must be avoided on platforms with an AUX timeout
>> >> > +	 * period < 3.2ms. (see DP Standard v2.0, 2.11.2, 3.6.6.1).
>> >> > +	 */
>> >> > +	if (!intel_dp_is_edp(intel_dp) &&
>> >> > +	    (DISPLAY_VER(i915) >= 10 && !IS_GEMINILAKE(i915))) {
>> >> > +		u8 dpcd[DP_RECEIVER_CAP_SIZE];
>> >> >  
>> >> > -	lttpr_count = intel_dp_init_lttpr(intel_dp, dpcd);
>> >> > +		if (drm_dp_dpcd_probe(&intel_dp->aux, DP_LT_TUNABLE_PHY_REPEATER_FIELD_DATA_STRUCTURE_REV))
>> >> > +			return -EIO;
>> >> > +
>> >> > +		if (drm_dp_read_dpcd_caps(&intel_dp->aux, dpcd))
>> >> > +			return -EIO;
>> >> > +
>> >> > +		lttpr_count = intel_dp_init_lttpr(intel_dp, dpcd);
>> >> > +	}
>> >> >  
>> >> >  	/*
>> >> >  	 * The DPTX shall read the DPRX caps after LTTPR detection, so re-read
>> >> 
>> >> -- 
>> >> Jani Nikula, Intel Open Source Graphics Center
>> 
>> -- 
>> Jani Nikula, Intel Open Source Graphics Center

-- 
Jani Nikula, Intel Open Source Graphics Center
