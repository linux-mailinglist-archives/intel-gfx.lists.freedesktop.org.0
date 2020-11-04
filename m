Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 590C62A65D0
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Nov 2020 15:06:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A937F6ED12;
	Wed,  4 Nov 2020 14:06:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 336316ED12
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Nov 2020 14:06:19 +0000 (UTC)
IronPort-SDR: Vlni0TqUv3ta5akWkcwVCvY+agS8gnrOc4vBtGDJxsrSGCb/MjRfjXnFXony0PtpO201VVcufv
 DntSQfbF/zlg==
X-IronPort-AV: E=McAfee;i="6000,8403,9794"; a="156207705"
X-IronPort-AV: E=Sophos;i="5.77,451,1596524400"; d="scan'208";a="156207705"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2020 06:06:16 -0800
IronPort-SDR: 9SnQQYO+aykgj+z4ulkASbkmnEdVbxQZTSTJq8fvd81BFfhCpLvjnQj2TGKhhwBcJ/xz1T4NJh
 4bhjScAfwiYw==
X-IronPort-AV: E=Sophos;i="5.77,451,1596524400"; d="scan'208";a="352686307"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com)
 ([10.165.21.201])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2020 06:06:14 -0800
Date: Wed, 4 Nov 2020 09:07:38 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Message-ID: <20201104140738.GI30349@intel.com>
References: <20201021133213.328994-1-aditya.swarup@intel.com>
 <20201021133213.328994-14-aditya.swarup@intel.com>
 <160448628006.10179.17243428415920116427@jlahtine-mobl.ger.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <160448628006.10179.17243428415920116427@jlahtine-mobl.ger.corp.intel.com>
Subject: Re: [Intel-gfx] [PATCH 13/18] drm/i915/adl_s: Add display, gt,
 ctx and ADL-S whitelist WA
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 04, 2020 at 12:38:00PM +0200, Joonas Lahtinen wrote:
> + Rodrigo,
> =

> Quoting Aditya Swarup (2020-10-21 16:32:08)
> > From: Anusha Srivatsa <anusha.srivatsa@intel.com>
> > =

> > - Inherit the gen12 workarounds.
> > - Add placeholders to setup GT WA.
> > - Extend permanent driver WA Wa_1409767108 to adl-s and
> >   Wa_14010685332 to adl-s.
> > - Extend permanent driver WA Wa_1606054188 to adl-s
> > - Add Wa_14011765242 for adl-s A0 stepping.
> =

> Rodrigo, Jani, any thoughts on if this patch should be split
> between display and GT?

I believe for this patch specifically it should be easy to break
the gt/ part of it as a preparation for the workarounds...

> In my thinking we should have a small
> topic branch that introduces the base platform support, which
> is merged to both trees. Then the respective patches split and
> merged to -next and -gt-next. That way we would avoid the
> conflicts that came from the Jasperlake patches.

With only this patch in mind I believe a topic branch is to heavy
of a process and that small conflicts should be okay to handle.
However I like the idea of the topic branch for the big chunk of
platform enabling patches.

> =

> Although, I'm not sure if our code splitting is yet as far that
> we could enable the display with separate set of patches. I guess
> it would be worthy testing if that can happen.

I agree.

> =

> Regards, Joonas
> =

> > Cc: Jani Nikula <jani.nikula@intel.com>
> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Cc: Imre Deak <imre.deak@intel.com>
> > Cc: Matt Roper <matthew.d.roper@intel.com>
> > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> > Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
> > Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>
> > ---
> >  .../drm/i915/display/intel_display_power.c    |  7 +++--
> >  drivers/gpu/drm/i915/display/intel_sprite.c   |  2 +-
> >  drivers/gpu/drm/i915/gt/intel_workarounds.c   | 29 +++++++++++++++++--
> >  drivers/gpu/drm/i915/i915_irq.c               |  2 +-
> >  drivers/gpu/drm/i915/intel_device_info.c      |  6 +++-
> >  5 files changed, 37 insertions(+), 9 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drive=
rs/gpu/drm/i915/display/intel_display_power.c
> > index 689922480661..acc63ab2bc78 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > @@ -5288,9 +5288,10 @@ static void tgl_bw_buddy_init(struct drm_i915_pr=
ivate *dev_priv)
> >         unsigned long abox_mask =3D INTEL_INFO(dev_priv)->abox_mask;
> >         int config, i;
> >  =

