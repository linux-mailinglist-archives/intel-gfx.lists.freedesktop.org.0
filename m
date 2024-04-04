Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 971F3898400
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Apr 2024 11:30:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D433E11AB74;
	Thu,  4 Apr 2024 09:30:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2DE811AB72;
 Thu,  4 Apr 2024 09:30:33 +0000 (UTC)
Received: from 91-156-7-239.elisa-laajakaista.fi ([91.156.7.239]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1rsJQP-000000001SA-2eQW; Thu, 04 Apr 2024 12:30:26 +0300
Message-ID: <48c451ecb46e5a17bd945da376103da39c8e6671.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: "Shankar, Uma" <uma.shankar@intel.com>, "Coelho, Luciano"
 <luciano.coelho@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, 
 "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>, "Nikula, Jani" <jani.nikula@intel.com>
Date: Thu, 04 Apr 2024 12:30:23 +0300
In-Reply-To: <DM4PR11MB6360EA16928F7A0DC285E81EF4322@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240318133757.1479189-1-luciano.coelho@intel.com>
 <20240318133757.1479189-3-luciano.coelho@intel.com>
 <DM4PR11MB6360EA16928F7A0DC285E81EF4322@DM4PR11MB6360.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1-pre1 (2023-11-21) on
 farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
 version=4.0.1-pre1
Subject: Re: [PATCH v3 2/4] drm/i915/display: don't allow DMC wakelock on
 older hardware
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 2024-03-21 at 08:02 +0000, Shankar, Uma wrote:
>=20
> > -----Original Message-----
> > From: Coelho, Luciano <luciano.coelho@intel.com>
> > Sent: Monday, March 18, 2024 7:08 PM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: intel-xe@lists.freedesktop.org; Shankar, Uma <uma.shankar@intel.com=
>;
> > ville.syrjala@linux.intel.com; Nikula, Jani <jani.nikula@intel.com>
> > Subject: [PATCH v3 2/4] drm/i915/display: don't allow DMC wakelock on o=
lder
> > hardware
> >=20
> > Only allow running DMC wakelock code if the display version is 20 or gr=
eater.
>=20
> One for previous one, don't do intel_dmc_wl_init unconditionally but prot=
ect it with
> Platform check.

Good point.  I have removed the call to intel_dmc_wl_init() completely
from the previous patch, like with intel_dmc_wl_enable(), so the call
to init will be in this patch and protected by the platform version as
well.


> > Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dmc_wl.c | 12 ++++++++++++
> >  1 file changed, 12 insertions(+)
> >=20
> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> > b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> > index 5c3d8204ae7e..7c991e22c616 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> > @@ -120,6 +120,9 @@ void intel_dmc_wl_enable(struct drm_i915_private
> > *i915)
> >  	struct intel_dmc_wl *wl =3D &i915->display.wl;
> >  	unsigned long flags;
> >=20
> > +	if (DISPLAY_VER(i915) < 20)
> > +		return;
> > +
> >  	spin_lock_irqsave(&wl->lock, flags);
> >=20
> >  	if (wl->enabled)
> > @@ -143,6 +146,9 @@ void intel_dmc_wl_disable(struct drm_i915_private
> > *i915)
> >  	struct intel_dmc_wl *wl =3D &i915->display.wl;
> >  	unsigned long flags;
> >=20
> > +	if (DISPLAY_VER(i915) < 20)
> > +		return;
>=20
> There can be case where DMC is not loaded, address that as well.
> We should not do wakelock in that case.

Right.  I have added a helper function, intel_dmc_wl_supported(), to
keep all this checks in one place.


> >  	flush_delayed_work(&wl->work);
> >=20
> >  	spin_lock_irqsave(&wl->lock, flags);
> > @@ -171,6 +177,9 @@ void intel_dmc_wl_get(struct drm_i915_private *i915=
,
> > i915_reg_t reg)
> >  	struct intel_dmc_wl *wl =3D &i915->display.wl;
> >  	unsigned long flags;
> >=20
> > +	if (DISPLAY_VER(i915) < 20)
> > +		return;
> > +
> >  	if (!intel_dmc_wl_check_range(reg.reg))
> >  		return;
> >=20
> > @@ -203,6 +212,9 @@ void intel_dmc_wl_put(struct drm_i915_private *i915=
,
> > i915_reg_t reg)
> >  	struct intel_dmc_wl *wl =3D &i915->display.wl;
> >  	unsigned long flags;
> >=20
> > +	if (DISPLAY_VER(i915) < 20)
> > +		return;
> > +
> >  	if (!intel_dmc_wl_check_range(reg.reg))
> >  		return;
> >=20
> > --
> > 2.39.2
>=20

--
Cheers,
Luca.
