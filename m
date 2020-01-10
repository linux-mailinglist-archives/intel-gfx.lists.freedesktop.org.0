Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5D19137671
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2020 19:52:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4D9B89F77;
	Fri, 10 Jan 2020 18:52:38 +0000 (UTC)
X-Original-To: intel-gfx@freedesktop.org
Delivered-To: intel-gfx@freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3CAA89F77
 for <intel-gfx@freedesktop.org>; Fri, 10 Jan 2020 18:52:36 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jan 2020 10:52:36 -0800
X-IronPort-AV: E=Sophos;i="5.69,418,1571727600"; d="scan'208";a="371685096"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com)
 ([10.165.21.202])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jan 2020 10:52:36 -0800
Date: Fri, 10 Jan 2020 10:54:09 -0800
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Anshuamn Gupta <anshuman.gupta@intel.com>
Message-ID: <20200110185409.GA3115813@intel.com>
References: <20200110085149.843-1-matthew.s.atwood@intel.com>
 <20200110090303.GA23528@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200110090303.GA23528@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: add Wa_14010594013: icl,ehl
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
Cc: intel-gfx@freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 10, 2020 at 02:33:04PM +0530, Anshuamn Gupta wrote:
> On 2020-01-10 at 03:51:49 -0500, Matt Atwood wrote:
> > The bspec tells us we need to set this bit to avoid potential underruns.
> > 
> > Bspec: 33450
> > Bspec: 33451
> > Bspec: 33452
> It would be nice to add index 7386 which is having the bit for PMRSP.

Indeed. In the end 7386 was the only one that I needed here.
(Besides the HSD article)

Probably even better to have only the 7386. But up to Matt.

> > 
> > Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_reg.h | 1 +
> >  drivers/gpu/drm/i915/intel_pm.c | 4 ++++
> >  2 files changed, 5 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> > index cf770793be54..b9dc5e2ea606 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -7785,6 +7785,7 @@ enum {
> >  
> >  #define GEN8_CHICKEN_DCPR_1		_MMIO(0x46430)
> >  #define   SKL_SELECT_ALTERNATE_DC_EXIT	(1 << 30)
> > +#define   CNL_DELAY_PMRSP		(1 << 22)
> >  #define   MASK_WAKEMEM			(1 << 13)
> >  #define   CNL_DDI_CLOCK_REG_ACCESS_ON	(1 << 7)
> >  
> > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> > index 148ac455dfa7..10714d43e8a3 100644
> > --- a/drivers/gpu/drm/i915/intel_pm.c
> > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > @@ -6610,6 +6610,10 @@ static void icl_init_clock_gating(struct drm_i915_private *dev_priv)
> >  	/* Wa_1407352427:icl,ehl */
> >  	intel_uncore_rmw(&dev_priv->uncore, UNSLICE_UNIT_LEVEL_CLKGATE2,
> >  			 0, PSDUNIT_CLKGATE_DIS);
> > +
> > +	/*Wa_14010594013:icl, ehl */
> > +	I915_WRITE(GEN8_CHICKEN_DCPR_1,
> > +		   I915_READ(GEN8_CHICKEN_DCPR_1) | CNL_DELAY_PMRSP);
> Is there any functional difference between Wa_14010594013 and above Wa_1407352427

I couldn't find any hsd article with this new number....
The one that Matt used seemed the correct one because it was the one
with all the info that I needed.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> using different family of writes, may be not related to this patch.
> Thanks,
> Anshuman Gupta.
> >  }
> >  
> >  static void tgl_init_clock_gating(struct drm_i915_private *dev_priv)
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
