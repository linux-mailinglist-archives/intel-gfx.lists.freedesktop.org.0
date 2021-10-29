Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30B0243FF13
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Oct 2021 17:08:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6325F6E114;
	Fri, 29 Oct 2021 15:08:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7603B6E114
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Oct 2021 15:08:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10151"; a="254267987"
X-IronPort-AV: E=Sophos;i="5.87,193,1631602800"; d="scan'208";a="254267987"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2021 08:08:41 -0700
X-IronPort-AV: E=Sophos;i="5.87,193,1631602800"; d="scan'208";a="487604388"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2021 08:08:39 -0700
Date: Fri, 29 Oct 2021 18:08:35 +0300
From: Imre Deak <imre.deak@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <20211029150835.GG3194662@ideak-desk.fi.intel.com>
References: <20211028230449.115832-1-jose.souza@intel.com>
 <20211029145822.GF3194662@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211029145822.GF3194662@ideak-desk.fi.intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/adlp: Implement workaround
 16013190616
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

On Fri, Oct 29, 2021 at 05:58:22PM +0300, Imre Deak wrote:
> On Thu, Oct 28, 2021 at 04:04:49PM -0700, José Roberto de Souza wrote:
> > New workaround added to specification, requiring bit 15 of
> > GEN8_CHICKEN_DCPR_1 to be programed before power well 1 is enabled.
> > 
> > BSpec: 54369
> > Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> 
> Reviewed-by: Imre Deak <imre.deak@intel.com>
> 
> The spec doesn't require it, so probably not re-enabling clock gating
> after disabling PW#1 won't cause a problem somewhere else. But if so
> the wa would be better placed in adlp_init_clock_gating().

Ah, that's called too late for this, so nvm.

> > ---
> >  drivers/gpu/drm/i915/display/intel_display_power.c | 5 +++++
> >  drivers/gpu/drm/i915/i915_reg.h                    | 7 ++++---
> >  2 files changed, 9 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> > index 6637760d24e0c..344e3d6967020 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > @@ -435,6 +435,11 @@ static void hsw_power_well_enable(struct drm_i915_private *dev_priv,
> >  
> >  		pg = DISPLAY_VER(dev_priv) >= 11 ? ICL_PW_CTL_IDX_TO_PG(pw_idx) :
> >  						 SKL_PW_CTL_IDX_TO_PG(pw_idx);
> > +
> > +		/* Wa_16013190616:adlp */
> > +		if (IS_ALDERLAKE_P(dev_priv) && pg == SKL_PG1)
> > +			intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1, 0, DISABLE_FLR_SRC);
> > +
> >  		/*
> >  		 * For PW1 we have to wait both for the PW0/PG0 fuse state
> >  		 * before enabling the power well and PW1/PG1's own fuse
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> > index fd58757e846a6..541c16aee90da 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -8310,9 +8310,10 @@ enum {
> >  #define  RESET_PCH_HANDSHAKE_ENABLE	(1 << 4)
> >  
> >  #define GEN8_CHICKEN_DCPR_1		_MMIO(0x46430)
> > -#define   SKL_SELECT_ALTERNATE_DC_EXIT	(1 << 30)
> > -#define   ICL_DELAY_PMRSP		(1 << 22)
> > -#define   MASK_WAKEMEM			(1 << 13)
> > +#define   SKL_SELECT_ALTERNATE_DC_EXIT	REG_BIT(30)
> > +#define   ICL_DELAY_PMRSP		REG_BIT(22)
> > +#define   DISABLE_FLR_SRC		REG_BIT(15)
> > +#define   MASK_WAKEMEM			REG_BIT(13)
> >  
> >  #define GEN11_CHICKEN_DCPR_2			_MMIO(0x46434)
> >  #define   DCPR_MASK_MAXLATENCY_MEMUP_CLR	REG_BIT(27)
> > -- 
> > 2.33.1
> > 
