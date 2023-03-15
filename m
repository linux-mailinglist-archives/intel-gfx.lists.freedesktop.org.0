Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D04A6BAC46
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Mar 2023 10:38:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A38DB10E996;
	Wed, 15 Mar 2023 09:38:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C06410E9D7
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Mar 2023 09:38:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678873113; x=1710409113;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=eg0jkcuX4RU8s+j99BYVTMXrf/l3r7qCfXAeQHmYm2U=;
 b=euOriUkxYrZk4ZM+/RAW0njqNzCtOIXFpAWu8kUKoj4ovWzRUGJrtt3p
 9ZLmdqWAY08imP7oTldUsS5U8N8L6L6vIZMLCdi5DAtLJV1zHJTyfW5gx
 IJFJP9eIk/XeHGfXktfOFDR6d68NHeTtPfMcViQq/9woFLgAKEBFenM9B
 wXIaPGZiyR7PdNTl1eH3D1FFq6rN4ItmowhsKhxjexlWV1HKxOkRQsuZl
 GNTzM0xR1hdVht7sLktzAfqI5+MRxrHyJ0FHTkzY9HUZgYkMzRJD3f0CD
 zZdchXqvQJDVjn1kbLbrBBDXfTiVQ1+HvK3nmQxivpGt49ds4dYEdtMMX w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10649"; a="339198903"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400"; d="scan'208";a="339198903"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2023 02:38:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10649"; a="672670640"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400"; d="scan'208";a="672670640"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2023 02:38:30 -0700
Date: Wed, 15 Mar 2023 11:38:23 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
Message-ID: <ZBGSD+RD1LJZTt6Y@intel.com>
References: <20230310144035.30754-1-stanislav.lisovskiy@intel.com>
 <7ddeaf24abf10e7e2728150310e154f4366a076c.camel@intel.com>
 <ZBF5o7lRodJy23y4@intel.com>
 <d45f615eb0b522985d56ae285d17ae7db876f2a8.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <d45f615eb0b522985d56ae285d17ae7db876f2a8.camel@intel.com>
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

