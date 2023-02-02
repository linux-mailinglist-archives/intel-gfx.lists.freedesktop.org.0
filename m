Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B8730688786
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Feb 2023 20:29:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F7EB10E00F;
	Thu,  2 Feb 2023 19:29:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3254210E60F
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Feb 2023 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675366193; x=1706902193;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=VJXiuYQjdwwZKaF9Ya4FV82POUXCk81AmM6A9JAoO24=;
 b=RjQ+1Aoig8u08Z57xlGOqRXo+R0hzO8t+Bnq9NPseme1lbf9mNXvA39M
 o7v2Vc9APe46c9xi8YzPuU1tEDwBJmwrTph+SPas2ANQMQ+rJwd0DonCo
 XXCvqihGSqOQEGbZT/K5JJbYmClmZeQt2rUpDbS1uAu655dToClKMQ9Sp
 Aafvf3uL8PBK3R9XnWzgA0fc9qCb2PpMOxDOqF8Fy2lIN4SGYmQHzJ56f
 d5HS2yDN+1NzeogGzPQjASDLq6afrRvW+KE/mNrYEJ+hY1L2ra76CSBr0
 Lkq1hBZH90OVO3697X5slpQM5DuF5b6eFceYgDTkCyJbpd+Bd7cRbO2h8 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="355887393"
X-IronPort-AV: E=Sophos;i="5.97,268,1669104000"; d="scan'208";a="355887393"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 11:29:45 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="839317491"
X-IronPort-AV: E=Sophos;i="5.97,268,1669104000"; d="scan'208";a="839317491"
Received: from skopplex-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.34.132])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 11:29:44 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <MWHPR11MB174174ABEFE34DFDF469A757E3D69@MWHPR11MB1741.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230202114613.3177235-1-suraj.kandpal@intel.com>
 <20230202114613.3177235-2-suraj.kandpal@intel.com>
 <87fsbo1apu.fsf@intel.com>
 <MWHPR11MB174174ABEFE34DFDF469A757E3D69@MWHPR11MB1741.namprd11.prod.outlook.com>
Date: Thu, 02 Feb 2023 21:29:41 +0200
Message-ID: <87cz6r27dm.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/dp: Fix logic to fetch
 slice_height
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

On Thu, 02 Feb 2023, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>> 
>> On Thu, 02 Feb 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
>> > According to Bpec: 49259 VDSC spec implies that 108 lines is an
>> > optimal slice height, but any size can be used as long as vertical
>> > active integer multiple and maximum vertical slice count requirements are
>> met.
>> 
>> The commit message and subject should really indicate that this increases
>> the slice height considerably. It's a 13.5x increase at a minimum, could be
>> much more. Seems misleading to call it "fix logic", as if there's a small issue
>> somewhere.
>> 
>> Bspec references should be here:
>> 
>> Bspec: 49259
>> > Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> > Cc: Swati Sharma <swati2.sharma@intel.com>
>> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
>> > b/drivers/gpu/drm/i915/display/intel_dp.c
>> > index 62cbab7402e9..7bd2e56ef0fa 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> > @@ -1415,6 +1415,22 @@ static int
>> intel_dp_sink_dsc_version_minor(struct intel_dp *intel_dp)
>> >  		DP_DSC_MINOR_SHIFT;
>> >  }
>> >
>> > +static int intel_dp_get_slice_height(int vactive)
>> 
>> intel_dp_dsc_get_slice_height
>> 
>> > +{
>> > +	int slice_height;
>> > +
>> > +	/*
>> > +	 * VDSC spec implies that 108 lines is an optimal slice height,
>> 
>> Please be more specific with spec references than vague "VSDC spec". Spec
>> version is required at a minimum. Section and section title are a nice bonus.
>> 
>> > +	 * but any size can be used as long as vertical active integer
>> > +	 * multiple and maximum vertical slice count requirements are met.
>> > +	 */
>> > +	for (slice_height = 108; slice_height <= vactive; slice_height += 2)
>> 
>> Where does it say 108 is a minimum, and you should go up only...?
>
> So in VDSC 1.2a section 3.8 option for slices it says 
> "a slice height of 108 lines typically provides better
> performance than a slice height of 8 lines."
> It also states the following 
> "Also it says There is no cost associated with slice height because
> there is no additional buffering or any other additional resources required"
>  that's why I decided to move up from slice height of 108
>
>> 
>> > +		if (!(vactive % slice_height))
>> 
>> Matter of taste, but please use (vactive % slice_height == 0) for clarity on
>> computations like this.
>> 
>> > +			return slice_height;
>> > +
>> > +	return 0;
>> 
>> I guess it's unlikely we ever hit here, but you could have the old code as
>> fallback and never return 0. Because you don't check for 0 in the caller
>> anyway.
>
> I will do this
>
>> 
>> Also makes me wonder why we have intel_hdmi_dsc_get_slice_height()
>> separately, with almost identical implementation. Maybe we should
>> consolidate. 
>
> That's separate because the minimum there starts from slice_height of 96 as indicated in 
> HDMI spec

Do you think it's fine to duplicate a whole function if their sole
difference is the starting point of a for loop?

BR,
Jani.

>
> Regards,
> Suraj Kandpal
>> 
>> > +}
>> > +
>> >  static int intel_dp_dsc_compute_params(struct intel_encoder *encoder,
>> >  				       struct intel_crtc_state *crtc_state)  { @@
>> -1433,17
>> > +1449,7 @@ static int intel_dp_dsc_compute_params(struct intel_encoder
>> *encoder,
>> >  	vdsc_cfg->rc_model_size = DSC_RC_MODEL_SIZE_CONST;
>> >  	vdsc_cfg->pic_height = crtc_state->hw.adjusted_mode.crtc_vdisplay;
>> >
>> > -	/*
>> > -	 * Slice Height of 8 works for all currently available panels. So start
>> > -	 * with that if pic_height is an integral multiple of 8. Eventually add
>> > -	 * logic to try multiple slice heights.
>> > -	 */
>> > -	if (vdsc_cfg->pic_height % 8 == 0)
>> > -		vdsc_cfg->slice_height = 8;
>> > -	else if (vdsc_cfg->pic_height % 4 == 0)
>> > -		vdsc_cfg->slice_height = 4;
>> > -	else
>> > -		vdsc_cfg->slice_height = 2;
>> > +	vdsc_cfg->slice_height =
>> > +intel_dp_get_slice_height(vdsc_cfg->pic_height);
>> >
>> >  	ret = intel_dsc_compute_params(crtc_state);
>> >  	if (ret)
>> 
>> --
>> Jani Nikula, Intel Open Source Graphics Center

-- 
Jani Nikula, Intel Open Source Graphics Center
