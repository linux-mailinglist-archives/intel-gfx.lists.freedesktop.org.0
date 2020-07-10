Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B47321B4A2
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 14:02:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C3F56EC2D;
	Fri, 10 Jul 2020 12:02:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 621996EC2F
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 12:02:04 +0000 (UTC)
IronPort-SDR: aTeM4ymeEIHSGMXxqbJHG0i2Z1GR3EpJTmEc1Vgy/BT0aodMn7jqYNbOFJnRu7Gq9u+YxXz7do
 n4dLf86lCy/A==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="145681111"
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="145681111"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 05:02:03 -0700
IronPort-SDR: 8MvpbVR/4bSuNs79/YbRuP4T25SaKl66F7GVROmfl0kxdronOfxxe2VHvM1s4MTAWJSRQREx7s
 f28QSH1ovMgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="315324337"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 10 Jul 2020 05:02:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 10 Jul 2020 15:02:00 +0300
Date: Fri, 10 Jul 2020 15:02:00 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20200710120200.GG6112@intel.com>
References: <20200709145845.18118-1-ville.syrjala@linux.intel.com>
 <ac6ca9134c3e22fe045743f1c7a74deff6b2c2ac.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ac6ca9134c3e22fe045743f1c7a74deff6b2c2ac.camel@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: WARN if max vswing/pre-emphasis
 violates the DP spec
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 09, 2020 at 08:14:05PM +0000, Souza, Jose wrote:
> On Thu, 2020-07-09 at 17:58 +0300, Ville Syrjala wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > According to the DP spec a DPTX must support vswing/pre-emphasis
> > up to and including level 2. Level 3 is optional (actually DP 1.4a
> > seems to make even level 3 mandatory for HBR2/3, while leaving it
> > optional for RBR/HBR1).
> > =

> > WARN if out encoders' .voltage_max()/.preemph_max() return
> > an illegal value.
> > =

> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp_link_training.c | 9 +++++++++
> >  1 file changed, 9 insertions(+)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/dr=
ivers/gpu/drm/i915/display/intel_dp_link_training.c
> > index 2493142a70e9..a23ed7290843 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > @@ -52,6 +52,7 @@ static u8 dp_voltage_max(u8 preemph)
> >  void intel_dp_get_adjust_train(struct intel_dp *intel_dp,
> >  			       const u8 link_status[DP_LINK_STATUS_SIZE])
> >  {
> > +	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> >  	u8 v =3D 0;
> >  	u8 p =3D 0;
> >  	int lane;
> > @@ -64,12 +65,20 @@ void intel_dp_get_adjust_train(struct intel_dp *int=
el_dp,
> >  	}
> >  =

> >  	preemph_max =3D intel_dp->preemph_max(intel_dp);
> > +	drm_WARN_ON_ONCE(&i915->drm,
> > +			 preemph_max !=3D DP_TRAIN_PRE_EMPH_LEVEL_2 &&
> > +			 preemph_max !=3D DP_TRAIN_PRE_EMPH_LEVEL_3);
> =

> Okay matches but I guess the preemph_max function should receive as param=
eter the voltage level to it return the max preemph of that voltage level,
> no?

That was the old way which didn't match the spec. With
the new way those just return the overall maximum that
we support. And the dp_voltage_max() call below fixes up
any out of spec requests.

> =

> > +
> >  	if (p >=3D preemph_max)
> >  		p =3D preemph_max | DP_TRAIN_MAX_PRE_EMPHASIS_REACHED;
> >  =

> >  	v =3D min(v, dp_voltage_max(p));
> >  =

> >  	voltage_max =3D intel_dp->voltage_max(intel_dp);
> > +	drm_WARN_ON_ONCE(&i915->drm,
> > +			 voltage_max !=3D DP_TRAIN_VOLTAGE_SWING_LEVEL_2 &&
> > +			 voltage_max !=3D DP_TRAIN_VOLTAGE_SWING_LEVEL_3);
> > +
> >  	if (v >=3D voltage_max)
> >  		v =3D voltage_max | DP_TRAIN_MAX_SWING_REACHED;
> >  =


-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
