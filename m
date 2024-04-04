Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1262A898481
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Apr 2024 11:59:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3941311B287;
	Thu,  4 Apr 2024 09:59:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 682DA11B27F;
 Thu,  4 Apr 2024 09:59:22 +0000 (UTC)
Received: from 91-156-7-239.elisa-laajakaista.fi ([91.156.7.239]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1rsJsM-000000001UT-1blm; Thu, 04 Apr 2024 12:59:19 +0300
Message-ID: <3de0b7e2984d026bdd6e1fc163e175937bfb95b4.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: "Shankar, Uma" <uma.shankar@intel.com>, "Coelho, Luciano"
 <luciano.coelho@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, 
 "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>, "Nikula, Jani" <jani.nikula@intel.com>
Date: Thu, 04 Apr 2024 12:59:17 +0300
In-Reply-To: <DM4PR11MB636090731640EEAB0E201D6DF4322@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240318133757.1479189-1-luciano.coelho@intel.com>
 <20240318133757.1479189-4-luciano.coelho@intel.com>
 <DM4PR11MB636090731640EEAB0E201D6DF4322@DM4PR11MB6360.namprd11.prod.outlook.com>
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
Subject: Re: [PATCH v3 3/4] drm/i915/display: add module parameter to enable
 DMC wakelock
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

On Thu, 2024-03-21 at 08:08 +0000, Shankar, Uma wrote:
>=20
> > -----Original Message-----
> > From: Coelho, Luciano <luciano.coelho@intel.com>
> > Sent: Monday, March 18, 2024 7:08 PM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: intel-xe@lists.freedesktop.org; Shankar, Uma <uma.shankar@intel.com=
>;
> > ville.syrjala@linux.intel.com; Nikula, Jani <jani.nikula@intel.com>
> > Subject: [PATCH v3 3/4] drm/i915/display: add module parameter to enabl=
e DMC
> > wakelock
> >=20
> > This feature should be disabled by default until properly tested and ma=
ture.  Add
> > a module parameter to enable the feature for testing, while keeping it =
disabled by
> > default for now.
> >=20
> > Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_params.c |  5 +++++
> > drivers/gpu/drm/i915/display/intel_display_params.h |  1 +
> >  drivers/gpu/drm/i915/display/intel_dmc_wl.c         | 12 ++++++++----
> >  3 files changed, 14 insertions(+), 4 deletions(-)
> >=20
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c
> > b/drivers/gpu/drm/i915/display/intel_display_params.c
> > index 11e03cfb774d..f40b223cc8a1 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_params.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_params.c
> > @@ -116,6 +116,11 @@
> > intel_display_param_named_unsafe(enable_psr2_sel_fetch, bool, 0400,
> >  	"(0=3Ddisabled, 1=3Denabled) "
> >  	"Default: 1");
> >=20
> > +intel_display_param_named_unsafe(enable_dmc_wl, bool, 0400,
> > +	"Enable DMC wakelock "
> > +	"(0=3Ddisabled, 1=3Denabled) "
> > +	"Default: 0");
> > +
> >  __maybe_unused
> >  static void _param_print_bool(struct drm_printer *p, const char *drive=
r_name,
> >  			      const char *name, bool val)
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h
> > b/drivers/gpu/drm/i915/display/intel_display_params.h
> > index 6206cc51df04..bf8dbbdb20a1 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_params.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_params.h
> > @@ -46,6 +46,7 @@ struct drm_i915_private;
> >  	param(int, enable_psr, -1, 0600) \
> >  	param(bool, psr_safest_params, false, 0400) \
> >  	param(bool, enable_psr2_sel_fetch, true, 0400) \
> > +	param(bool, enable_dmc_wl, false, 0400) \
> >=20
> >  #define MEMBER(T, member, ...) T member;  struct intel_display_params =
{ diff --
> > git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> > b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> > index 7c991e22c616..84d054bcb2c1 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> > @@ -120,7 +120,8 @@ void intel_dmc_wl_enable(struct drm_i915_private
> > *i915)
> >  	struct intel_dmc_wl *wl =3D &i915->display.wl;
> >  	unsigned long flags;
> >=20
> > -	if (DISPLAY_VER(i915) < 20)
> > +	if (!i915->display.params.enable_dmc_wl ||
> > +	    DISPLAY_VER(i915) < 20)
>=20
> Extend this check to init as well. Else it looks ok to protect under a mo=
dule parameter.
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>

Done.  I now added the module param check to the supported() helper
function, so it will be checked everywhere.

Thanks for the r-b.

--
Cheers,
Luca.
