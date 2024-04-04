Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A6A1898496
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Apr 2024 12:03:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 330A811B2DC;
	Thu,  4 Apr 2024 10:03:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9848511B2DB;
 Thu,  4 Apr 2024 10:03:42 +0000 (UTC)
Received: from 91-156-7-239.elisa-laajakaista.fi ([91.156.7.239]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1rsJwY-000000001V4-1D5s; Thu, 04 Apr 2024 13:03:39 +0300
Message-ID: <dbf82d805f03907fe671d7a2bd804b200fec76b1.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: "Shankar, Uma" <uma.shankar@intel.com>, "Coelho, Luciano"
 <luciano.coelho@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, 
 "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>, "Nikula, Jani" <jani.nikula@intel.com>
Date: Thu, 04 Apr 2024 13:03:37 +0300
In-Reply-To: <DM4PR11MB6360E99717265C75BB27BA20F4322@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240318133757.1479189-1-luciano.coelho@intel.com>
 <20240318133757.1479189-5-luciano.coelho@intel.com>
 <DM4PR11MB6360E99717265C75BB27BA20F4322@DM4PR11MB6360.namprd11.prod.outlook.com>
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
Subject: Re: [PATCH v3 4/4] drm/i915/display: tie DMC wakelock to DC5/6
 state transitions
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

On Thu, 2024-03-21 at 08:22 +0000, Shankar, Uma wrote:
>=20
> > -----Original Message-----
> > From: Coelho, Luciano <luciano.coelho@intel.com>
> > Sent: Monday, March 18, 2024 7:08 PM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: intel-xe@lists.freedesktop.org; Shankar, Uma <uma.shankar@intel.com=
>;
> > ville.syrjala@linux.intel.com; Nikula, Jani <jani.nikula@intel.com>
> > Subject: [PATCH v3 4/4] drm/i915/display: tie DMC wakelock to DC5/6 sta=
te
> > transitions
> >=20
> > We only need DMC wakelocks when we allow DC5 and DC6 states.  Add the c=
alls
> > to enable and disable DMC wakelock accordingly.
>=20
> > Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_power_well.c | 7 +++++++
> >  drivers/gpu/drm/i915/display/intel_dmc.c                | 4 ++++
> >  2 files changed, 11 insertions(+)
> >=20
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > index 217f82f1da84..367464f5c5cd 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > @@ -17,6 +17,7 @@
> >  #include "intel_dkl_phy.h"
> >  #include "intel_dkl_phy_regs.h"
> >  #include "intel_dmc.h"
> > +#include "intel_dmc_wl.h"
> >  #include "intel_dp_aux_regs.h"
> >  #include "intel_dpio_phy.h"
> >  #include "intel_dpll.h"
> > @@ -821,6 +822,8 @@ void gen9_enable_dc5(struct drm_i915_private
> > *dev_priv)
> >  		intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1,
> >  			     0, SKL_SELECT_ALTERNATE_DC_EXIT);
> >=20
> > +	intel_dmc_wl_enable(dev_priv);
>=20
> We can have platform checks here and call only when its supported.
> No strong objection but doing it here seems better than calling for all
> and then checking for platform inside.

I prefer not to check for wakelock specifics outside the wakelock code
itself.  So if we need to change it, we change it in a single place.=20
The compiler will probably inline some of these checks anyway, if it
deems the function call to be too inefficient.

Is it okay for you?

--
Cheers,
Luca.