On Wed, Mar 15, 2023 at 11:08:24AM +0200, Govindapillai, Vinod wrote:
> Hi stan
> 
> combining two threads..
> 
> On Tue, Mar 14, 2023 at 11:50:20AM +0200, Govindapillai, Vinod wrote:
> > > Hi Stan
> > > 
> > > Few other places also do not ceil the result as per the 64631
> > > 
> > > deinterleave, peakbw, clperchgroup 
> > > 
> > > Well! I am not sure if this has any real impact, but FYI
> > 
> > As per BSpec we are now supposed to floor all the calculations, but
> > not ceil - bw estimation should be rather pessimistic than optimistic.
> > 
> > Stan
> 
> Yes. But our code use DIV_ROUND_UP in those calculations for . Because you removed the other
> round_up calls, i just wanted to bring to your attention. But as I mentioned, it might not have much
> significance in reality
> 
> On Wed, 2023-03-15 at 09:54 +0200, Lisovskiy, Stanislav wrote:
> > On Tue, Mar 14, 2023 at 11:27:35AM +0200, Govindapillai, Vinod wrote:
> > > Hi Stan,
> > > 
> > > 
> > > 
> > > On Fri, 2023-03-10 at 16:40 +0200, Stanislav Lisovskiy wrote:
> > > > Currently in our bandwidth calculations for QGV
> > > > points we round up the calculations.
> > > > Recently there was an update to BSpec, recommending
> > > > to floor those calculations.
> > > > The reasoning behind this was that, overestimating
> > > > BW demand with that rounding can cause SAGV to use
> > > > next QGV point, even though the less demanding could
> > > > be used, thus resulting in waste of power.
> > > > 
> > > > BSpec: 64636
> > > > 
> > > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_bw.c | 10 +++++-----
> > > >  1 file changed, 5 insertions(+), 5 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> > > > index 202321ffbe2a..8723ddd4d568 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_bw.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> > > > @@ -50,7 +50,7 @@ static int dg1_mchbar_read_qgv_point_info(struct drm_i915_private *dev_priv,
> > > >                 dclk_reference = 6; /* 6 * 16.666 MHz = 100 MHz */
> > > >         else
> > > >                 dclk_reference = 8; /* 8 * 16.666 MHz = 133 MHz */
> > > > -       sp->dclk = DIV_ROUND_UP((16667 * dclk_ratio * dclk_reference) + 500, 1000);
> > > > +       sp->dclk = ((16667 * dclk_ratio * dclk_reference) + 500) / 1000;
> > > >  
> > > >         val = intel_uncore_read(&dev_priv->uncore, SKL_MC_BIOS_DATA_0_0_0_MCHBAR_PCU);
> > > >         if (val & DG1_GEAR_TYPE)
> > > > @@ -87,7 +87,7 @@ static int icl_pcode_read_qgv_point_info(struct drm_i915_private *dev_priv,
> > > >                 return ret;
> > > >  
> > > >         dclk = val & 0xffff;
> > > > -       sp->dclk = DIV_ROUND_UP((16667 * dclk) + (DISPLAY_VER(dev_priv) > 11 ? 500 : 0),
> > > > 1000);
> > > > +       sp->dclk = ((16667 * dclk) + (DISPLAY_VER(dev_priv) > 11 ? 500 : 0)) / 1000;
> > > >         sp->t_rp = (val & 0xff0000) >> 16;
> > > >         sp->t_rcd = (val & 0xff000000) >> 24;
> > > >  
> > > > @@ -179,7 +179,7 @@ static int mtl_read_qgv_point_info(struct drm_i915_private *dev_priv,
> > > >         val2 = intel_uncore_read(&dev_priv->uncore,
> > > >                                  MTL_MEM_SS_INFO_QGV_POINT_HIGH(point));
> > > >         dclk = REG_FIELD_GET(MTL_DCLK_MASK, val);
> > > > -       sp->dclk = DIV_ROUND_UP((16667 * dclk), 1000);
> > > > +       sp->dclk = (16667 * dclk) / 1000;
> > > 
> > > Not related to this patch. But as per Bspec 64631 and 64636
> > >   sp->dclk = (16667 * dclk + 500) / 1000;
> > > 
> > > Does that need to be corrected as well?
> > 
> > It looks like again rounding up stuff, we divide by 1000,
> > so we obviously add 500 just to round up by one the end result.
> > But considering the recent instructions, that we must "floor/int"
> > all the results, I would say this needs to be corrected in BSpec,
> > rather than here(wondering why it was implemented initially that way
> > here, could be that BSpec was initially like this or the one doing
> > that here was actually smarter than BSpec :) )
> > 
> > Stan
> 
> I doubt if this is round-up. Because Bspec could always use ceil() as it has used in other places.
> But there is no explanation about the magic figure of 500. Again probably considering the
> calculation, +500 there might be insignificant there. 

Technically it is. Typically adding half of the divisor, allows to do +1 round up.
If lets say we had 16667*dclk = 100800, then without adding we would get 100800/1000 = 100,
while adding 500 allows results in (100800 + 500)/1000 = 101.
It is quite often used.

> 
> Btw, now I wonder what this patch do is against what is claimed in the commit message. What you are
> optimizing is the "supply" not "demand". These changes are in the calculations of available memory
> bandwidth. So flooring of the available BW against "round_up" bw demand could cause the SAGV to
> choose the higher (lower index) point more.. correct?

Yeah it is kinda confusing. In fact we calculate here the BW which is supported by correspodent GV
points, based on our particular configuration and then we are supposed to notify PCode with that,
for some reason that is called "demand" in BSpec while it is basically the amount that we can supply.

Also it is all about trade offs, if we floor the calculations - yep we will save power, 
by staying on lower mem clocks(GV point) but possibly hit then some bw issue, if we round up the calculations, 
we might waste power, but probably then be safer in a sense of possible BW bottlenecks.
What is clear, is that this needs to be clarified. 

Stan

> 
> BR
> Vinod
> > 
> > > 
> > > BR
> > > vinod
> > > 
> > > 
> > > >         sp->t_rp = REG_FIELD_GET(MTL_TRP_MASK, val);
> > > >         sp->t_rcd = REG_FIELD_GET(MTL_TRCD_MASK, val);
> > > >  
> > > > @@ -425,7 +425,7 @@ static int icl_get_bw_info(struct drm_i915_private *dev_priv, const struct
> > > > intel
> > > >                          */
> > > >                         ct = max_t(int, sp->t_rc, sp->t_rp + sp->t_rcd +
> > > >                                    (clpchgroup - 1) * qi.t_bl + sp->t_rdpre);
> > > > -                       bw = DIV_ROUND_UP(sp->dclk * clpchgroup * 32 * num_channels, ct);
> > > > +                       bw = (sp->dclk * clpchgroup * 32 * num_channels) / ct;
> > > >  
> > > >                         bi->deratedbw[j] = min(maxdebw,
> > > >                                                bw * (100 - sa->derating) / 100);
> > > > @@ -527,7 +527,7 @@ static int tgl_get_bw_info(struct drm_i915_private *dev_priv, const struct
> > > > intel
> > > >                          */
> > > >                         ct = max_t(int, sp->t_rc, sp->t_rp + sp->t_rcd +
> > > >                                    (clpchgroup - 1) * qi.t_bl + sp->t_rdpre);
> > > > -                       bw = DIV_ROUND_UP(sp->dclk * clpchgroup * 32 * num_channels, ct);
> > > > +                       bw = (sp->dclk * clpchgroup * 32 * num_channels) / ct;
> > > >  
> > > >                         bi->deratedbw[j] = min(maxdebw,
> > > >                                                bw * (100 - sa->derating) / 100);
> > > 
> 
