Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E2C118DB9E
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Mar 2020 00:15:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8C856EB89;
	Fri, 20 Mar 2020 23:15:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F1DB6EB89
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2020 23:15:50 +0000 (UTC)
IronPort-SDR: Kr7nHWMdEAeOqCl7muh+AX4RlTy2mMo6w5yrUXJDAAG/Wqzi3zCDTue+C/2y/X3prjCebULNfB
 V6yQY9fuPEtw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2020 16:15:49 -0700
IronPort-SDR: 4o+rCt0a90vf3BmRzSw4REiF3/xo9tLQ0Fjpq5x+XjcJ/4sCuLZNExmPXFbnf7LyukEGq6mdyC
 fszF2Hw972YQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,286,1580803200"; d="scan'208";a="445138667"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by fmsmga005.fm.intel.com with ESMTP; 20 Mar 2020 16:15:48 -0700
Date: Fri, 20 Mar 2020 16:17:27 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200320231727.GD15035@intel.com>
References: <20200319163844.22783-1-ville.syrjala@linux.intel.com>
 <20200319222049.GB11219@intel.com>
 <20200320190831.GQ13686@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200320190831.GQ13686@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Try to use fast+narrow link
 on eDP again and fall back to the old max strategy on failure
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
Cc: Matteo Iervasi <matteoiervasi@gmail.com>,
 Jani Nikula <jani.nikula@intel.com>, Albert Astals Cid <aacid@kde.org>,
 intel-gfx@lists.freedesktop.org, Emanuele Panigati <ilpanich@gmail.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 20, 2020 at 09:08:31PM +0200, Ville Syrj=E4l=E4 wrote:
> On Thu, Mar 19, 2020 at 03:20:50PM -0700, Manasi Navare wrote:
> > On Thu, Mar 19, 2020 at 06:38:42PM +0200, Ville Syrjala wrote:
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > =

> > > Some new eDP panels don't like to operate at the max parameters, and
> > > instead we need to go for an optimal confiugration. That unfortunately
> > > doesn't work with older eDP panels which are generally only guaranteed
> > > to work at the max parameters.
> > > =

> > > To solve these two conflicting requirements let's start with the opti=
mal
> > > setup, and if that fails we start again with the max parameters. The
> > > downside is probably an extra modeset when we switch strategies but
> > > I don't see a good way to avoid that.
> > > =

> > > For a bit of history we first tried to go for the fast+narrow in
> > > commit 7769db588384 ("drm/i915/dp: optimize eDP 1.4+ link config
> > > fast and narrow"). but that had to be reverted due to regression
> > > on older panels in commit f11cb1c19ad0 ("drm/i915/dp: revert back
> > > to max link rate and lane count on eDP"). So now we try to get
> > > the best of both worlds by using both strategies.
> > > =

> > > v2: Deal with output_bpp and uapi vs. hw state split
> > >     Reword some comments
> > > =

> > > Cc: Jani Nikula <jani.nikula@intel.com>
> > > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > > Cc: Manasi Navare <manasi.d.navare@intel.com>
> > > Cc: Albert Astals Cid <aacid@kde.org> # v5.0 backport
> > > Cc: Emanuele Panigati <ilpanich@gmail.com> # v5.0 backport
> > > Cc: Matteo Iervasi <matteoiervasi@gmail.com> # v5.0 backport
> > > Cc: Timo Aaltonen <tjaalton@ubuntu.com>
> > > References: https://bugs.freedesktop.org/show_bug.cgi?id=3D105267
> > > References: https://bugs.freedesktop.org/show_bug.cgi?id=3D109959
> > > References: https://gitlab.freedesktop.org/drm/intel/issues/272
> > > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > This approach looks good to me to fallback to max parameters if
> > it fails the first time.
> > =

> > > ---
> > >  .../drm/i915/display/intel_display_types.h    |  1 +
> > >  drivers/gpu/drm/i915/display/intel_dp.c       | 74 ++++++++++++++++-=
--
> > >  2 files changed, 66 insertions(+), 9 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/dri=
vers/gpu/drm/i915/display/intel_display_types.h
> > > index 5e00e611f077..ffde0d4af23c 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > @@ -1258,6 +1258,7 @@ struct intel_dp {
> > >  	bool link_trained;
> > >  	bool has_audio;
> > >  	bool reset_link_params;
> > > +	bool use_max_params;
> > >  	u8 dpcd[DP_RECEIVER_CAP_SIZE];
> > >  	u8 psr_dpcd[EDP_PSR_RECEIVER_CAP_SIZE];
> > >  	u8 downstream_ports[DP_MAX_DOWNSTREAM_PORTS];
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/dr=
m/i915/display/intel_dp.c
> > > index ef2e06e292d5..85abcce492ca 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > @@ -465,6 +465,12 @@ int intel_dp_get_link_train_fallback_values(stru=
ct intel_dp *intel_dp,
> > >  {
> > >  	int index;
> > >  =

> > > +	if (intel_dp_is_edp(intel_dp) && !intel_dp->use_max_params) {
> > > +		DRM_DEBUG_KMS("Retrying Link training for eDP with max parameters\=
n");
> > > +		intel_dp->use_max_params =3D true;
> > > +		return 0;
> > > +	}
> > =

> > We need to remove the current check for intel_dp_can_link_train_fallbac=
k_for_edp() right?
> =

> No. Why do you think it needs to be removed?
>

Okay so if trying max params link training again fails on eDP, then it fall=
sback from max to lower values
and fallback link training continues until it can handle the fixed mode wit=
h the params or
the lowest params?

So if I understand it correctly we first try to use the optimum approach, i=
f that fails then
we try with max params so in this iteration if it fails again then max para=
ms is still true
then it will fallback and call intel_dp_can_link_train_fallback_for_edp() a=
nd then
again keep retrying?

Manasi
 =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
