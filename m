Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F7EC45B839
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Nov 2021 11:18:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38C8E6E48F;
	Wed, 24 Nov 2021 10:18:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 776296E48F
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Nov 2021 10:18:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10177"; a="233971696"
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="233971696"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 02:18:48 -0800
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="591526397"
Received: from moconno1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.21.40])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 02:18:47 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, Rodrigo
 Vivi <rodrigo.vivi@intel.com>
In-Reply-To: <YZd7c4TEGJpTJ+aj@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211112193813.8224-1-ville.syrjala@linux.intel.com>
 <20211112193813.8224-3-ville.syrjala@linux.intel.com>
 <YZKxLzpW3Q4jwDBl@intel.com> <YZd7c4TEGJpTJ+aj@intel.com>
Date: Wed, 24 Nov 2021 12:18:44 +0200
Message-ID: <8735nln9ff.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/9] drm/i915: Clean up PIPEMISC register
 defines
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

On Fri, 19 Nov 2021, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Mon, Nov 15, 2021 at 02:12:47PM -0500, Rodrigo Vivi wrote:
>> On Fri, Nov 12, 2021 at 09:38:06PM +0200, Ville Syrjala wrote:
>> > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> >=20
>> > Use REG_BIT() & co. for PIPEMISC* bits, and while at it
>> > fill in the missing dithering bits since we already had some
>> > of them defined.
>> >=20
>> > Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_display.c | 18 +++++-----
>> >  drivers/gpu/drm/i915/i915_reg.h              | 35 +++++++++++---------
>> >  2 files changed, 28 insertions(+), 25 deletions(-)
>> >=20
>> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gp=
u/drm/i915/display/intel_display.c
>> > index 6073f94632ab..e293241450b1 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_display.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> > @@ -3724,18 +3724,18 @@ static void bdw_set_pipemisc(const struct inte=
l_crtc_state *crtc_state)
>> >=20=20
>> >  	switch (crtc_state->pipe_bpp) {
>> >  	case 18:
>> > -		val |=3D PIPEMISC_6_BPC;
>> > +		val |=3D PIPEMISC_BPC_6;
>> >  		break;
>> >  	case 24:
>> > -		val |=3D PIPEMISC_8_BPC;
>> > +		val |=3D PIPEMISC_BPC_8;
>> >  		break;
>> >  	case 30:
>> > -		val |=3D PIPEMISC_10_BPC;
>> > +		val |=3D PIPEMISC_BPC_10;
>> >  		break;
>> >  	case 36:
>> >  		/* Port output 12BPC defined for ADLP+ */
>> >  		if (DISPLAY_VER(dev_priv) > 12)
>> > -			val |=3D PIPEMISC_12_BPC_ADLP;
>> > +			val |=3D PIPEMISC_BPC_12_ADLP;
>>=20
>> while on it, I wonder if we could remove this "ADLP" suffix.
>>=20
>> First because prefix seems to be the most used case for the platform.
>
> I don't like prefix for such things since it screws up the namespace for
> the bits of the same register. So suffix is better IMO.

If we want to promote using suffix for platform specific registers or
contents, I guess we should record that in the i915_reg.h top
comment. Not that anyone reads it, but then we can nag it's there. :p

BR,
Jani.




>
>> But also because there's a clear if here and a clear comment in the defi=
nition.
>
> Yeah, I've been removing some similar things in other places for that exa=
ct
> reason. The only case where we might really need platform designators is
> when the bit(s) move etc.
>
> Though I was even pondering removing the 'if' since this only controls
> dithering on older platforms and we don't enable dithering for anything
> but 6bpc output. Although the whole pipe_bpp concept is kinda wrong and
> we should perhaps split it up into pipe_bpp vs. port_bpp, or something=20
> along those lines.
>
>> (Btw, I'd prefer the ver >=3D 13 than > 12 to be really clear :/)
>
> Yeah, >=3D is what we should use.
>
>>=20
>> >  		break;
>> >  	default:
>> >  		MISSING_CASE(crtc_state->pipe_bpp);
>> > @@ -3771,7 +3771,7 @@ static void bdw_set_pipemisc(const struct intel_=
crtc_state *crtc_state)
>> >  		}
>> >=20=20
>> >  		intel_de_rmw(dev_priv, PIPE_MISC2(crtc->pipe),
>> > -			     PIPE_MISC2_UNDERRUN_BUBBLE_COUNTER_MASK,
>> > +			     PIPE_MISC2_BUBBLE_COUNTER_MASK,
>> >  			     scaler_in_use ? PIPE_MISC2_BUBBLE_COUNTER_SCALER_EN :
>> >  			     PIPE_MISC2_BUBBLE_COUNTER_SCALER_DIS);
>> >  	}
>> > @@ -3787,11 +3787,11 @@ int bdw_get_pipemisc_bpp(struct intel_crtc *cr=
tc)
>> >  	tmp =3D intel_de_read(dev_priv, PIPEMISC(crtc->pipe));
>> >=20=20
>> >  	switch (tmp & PIPEMISC_BPC_MASK) {
>> > -	case PIPEMISC_6_BPC:
>> > +	case PIPEMISC_BPC_6:
>> >  		return 18;
>> > -	case PIPEMISC_8_BPC:
>> > +	case PIPEMISC_BPC_8:
>> >  		return 24;
>> > -	case PIPEMISC_10_BPC:
>> > +	case PIPEMISC_BPC_10:
>> >  		return 30;
>> >  	/*
>> >  	 * PORT OUTPUT 12 BPC defined for ADLP+.
>> > @@ -3803,7 +3803,7 @@ int bdw_get_pipemisc_bpp(struct intel_crtc *crtc)
>> >  	 * on older platforms, need to find a workaround for 12 BPC
>> >  	 * MIPI DSI HW readout.
>> >  	 */
>> > -	case PIPEMISC_12_BPC_ADLP:
>> > +	case PIPEMISC_BPC_12_ADLP:
>> >  		if (DISPLAY_VER(dev_priv) > 12)
>> >  			return 36;
>> >  		fallthrough;
>> > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i9=
15_reg.h
>> > index f5d54ed2efc1..e300a202ce2d 100644
>> > --- a/drivers/gpu/drm/i915/i915_reg.h
>> > +++ b/drivers/gpu/drm/i915/i915_reg.h
>> > @@ -6308,32 +6308,35 @@ enum {
>> >=20=20
>> >  #define _PIPE_MISC_A			0x70030
>> >  #define _PIPE_MISC_B			0x71030
>> > -#define   PIPEMISC_YUV420_ENABLE	(1 << 27) /* glk+ */
>> > -#define   PIPEMISC_YUV420_MODE_FULL_BLEND (1 << 26) /* glk+ */
>> > -#define   PIPEMISC_HDR_MODE_PRECISION	(1 << 23) /* icl+ */
>> > -#define   PIPEMISC_OUTPUT_COLORSPACE_YUV  (1 << 11)
>> > -#define   PIPEMISC_PIXEL_ROUNDING_TRUNC	REG_BIT(8) /* tgl+ */
>> > +#define   PIPEMISC_YUV420_ENABLE		REG_BIT(27) /* glk+ */
>> > +#define   PIPEMISC_YUV420_MODE_FULL_BLEND	REG_BIT(26) /* glk+ */
>> > +#define   PIPEMISC_HDR_MODE_PRECISION		REG_BIT(23) /* icl+ */
>> > +#define   PIPEMISC_OUTPUT_COLORSPACE_YUV	REG_BIT(11)
>> > +#define   PIPEMISC_PIXEL_ROUNDING_TRUNC		REG_BIT(8) /* tgl+ */
>> >  /*
>> >   * For Display < 13, Bits 5-7 of PIPE MISC represent DITHER BPC with
>> >   * valid values of: 6, 8, 10 BPC.
>> >   * ADLP+, the bits 5-7 represent PORT OUTPUT BPC with valid values of:
>> >   * 6, 8, 10, 12 BPC.
>> >   */
>> > -#define   PIPEMISC_BPC_MASK		(7 << 5)
>> > -#define   PIPEMISC_8_BPC		(0 << 5)
>> > -#define   PIPEMISC_10_BPC		(1 << 5)
>> > -#define   PIPEMISC_6_BPC		(2 << 5)
>> > -#define   PIPEMISC_12_BPC_ADLP		(4 << 5) /* adlp+ */
>> > -#define   PIPEMISC_DITHER_ENABLE	(1 << 4)
>> > -#define   PIPEMISC_DITHER_TYPE_MASK	(3 << 2)
>> > -#define   PIPEMISC_DITHER_TYPE_SP	(0 << 2)
>> > +#define   PIPEMISC_BPC_MASK			REG_GENMASK(7, 5)
>> > +#define   PIPEMISC_BPC_8			REG_FIELD_PREP(PIPEMISC_BPC_MASK, 0)
>> > +#define   PIPEMISC_BPC_10			REG_FIELD_PREP(PIPEMISC_BPC_MASK, 1)
>> > +#define   PIPEMISC_BPC_6			REG_FIELD_PREP(PIPEMISC_BPC_MASK, 2)
>> > +#define   PIPEMISC_BPC_12_ADLP			REG_FIELD_PREP(PIPEMISC_BPC_MASK, 4)=
 /* adlp+ */
>> > +#define   PIPEMISC_DITHER_ENABLE		REG_BIT(4)
>> > +#define   PIPEMISC_DITHER_TYPE_MASK		REG_GENMASK(3, 2)
>> > +#define   PIPEMISC_DITHER_TYPE_SP		REG_FIELD_PREP(PIPEMISC_DITHER_TYP=
E_MASK, 0)
>> > +#define   PIPEMISC_DITHER_TYPE_ST1		REG_FIELD_PREP(PIPEMISC_DITHER_TY=
PE_MASK, 1)
>> > +#define   PIPEMISC_DITHER_TYPE_ST2		REG_FIELD_PREP(PIPEMISC_DITHER_TY=
PE_MASK, 2)
>> > +#define   PIPEMISC_DITHER_TYPE_TEMP		REG_FIELD_PREP(PIPEMISC_DITHER_T=
YPE_MASK, 3)
>> >  #define PIPEMISC(pipe)			_MMIO_PIPE2(pipe, _PIPE_MISC_A)
>> >=20=20
>> >  #define _PIPE_MISC2_A					0x7002C
>> >  #define _PIPE_MISC2_B					0x7102C
>> > -#define   PIPE_MISC2_BUBBLE_COUNTER_SCALER_EN		(0x50 << 24)
>> > -#define   PIPE_MISC2_BUBBLE_COUNTER_SCALER_DIS		(0x14 << 24)
>> > -#define   PIPE_MISC2_UNDERRUN_BUBBLE_COUNTER_MASK	(0xff << 24)
>> > +#define   PIPE_MISC2_BUBBLE_COUNTER_MASK	REG_GENMASK(31, 24)
>> > +#define   PIPE_MISC2_BUBBLE_COUNTER_SCALER_EN	REG_FIELD_PREP(PIPE_MIS=
C2_BUBBLE_COUNTER_MASK, 80)
>> > +#define   PIPE_MISC2_BUBBLE_COUNTER_SCALER_DIS	REG_FIELD_PREP(PIPE_MI=
SC2_BUBBLE_COUNTER_MASK, 20)
>> >  #define PIPE_MISC2(pipe)					_MMIO_PIPE2(pipe, _PIPE_MISC2_A)
>> >=20=20
>> >  /* Skylake+ pipe bottom (background) color */
>> > --=20
>> > 2.32.0
>> >=20

--=20
Jani Nikula, Intel Open Source Graphics Center
