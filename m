Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73CFA78D302
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Aug 2023 07:34:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0650710E4B5;
	Wed, 30 Aug 2023 05:34:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A624310E4B5;
 Wed, 30 Aug 2023 05:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693373662; x=1724909662;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=7ah5EQgZew0SPvrVoNoXGe118J2Q3qs8RvfYkg92FdQ=;
 b=LQWYqebXIqkJqlPcYhWpsrRJEwPF2cWTXp3DR6FFMy1HRDUKKW4YjKTF
 Iy1QlrUk9NsgU+GrOKvpNCgnOhn4rqPfD1qP0hB/KQrIPrR6GoG/GeinP
 21DCwypXGUs9TOzAb1jIgL5v5r/iSnD7CcrJC1a4AFbbOxkKHxx+TQUSa
 ggyhWXOqfVAFqKp5gYcOai/IAso5UGPbWztyWe+zvjKRO/5KTo4STXGt9
 DP1MQhgOKthMY80KvmOtDuOn+ChmK8k69K1qj35Ux4sk27Esbuh8GjBvZ
 Llb92q0l6+ZFw9UKji2eBLszU/D6AOAnQ8ptx8A8CfVI4q0345BdOU5Y+ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="374457958"
X-IronPort-AV: E=Sophos;i="6.02,212,1688454000"; d="scan'208";a="374457958"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2023 22:34:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="732468604"
X-IronPort-AV: E=Sophos;i="6.02,212,1688454000"; d="scan'208";a="732468604"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by orsmga007.jf.intel.com with SMTP; 29 Aug 2023 22:34:18 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 30 Aug 2023 08:34:17 +0300
Date: Wed, 30 Aug 2023 08:34:17 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
Message-ID: <ZO7U2ZQB3BlI-QYe@intel.com>
References: <20230828062035.6906-1-vinod.govindapillai@intel.com>
 <20230828062035.6906-4-vinod.govindapillai@intel.com>
 <ZO2jLiEn9zuQFqsO@intel.com>
 <b97f948a77128607be6b7a5cd12f82423e987377.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b97f948a77128607be6b7a5cd12f82423e987377.camel@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 3/4] drm/i915/lnl: support FBC on
 any plane
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Syrjala, Ville" <ville.syrjala@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Aug 29, 2023 at 01:34:56PM +0000, Govindapillai, Vinod wrote:
> On Tue, 2023-08-29 at 10:50 +0300, Ville Syrjälä wrote:
> > On Mon, Aug 28, 2023 at 09:20:34AM +0300, Vinod Govindapillai wrote:
> > > In LNL onwards, FBC can be associated to the first three planes.
> > > The FBC will be enabled for first FBC capable visible plane
> > > until the userspace can select one of these FBC capable plane
> > > explicitly
> > > 
> > > Bspec: 69560
> > > Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_fbc.c      | 29 +++++++++++++++++++
> > >  .../drm/i915/display/skl_universal_plane.c    |  5 +++-
> > >  drivers/gpu/drm/i915/i915_reg.h               |  4 +++
> > >  3 files changed, 37 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> > > index 45e205a0f740..62f59630d410 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > > @@ -649,6 +649,21 @@ static void skl_fbc_program_cfb_stride(struct intel_fbc *fbc)
> > >                      CHICKEN_FBC_STRIDE_MASK, val);
> > >  }
> > >  
> > > +static u32 lnl_plane_binding(struct intel_fbc *fbc)
> > > +{
> > > +       switch (fbc->state.plane->id) {
> > > +       default:
> > > +               MISSING_CASE(fbc->state.plane->id);
> > > +               fallthrough;
> > > +       case 0:
> > > +               return DPFC_CTL_PLANE_BINDING_1;
> > > +       case 1:
> > > +               return DPFC_CTL_PLANE_BINDING_2;
> > > +       case 2:
> > > +               return DPFC_CTL_PLANE_BINDING_3;
> > > +       }
> > > +}
> > > +
> > >  static u32 ivb_dpfc_ctl(struct intel_fbc *fbc)
> > >  {
> > >         const struct intel_fbc_state *fbc_state = &fbc->state;
> > > @@ -660,6 +675,9 @@ static u32 ivb_dpfc_ctl(struct intel_fbc *fbc)
> > >         if (IS_IVYBRIDGE(i915))
> > >                 dpfc_ctl |= DPFC_CTL_PLANE_IVB(fbc_state->plane->i9xx_plane);
> > >  
> > > +       if (DISPLAY_VER(i915) >= 20)
> > > +               dpfc_ctl |= lnl_plane_binding(fbc);
> > > +
> > >         if (fbc_state->fence_id >= 0)
> > >                 dpfc_ctl |= DPFC_CTL_FENCE_EN_IVB;
> > >  
> > > @@ -1250,6 +1268,17 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
> > >                 }
> > >         }
> > >  
> > > +       /*
> > > +        * From LNL, FBC can be assigned on any plane. Until a provision is
> > > +        * provided for the userspace to select a plane for FBC, lets select
> > > +        * the first visible plane that is FBC capable.
> > > +        */
> > > +       if (DISPLAY_VER(i915) >= 20 && fbc->state.plane &&
> > > +           fbc->state.plane != plane) {
> > > +               plane_state->no_fbc_reason = "fbc enabled on another plane";
> > > +               return 0;
> > > +       }
> > 
> > This isn't right. fbc->state.plane is an internal state thing
> > that chanes willy nilly, so we don't want to check it here.
> > 
> > But we shouldn't need this kind of check anyway. The code 
> > should already work just fine if you just do the tweak to
> > skl_plane_has_fbc((). Which plane actually gets FBC will be
> > a bit random, but I think that's fine for the moment.
> 
> Currently, intel_crtc_init() creates the primary plane and other planes. Then the "fbc" is
> associated with the primary plane based on skl_plane_has_fbc() 
> 
> In Lnl, the first 3 planes are FBC capable. So my thinking has been that those three planes can have
> the fbc pointers. 
> 
> And because at the moment we don't have a logic to select which frame should get this FBC,

It's there (in intel_fbc_update()/__intel_fbc_enable() more or
less). It's just "first come first serve".

