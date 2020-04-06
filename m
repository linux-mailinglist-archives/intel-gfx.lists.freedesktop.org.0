Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B61419F86D
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Apr 2020 17:02:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CBF36E0B6;
	Mon,  6 Apr 2020 15:02:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C5C46E0B6
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Apr 2020 15:02:13 +0000 (UTC)
IronPort-SDR: RRAFpwna9qYMvRnzhIlx0ZYfMZFtx1WZESjyvXeY1ytAHgrpek2bEMkvvJLBNwHE/ojARSoU+Z
 xS7Bo8ojGMcA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2020 08:02:12 -0700
IronPort-SDR: CScdzvtfVSzE61UOufF1rtU0k2A2wKrVTqzFOu0kG0uDsznivpwgJS2D13oZXqxYeSTtaSiSMO
 OHIqeILDIhKQ==
X-IronPort-AV: E=Sophos;i="5.72,351,1580803200"; d="scan'208";a="424388468"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2020 08:02:10 -0700
Date: Mon, 6 Apr 2020 18:02:00 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>,
 Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20200406150200.GF1299@ideak-desk.fi.intel.com>
References: <20200330095425.29113-1-imre.deak@intel.com>
 <20200330095425.29113-2-imre.deak@intel.com>
 <83e56b113c075360f474ad1aed6acd6e6bac0925.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <83e56b113c075360f474ad1aed6acd6e6bac0925.camel@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Extend hotplug detect retry
 on TypeC connectors to 5 seconds
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 30, 2020 at 10:13:02PM +0300, Souza, Jose wrote:
> On Mon, 2020-03-30 at 12:54 +0300, Imre Deak wrote:
> > On TypeC ports if a sink deasserts/reasserts its HPD signal,
> > generating
> > a hotplug interrupt without the sink getting unplugged/replugged from
> > the connector, there can be an up to 3 seconds delay until the AUX
> > channel gets functional. To avoid detection failures this delay
> > causes
> > retry the detection for 5 seconds.
> =

> 5 seconds? would it be 5 tries?

Yes, 5 tries with a 1 second delay in-between them.

Thanks for the review, patchset pushed to -dinq.

> Other than that both patches looks good.
> =

> Reviewed-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> =

> > =

> > I noticed this on ICL/TGL RVPs and a DELL XPS 13 7390 ICL laptop.
> > =

> > References: https://gitlab.freedesktop.org/drm/intel/issues/1067
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c | 12 +++++++++++-
> >  1 file changed, 11 insertions(+), 1 deletion(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 4f508bf70f3b..2d947ff83488 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -4371,7 +4371,10 @@ static enum intel_hotplug_state
> >  intel_ddi_hotplug(struct intel_encoder *encoder,
> >  		  struct intel_connector *connector)
> >  {
> > +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> >  	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
> > +	enum phy phy =3D intel_port_to_phy(i915, encoder->port);
> > +	bool is_tc =3D intel_phy_is_tc(i915, phy);
> >  	struct drm_modeset_acquire_ctx ctx;
> >  	enum intel_hotplug_state state;
> >  	int ret;
> > @@ -4414,8 +4417,15 @@ intel_ddi_hotplug(struct intel_encoder
> > *encoder,
> >  	 * valid EDID. To solve this schedule another detection cycle
> > if this
> >  	 * time around we didn't detect any change in the sink's
> > connection
> >  	 * status.
> > +	 *
> > +	 * Type-c connectors which get their HPD signal deasserted then
> > +	 * reasserted, without unplugging/replugging the sink from the
> > +	 * connector, introduce a delay until the AUX channel
> > communication
> > +	 * becomes functional. Retry the detection for 5 seconds on
> > type-c
> > +	 * connectors to account for this delay.
> >  	 */
> > -	if (state =3D=3D INTEL_HOTPLUG_UNCHANGED && !connector-
> > >hotplug_retries &&
> > +	if (state =3D=3D INTEL_HOTPLUG_UNCHANGED &&
> > +	    connector->hotplug_retries < (is_tc ? 5 : 1) &&
> >  	    !dig_port->dp.is_mst)
> >  		state =3D INTEL_HOTPLUG_RETRY;
> >  =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