> > -       if (IS_DG1_REVID(dev_priv, DG1_REVID_A0, DG1_REVID_A0) ||
> > +       if (IS_ALDERLAKE_S(dev_priv) ||
> > +           IS_DG1_REVID(dev_priv, DG1_REVID_A0, DG1_REVID_A0) ||
> >             IS_TGL_DISP_REVID(dev_priv, TGL_REVID_A0, TGL_REVID_B0))
> > -               /* Wa_1409767108:tgl,dg1 */
> > +               /* Wa_1409767108:tgl,dg1,adl-s */
> >                 table =3D wa_1409767108_buddy_page_masks;
> >         else
> >                 table =3D tgl_buddy_page_masks;
> > @@ -5328,7 +5329,7 @@ static void icl_display_core_init(struct drm_i915=
_private *dev_priv,
> >  =

> >         gen9_set_dc_state(dev_priv, DC_STATE_DISABLE);
> >  =

> > -       /* Wa_14011294188:ehl,jsl,tgl,rkl */
> > +       /* Wa_14011294188:ehl,jsl,tgl,rkl,adl-s */
> >         if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_JSP &&
> >             INTEL_PCH_TYPE(dev_priv) < PCH_DG1)
> >                 intel_de_rmw(dev_priv, SOUTH_DSPCLK_GATE_D, 0,
> > diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/=
drm/i915/display/intel_sprite.c
> > index 88bfebdf9228..d4b5fc9e2704 100644
> > --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> > +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> > @@ -2226,7 +2226,7 @@ static int skl_plane_check_fb(const struct intel_=
crtc_state *crtc_state,
> >         }
> >  =

> >         /* Wa_1606054188:tgl */
> > -       if (IS_TIGERLAKE(dev_priv) &&
> > +       if ((IS_TIGERLAKE(dev_priv) || IS_ALDERLAKE_S(dev_priv)) &&
> >             plane_state->ckey.flags & I915_SET_COLORKEY_SOURCE &&
> >             intel_format_is_p01x(fb->format->format)) {
> >                 drm_dbg_kms(&dev_priv->drm,
> > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/=
drm/i915/gt/intel_workarounds.c
> > index fed9503a7c4e..8136d13462b5 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > @@ -686,6 +686,12 @@ static void dg1_ctx_workarounds_init(struct intel_=
engine_cs *engine,
> >                           DG1_HZ_READ_SUPPRESSION_OPTIMIZATION_DISABLE);
> >  }
> >  =

> > +static void adls_ctx_workarounds_init(struct intel_engine_cs *engine,
> > +                                     struct i915_wa_list *wal)
> > +{
> > +       gen12_ctx_workarounds_init(engine, wal);
> > +}
> > +
> >  static void
> >  __intel_engine_init_ctx_wa(struct intel_engine_cs *engine,
> >                            struct i915_wa_list *wal,
> > @@ -698,7 +704,9 @@ __intel_engine_init_ctx_wa(struct intel_engine_cs *=
engine,
> >  =

> >         wa_init_start(wal, name, engine->name);
> >  =

> > -       if (IS_DG1(i915))
> > +       if (IS_ALDERLAKE_S(i915))
> > +               adls_ctx_workarounds_init(engine, wal);
> > +       else if (IS_DG1(i915))
> >                 dg1_ctx_workarounds_init(engine, wal);
> >         else if (IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915))
> >                 tgl_ctx_workarounds_init(engine, wal);
> > @@ -1284,10 +1292,18 @@ dg1_gt_workarounds_init(struct drm_i915_private=
 *i915, struct i915_wa_list *wal)
> >                             VSUNIT_CLKGATE_DIS_TGL);
> >  }
> >  =

> > +static void
> > +adls_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa=
_list *wal)
> > +{
> > +       gen12_gt_workarounds_init(i915, wal);
> > +}
> > +
> >  static void
> >  gt_init_workarounds(struct drm_i915_private *i915, struct i915_wa_list=
 *wal)
> >  {
> > -       if (IS_DG1(i915))
> > +       if (IS_ALDERLAKE_S(i915))
> > +               adls_gt_workarounds_init(i915, wal);
> > +       else if (IS_DG1(i915))
> >                 dg1_gt_workarounds_init(i915, wal);
> >         else if (IS_TIGERLAKE(i915))
> >                 tgl_gt_workarounds_init(i915, wal);
> > @@ -1668,6 +1684,11 @@ static void dg1_whitelist_build(struct intel_eng=
ine_cs *engine)
> >                                   RING_FORCE_TO_NONPRIV_ACCESS_RD);
> >  }
> >  =

> > +static void adls_whitelist_build(struct intel_engine_cs *engine)
> > +{
> > +       tgl_whitelist_build(engine);
> > +}
> > +
> >  void intel_engine_init_whitelist(struct intel_engine_cs *engine)
> >  {
> >         struct drm_i915_private *i915 =3D engine->i915;
> > @@ -1675,7 +1696,9 @@ void intel_engine_init_whitelist(struct intel_eng=
ine_cs *engine)
> >  =

> >         wa_init_start(w, "whitelist", engine->name);
> >  =

> > -       if (IS_DG1(i915))
> > +       if (IS_ALDERLAKE_S(i915))
> > +               adls_whitelist_build(engine);
> > +       else if (IS_DG1(i915))
> >                 dg1_whitelist_build(engine);
> >         else if (IS_GEN(i915, 12))
> >                 tgl_whitelist_build(engine);
> > diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i91=
5_irq.c
> > index 9033221995ad..32cb12c4b6dd 100644
> > --- a/drivers/gpu/drm/i915/i915_irq.c
> > +++ b/drivers/gpu/drm/i915/i915_irq.c
> > @@ -3045,7 +3045,7 @@ static void gen11_display_irq_reset(struct drm_i9=
15_private *dev_priv)
> >         if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_ICP)
> >                 GEN3_IRQ_RESET(uncore, SDE);
> >  =

> > -       /* Wa_14010685332:icl,jsl,ehl,tgl,rkl */
> > +       /* Wa_14010685332:icl,jsl,ehl,tgl,rkl,adl-s A0 */
> >         if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_ICP) {
> >                 intel_uncore_rmw(uncore, SOUTH_CHICKEN1,
> >                                  SBCLK_RUN_REFCLK_DIS, SBCLK_RUN_REFCLK=
_DIS);
> > diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm=
/i915/intel_device_info.c
> > index 7310e019c611..4fffa8295d06 100644
> > --- a/drivers/gpu/drm/i915/intel_device_info.c
> > +++ b/drivers/gpu/drm/i915/intel_device_info.c
> > @@ -394,7 +394,11 @@ void intel_device_info_runtime_init(struct drm_i91=
5_private *dev_priv)
> >         struct intel_runtime_info *runtime =3D RUNTIME_INFO(dev_priv);
> >         enum pipe pipe;
> >  =

> > -       if (INTEL_GEN(dev_priv) >=3D 10) {
> > +       /* Wa_14011765242: adl-s A0 */
> > +       if (IS_ADLS_REVID(dev_priv, ADLS_REVID_A0, ADLS_REVID_A0))
> > +               for_each_pipe(dev_priv, pipe)
> > +                       runtime->num_scalers[pipe] =3D 0;
> > +       else if (INTEL_GEN(dev_priv) >=3D 10) {
> >                 for_each_pipe(dev_priv, pipe)
> >                         runtime->num_scalers[pipe] =3D 2;
> >         } else if (IS_GEN(dev_priv, 9)) {
> > -- =

> > 2.27.0
> > =

> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
