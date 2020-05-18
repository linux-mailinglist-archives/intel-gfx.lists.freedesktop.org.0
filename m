Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 56E2E1D8575
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2020 20:19:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A17786E463;
	Mon, 18 May 2020 18:19:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD50C6E463
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 May 2020 18:19:09 +0000 (UTC)
IronPort-SDR: C9E2h9uy/6h2tXTRtjWW2hcv79uApyt5hUw/DRacde6wtZfhAbVH4VwDMGMHGib+gcrnxhb+3X
 DfYDlaZgKmhg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2020 11:19:09 -0700
IronPort-SDR: obNN/MdR3DJ92C9jBtg7gkcOA55yDw/gA1CS5GRraVs4bthCa8A4NoVwRhHjhllUbp59BUCFYX
 FZosJmlXT3PA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,407,1583222400"; d="scan'208";a="264046803"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by orsmga003.jf.intel.com with ESMTP; 18 May 2020 11:19:09 -0700
Date: Mon, 18 May 2020 11:20:22 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200518182022.GA32080@intel.com>
References: <20200512174145.3186-1-ville.syrjala@linux.intel.com>
 <20200512174145.3186-6-ville.syrjala@linux.intel.com>
 <20200515191822.GB20478@intel.com>
 <20200515195957.GO6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200515195957.GO6112@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 5/7] drm/i915: Reverse preemph vs. voltage
 swing preference
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

On Fri, May 15, 2020 at 10:59:57PM +0300, Ville Syrj=E4l=E4 wrote:
> On Fri, May 15, 2020 at 12:18:22PM -0700, Manasi Navare wrote:
> > On Tue, May 12, 2020 at 08:41:43PM +0300, Ville Syrjala wrote:
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > =

> > > The DP spec says:
> > > "When the combination of the requested pre-emphasis level and
> > >  voltage swing exceeds the capability of a DPTX, the DPTX shall
> > >  set the pre-emphasis level according to the request and use the
> > >  highest voltage swing it can output with the given pre-emphasis leve=
l."
> > > and
> > > "When a DPTX reads a request beyond the limits of this Standard,
> > >  the DPTX shall set the pre-emphasis level according to the request
> > >  and set the highest voltage swing level it can output with the
> > >  given pre-emphasis level. If a DPTX is requested for 9.5dB of
> > >  pre-emphasis level (may be supported for a DPTX) and cannot support
> > >  that level, it shall set the pre-emphasis level to the next
> > >  highest level, 6dB."
> > > =

> > > Ie. we should first validate the pre-emphasis, and then select
> > > the appropriate vswing for it.
> > > =

> > > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > So basically reverse the logic for selecting the vswing and pre emphasis
> > =

> > > ---
> > >  .../drm/i915/display/intel_dp_link_training.c | 32 +++++++++--------=
--
> > >  1 file changed, 16 insertions(+), 16 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/=
drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > index 171d9e842fc0..573f93779449 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > @@ -34,18 +34,18 @@ intel_dp_dump_link_status(const u8 link_status[DP=
_LINK_STATUS_SIZE])
> > >  		      link_status[3], link_status[4], link_status[5]);
> > >  }
> > >  =

> > > -static u8 dp_pre_emphasis_max(u8 voltage_swing)
> > > +static u8 dp_voltage_max(u8 preemph)
> > >  {
> > > -	switch (voltage_swing & DP_TRAIN_VOLTAGE_SWING_MASK) {
> > > -	case DP_TRAIN_VOLTAGE_SWING_LEVEL_0:
> > > -		return DP_TRAIN_PRE_EMPH_LEVEL_3;
> > > -	case DP_TRAIN_VOLTAGE_SWING_LEVEL_1:
> > > -		return DP_TRAIN_PRE_EMPH_LEVEL_2;
> > > -	case DP_TRAIN_VOLTAGE_SWING_LEVEL_2:
> > > -		return DP_TRAIN_PRE_EMPH_LEVEL_1;
> > > -	case DP_TRAIN_VOLTAGE_SWING_LEVEL_3:
> > > +	switch (preemph & DP_TRAIN_PRE_EMPHASIS_MASK) {
> > > +	case DP_TRAIN_PRE_EMPH_LEVEL_0:
> > > +		return DP_TRAIN_VOLTAGE_SWING_LEVEL_3;
> > > +	case DP_TRAIN_PRE_EMPH_LEVEL_1:
> > > +		return DP_TRAIN_VOLTAGE_SWING_LEVEL_2;
> > > +	case DP_TRAIN_PRE_EMPH_LEVEL_2:
> > > +		return DP_TRAIN_VOLTAGE_SWING_LEVEL_1;
> > > +	case DP_TRAIN_PRE_EMPH_LEVEL_3:
> > >  	default:
> > > -		return DP_TRAIN_PRE_EMPH_LEVEL_0;
> > > +		return DP_TRAIN_VOLTAGE_SWING_LEVEL_0;
> > =

> > These vswing levels for that specific pre emph level comes from the Bsp=
ec
> > or from the DP spec? It wasnt clear to me how level3 of vswing was the =
max for pre emphasis level 0 and all others?
> =

> From DP 1.4 spec "Table 3-1: Allowed Vdiff_pre_pp and Pre-emphasis
> Combinations"
> =

> Previosuly this was present in some semi-mangled way in each
> platform's max preeph calculation. Now we just have one canonical
> copy of it. Later on we could probably lift this into drm_dp_helper.

Okay great yes confirmed from that table and looks good to me

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
