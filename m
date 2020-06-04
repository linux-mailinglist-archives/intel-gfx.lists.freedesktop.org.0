Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 029321EEAB9
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 20:58:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A5D16E56D;
	Thu,  4 Jun 2020 18:58:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CA446E56A
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jun 2020 18:58:28 +0000 (UTC)
IronPort-SDR: 3UeIRYUjcKRPAMQi+f6iIlfNstR8SfKSJ8AK8gj7mzrp54hh3Mu0cJiOkq/SLF85sOLaBquVOB
 EY9YknuJ8SiA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2020 11:58:27 -0700
IronPort-SDR: pjrrbAcKvSvvf6vMkywDmIWXKX5hMQ/muHw0C3Snlu7nVWKNQQI6UmZ1mbOrwrbZc50CggkOzo
 R0EJd/C50+ZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,472,1583222400"; d="scan'208";a="348190655"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 04 Jun 2020 11:58:25 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 04 Jun 2020 21:58:24 +0300
Date: Thu, 4 Jun 2020 21:58:24 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20200604185824.GG6112@intel.com>
References: <20200604002359.17128-1-manasi.d.navare@intel.com>
 <20200604152543.GU6112@intel.com> <20200604183530.GB3922@intel.com>
 <20200604183819.GD6112@intel.com> <20200604185223.GC3922@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200604185223.GC3922@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: Reset link params on connector
 disconnect
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

On Thu, Jun 04, 2020 at 11:52:24AM -0700, Manasi Navare wrote:
> On Thu, Jun 04, 2020 at 09:38:19PM +0300, Ville Syrj=E4l=E4 wrote:
> > On Thu, Jun 04, 2020 at 11:35:30AM -0700, Manasi Navare wrote:
> > > On Thu, Jun 04, 2020 at 06:25:43PM +0300, Ville Syrj=E4l=E4 wrote:
> > > > On Wed, Jun 03, 2020 at 05:23:59PM -0700, Manasi Navare wrote:
> > > > > We have noticed that when link training fails the panel
> > > > > sends a long pulse indicating connector disconnect. In this case
> > > > > we need to reset the link parameters instead of continuing
> > > > > to use the fallback parameters since else this long pulse
> > > > > by the panel followed by a modeset request which was triggered by=
 the userspace
> > > > > before getting the connector status as disconnected, will
> > > > > result into a modeset now using lower link rate/lane count values.
> > > > > =

> > > > > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1385
> > > > > Cc: Jani Nikula <jani.nikula@linux.intel.com>
> > > > > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > > Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> > > > > ---
> > > > >  drivers/gpu/drm/i915/display/intel_dp.c | 28 +++++++++++++++++--=
------
> > > > >  1 file changed, 19 insertions(+), 9 deletions(-)
> > > > > =

> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gp=
u/drm/i915/display/intel_dp.c
> > > > > index 55fda074c0ad..f7af372647dd 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > > @@ -6111,6 +6111,18 @@ intel_dp_unset_edid(struct intel_dp *intel=
_dp)
> > > > >  	intel_dp->edid_quirks =3D 0;
> > > > >  }
> > > > >  =

> > > > > +static void
> > > > > +intel_dp_reset_link_params(struct intel_dp *intel_dp)
> > > > > +{
> > > > > +	/* Initial max link lane count */
> > > > > +	intel_dp->max_link_lane_count =3D intel_dp_max_common_lane_coun=
t(intel_dp);
> > > > > +
> > > > > +	/* Initial max link rate */
> > > > > +	intel_dp->max_link_rate =3D intel_dp_max_common_rate(intel_dp);
> > > > > +
> > > > > +	intel_dp->reset_link_params =3D false;
> > > > > +}
> > > > > +
> > > > >  static int
> > > > >  intel_dp_detect(struct drm_connector *connector,
> > > > >  		struct drm_modeset_acquire_ctx *ctx,
> > > > > @@ -6139,6 +6151,11 @@ intel_dp_detect(struct drm_connector *conn=
ector,
> > > > >  		memset(&intel_dp->compliance, 0, sizeof(intel_dp->compliance));
> > > > >  		memset(intel_dp->dsc_dpcd, 0, sizeof(intel_dp->dsc_dpcd));
> > > > >  =

> > > > > +		/*Reset the immutable VRR Capable property */
> > > > > +		drm_connector_set_vrr_capable_property(connector,
> > > > > +						       false);
> > > > > +		intel_dp_reset_link_params(intel_dp);
> > > > > +
> > > > =

> > > > Why would we care what those are when the sink is disconnected?
> > > =

> > > We are noticing this happen in case the panel send this long pulse in=
dicating
> > > status change to disconnected, while the modeset was already triggere=
d by userspace
> > > in this case IGT, so the modeset continues right after i915_hotplug_w=
ork_fn
> > > so we need to reset all params which fixes the bug mentioned.
> > =

> > Why did the link params get out of whack before hpd in the first place?
> >
> =

> Most of the failures, we see the link training fails due to AUX timeouts =
and then link params fallback to lower values
> Then we get this hpd, in this case if we dont reset the param to max valu=
es, prev triggered modeset continues
> with fallback values but since connector probe doesnt happen again throug=
h IGT, it tries the same mode
> with fallback values and return encoder config failure.

If the link training failed then clearly the sink didn't like us anymore
anyway. So feels like resetting these here is just shifting some race
window around a bit, but it could still fail if the sink still doesn't
like us.

Would be good if someone was able to figure out why the sink goes bad in
the first place.

> =

> So after reseting the params, the modeset happens with original values an=
d that time link training passes.
> This is seen in all kms_atomic_transitions IGT tests
> =

> Manasi
>  =

> > > =

> > > Manasi
> > > =

> > > > =

> > > > >  		if (intel_dp->is_mst) {
> > > > >  			drm_dbg_kms(&dev_priv->drm,
> > > > >  				    "MST device may have disappeared %d vs %d\n",
> > > > > @@ -6152,15 +6169,8 @@ intel_dp_detect(struct drm_connector *conn=
ector,
> > > > >  		goto out;
> > > > >  	}
> > > > >  =

> > > > > -	if (intel_dp->reset_link_params) {
> > > > > -		/* Initial max link lane count */
> > > > > -		intel_dp->max_link_lane_count =3D intel_dp_max_common_lane_cou=
nt(intel_dp);
> > > > > -
> > > > > -		/* Initial max link rate */
> > > > > -		intel_dp->max_link_rate =3D intel_dp_max_common_rate(intel_dp);
> > > > > -
> > > > > -		intel_dp->reset_link_params =3D false;
> > > > > -	}
> > > > > +	if (intel_dp->reset_link_params)
> > > > > +		intel_dp_reset_link_params(intel_dp);
> > > > >  =

> > > > >  	intel_dp_print_rates(intel_dp);
> > > > >  =

> > > > > -- =

> > > > > 2.19.1
> > > > =

> > > > -- =

> > > > Ville Syrj=E4l=E4
> > > > Intel
> > =

> > -- =

> > Ville Syrj=E4l=E4
> > Intel

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
