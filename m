Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CF5D6E6063
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Apr 2023 13:49:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CD4F10E777;
	Tue, 18 Apr 2023 11:49:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8402A10E769
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Apr 2023 11:49:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681818568; x=1713354568;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=hA8psLGzANaI8J8jeZ1Bz5og2zWd0TPIQSHfN/n8nZ0=;
 b=BFj813MD1ZHxPEkogbf/DKYFNEZB/JK4FEJgtid/9fxLUiY4RZTeo70D
 fyd0JXCeP65h5Bgsjjb4MU0JOI4E5StLvTQsx6DnBoNp5qT+Frp+09Hfd
 HfT7vunr4JqmCnCi1MdtVyfKrmHSUdg78AyH3dMq1GfNzCMLZ0ER399sT
 uz9SWtCnAPhP4ec33nW2Brwym7kSvhvfmEstSZ63/NsNtM3JlZpA3ropN
 bsUeG9aApL3SLeE4+NhiGlPsCaGxkwOVWYv3oHwCNS/BMudEC0sFhq6f9
 zG9eWa6GZdLQ+9/tSKZy0oyfxfJtZcunQyeddjp2XZuK5dcUigt4qaOXH g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="324763850"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="324763850"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 04:49:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="834855122"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="834855122"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 04:49:25 -0700
Date: Tue, 18 Apr 2023 14:49:19 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
Message-ID: <ZD6Dv9MczIhi48lO@intel.com>
References: <20230416155417.174418-1-vinod.govindapillai@intel.com>
 <20230416155417.174418-3-vinod.govindapillai@intel.com>
 <ZD5h7NSuDBQICMAx@intel.com>
 <80a85782de098549f583051c86f01801add8564a.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <80a85782de098549f583051c86f01801add8564a.camel@intel.com>
Subject: Re: [Intel-gfx] [PATCH v1 2/4] drm/i915: update the QGV point
 frequency calculations
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
 "Syrjala, Ville" <ville.syrjala@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 18, 2023 at 12:47:33PM +0300, Govindapillai, Vinod wrote:
> On Tue, 2023-04-18 at 12:25 +0300, Lisovskiy, Stanislav wrote:
> > On Sun, Apr 16, 2023 at 06:54:15PM +0300, Vinod Govindapillai wrote:
> > > From MTL onwwards, pcode locks the QGV point based on peak BW of
> > > the intended QGV point passed by the driver. So the peak BW
> > > calculation must match the value expected by the pcode. Update
> > > the calculations as per the Bspec.
> > > 
> > > Bspec: 64636
> > > 
> > > Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_bw.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> > > index 5fa599b04ca5..57f8204162dd 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_bw.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> > > @@ -179,7 +179,7 @@ static int mtl_read_qgv_point_info(struct drm_i915_private *dev_priv,
> > >         val2 = intel_uncore_read(&dev_priv->uncore,
> > >                                  MTL_MEM_SS_INFO_QGV_POINT_HIGH(point));
> > >         dclk = REG_FIELD_GET(MTL_DCLK_MASK, val);
> > > -       sp->dclk = DIV_ROUND_UP((16667 * dclk), 1000);
> > > +       sp->dclk = (16667 * dclk + 500) / 1000;
> > 
> > Hmm, wonder does it at least partly now intersects with what I'm doing in 
> > https://patchwork.freedesktop.org/series/114982/
> > 
> > I remember we were discussing if this "+500" is actually also rounding up
> > itself.
> > 
> > The thing is that the way how rounding up is done for instance in DIV_ROUND_UP
> > also, if you check, if you lets say want to divide n by d, however you want to round
> > up the result, you add n = n + (d - 1) and then divide by d. This is how DIV_ROUND_UP works.
> > That effectively means that if n would be anything more than m*d, result would be not m,
> > but m + 1(note flooring would give m)
> > 
> > Adding 500, when dividing by 1000 is also rouding up, however it is a bit weaker.
> > In example above that would mean, if we want to divide n by d, we first add n = n + d / 2
> > and then divide by d.
> > That effectively means that if n would be anything more than m*d + 500, result would not m,
> > but again m + 1(again note, that true flooeing would have given m, not m + 1)
> > 
> > So it is still rounding up, but just being weaker/less precise though.
> > 
> > If we would want to truly floor that division, we would want to get m, but not m + 1 from
> > above examples, which means that we should just divide n / d, without adding anything.
> > So in my opinion, if we want to floor (16667 * dclk / 1000) result - it should not have
> > both "DIV_ROUND_UP" and " + 500" things - thats what I've done in series which also was touching
> > this code as well.
> > 
> > I think it would be nice to raise issue and clarify from HW team, if it was initial intention,
> > because adding + 500 is clearly doing rounding up as well, but it is just now on +-500(d/2)
> > granularity now,
> > while DIV_ROUND_UP worked with +-1 granularity. However both things are essentially "rounding up".
> > So in that case I would really want to challenge or clarify, what is written in BSpec.
> > 
> > Stan
> 
> Yes. Not much explanation about the addition of 500. I just blindly followed what was in that Bspec.
> Yes ideally div round_up is (n + d -1) / d. So what is the point of having 500 if the purpose is a
> rounding up unless it is accounting for some "other" factor. Anyway it is nice to get the
> clarification.
> 
> So the "other" factor I assume is that pcode is using this formula to calculate QGV point peak BW.
> So in MTL as we pass this peak BW to pcode for compare and select the QGV point, driver and pcode
> calculations need to match.

Adding 500 here, essnetially means we get +1 to sp->dclk, whenever dclk has some reminder of that division
which is >= 500. So kinda unclear: we are being instructed now to "floor" "rounded up" calculations! :))

So we are now doing something between flooring and DIV_ROUND_UP for sp->dclk * 16667 / 1000.
What makes me think that there is some contradiction, or might be there is some hardware factor, which 
works with 500 granularity, so that it makes sense to round up only if delta is >= 500, otherwise floor.

Stan
 
> 
> BR
> Vinod
> > 
> > >         sp->t_rp = REG_FIELD_GET(MTL_TRP_MASK, val);
> > >         sp->t_rcd = REG_FIELD_GET(MTL_TRCD_MASK, val);
> > >  
> > > -- 
> > > 2.34.1
> > > 
> 
