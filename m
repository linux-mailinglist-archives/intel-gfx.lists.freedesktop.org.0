Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CBD31BCA51
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2020 20:51:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 932696E9DE;
	Tue, 28 Apr 2020 18:51:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A831E6E9DE
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Apr 2020 18:51:00 +0000 (UTC)
IronPort-SDR: SRl2HXnAkVQmShsi+NZ53VJa1auUekDKaM3XKM3JJmQ4CLqUaAZlCVGOO2m765UO+SkOqtroKf
 eXaum9vcHlWQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2020 11:51:00 -0700
IronPort-SDR: 6hOJBVknerSN2nMiwdCS5jwEt26iZrxVzUCUnc4eUHG40Hb7kO9MNBdOiGgFlGDa5r9cZVbv1l
 ZNeCMH4P5lZA==
X-IronPort-AV: E=Sophos;i="5.73,328,1583222400"; d="scan'208";a="257707449"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com)
 ([10.165.21.202])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2020 11:50:59 -0700
Date: Tue, 28 Apr 2020 11:50:14 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
Message-ID: <20200428185014.GA4030801@intel.com>
References: <20200415193535.14597-1-matthew.s.atwood@intel.com>
 <8C2593290C2B3E488D763E819AF1F02E160B562C@ORSMSX101.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8C2593290C2B3E488D763E819AF1F02E160B562C@ORSMSX101.amr.corp.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/tgl: Wa_14011059788
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 28, 2020 at 03:07:03PM +0000, Sripada, Radhakrishna wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Matt
> > Atwood
> > Sent: Wednesday, April 15, 2020 12:36 PM
> > To: intel-gfx@lists.freedesktop.org
> > Subject: [Intel-gfx] [PATCH v2] drm/i915/tgl: Wa_14011059788
> > 
> > Reflect recent Bspec changes
> > 
> > v2: fix whitespace, typo
> > 
> > Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> Looks good to me.
> Reviewed-by: Radhakrishna Sripada <Radhakrishna.sripada@intel.com>

pushed to dinq.
Thanks for the patch and review.

> 
> - RK
> > ---
> >  drivers/gpu/drm/i915/intel_pm.c | 4 ++++
> >  1 file changed, 4 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> > index b632b6bb9c3e..3d12a0617c84 100644
> > --- a/drivers/gpu/drm/i915/intel_pm.c
> > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > @@ -6854,6 +6854,10 @@ static void tgl_init_clock_gating(struct
> > drm_i915_private *dev_priv)
> >  	if (IS_TGL_REVID(dev_priv, TGL_REVID_A0, TGL_REVID_A0))
> >  		I915_WRITE(GEN9_CLKGATE_DIS_3,
> > I915_READ(GEN9_CLKGATE_DIS_3) |
> >  			   TGL_VRH_GATING_DIS);
> > +
> > +	/* Wa_14011059788:tgl */
> > +	intel_uncore_rmw(&dev_priv->uncore,
> > GEN10_DFR_RATIO_EN_AND_CHICKEN,
> > +			 0, DFR_DISABLE);
> >  }
> > 
> >  static void cnp_init_clock_gating(struct drm_i915_private *dev_priv)
> > --
> > 2.21.1
> > 
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
