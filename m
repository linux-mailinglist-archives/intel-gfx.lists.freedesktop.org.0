Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E1A82744A3
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Sep 2020 16:45:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEFAC6E890;
	Tue, 22 Sep 2020 14:45:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 955F96E890
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Sep 2020 14:45:55 +0000 (UTC)
IronPort-SDR: WdCXt4OEQGSurlfWHWJFAgqwfWgQ2VYwjX8Hv3XxZIvaKBuUUG5kUJMZfvt6r/WO08l/B2+ze9
 KNnF2Xko+kew==
X-IronPort-AV: E=McAfee;i="6000,8403,9752"; a="148279132"
X-IronPort-AV: E=Sophos;i="5.77,291,1596524400"; d="scan'208";a="148279132"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2020 07:45:54 -0700
IronPort-SDR: MKK17A6jP38Tt9cSN1NPwkJdwq3WC77kxrb+gT536izKE191N3GuGSlbHJRTNRaoHWnGCU+nbO
 Pz8jOYoBc4+Q==
X-IronPort-AV: E=Sophos;i="5.77,291,1596524400"; d="scan'208";a="335043871"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2020 07:45:53 -0700
Date: Tue, 22 Sep 2020 17:45:43 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200922144543.GE23028@ideak-desk.fi.intel.com>
References: <20200922125106.30540-1-imre.deak@intel.com>
 <20200922125106.30540-3-imre.deak@intel.com>
 <20200922131424.GR6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200922131424.GR6112@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915: Move intel_dp_get_link_status
 to intel_dp_link_training.c
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Sep 22, 2020 at 04:14:24PM +0300, Ville Syrj=E4l=E4 wrote:
> On Tue, Sep 22, 2020 at 03:51:01PM +0300, Imre Deak wrote:
> > The link status is used to communicate the parameters of the link
> > training with the DPRX and determine if the link training is successful
> > or a retraining is needed. Accordingly move the function to read the
> > link status to intel_dp_link_training.c
> > =

> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c          | 11 -----------
> >  drivers/gpu/drm/i915/display/intel_dp.h          |  2 --
> >  .../drm/i915/display/intel_dp_link_training.c    | 16 ++++++++++++++++
> >  .../drm/i915/display/intel_dp_link_training.h    |  3 +++
> >  4 files changed, 19 insertions(+), 13 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/=
i915/display/intel_dp.c
> > index 2a4a9c0e7427..ee93a00a4d5e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -4126,17 +4126,6 @@ static void chv_dp_post_pll_disable(struct intel=
_atomic_state *state,
> >  	chv_phy_post_pll_disable(encoder, old_crtc_state);
> >  }
> >  =

> > -/*
> > - * Fetch AUX CH registers 0x202 - 0x207 which contain
> > - * link status information
> > - */
> > -bool
> > -intel_dp_get_link_status(struct intel_dp *intel_dp, u8 link_status[DP_=
LINK_STATUS_SIZE])
> > -{
> > -	return drm_dp_dpcd_read(&intel_dp->aux, DP_LANE0_1_STATUS, link_statu=
s,
> > -				DP_LINK_STATUS_SIZE) =3D=3D DP_LINK_STATUS_SIZE;
> > -}
> > -
> >  static u8 intel_dp_voltage_max_2(struct intel_dp *intel_dp)
> >  {
> >  	return DP_TRAIN_VOLTAGE_SWING_LEVEL_2;
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/=
i915/display/intel_dp.h
> > index 08a1c0aa8b94..34ae7988a554 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> > @@ -100,8 +100,6 @@ void intel_dp_compute_rate(struct intel_dp *intel_d=
p, int port_clock,
> >  			   u8 *link_bw, u8 *rate_select);
> >  bool intel_dp_source_supports_hbr2(struct intel_dp *intel_dp);
> >  bool intel_dp_source_supports_hbr3(struct intel_dp *intel_dp);
> > -bool
> > -intel_dp_get_link_status(struct intel_dp *intel_dp, u8 *link_status);
> >  =

> >  bool intel_dp_get_colorimetry_status(struct intel_dp *intel_dp);
> >  int intel_dp_link_required(int pixel_clock, int bpp);
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/dr=
ivers/gpu/drm/i915/display/intel_dp_link_training.c
> > index f8b53c5b5777..6d13d00db5e6 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > @@ -34,6 +34,22 @@ intel_dp_dump_link_status(const u8 link_status[DP_LI=
NK_STATUS_SIZE])
> >  		      link_status[3], link_status[4], link_status[5]);
> >  }
> >  =

> > +/**
> > + * intel_dp_get_link_status - get the link status information for the =
DPRX
> > + * @intel_dp: DP struct
> > + * @link_status: buffer to return the status in
> > + *
> > + * Fetch the AUX DPCD registers for the DPRX link status.
> > + *
> > + * Returns true if the information was read successfully, false otherw=
ise.
> > + */
> > +bool
> > +intel_dp_get_link_status(struct intel_dp *intel_dp, u8 link_status[DP_=
LINK_STATUS_SIZE])
> > +{
> > +	return drm_dp_dpcd_read(&intel_dp->aux, DP_LANE0_1_STATUS, link_statu=
s,
> > +				DP_LINK_STATUS_SIZE) =3D=3D DP_LINK_STATUS_SIZE;
> > +}
> > +
> >  static u8 dp_voltage_max(u8 preemph)
> >  {
> >  	switch (preemph & DP_TRAIN_PRE_EMPHASIS_MASK) {
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.h b/dr=
ivers/gpu/drm/i915/display/intel_dp_link_training.h
> > index 01f1dabbb060..47c97f4a0d57 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
> > @@ -10,6 +10,9 @@
> >  =

> >  struct intel_dp;
> >  =

> > +bool intel_dp_get_link_status(struct intel_dp *intel_dp,
> > +			      u8 link_status[DP_LINK_STATUS_SIZE]);
> > +
> =

> Do we still need it outside? Hmm, I guess we do.

Yes, for PHY auto-testing, but I think that should rather depend on the
regular link training sequence as discussed elsewhere.

> =

> Oh well
> Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> >  void intel_dp_get_adjust_train(struct intel_dp *intel_dp,
> >  			       const u8 link_status[DP_LINK_STATUS_SIZE]);
> >  void intel_dp_start_link_train(struct intel_dp *intel_dp);
> > -- =

> > 2.17.1
> > =

> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
