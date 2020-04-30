Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C491BF752
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2020 13:57:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 588866EA6A;
	Thu, 30 Apr 2020 11:57:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE9776EA6A
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Apr 2020 11:57:47 +0000 (UTC)
IronPort-SDR: GBQO9gtwjpoJqP2KE6sMQjwtdf+nz3cBfP8M1O9sv/kt/0VmmxA8N9I/V+v6447Qo0RcUQaH/3
 BXOBG0zYlJLQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2020 04:57:47 -0700
IronPort-SDR: sS1o9f7n7PYuZVAWDILZAyByIdWwAEHjIlxwaHChlwRQBIfqvSWGcrnuBhd7us9kKqZtN20b57
 7kiD90UmU/2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,334,1583222400"; d="scan'208";a="294488437"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 30 Apr 2020 04:57:45 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 30 Apr 2020 14:57:44 +0300
Date: Thu, 30 Apr 2020 14:57:44 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200430115744.GW6112@intel.com>
References: <20200429185457.26235-1-ville.syrjala@linux.intel.com>
 <20200429185457.26235-3-ville.syrjala@linux.intel.com>
 <158818746416.7361.9034229943717642889@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <158818746416.7361.9034229943717642889@build.alporthouse.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Streamline the artihmetic
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 29, 2020 at 08:11:04PM +0100, Chris Wilson wrote:
> Quoting Ville Syrjala (2020-04-29 19:54:57)
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > All these ROUNDIND_FACTORs and whatnot are making this thing hard to
> > read. Get rid of them. And let's massage some of the fractions to
> > give us less questionable intermediate results and perhaps less
> > divisions.
> > =

> > Also looks like a good helping of 64bit math stuff is needed to
> > avoid some of overflows present in the current code. There
> > might still be a few overflows, namely when calculating
> > link_clks_available/samples_room (would require a huge hblank
> > though), and potentially when calculating hblank_rise (not sure
> > how large link_clks_active can get).
> > =

> > It looks like we're still not calculating exactly what the spec says
> > since we truncate tu_data and tu_line early. But I'm too lazy to
> > figure out if we could avoid that.
> > =

