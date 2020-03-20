Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC90B18D81D
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2020 20:08:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B622A6EB5C;
	Fri, 20 Mar 2020 19:08:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B79746EB5C
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2020 19:08:36 +0000 (UTC)
IronPort-SDR: yMHbySNpfFfJsa9Q5TNmXNM6F76CQTLFb6q97lG+1YVPa0c/hdAu2UV7cmTt8LHwEn4IVYL9kv
 IPRF0fHNQIiw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2020 12:08:36 -0700
IronPort-SDR: M1Z1YzIwWF569c7PFEZtan0tdjCaFRoC1zClsLKMKzWe+RWTCASs9P8brQR1pGSHDpMKCQwWlg
 Gpa9xI4wuaCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,285,1580803200"; d="scan'208";a="239310780"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 20 Mar 2020 12:08:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 20 Mar 2020 21:08:31 +0200
Date: Fri, 20 Mar 2020 21:08:31 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20200320190831.GQ13686@intel.com>
References: <20200319163844.22783-1-ville.syrjala@linux.intel.com>
 <20200319222049.GB11219@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200319222049.GB11219@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
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

On Thu, Mar 19, 2020 at 03:20:50PM -0700, Manasi Navare wrote:
> On Thu, Mar 19, 2020 at 06:38:42PM +0200, Ville Syrjala wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > Some new eDP panels don't like to operate at the max parameters, and
> > instead we need to go for an optimal confiugration. That unfortunately
> > doesn't work with older eDP panels which are generally only guaranteed
> > to work at the max parameters.
> > =

> > To solve these two conflicting requirements let's start with the optimal
> > setup, and if that fails we start again with the max parameters. The
> > downside is probably an extra modeset when we switch strategies but
> > I don't see a good way to avoid that.
> > =

> > For a bit of history we first tried to go for the fast+narrow in
> > commit 7769db588384 ("drm/i915/dp: optimize eDP 1.4+ link config
> > fast and narrow"). but that had to be reverted due to regression
> > on older panels in commit f11cb1c19ad0 ("drm/i915/dp: revert back
> > to max link rate and lane count on eDP"). So now we try to get
> > the best of both worlds by using both strategies.
> > =

> > v2: Deal with output_bpp and uapi vs. hw state split
> >     Reword some comments
> > =

> > Cc: Jani Nikula <jani.nikula@intel.com>
> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > Cc: Manasi Navare <manasi.d.navare@intel.com>
> > Cc: Albert Astals Cid <aacid@kde.org> # v5.0 backport
> > Cc: Emanuele Panigati <ilpanich@gmail.com> # v5.0 backport
> > Cc: Matteo Iervasi <matteoiervasi@gmail.com> # v5.0 backport
> > Cc: Timo Aaltonen <tjaalton@ubuntu.com>
> > References: https://bugs.freedesktop.org/show_bug.cgi?id=3D105267
> > References: https://bugs.freedesktop.org/show_bug.cgi?id=3D109959
> > References: https://gitlab.freedesktop.org/drm/intel/issues/272
> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> This approach looks good to me to fallback to max parameters if
> it fails the first time.
> =

> > ---
> >  .../drm/i915/display/intel_display_types.h    |  1 +
> >  drivers/gpu/drm/i915/display/intel_dp.c       | 74 ++++++++++++++++---
> >  2 files changed, 66 insertions(+), 9 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drive=
rs/gpu/drm/i915/display/intel_display_types.h
> > index 5e00e611f077..ffde0d4af23c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1258,6 +1258,7 @@ struct intel_dp {
> >  	bool link_trained;
> >  	bool has_audio;
> >  	bool reset_link_params;
> > +	bool use_max_params;
> >  	u8 dpcd[DP_RECEIVER_CAP_SIZE];
> >  	u8 psr_dpcd[EDP_PSR_RECEIVER_CAP_SIZE];
> >  	u8 downstream_ports[DP_MAX_DOWNSTREAM_PORTS];
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/=
i915/display/intel_dp.c
> > index ef2e06e292d5..85abcce492ca 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -465,6 +465,12 @@ int intel_dp_get_link_train_fallback_values(struct=
 intel_dp *intel_dp,
> >  {
> >  	int index;
> >  =

> > +	if (intel_dp_is_edp(intel_dp) && !intel_dp->use_max_params) {
> > +		DRM_DEBUG_KMS("Retrying Link training for eDP with max parameters\n"=
);
> > +		intel_dp->use_max_params =3D true;
> > +		return 0;
> > +	}
> =

> We need to remove the current check for intel_dp_can_link_train_fallback_=
for_edp() right?

No. Why do you think it needs to be removed?

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
