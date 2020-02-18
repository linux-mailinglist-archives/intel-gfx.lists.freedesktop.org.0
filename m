Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FDE51626CE
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2020 14:08:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FE9F6E2D1;
	Tue, 18 Feb 2020 13:08:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D09306E277
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2020 13:08:54 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Feb 2020 05:08:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,456,1574150400"; d="scan'208";a="268750932"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 18 Feb 2020 05:08:51 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Feb 2020 15:08:50 +0200
Date: Tue, 18 Feb 2020 15:08:50 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20200218130850.GP13686@intel.com>
References: <20200205183546.9291-1-ville.syrjala@linux.intel.com>
 <20200205183546.9291-3-ville.syrjala@linux.intel.com>
 <87pnecuk0m.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87pnecuk0m.fsf@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 2/5] drm/i915: Mark all HPD capabled
 connectors as such
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

On Tue, Feb 18, 2020 at 03:01:29PM +0200, Jani Nikula wrote:
> On Wed, 05 Feb 2020, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> >
> > Currently we only set the DRM_CONNECTOR_POLL_{DISCONNECT,CONNECT}
> > bits in intel_connector->polled (the base setting), leading to
> > some confusing looking code to reset drm_connector->polled
> > (the actual setting) to DRM_CONNECTOR_POLL_HPD. Let's set
> > intel_connector->polled =3D DRM_CONNECTOR_POLL_HPD for all hpd
> > capable connectors, and then we don't need so many special
> > cases in the hotplug code.
> >
> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> I don't know why it was so hard to wrap my head around this one... I
> guess just tracking all the places that need something that wasn't there
> before.

connector->polled vs. connector->base.polled probably doesn't help.
We should perhaps rename the first one to something else. Just not
sure what to call it. "default_polled" or something maybe?

> =

> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> =

> =

> > ---
> >  drivers/gpu/drm/i915/display/intel_crt.c     |  1 +
> >  drivers/gpu/drm/i915/display/intel_dp.c      |  1 +
> >  drivers/gpu/drm/i915/display/intel_hdmi.c    |  1 +
> >  drivers/gpu/drm/i915/display/intel_hotplug.c | 17 ++++++++---------
> >  drivers/gpu/drm/i915/display/intel_sdvo.c    |  1 +
> >  5 files changed, 12 insertions(+), 9 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm=
/i915/display/intel_crt.c
> > index 0e2f63b0d458..ba0717d8c248 100644
> > --- a/drivers/gpu/drm/i915/display/intel_crt.c
> > +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> > @@ -1033,6 +1033,7 @@ void intel_crt_init(struct drm_i915_private *dev_=
priv)
> >  	    !dmi_check_system(intel_spurious_crt_detect)) {
> >  		crt->base.hpd_pin =3D HPD_CRT;
> >  		crt->base.hotplug =3D intel_encoder_hotplug;
> > +		intel_connector->polled =3D DRM_CONNECTOR_POLL_HPD;
> >  	} else {
> >  		intel_connector->polled =3D DRM_CONNECTOR_POLL_CONNECT;
> >  	}
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/=
i915/display/intel_dp.c
> > index f4dede6253f8..4dfb26b2b2f7 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -7576,6 +7576,7 @@ intel_dp_init_connector(struct intel_digital_port=
 *intel_dig_port,
> >  		connector->ycbcr_420_allowed =3D true;
> >  =

> >  	intel_encoder->hpd_pin =3D intel_hpd_pin_default(dev_priv, port);
> > +	intel_connector->polled =3D DRM_CONNECTOR_POLL_HPD;
> >  =

> >  	intel_dp_aux_init(intel_dp);
> >  =

> > diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/dr=
m/i915/display/intel_hdmi.c
> > index e68bafb76cb1..1a9a3b23cae4 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > @@ -3180,6 +3180,7 @@ void intel_hdmi_init_connector(struct intel_digit=
al_port *intel_dig_port,
> >  		connector->ycbcr_420_allowed =3D true;
> >  =

> >  	intel_encoder->hpd_pin =3D intel_hpd_pin_default(dev_priv, port);
> > +	intel_connector->polled =3D DRM_CONNECTOR_POLL_HPD;
> >  =

> >  	if (HAS_DDI(dev_priv))
> >  		intel_connector->get_hw_state =3D intel_ddi_connector_get_hw_state;
> > diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu=
/drm/i915/display/intel_hotplug.c
> > index 531021002e34..8af0ae61e1bb 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
> > @@ -262,8 +262,6 @@ static void intel_hpd_irq_storm_reenable_work(struc=
t work_struct *work)
> >  			DRM_DEBUG_DRIVER("Reenabling HPD on connector %s\n",
> >  					 connector->base.name);
> >  		connector->base.polled =3D connector->polled;
> > -		if (!connector->base.polled)
> > -			connector->base.polled =3D DRM_CONNECTOR_POLL_HPD;
> >  	}
> >  	drm_connector_list_iter_end(&conn_iter);
> >  =

> > @@ -620,16 +618,17 @@ static void i915_hpd_poll_init_work(struct work_s=
truct *work)
> >  =

> >  	drm_connector_list_iter_begin(dev, &conn_iter);
> >  	for_each_intel_connector_iter(connector, &conn_iter) {
> > -		enum hpd_pin pin =3D intel_connector_hpd_pin(connector);
> > +		enum hpd_pin pin;
> > +
> > +		pin =3D intel_connector_hpd_pin(connector);
> > +		if (pin =3D=3D HPD_NONE)
> > +			continue;
> >  =

> >  		connector->base.polled =3D connector->polled;
> >  =

> > -		if (pin !=3D HPD_NONE && I915_HAS_HOTPLUG(dev_priv) &&
> > -		    !connector->base.polled)
> > -			connector->base.polled =3D enabled ?
> > -				DRM_CONNECTOR_POLL_CONNECT |
> > -				DRM_CONNECTOR_POLL_DISCONNECT :
> > -				DRM_CONNECTOR_POLL_HPD;
> > +		if (enabled && connector->base.polled =3D=3D DRM_CONNECTOR_POLL_HPD)
> > +			connector->base.polled =3D DRM_CONNECTOR_POLL_CONNECT |
> > +				DRM_CONNECTOR_POLL_DISCONNECT;
> >  	}
> >  	drm_connector_list_iter_end(&conn_iter);
> >  =

> > diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/dr=
m/i915/display/intel_sdvo.c
> > index a4921b549f8b..b0588150752c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> > +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> > @@ -2721,6 +2721,7 @@ intel_sdvo_dvi_init(struct intel_sdvo *intel_sdvo=
, int device)
> >  		 * Some SDVO devices have one-shot hotplug interrupts.
> >  		 * Ensure that they get re-enabled when an interrupt happens.
> >  		 */
> > +		intel_connector->polled =3D DRM_CONNECTOR_POLL_HPD;
> >  		intel_encoder->hotplug =3D intel_sdvo_hotplug;
> >  		intel_sdvo_enable_hotplug(intel_encoder);
> >  	} else {
> =

> -- =

> Jani Nikula, Intel Open Source Graphics Center

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
