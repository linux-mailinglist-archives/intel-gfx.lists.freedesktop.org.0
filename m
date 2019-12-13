Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2187311EBB3
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 21:09:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C13E6EDAA;
	Fri, 13 Dec 2019 20:09:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 319376ED33
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 20:09:11 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Dec 2019 12:09:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,311,1571727600"; d="scan'208";a="246247667"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by fmsmga002.fm.intel.com with ESMTP; 13 Dec 2019 12:09:10 -0800
Date: Fri, 13 Dec 2019 12:09:10 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20191213200910.GD85422@mdroper-desk1.amr.corp.intel.com>
References: <20191213001511.678070-4-matthew.d.roper@intel.com>
 <20191213010600.701315-1-matthew.d.roper@intel.com>
 <20191213180601.yvi35bse6mdyx5ab@ldmartin-desk1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191213180601.yvi35bse6mdyx5ab@ldmartin-desk1>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH v4 3/3] drm/i915/icl: Cleanup combo PHY aux
 power well handlers
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Dec 13, 2019 at 10:06:01AM -0800, Lucas De Marchi wrote:
> On Thu, Dec 12, 2019 at 05:06:00PM -0800, Matt Roper wrote:
> > Now that the combo PHY aux power well handlers are used exclusively on
> > Icelake, we can drop a bunch of the extra tests.
> > 
> > v2: Don't try to use intel_uncore_rmw for register updates yet; there's
> >    pending display uncore patches that need to land first.  (Lucas)
> > 
> > v3: Drop the combo phy assertion.  It was backward before, but doesn't
> >    seem terribly necessary.  I'm keeping the IS_ICELAKE assertion
> >    though since we often copy/paste/modify the power well tables when
> >    defining new platforms and it's too easy to cargo cult the
> >    ICL-specific handling to new platforms that shouldn't use it.
> >    (Lucas)
> > 
> > v4: Fix build; forgot to commit all the changes.  (CI)
> > 
> > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > ---
> > .../drm/i915/display/intel_display_power.c    | 20 +++++++------------
> > 1 file changed, 7 insertions(+), 13 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> > index 52f2332e0ab8..d59539002aaa 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > @@ -418,7 +418,8 @@ icl_combo_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
> > 	int pw_idx = power_well->desc->hsw.idx;
> > 	enum phy phy = ICL_AUX_PW_TO_PHY(pw_idx);
> > 	u32 val;
> > -	int wa_idx_max;
> > +
> > +	WARN_ON(!IS_ICELAKE(dev_priv));
> > 
> > 	val = I915_READ(regs->driver);
> > 	I915_WRITE(regs->driver, val | HSW_PWR_WELL_CTL_REQ(pw_idx));
> > @@ -430,14 +431,7 @@ icl_combo_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
> > 
> > 	hsw_wait_for_power_well_enable(dev_priv, power_well);
> > 
> > -	/* Display WA #1178: icl, tgl */
> 
> this comment must stay

Woops, yes.  Re-added (minus the tgl) while applying.  Thanks for the
reviews.


Matt

> 
> Otherwise
> 
> 
> Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
> 
> Lucas De Marchi
> 
> > -	if (IS_TIGERLAKE(dev_priv))
> > -		wa_idx_max = ICL_PW_CTL_IDX_AUX_C;
> > -	else
> > -		wa_idx_max = ICL_PW_CTL_IDX_AUX_B;
> > -
> > -	if (!IS_ELKHARTLAKE(dev_priv) &&
> > -	    pw_idx >= ICL_PW_CTL_IDX_AUX_A && pw_idx <= wa_idx_max &&
> > +	if (pw_idx >= ICL_PW_CTL_IDX_AUX_A && pw_idx <= ICL_PW_CTL_IDX_AUX_B &&
> > 	    !intel_bios_is_port_edp(dev_priv, (enum port)phy)) {
> > 		val = I915_READ(ICL_AUX_ANAOVRD1(pw_idx));
> > 		val |= ICL_AUX_ANAOVRD1_ENABLE | ICL_AUX_ANAOVRD1_LDO_BYPASS;
> > @@ -454,10 +448,10 @@ icl_combo_phy_aux_power_well_disable(struct drm_i915_private *dev_priv,
> > 	enum phy phy = ICL_AUX_PW_TO_PHY(pw_idx);
> > 	u32 val;
> > 
> > -	if (INTEL_GEN(dev_priv) < 12) {
> > -		val = I915_READ(ICL_PORT_CL_DW12(phy));
> > -		I915_WRITE(ICL_PORT_CL_DW12(phy), val & ~ICL_LANE_ENABLE_AUX);
> > -	}
> > +	WARN_ON(!IS_ICELAKE(dev_priv));
> > +
> > +	val = I915_READ(ICL_PORT_CL_DW12(phy));
> > +	I915_WRITE(ICL_PORT_CL_DW12(phy), val & ~ICL_LANE_ENABLE_AUX);
> > 
> > 	val = I915_READ(regs->driver);
> > 	I915_WRITE(regs->driver, val & ~HSW_PWR_WELL_CTL_REQ(pw_idx));
> > -- 
> > 2.23.0
> > 
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
