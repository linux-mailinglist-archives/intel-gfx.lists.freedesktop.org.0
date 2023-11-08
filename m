Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 123E47E5C91
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Nov 2023 18:42:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05BB410E0C9;
	Wed,  8 Nov 2023 17:42:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62AF010E801
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Nov 2023 17:42:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699465343; x=1731001343;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=fPvZdYwM+lIXZ5oJBEZhU+yPL5CIfpwsnlzfyaLLtXA=;
 b=C9dyxAo6hYlDl564biEt8PI7W/z8QHJu3+lp5Mr0AjUiwW0Xog/Q1Itq
 oiaEN8ui4aROs7gRAnRYeMTB7SGVGqpUcpSd3DFRXONktVMEEUneuIdJR
 zAvF20sheQZPs+ToK/GXuZpElaiAttOCXUVt1yVxHkPrL+xf66KjBGiXT
 53aupadY8o5f9pKytaKeVVgpMg6/uldjt7er2Wgay1Y8mv3QH9qEaB0w3
 O+l4qvTvOjUx9N+CEEfVh9Vk7Ots4FQH/QIesNy3YKuu8jU1cfMClZPm+
 dsVZrzqqAe/by3w5/zqaRLkP5VWC9o4cMD3YpxGYV6KYQhBYLZWxXI+9X w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="456314350"
X-IronPort-AV: E=Sophos;i="6.03,286,1694761200"; d="scan'208";a="456314350"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2023 09:42:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,286,1694761200"; d="scan'208";a="11264172"
Received: from vseredyx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.38.119])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2023 09:42:20 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, Mika Kahola
 <mika.kahola@intel.com>
In-Reply-To: <ZUu_FwaFCmS4_9nw@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231106114228.146574-1-mika.kahola@intel.com>
 <ZUu-ZmzJ55_P6C2L@intel.com> <ZUu_FwaFCmS4_9nw@intel.com>
Date: Wed, 08 Nov 2023 19:42:17 +0200
Message-ID: <8734xgxhty.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915/display: Support PSR entry VSC
 packet to be transmitted one frame earlier
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

On Wed, 08 Nov 2023, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Nov 08, 2023 at 06:59:18PM +0200, Ville Syrj=C3=A4l=C3=A4 wrote:
>> On Mon, Nov 06, 2023 at 01:42:28PM +0200, Mika Kahola wrote:
>> > Display driver shall read DPCD 00071h[3:1] during configuration
>> > to get PSR setup time. This register provides the setup time
>> > requirement on the VSC SDP entry packet. If setup time cannot be
>> > met with the current timings
>> > (e.g., PSR setup time + other blanking requirements > blanking time),
>> > driver should enable sending VSC SDP one frame earlier before sending
>> > the capture frame.
>> >=20
>> > BSpec: 69895 (PSR Entry Setup Frames 17:16)
>> >=20
>> > v2: Write frames before su entry to correct register (Ville, Jouni)
>> >     Move frames before su entry calculation to it's
>> >     own function (Ville, Jouni)
>> >     Rename PSR Entry Setup Frames register to indicate
>> >     Lunarlake specificity (Jouni)
>> > v3: Modify setup entry frames calculation function to
>> >     return the actual frames (Ville)
>> >     Match comment with actual implementation (Jouni)
>> > v4: Drop "set" from function naming (Jouni, Ville)
>> >     Use i915 instead of dev_priv (Jouni)
>> >=20
>> > Signed-off-by: Mika Kahola <mika.kahola@intel.com>
>> > ---
>> >  .../drm/i915/display/intel_display_types.h    |  1 +
>> >  drivers/gpu/drm/i915/display/intel_psr.c      | 82 +++++++++++++++----
>> >  drivers/gpu/drm/i915/display/intel_psr_regs.h |  2 +
>> >  3 files changed, 71 insertions(+), 14 deletions(-)
>> >=20
>> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/driv=
ers/gpu/drm/i915/display/intel_display_types.h
>> > index 047fe3f8905a..92f06d67fd1e 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> > @@ -1708,6 +1708,7 @@ struct intel_psr {
>> >  	u32 dc3co_exitline;
>> >  	u32 dc3co_exit_delay;
>> >  	struct delayed_work dc3co_work;
>> > +	u8 entry_setup_frames;
>> >  };
>> >=20=20
>> >  struct intel_dp {
>> > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/dr=
m/i915/display/intel_psr.c
>> > index 920f77336163..fc242916349b 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_psr.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>> > @@ -593,6 +593,9 @@ static void intel_psr_enable_sink(struct intel_dp =
*intel_dp)
>> >  	if (intel_dp->psr.req_psr2_sdp_prior_scanline)
>> >  		dpcd_val |=3D DP_PSR_SU_REGION_SCANLINE_CAPTURE;
>> >=20=20
>> > +	if (intel_dp->psr.entry_setup_frames > 0)
>> > +		dpcd_val |=3D DP_PSR_FRAME_CAPTURE;
>> > +
>> >  	drm_dp_dpcd_writeb(&intel_dp->aux, DP_PSR_EN_CFG, dpcd_val);
>> >=20=20
>> >  	drm_dp_dpcd_writeb(&intel_dp->aux, DP_SET_POWER, DP_SET_POWER_D0);
>> > @@ -691,6 +694,9 @@ static void hsw_activate_psr1(struct intel_dp *int=
el_dp)
>> >  	if (DISPLAY_VER(dev_priv) >=3D 8)
>> >  		val |=3D EDP_PSR_CRC_ENABLE;
>> >=20=20
>> > +	if (DISPLAY_VER(dev_priv) >=3D 20)
>> > +		val |=3D LNL_EDP_PSR_ENTRY_SETUP_FRAMES(intel_dp->psr.entry_setup_f=
rames);
>> > +
>> >  	intel_de_rmw(dev_priv, psr_ctl_reg(dev_priv, cpu_transcoder),
>> >  		     ~EDP_PSR_RESTORE_PSR_ACTIVE_CTX_MASK, val);
>> >  }
>> > @@ -728,11 +734,27 @@ static int psr2_block_count(struct intel_dp *int=
el_dp)
>> >  	return psr2_block_count_lines(intel_dp) / 4;
>> >  }
>> >=20=20
>> > +static u8 frames_before_su_entry(struct intel_dp *intel_dp)
>>           ^^
>>=20
>> That vs -ETIME broke my tgl.
>>=20
>> > +static u8 intel_psr_entry_setup_frames(struct intel_dp *intel_dp,
>             ^^
> No, actually that ...

*sigh*

I eyeballed the patch and the u8 and thought about giving my standard
issue "please use ints unless you have specific reasons to use something
else" comment. But didn't.

It's a "code smell". It's suspicious even if it isn't broken.

BR,
Jani.


>
>> > +					   const struct drm_display_mode *adjusted_mode)
>> > +{
>> > +	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
>> > +	int psr_setup_time =3D drm_dp_psr_setup_time(intel_dp->psr_dpcd);
>> > +	u8 entry_setup_frames =3D 0;
>         ^^
> ... and that.

--=20
Jani Nikula, Intel