> I used
> the above snippet to avoid FBC being assoicated with multiple planes in a pipe. So the first visible
> fbc capable plane will had no_fbc_reason as NULL and the other 2 planes will have "fbc on another
> plane".
> 
> BR
> Vinod
> 
> > 
> > > +
> > >         plane_state->no_fbc_reason = NULL;
> > >  
> > >         return 0;
> > > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > index 4d01c7ae4485..1291351c9941 100644
> > > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > @@ -1962,7 +1962,10 @@ static bool skl_plane_has_fbc(struct drm_i915_private *dev_priv,
> > >         if ((DISPLAY_RUNTIME_INFO(dev_priv)->fbc_mask & BIT(fbc_id)) == 0)
> > >                 return false;
> > >  
> > > -       return plane_id == PLANE_PRIMARY;
> > > +       if (DISPLAY_VER(dev_priv) >= 20)
> > > +               return plane_id <= PLANE_SPRITE1;
> > > +       else
> > > +               return plane_id == PLANE_PRIMARY;
> > >  }
> > >  
> > >  static struct intel_fbc *skl_plane_fbc(struct drm_i915_private *dev_priv,
> > > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> > > index aefad14ab27a..b207774f3c33 100644
> > > --- a/drivers/gpu/drm/i915/i915_reg.h
> > > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > > @@ -1327,6 +1327,10 @@
> > >  #define   DPFC_CTL_PLANE_IVB(i9xx_plane)       REG_FIELD_PREP(DPFC_CTL_PLANE_MASK_IVB,
> > > (i9xx_plane))
> > >  #define   DPFC_CTL_FENCE_EN_IVB                        REG_BIT(28) /* ivb+ */
> > >  #define   DPFC_CTL_PERSISTENT_MODE             REG_BIT(25) /* g4x-snb */
> > > +#define   DPFC_CTL_PLANE_BINDING_MASK          REG_GENMASK(12, 11) /* XE */
> > > +#define   DPFC_CTL_PLANE_BINDING_1             REG_FIELD_PREP(DPFC_CTL_PLANE_BINDING_MASK, 0)
> > > /* XE */
> > > +#define   DPFC_CTL_PLANE_BINDING_2             REG_FIELD_PREP(DPFC_CTL_PLANE_BINDING_MASK, 1)
> > > /* XE */
> > > +#define   DPFC_CTL_PLANE_BINDING_3             REG_FIELD_PREP(DPFC_CTL_PLANE_BINDING_MASK, 2)
> > > /* XE */
> > >  #define   DPFC_CTL_FALSE_COLOR                 REG_BIT(10) /* ivb+ */
> > >  #define   DPFC_CTL_SR_EN                       REG_BIT(10) /* g4x only */
> > >  #define   DPFC_CTL_SR_EXIT_DIS                 REG_BIT(9) /* g4x only */
> > > -- 
> > > 2.34.1
> > 
> 

-- 
Ville Syrjälä
Intel