> > Cc: Anshuman Gupta <anshuman.gupta@intel.com>
> > Cc: Uma Shankar <uma.shankar@intel.com>
> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_audio.c | 54 ++++++++--------------
> >  1 file changed, 19 insertions(+), 35 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/d=
rm/i915/display/intel_audio.c
> > index 00f7a3cf9a04..05cab508c626 100644
> > --- a/drivers/gpu/drm/i915/display/intel_audio.c
> > +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> > @@ -517,16 +517,16 @@ static void hsw_audio_codec_disable(struct intel_=
encoder *encoder,
> >  /* Add a factor to take care of rounding and truncations */
> >  #define ROUNDING_FACTOR 10000
> >  =

> > -static unsigned int get_hblank_early_enable_config(struct intel_encode=
r *encoder,
> > -                                                  const struct intel_c=
rtc_state *crtc_state)
> > +static unsigned int calc_hblank_early_prog(struct intel_encoder *encod=
er,
> > +                                          const struct intel_crtc_stat=
e *crtc_state)
> >  {
> >         struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> >         unsigned int link_clks_available, link_clks_required;
> >         unsigned int tu_data, tu_line, link_clks_active;
> > -       unsigned int hblank_rise, hblank_early_prog;
> >         unsigned int h_active, h_total, hblank_delta, pixel_clk;
> >         unsigned int fec_coeff, cdclk, vdsc_bpp;
> >         unsigned int link_clk, lanes;
> > +       unsigned int hblank_rise;
> >  =

> >         h_active =3D crtc_state->hw.adjusted_mode.crtc_hdisplay;
> >         h_total =3D crtc_state->hw.adjusted_mode.crtc_htotal;
> > @@ -542,44 +542,33 @@ static unsigned int get_hblank_early_enable_confi=
g(struct intel_encoder *encoder
> >                     "lanes =3D %u vdsc_bpp =3D %u cdclk =3D %u\n",
> >                     h_active, link_clk, lanes, vdsc_bpp, cdclk);
> >  =

> > -       if (WARN_ON(!link_clk || !lanes || !vdsc_bpp || !cdclk))
> > +       if (WARN_ON(!link_clk || !pixel_clk || !lanes || !vdsc_bpp || !=
cdclk))
> >                 return 0;
> >  =

> > -       link_clks_available =3D ((((h_total - h_active) *
> > -                              ((link_clk * ROUNDING_FACTOR) /
> > -                               pixel_clk)) / ROUNDING_FACTOR) - 28);
> > -       link_clks_required =3D DIV_ROUND_UP(192000, (1000 * pixel_clk /=
 h_total)) * ((48 /
> > -                                         lanes) + 2);
> > +       link_clks_available =3D (h_total - h_active) * link_clk / pixel=
_clk - 28;
> > +       link_clks_required =3D DIV_ROUND_UP(192000 * h_total, 1000 * pi=
xel_clk) * (48 / lanes + 2);
> =

> That's a relief.
> =

> >  =

> >         if (link_clks_available > link_clks_required)
> >                 hblank_delta =3D 32;
> >         else
> > -               hblank_delta =3D DIV_ROUND_UP(((((5 * ROUNDING_FACTOR) /
> > -                                           link_clk) + ((5 *
> > -                                           ROUNDING_FACTOR) /
> > -                                           cdclk)) * pixel_clk),
> > -                                           ROUNDING_FACTOR);
> > +               hblank_delta =3D DIV64_U64_ROUND_UP(mul_u32_u32(5 * lin=
k_clk + 5 * cdclk, pixel_clk),
> > +                                                 mul_u32_u32(link_clk,=
 cdclk));
> =

> 5 * mul_u32_u32(link_clk, cdclk, pixel_clk)

I presume you meant
5 * mul_u32_u32(link_clk + cdclk, pixel_clk)

mul_u32_u32(5 * (link_clk + cdclk), pixel_clk) =

would seem to be the cheaper option by avoiding
the 64bit multiply.

> =

> >  =

> > -       tu_data =3D (pixel_clk * vdsc_bpp * 8) / ((link_clk *
> > -                  lanes * fec_coeff) / 1000000);
> > -       tu_line =3D (((h_active * link_clk * fec_coeff) /
> > -                  1000000) / (64 * pixel_clk));
> > +       tu_data =3D div64_u64(mul_u32_u32(pixel_clk * vdsc_bpp * 8, 100=
0000),
> > +                           mul_u32_u32(link_clk * lanes, fec_coeff));
> =

> That 1000000 is fec_scale.
> =

> > +       tu_line =3D div64_u64(h_active * mul_u32_u32(link_clk, fec_coef=
f),
> > +                           mul_u32_u32(64 * pixel_clk, 1000000));
> >         link_clks_active  =3D (tu_line - 1) * 64 + tu_data;
> =

> Transformations look correct.
> =

> > -       hblank_rise =3D ((link_clks_active + 6 * DIV_ROUND_UP(link_clks=
_active,
> > -                       250) + 4) * ((pixel_clk * ROUNDING_FACTOR) /
> > -                       link_clk)) / ROUNDING_FACTOR;
> > +       hblank_rise =3D (link_clks_active + 6 * DIV_ROUND_UP(link_clks_=
active, 250) + 4) * pixel_clk / link_clk;
> >  =

> > -       hblank_early_prog =3D h_active - hblank_rise + hblank_delta;
> > -
> > -       return hblank_early_prog;
> > +       return h_active - hblank_rise + hblank_delta;
> =

> ROUNDING_FACTOR doesn't seem to do any rounding.
> =

> >  }
> >  =

> > -static unsigned int get_sample_room_req_config(const struct intel_crtc=
_state *crtc_state)
> > +static unsigned int calc_samples_room(const struct intel_crtc_state *c=
rtc_state)
> >  {
> >         unsigned int h_active, h_total, pixel_clk;
> >         unsigned int link_clk, lanes;
> > -       unsigned int samples_room;
> >  =

> >         h_active =3D crtc_state->hw.adjusted_mode.hdisplay;
> >         h_total =3D crtc_state->hw.adjusted_mode.htotal;
> > @@ -587,12 +576,8 @@ static unsigned int get_sample_room_req_config(con=
st struct intel_crtc_state *cr
> >         link_clk =3D crtc_state->port_clock;
> >         lanes =3D crtc_state->lane_count;
> >  =

> > -       samples_room =3D ((((h_total - h_active) * ((link_clk *
> > -                       ROUNDING_FACTOR) / pixel_clk)) /
> > -                       ROUNDING_FACTOR) - 12) / ((48 /
> > -                       lanes) + 2);
> > -
> > -       return samples_room;
> > +       return ((h_total - h_active) * link_clk - 12 * pixel_clk) /
> > +               (pixel_clk * (48 / lanes + 2));
> =

> Expansion of fractions looks fine.
> =

> The maths looks to be the same, so
> Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
> =

> Don't ask me about the meaning of it though.
> =

> One question might be if there are known inputs/outputs we can build
> into a unit test.

Yeah, that might be a good idea.

Also it looks like we could precompute all this and stuff
the result into the crtc state to get the state checker =

involved. Would also get rid of that ugly cdcdlk.hw usage.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
