Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A67736BA9E3
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Mar 2023 08:49:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1BF410E942;
	Wed, 15 Mar 2023 07:49:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FC7410E942
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Mar 2023 07:49:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678866591; x=1710402591;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=yuNjnqUhQo2g8bapo3waLClaO3bQKlskOpZBxGhDx6c=;
 b=elCkQWrD/SpnFTU4RYNep74JYZ77PRS8ZVP6BTBxe37PSxuVq9L/F6o3
 zaKEZ8MldRBh6mGRwI1iCGdSq+K3EIe/d9wkS/8MmIoZD1Hd0ugXksWBd
 OkIreyJtyMrXNrrKMglzpQmvv/KwBoe4coUWLfWiViAfEFnod5+xfE7t8
 sGWtwnF8CmqZjh7y9fkFN53fjv3YL1whd502Bxc04d1R+ASsYiEPF9qai
 Z2rlJnlU3D+XvGIVShObv65XaJ4TQmzkNkuiXijHxIgS4KBkXEJRFFcD3
 8jMxQfxw4kKOWVLhJqisNUoq/m58/RBDj7iht5g6vIZ1p9eIYiEagjpxw g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10649"; a="321480857"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400"; d="scan'208";a="321480857"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2023 00:49:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10649"; a="743595538"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400"; d="scan'208";a="743595538"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2023 00:49:48 -0700
Date: Wed, 15 Mar 2023 09:49:41 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
Message-ID: <ZBF4ld2EIvTjK28i@intel.com>
References: <20230310144035.30754-1-stanislav.lisovskiy@intel.com>
 <7ddeaf24abf10e7e2728150310e154f4366a076c.camel@intel.com>
 <9ffb0ff303cb4141e71a2766f14ec746988c42db.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <9ffb0ff303cb4141e71a2766f14ec746988c42db.camel@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Power management SAGV/QGV
 calculation rounding fix
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Roper,
 Matthew D" <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 14, 2023 at 11:50:20AM +0200, Govindapillai, Vinod wrote:
> Hi Stan
> 
> Few other places also do not ceil the result as per the 64631
> 
> deinterleave, peakbw, clperchgroup 
> 
> Well! I am not sure if this has any real impact, but FYI

As per BSpec we are now supposed to floor all the calculations, but
not ceil - bw estimation should be rather pessimistic than optimistic.

Stan

> 
> Vinod
> 
> On Tue, 2023-03-14 at 11:27 +0200, Govindapillai, Vinod wrote:
> > Hi Stan,
> > 
> > 
> > 
> > On Fri, 2023-03-10 at 16:40 +0200, Stanislav Lisovskiy wrote:
> > > Currently in our bandwidth calculations for QGV
> > > points we round up the calculations.
> > > Recently there was an update to BSpec, recommending
> > > to floor those calculations.
> > > The reasoning behind this was that, overestimating
> > > BW demand with that rounding can cause SAGV to use
> > > next QGV point, even though the less demanding could
> > > be used, thus resulting in waste of power.
> > > 
> > > BSpec: 64636
> > > 
> > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_bw.c | 10 +++++-----
> > >  1 file changed, 5 insertions(+), 5 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> > > index 202321ffbe2a..8723ddd4d568 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_bw.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> > > @@ -50,7 +50,7 @@ static int dg1_mchbar_read_qgv_point_info(struct drm_i915_private *dev_priv,
> > >                 dclk_reference = 6; /* 6 * 16.666 MHz = 100 MHz */
> > >         else
> > >                 dclk_reference = 8; /* 8 * 16.666 MHz = 133 MHz */
> > > -       sp->dclk = DIV_ROUND_UP((16667 * dclk_ratio * dclk_reference) + 500, 1000);
> > > +       sp->dclk = ((16667 * dclk_ratio * dclk_reference) + 500) / 1000;
> > >  
> > >         val = intel_uncore_read(&dev_priv->uncore, SKL_MC_BIOS_DATA_0_0_0_MCHBAR_PCU);
> > >         if (val & DG1_GEAR_TYPE)
> > > @@ -87,7 +87,7 @@ static int icl_pcode_read_qgv_point_info(struct drm_i915_private *dev_priv,
> > >                 return ret;
> > >  
> > >         dclk = val & 0xffff;
> > > -       sp->dclk = DIV_ROUND_UP((16667 * dclk) + (DISPLAY_VER(dev_priv) > 11 ? 500 : 0), 1000);
> > > +       sp->dclk = ((16667 * dclk) + (DISPLAY_VER(dev_priv) > 11 ? 500 : 0)) / 1000;
> > >         sp->t_rp = (val & 0xff0000) >> 16;
> > >         sp->t_rcd = (val & 0xff000000) >> 24;
> > >  
> > > @@ -179,7 +179,7 @@ static int mtl_read_qgv_point_info(struct drm_i915_private *dev_priv,
> > >         val2 = intel_uncore_read(&dev_priv->uncore,
> > >                                  MTL_MEM_SS_INFO_QGV_POINT_HIGH(point));
> > >         dclk = REG_FIELD_GET(MTL_DCLK_MASK, val);
> > > -       sp->dclk = DIV_ROUND_UP((16667 * dclk), 1000);
> > > +       sp->dclk = (16667 * dclk) / 1000;
> > 
> > Not related to this patch. But as per Bspec 64631 and 64636
> >   sp->dclk = (16667 * dclk + 500) / 1000;
> > 
> > Does that need to be corrected as well?
> > 
> > BR
> > vinod
> > 
> > 
> > >         sp->t_rp = REG_FIELD_GET(MTL_TRP_MASK, val);
> > >         sp->t_rcd = REG_FIELD_GET(MTL_TRCD_MASK, val);
> > >  
> > > @@ -425,7 +425,7 @@ static int icl_get_bw_info(struct drm_i915_private *dev_priv, const struct
> > > intel
> > >                          */
> > >                         ct = max_t(int, sp->t_rc, sp->t_rp + sp->t_rcd +
> > >                                    (clpchgroup - 1) * qi.t_bl + sp->t_rdpre);
> > > -                       bw = DIV_ROUND_UP(sp->dclk * clpchgroup * 32 * num_channels, ct);
> > > +                       bw = (sp->dclk * clpchgroup * 32 * num_channels) / ct;
> > >  
> > >                         bi->deratedbw[j] = min(maxdebw,
> > >                                                bw * (100 - sa->derating) / 100);
> > > @@ -527,7 +527,7 @@ static int tgl_get_bw_info(struct drm_i915_private *dev_priv, const struct
> > > intel
> > >                          */
> > >                         ct = max_t(int, sp->t_rc, sp->t_rp + sp->t_rcd +
> > >                                    (clpchgroup - 1) * qi.t_bl + sp->t_rdpre);
> > > -                       bw = DIV_ROUND_UP(sp->dclk * clpchgroup * 32 * num_channels, ct);
> > > +                       bw = (sp->dclk * clpchgroup * 32 * num_channels) / ct;
> > >  
> > >                         bi->deratedbw[j] = min(maxdebw,
> > >                                                bw * (100 - sa->derating) / 100);
> > 
> 
