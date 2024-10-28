Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77C859B347F
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 16:12:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A81EC10E4EA;
	Mon, 28 Oct 2024 15:12:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eEWCwEg1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DABD110E4EA
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2024 15:12:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730128372; x=1761664372;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=NOKX5fugIn0I8BHV5q4VAiaq8GkO4Xtweuft5Puvb74=;
 b=eEWCwEg1oMLhEJLRsWSwSQS1zQap6k1VxgDr2htx5f4gNxMjTTYiz6K/
 BaDs/YX06NoEan9ILPRQTJsxJFUheU+wiswXm0mNMoFIyaGRFv4Oh+R6a
 iZfnSUacnO0Ondq1fmhDylOprKsZk0o8r5zIVtKcrv1kKwwsic8x5XGja
 7H9MDuwyKqAc5v0apbMq1s4+2pel7amwd8fbj6rdkIYmuoaBU5LrxX5MY
 3GdbY7lvM2r/86vQjvO5hupaGffT5ykPZyEK0s2iRXKkoR/ODm97SVusj
 4ahiKncYZ9XgMWbZf4RlsK8LO32b09kB9Z4nGnYZrrOMEAomtQ1xsAlPr Q==;
X-CSE-ConnectionGUID: GomAr7uWQHKsfYH0I5zPlg==
X-CSE-MsgGUID: Ws0ItBy0S3u6fJIesTmS8Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11239"; a="29188117"
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="29188117"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 08:12:51 -0700
X-CSE-ConnectionGUID: yrVeZ272RuiomMQxRh9x2Q==
X-CSE-MsgGUID: 9ijgax5CQlWnYTwBcqSmPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="81751146"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 28 Oct 2024 08:12:49 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 28 Oct 2024 17:12:48 +0200
Date: Mon, 28 Oct 2024 17:12:48 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 1/9] drm/i915: Allow async flips with render compression
 on TGL+
Message-ID: <Zx-p8J73fe-RwDe2@intel.com>
References: <20241009182207.22900-1-ville.syrjala@linux.intel.com>
 <20241009182207.22900-2-ville.syrjala@linux.intel.com>
 <b94128a3954a0f2165d6e1d11cd55683a8051d73.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b94128a3954a0f2165d6e1d11cd55683a8051d73.camel@intel.com>
X-Patchwork-Hint: comment
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

On Thu, Oct 24, 2024 at 10:41:22AM +0000, Hogander, Jouni wrote:
> On Wed, 2024-10-09 at 21:21 +0300, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Looks like CCS + async flips has been a thing for a while now.
> > Enable this for TGL+ render compression modifiers.
> > 
> > Note that we can't update AUX_DIST during async flips we must
> > check to make sure it remains unchanged.
> > 
> > We also can't do clear color. Supposedly there was some attempt
> > to make it work, but apparently the issues only got ironed out
> > in MTL. For now we'll not worry about it and refuse async flips
> > with clear color modifiers.
> > 
> > Bspec claims that media compression doesn't support async flips.
> > Based on a quick test it does seem to work to some degree, but
> > perhaps it has issues as well. Let's trust the spec here and
> > continue to refuse async flips + media compression.
> 
> Patch seems to be according to commit message. Could you please add
> bspec references into commit message?

That would be mostly: 49250,49251,49252,49253

