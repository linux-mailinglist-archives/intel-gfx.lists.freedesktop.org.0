Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B3DC1C5D10
	for <lists+intel-gfx@lfdr.de>; Tue,  5 May 2020 18:10:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F016889EBD;
	Tue,  5 May 2020 16:10:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3EF589E98
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 May 2020 16:10:36 +0000 (UTC)
IronPort-SDR: rx6lqNyIQLkMTziJ0oNC07UAWxmrxzjKCU5pLcqVj1CUsS6xL2NCmlQXN/EGDhQj6pj8ldkKHo
 S0iyc1q60qUA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2020 09:10:32 -0700
IronPort-SDR: RaDDhBbvCvbyanfTR9o/vt3za48dkuo8suMB+jJRoZNShW9QuKQJwIU/b1fX3a/4KzrjWcUBmL
 JrXCtkchRoqw==
X-IronPort-AV: E=Sophos;i="5.73,355,1583222400"; d="scan'208";a="250941290"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2020 09:10:30 -0700
Date: Tue, 5 May 2020 19:09:54 +0300
From: Imre Deak <imre.deak@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20200505160954.GC20861@ideak-desk.fi.intel.com>
References: <20200504225227.464666-1-matthew.d.roper@intel.com>
 <20200504225227.464666-9-matthew.d.roper@intel.com>
 <20200505045058.GD10565@intel.com>
 <20200505143904.GQ188376@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200505143904.GQ188376@mdroper-desk1.amr.corp.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v2 08/22] drm/i915/rkl: Add power well
 support
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, May 05, 2020 at 07:39:04AM -0700, Matt Roper wrote:
> On Tue, May 05, 2020 at 10:20:58AM +0530, Anshuman Gupta wrote:
> > On 2020-05-04 at 15:52:13 -0700, Matt Roper wrote:
> > > RKL power wells are similar to TGL power wells, but have some important
> > > differences:
> > > 
> > >  * PG1 now has pipe A's VDSC (rather than sticking it in PG2)
> > >  * PG2 no longer exists
> > >  * DDI-C (aka TC-1) moves from PG1 -> PG3
> > >  * PG5 no longer exists due to the lack of a fourth pipe
> > > 
> > > Also note that what we refer to as 'DDI-C' and 'DDI-D' need to actually
> > > be programmed as TC-1 and TC-2 even though this platform doesn't have TC
> > > outputs.
> > > 
> > > Bspec: 49234
> > > Cc: Imre Deak <imre.deak@intel.com>
> > > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> > > Cc: Anshuman Gupta <anshuman.gupta@intel.com>
> > > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > > ---
> > >  .../drm/i915/display/intel_display_power.c    | 185 +++++++++++++++++-
> > >  drivers/gpu/drm/i915/display/intel_vdsc.c     |   4 +-
> > >  2 files changed, 186 insertions(+), 3 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> > > index 49998906cc61..71691919d101 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > > @@ -2913,6 +2913,53 @@ void intel_display_power_put(struct drm_i915_private *dev_priv,
> > >  	BIT_ULL(POWER_DOMAIN_AUX_I_TBT)	|	\
> > >  	BIT_ULL(POWER_DOMAIN_TC_COLD_OFF))
> > >  
> > > +#define RKL_PW_4_POWER_DOMAINS (			\
> > > +	BIT_ULL(POWER_DOMAIN_PIPE_C) |			\
> > > +	BIT_ULL(POWER_DOMAIN_PIPE_C_PANEL_FITTER) |	\
> > > +	BIT_ULL(POWER_DOMAIN_TRANSCODER_C) |		\
> > > +	BIT_ULL(POWER_DOMAIN_INIT))
> > > +
> > > +#define RKL_PW_3_POWER_DOMAINS (			\
> > > +	RKL_PW_4_POWER_DOMAINS |			\
> > > +	BIT_ULL(POWER_DOMAIN_PIPE_B) |			\
> > > +	BIT_ULL(POWER_DOMAIN_PIPE_B_PANEL_FITTER) |	\
> > > +	BIT_ULL(POWER_DOMAIN_AUDIO) |			\
> > > +	BIT_ULL(POWER_DOMAIN_VGA) |			\
> > > +	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |		\
> > > +	BIT_ULL(POWER_DOMAIN_PORT_DDI_D_LANES) |	\
> > > +	BIT_ULL(POWER_DOMAIN_PORT_DDI_E_LANES) |	\
> > > +	BIT_ULL(POWER_DOMAIN_AUX_D) |			\
> > > +	BIT_ULL(POWER_DOMAIN_AUX_E) |			\
> > > +	BIT_ULL(POWER_DOMAIN_INIT))
> > > +
> > > +/*
> > > + * There is no PW_2/PG_2 on RKL.
> > > + *
> > > + * RKL PW_1/PG_1 domains (under HW/DMC control):
> > > + * - DBUF function (note: registers are in PW0)
> > > + * - PIPE_A and its planes and VDSC/joining, except VGA
> > > + * - transcoder A
> > > + * - DDI_A and DDI_B
> > > + * - FBC
> > > + *
> > > + * RKL PW_0/PG_0 domains (under HW/DMC control):
> > > + * - PCI
> > > + * - clocks except port PLL
> > > + * - shared functions:
> > > + *     * interrupts except pipe interrupts
> > > + *     * MBus except PIPE_MBUS_DBOX_CTL
> > > + *     * DBUF registers
> > > + * - central power except FBC
> > > + * - top-level GTC (DDI-level GTC is in the well associated with the DDI)
> > > + */
> > > +
> > > +#define RKL_DISPLAY_DC_OFF_POWER_DOMAINS (		\
> > > +	RKL_PW_3_POWER_DOMAINS |			\
> > > +	BIT_ULL(POWER_DOMAIN_MODESET) |			\
> > > +	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
> > > +	BIT_ULL(POWER_DOMAIN_AUX_B) |			\
> > > +	BIT_ULL(POWER_DOMAIN_INIT))
> > > +
> > >  static const struct i915_power_well_ops i9xx_always_on_power_well_ops = {
> > >  	.sync_hw = i9xx_power_well_sync_hw_noop,
> > >  	.enable = i9xx_always_on_power_well_noop,
> > > @@ -4283,6 +4330,140 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
> > >  	},
> > >  };
> > >  
> > > +static const struct i915_power_well_desc rkl_power_wells[] = {
> > > +	{
> > > +		.name = "always-on",
> > > +		.always_on = true,
> > > +		.domains = POWER_DOMAIN_MASK,
> > > +		.ops = &i9xx_always_on_power_well_ops,
> > > +		.id = DISP_PW_ID_NONE,
> > > +	},
> > > +	{
> > > +		.name = "power well 1",
> > > +		/* Handled by the DMC firmware */
> > > +		.always_on = true,
> > > +		.domains = 0,
> > > +		.ops = &hsw_power_well_ops,
> > > +		.id = SKL_DISP_PW_1,
> > > +		{
> > > +			.hsw.regs = &hsw_power_well_regs,
> > > +			.hsw.idx = ICL_PW_CTL_IDX_PW_1,
> > > +			.hsw.has_fuses = true,
> > > +		},
> > > +	},
> > > +	{
> > > +		.name = "DC off",
> > > +		.domains = RKL_DISPLAY_DC_OFF_POWER_DOMAINS,
> > > +		.ops = &gen9_dc_off_power_well_ops,
> > > +		.id = SKL_DISP_DC_OFF,
> > > +	},
> > > +	{
> > > +		.name = "power well 3",
> > > +		.domains = RKL_PW_3_POWER_DOMAINS,
> > > +		.ops = &hsw_power_well_ops,
> > > +		.id = ICL_DISP_PW_3,
> > > +		{
> > > +			.hsw.regs = &hsw_power_well_regs,
> > > +			.hsw.idx = ICL_PW_CTL_IDX_PW_3,
> > > +			.hsw.irq_pipe_mask = BIT(PIPE_B),
> > > +			.hsw.has_vga = true,
> > > +			.hsw.has_fuses = true,
> > > +		},
> > > +	},
> > > +	{
> > > +		.name = "power well 4",
> > > +		.domains = RKL_PW_4_POWER_DOMAINS,
> > > +		.ops = &hsw_power_well_ops,
> > > +		.id = DISP_PW_ID_NONE,
> > > +		{
> > > +			.hsw.regs = &hsw_power_well_regs,
> > > +			.hsw.idx = ICL_PW_CTL_IDX_PW_4,
> > > +			.hsw.has_fuses = true,
> > > +			.hsw.irq_pipe_mask = BIT(PIPE_C),
> > > +		}
> > > +	},
> > IMHO the order of power well is differs from TGL/ICL,
> > TGL/ICL PW_4 comes after DDI and AUX IO power wells.
> > Why the order is different on RKL.
> > Thanks,
> > Anshuman Gupta.
> 
> I'm not aware of any specific reason why PW_4 was placed after the
> DDI/AUX wells on ICL, but that order seems to have been copy/pasted to
> TGL too.
> 
> It seems more natural to keep the main power wells together, so I wrote
> them in what I considered to be a more intuitive order here.  But
> ultimately the order of the power wells in the array shouldn't have any
> functional impact.

The order of two power wells in the array determines their
enabling/disabling order if they are included in the same power domain.
If there is no dependency between two power wells their order in the
array is not important.

> Matt
> 
> > > +	{
> > > +		.name = "DDI A IO",
> > > +		.domains = ICL_DDI_IO_A_POWER_DOMAINS,
> > > +		.ops = &hsw_power_well_ops,
> > > +		.id = DISP_PW_ID_NONE,
> > > +		{
> > > +			.hsw.regs = &icl_ddi_power_well_regs,
> > > +			.hsw.idx = ICL_PW_CTL_IDX_DDI_A,
> > > +		}
> > > +	},
> > > +	{
> > > +		.name = "DDI B IO",
> > > +		.domains = ICL_DDI_IO_B_POWER_DOMAINS,
> > > +		.ops = &hsw_power_well_ops,
> > > +		.id = DISP_PW_ID_NONE,
> > > +		{
> > > +			.hsw.regs = &icl_ddi_power_well_regs,
> > > +			.hsw.idx = ICL_PW_CTL_IDX_DDI_B,
> > > +		}
> > > +	},
> > > +	{
> > > +		.name = "DDI D TC1 IO",
> > > +		.domains = TGL_DDI_IO_D_TC1_POWER_DOMAINS,
> > > +		.ops = &hsw_power_well_ops,
> > > +		.id = DISP_PW_ID_NONE,
> > > +		{
> > > +			.hsw.regs = &icl_ddi_power_well_regs,
> > > +			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC1,
> > > +		},
> > > +	},
> > > +	{
> > > +		.name = "DDI E TC2 IO",
> > > +		.domains = TGL_DDI_IO_E_TC2_POWER_DOMAINS,
> > > +		.ops = &hsw_power_well_ops,
> > > +		.id = DISP_PW_ID_NONE,
> > > +		{
> > > +			.hsw.regs = &icl_ddi_power_well_regs,
> > > +			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC2,
> > > +		},
> > > +	},
> > > +	{
> > > +		.name = "AUX A",
> > > +		.domains = ICL_AUX_A_IO_POWER_DOMAINS,
> > > +		.ops = &icl_aux_power_well_ops,
> > > +		.id = DISP_PW_ID_NONE,
> > > +		{
> > > +			.hsw.regs = &icl_aux_power_well_regs,
> > > +			.hsw.idx = ICL_PW_CTL_IDX_AUX_A,
> > > +		},
> > > +	},
> > > +	{
> > > +		.name = "AUX B",
> > > +		.domains = ICL_AUX_B_IO_POWER_DOMAINS,
> > > +		.ops = &icl_aux_power_well_ops,
> > > +		.id = DISP_PW_ID_NONE,
> > > +		{
> > > +			.hsw.regs = &icl_aux_power_well_regs,
> > > +			.hsw.idx = ICL_PW_CTL_IDX_AUX_B,
> > > +		},
> > > +	},
> > > +	{
> > > +		.name = "AUX D TC1",
> > > +		.domains = TGL_AUX_D_TC1_IO_POWER_DOMAINS,
> > > +		.ops = &icl_aux_power_well_ops,
> > > +		.id = DISP_PW_ID_NONE,
> > > +		{
> > > +			.hsw.regs = &icl_aux_power_well_regs,
> > > +			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC1,
> > > +		},
> > > +	},
> > > +	{
> > > +		.name = "AUX E TC2",
> > > +		.domains = TGL_AUX_E_TC2_IO_POWER_DOMAINS,
> > > +		.ops = &icl_aux_power_well_ops,
> > > +		.id = DISP_PW_ID_NONE,
> > > +		{
> > > +			.hsw.regs = &icl_aux_power_well_regs,
> > > +			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC2,
> > > +		},
> > > +	},
> > > +};
> > > +
> > >  static int
> > >  sanitize_disable_power_well_option(const struct drm_i915_private *dev_priv,
> > >  				   int disable_power_well)
> > > @@ -4428,7 +4609,9 @@ int intel_power_domains_init(struct drm_i915_private *dev_priv)
> > >  	 * The enabling order will be from lower to higher indexed wells,
> > >  	 * the disabling order is reversed.
> > >  	 */
> > > -	if (IS_GEN(dev_priv, 12)) {
> > > +	if (IS_ROCKETLAKE(dev_priv)) {
> > > +		err = set_power_wells(power_domains, rkl_power_wells);
> > > +	} else if (IS_GEN(dev_priv, 12)) {
> > >  		err = set_power_wells(power_domains, tgl_power_wells);
> > >  	} else if (IS_GEN(dev_priv, 11)) {
> > >  		err = set_power_wells(power_domains, icl_power_wells);
> > > diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > > index 95ad87d4ccb3..d145fe2bed81 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > > @@ -476,13 +476,13 @@ intel_dsc_power_domain(const struct intel_crtc_state *crtc_state)
> > >  	 * POWER_DOMAIN_TRANSCODER_VDSC_PW2 power domain in two cases:
> > >  	 *
> > >  	 *  - ICL eDP/DSI transcoder
> > > -	 *  - TGL pipe A
> > > +	 *  - Gen12+ (except RKL) pipe A
> > >  	 *
> > >  	 * For any other pipe, VDSC/joining uses the power well associated with
> > >  	 * the pipe in use. Hence another reference on the pipe power domain
> > >  	 * will suffice. (Except no VDSC/joining on ICL pipe A.)
> > >  	 */
> > > -	if (INTEL_GEN(i915) >= 12 && pipe == PIPE_A)
> > > +	if (INTEL_GEN(i915) >= 12 && !IS_ROCKETLAKE(i915) && pipe == PIPE_A)
> > >  		return POWER_DOMAIN_TRANSCODER_VDSC_PW2;
> > >  	else if (is_pipe_dsc(crtc_state))
> > >  		return POWER_DOMAIN_PIPE(pipe);
> > > -- 
> > > 2.24.1
> > > 
> 
> -- 
> Matt Roper
> Graphics Software Engineer
> VTT-OSGC Platform Enablement
> Intel Corporation
> (916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
