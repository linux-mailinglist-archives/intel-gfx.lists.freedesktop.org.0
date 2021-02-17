Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 358DD31E0CC
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Feb 2021 21:51:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C211D6E5B9;
	Wed, 17 Feb 2021 20:51:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDEDE6E5B9
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Feb 2021 20:51:42 +0000 (UTC)
IronPort-SDR: 8eYktjmlFwx8DXCllCj/uDwQhGQuGJRrlkg/hvDAr9PLjNraCEyxQNY5n243KGAMwfMq8KtjMI
 6Yvs3QX9pd9A==
X-IronPort-AV: E=McAfee;i="6000,8403,9898"; a="182527799"
X-IronPort-AV: E=Sophos;i="5.81,185,1610438400"; d="scan'208";a="182527799"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2021 12:51:42 -0800
IronPort-SDR: GIgli2TBX76AuRH8lfs/VTy9Z8heU1BNpLwS5SEyf5PQL8uJ00HEnkC18A3WQmbwgm8GEVdoAW
 8CeRiQnHoWYA==
X-IronPort-AV: E=Sophos;i="5.81,185,1610438400"; d="scan'208";a="400137411"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2021 12:51:40 -0800
Date: Wed, 17 Feb 2021 22:51:36 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20210217205136.GB558393@ideak-desk.fi.intel.com>
References: <20210217180245.202837-1-jose.souza@intel.com>
 <20210217193828.GB557342@ideak-desk.fi.intel.com>
 <5d68bffca47deafe563d51d6f94c01c1167ab15f.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5d68bffca47deafe563d51d6f94c01c1167ab15f.camel@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Compute aux ch power
 domain during DDI initialization
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

On Wed, Feb 17, 2021 at 09:50:13PM +0200, Souza, Jose wrote:
> On Wed, 2021-02-17 at 21:38 +0200, Imre Deak wrote:
> > On Wed, Feb 17, 2021 at 10:02:45AM -0800, Jos=E9 Roberto de Souza wrote:
> > > [...]
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/dri=
vers/gpu/drm/i915/display/intel_display_types.h
> > > index 07b7f5eae587..d527cb2ad070 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > @@ -1589,6 +1589,8 @@ struct intel_digital_port {
> > >  	/* Used for DP and ICL+ TypeC/DP and TypeC/HDMI ports. */
> > >  	enum aux_ch aux_ch;
> > >  	enum intel_display_power_domain ddi_io_power_domain;
> > > +	/* Regular/legacy aux channel power domain */
> > > +	enum intel_display_power_domain aux_power_domain;
> > =

> > What's the rational for storing it here? If there's a good one then I'd
> > rather call this legacy_aux_power_domain and store the tbt aux domains
> > here as well. It would also need to get initialized for dp encoders.
> =

> This is a preparation for a future platform that will need a different
> aux power domain that do not mach with aux ch id.

Ok, makes sense then.

> Yeah I missed the initialization for non-DDI platforms.
> =

> > =

> > >  	intel_wakeref_t ddi_io_wakeref;
> > >  	intel_wakeref_t aux_wakeref;
> > >  	struct mutex tc_lock;	/* protects the TypeC port mode */
> > > diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/dr=
m/i915/display/intel_tc.c
> > > index 2cefc13535a0..83080e15ad7a 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_tc.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> > > @@ -29,7 +29,7 @@ tc_cold_get_power_domain(struct intel_digital_port =
*dig_port)
> > >  	struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
> > >  =

> > > =

> > >  	if (INTEL_GEN(i915) =3D=3D 11)
> > > -		return intel_legacy_aux_to_power_domain(dig_port->aux_ch);
> > > +		return dig_port->aux_power_domain;
> > >  	else
> > >  		return POWER_DOMAIN_TC_COLD_OFF;
> > >  }
> > > -- =

> > > 2.30.1
> > > =

> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