> 
> BR,
> 
> Jouni Högander
> 
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c    | 14 +++++++++++++-
> >  .../gpu/drm/i915/display/skl_universal_plane.c  | 17 ++++++++++-----
> > --
> >  .../gpu/drm/i915/display/skl_universal_plane.h  |  3 +++
> >  3 files changed, 26 insertions(+), 8 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index e1f6255e918b..21d412b158e8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -6512,6 +6512,9 @@ static int intel_async_flip_check_hw(struct
> > intel_atomic_state *state, struct in
> >                 case I915_FORMAT_MOD_Y_TILED:
> >                 case I915_FORMAT_MOD_Yf_TILED:
> >                 case I915_FORMAT_MOD_4_TILED:
> > +               case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
> > +               case I915_FORMAT_MOD_4_TILED_MTL_RC_CCS:
> > +               case I915_FORMAT_MOD_4_TILED_DG2_RC_CCS:
> >                 case I915_FORMAT_MOD_4_TILED_BMG_CCS:
> >                 case I915_FORMAT_MOD_4_TILED_LNL_CCS:
> >                         break;
> > @@ -6523,7 +6526,8 @@ static int intel_async_flip_check_hw(struct
> > intel_atomic_state *state, struct in
> >                         return -EINVAL;
> >                 }
> >  
> > -               if (new_plane_state->hw.fb->format->num_planes > 1) {
> > +               if
> > (intel_format_info_is_yuv_semiplanar(new_plane_state->hw.fb->format,
> > +                                                       new_plane_sta
> > te->hw.fb->modifier)) {
> >                         drm_dbg_kms(&i915->drm,
> >                                     "[PLANE:%d:%s] Planar formats do
> > not support async flips\n",
> >                                     plane->base.base.id, plane-
> > >base.name);
> > @@ -6569,6 +6573,14 @@ static int intel_async_flip_check_hw(struct
> > intel_atomic_state *state, struct in
> >                         return -EINVAL;
> >                 }
> >  
> > +               if (skl_plane_aux_dist(old_plane_state, 0) !=
> > +                   skl_plane_aux_dist(new_plane_state, 0)) {
> > +                       drm_dbg_kms(&i915->drm,
> > +                                   "[PLANE:%d:%s] AUX_DIST cannot be
> > changed in async flip\n",
> > +                                   plane->base.base.id, plane-
> > >base.name);
> > +                       return -EINVAL;
> > +               }
> > +
> >                 if (!drm_rect_equals(&old_plane_state->uapi.src,
> > &new_plane_state->uapi.src) ||
> >                     !drm_rect_equals(&old_plane_state->uapi.dst,
> > &new_plane_state->uapi.dst)) {
> >                         drm_dbg_kms(&i915->drm,
> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > index 9557b08ca2e2..0c09f76f8369 100644
> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > @@ -529,15 +529,18 @@ static u32 tgl_plane_min_alignment(struct
> > intel_plane *plane,
> >                 if (IS_ALDERLAKE_P(i915) && HAS_ASYNC_FLIPS(i915))
> >                         return mult * 16 * 1024;
> >                 return mult * 4 * 1024;
> > -       case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
> >         case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
> > -       case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
> > -       case I915_FORMAT_MOD_4_TILED_MTL_MC_CCS:
> >         case I915_FORMAT_MOD_4_TILED_MTL_RC_CCS:
> > -       case I915_FORMAT_MOD_4_TILED_MTL_RC_CCS_CC:
> >         case I915_FORMAT_MOD_4_TILED_DG2_RC_CCS:
> > -       case I915_FORMAT_MOD_4_TILED_DG2_RC_CCS_CC:
> > +               if (IS_ALDERLAKE_P(i915) && HAS_ASYNC_FLIPS(i915))
> > +                       return mult * 16 * 1024;
> > +               fallthrough;
> > +       case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
> > +       case I915_FORMAT_MOD_4_TILED_MTL_MC_CCS:
> >         case I915_FORMAT_MOD_4_TILED_DG2_MC_CCS:
> > +       case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
> > +       case I915_FORMAT_MOD_4_TILED_MTL_RC_CCS_CC:
> > +       case I915_FORMAT_MOD_4_TILED_DG2_RC_CCS_CC:
> >         case I915_FORMAT_MOD_4_TILED_BMG_CCS:
> >         case I915_FORMAT_MOD_4_TILED_LNL_CCS:
> >                 /*
> > @@ -1192,8 +1195,8 @@ static u32 skl_plane_surf(const struct
> > intel_plane_state *plane_state,
> >         return plane_surf;
> >  }
> >  
> > -static u32 skl_plane_aux_dist(const struct intel_plane_state
> > *plane_state,
> > -                             int color_plane)
> > +u32 skl_plane_aux_dist(const struct intel_plane_state *plane_state,
> > +                      int color_plane)
> >  {
> >         struct drm_i915_private *i915 = to_i915(plane_state-
> > >uapi.plane->dev);
> >         const struct drm_framebuffer *fb = plane_state->hw.fb;
> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.h
> > b/drivers/gpu/drm/i915/display/skl_universal_plane.h
> > index 541489479135..18b41d13f0bd 100644
> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.h
> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.h
> > @@ -37,4 +37,7 @@ bool icl_is_nv12_y_plane(struct drm_i915_private
> > *dev_priv,
> >  u8 icl_hdr_plane_mask(void);
> >  bool icl_is_hdr_plane(struct drm_i915_private *dev_priv, enum
> > plane_id plane_id);
> >  
> > +u32 skl_plane_aux_dist(const struct intel_plane_state *plane_state,
> > +                      int color_plane);
> > +
> >  #endif
> 

-- 
Ville Syrjälä
Intel
