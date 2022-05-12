Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A2E3F525607
	for <lists+intel-gfx@lfdr.de>; Thu, 12 May 2022 21:47:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66ACC10F04C;
	Thu, 12 May 2022 19:47:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D41810F04C
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 May 2022 19:47:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652384873; x=1683920873;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=X3/zVZdU6sTGrkt5K5WdFx5LPRD6gMxAsb5qdV9Z5R8=;
 b=OV1Yc6cVUbkN+sj9B+5N2eESMcIWd8f9rbhIwPZvX8QTxpHHFLqjmjaj
 CHE0wMb3B7xQXglU5rw9+xCcLP6SGSMxKmY+MHtkSSNpYdx0BdkXQ5ESN
 /NaCCbdZHotDRtQrlptPZ6ZNZfr699qm/SYz65HgLV2iwqluzx53/2eje
 IBf/QxW8kHMCUfLO2AnHxgK/aHaZsgquG6v4Sd4EVwtm4AqEU4w8QuSlg
 jrDZd/uJ/RqIrcH5ekx00D8RTL1E68Tw8Cep3JeUSCKhJq6K03kK259SS
 sLd2Cn/EThg/od5gpWQo+MaDOnVnvhNv9R7cHdjN+YWtQ2Y61p/HdNhiU w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10345"; a="333154161"
X-IronPort-AV: E=Sophos;i="5.91,220,1647327600"; d="scan'208";a="333154161"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2022 12:47:51 -0700
X-IronPort-AV: E=Sophos;i="5.91,220,1647327600"; d="scan'208";a="542931740"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2022 12:47:50 -0700
Date: Thu, 12 May 2022 22:47:46 +0300
From: Imre Deak <imre.deak@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <Yn1kYq/GyHvSmswe@ideak-desk.fi.intel.com>
References: <20220511191911.2133928-1-imre.deak@intel.com>
 <20220512093705.2217613-1-imre.deak@intel.com>
 <20220512175611.ln532vchflw2lbbz@ldmartin-desk2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220512175611.ln532vchflw2lbbz@ldmartin-desk2>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/d12+: Disable DMC firmware flip
 queue handlers
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, May 12, 2022 at 10:56:11AM -0700, Lucas De Marchi wrote:
> On Thu, May 12, 2022 at 12:37:05PM +0300, Imre Deak wrote:
> > Based on a bspec update the DMC firmware's flip queue handling events
> > need to be disabled before enabling DC5/6. i915 doesn't use the flip
> > queue feature atm, so disable it already after loading the firmware.
> > This removes some overhead of the event handler which runs at a 1 kHz
> > frequency.
> > 
> > Bspec: 49193, 72486, 72487
> > 
> > v2:
> > - Fix the DMC pipe A register offsets for GEN12.
> > - Disable the events on DG2 only on pipe A..D .
> > 
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com> # v1
> > ---
> > drivers/gpu/drm/i915/display/intel_dmc.c      | 89 ++++++++++++++++++-
> > drivers/gpu/drm/i915/display/intel_dmc_regs.h | 41 +++++++++
> > 2 files changed, 129 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> > index 257cf662f9f4b..0ede8c86c6ccb 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> > @@ -244,9 +244,14 @@ struct stepping_info {
> > 	char substepping;
> > };
> > 
> > +static bool intel_dmc_has_fw_payload(struct drm_i915_private *i915, int dmc_id)
> 
> in several places, including this file, we are trying to keep the
> convention of not using intel_ prefix for non-exported functions.
> 
> has_dmc_id_fw() here would read better IMO.

Ok.

> > +{
> > +	return i915->dmc.dmc_info[dmc_id].payload;
> > +}
> > +
> > bool intel_dmc_has_payload(struct drm_i915_private *i915)
> > {
> > -	return i915->dmc.dmc_info[DMC_FW_MAIN].payload;
> > +	return intel_dmc_has_fw_payload(i915, DMC_FW_MAIN);
> > }
> > 
> > static const struct stepping_info *
> > @@ -268,6 +273,81 @@ static void gen9_set_dc_state_debugmask(struct drm_i915_private *dev_priv)
> > 	intel_de_posting_read(dev_priv, DC_STATE_DEBUG);
> > }
> > 
> > +static void
> > +disable_simple_flip_queue_event(struct drm_i915_private *i915,
> > +				i915_reg_t ctl_reg, i915_reg_t htp_reg)
> > +{
> > +	u32 event_ctl;
> > +	u32 event_htp;
> > +
> > +	event_ctl = intel_de_read(i915, ctl_reg);
> > +	event_htp = intel_de_read(i915, htp_reg);
> > +	if (event_ctl != (DMC_EVT_CTL_ENABLE |
> > +			  DMC_EVT_CTL_RECURRING |
> > +			  REG_FIELD_PREP(DMC_EVT_CTL_TYPE_MASK,
> > +					 DMC_EVT_CTL_TYPE_EDGE_0_1) |
> > +			  REG_FIELD_PREP(DMC_EVT_CTL_EVENT_ID_MASK,
> > +					 DMC_EVT_CTL_EVENT_ID_CLK_MSEC)) ||
> > +	    !event_htp) {
> > +		drm_dbg_kms(&i915->drm,
> > +			    "Unexpected DMC event configuration (control %08x htp %08x)\n",
> > +			    event_ctl, event_htp);
> > +		return;
> > +	}
> 
> why are we doing this if we just want to disable? If we will always keep
> it disabled, then just writing the right values would be simpler.

The requirement to disable flip queues explicitly came only now,
somewhat as a surprise. Future firmware versions will disable it by
default, but it's not clear at which point and how the ABI will change
then. So I'd like to keep the above check for any such ABI change in
place at least until those plans get clarified to us.

> > +
> > +	intel_de_write(i915, ctl_reg,
> > +		       REG_FIELD_PREP(DMC_EVT_CTL_TYPE_MASK,
> > +				      DMC_EVT_CTL_TYPE_EDGE_0_1) |
> > +		       REG_FIELD_PREP(DMC_EVT_CTL_EVENT_ID_MASK,
> > +				      DMC_EVT_CTL_EVENT_ID_FALSE));
> > +	intel_de_write(i915, htp_reg, 0);
> 
> matches bspec 72487 and 72486. It looks like we are missing a disable
> sequence for ADL-P though. Is it a missing documentation or function
> below should be updated to do nothing on ADL-P?

First I thought ADL-P doesn't use the same 1 kHz event as the other
platforms, hence no disable sequence is defined by bspec. But looking
again it also seems to use that just with a different event ID
('1KHZ_FLIPQ' vs. 'CLK_MSEC', see bspec 67608). I filed a bspec ticket
and will add the disabling for ADLP as well once that gets clarified.

> > +}
> > +
> > +static bool
> > +get_simple_flip_queue_event_regs(struct drm_i915_private *i915, int dmc_id,
> > +				 i915_reg_t *ctl_reg, i915_reg_t *htp_reg)
> > +{
> > +	switch (dmc_id) {
> > +	case DMC_FW_MAIN:
> > +		if (DISPLAY_VER(i915) == 12) {
> 
> Shouldn't this be >= 12? but see comment above about ADL-P

It's only D12 platforms that use one event handler running on the main
DMC for this, all later platforms use one event handler running on each
pipe DMC, and no flip queue handler running on the main DMC.

> 
> > +			*ctl_reg = DMC_EVT_CTL(i915, dmc_id, 3);
> > +			*htp_reg = DMC_EVT_HTP(i915, dmc_id, 3);
> 
> For DG2 the sequence in bspec is:
> 
> 	1. Disable flip queue
> 	2. PIPEDMC_EVT_CTL_2_A/B/C/D = 0x00030100
> 	3. PIPEDMC_EVT_HTP_2_A/B/C/D = 0x00000000
> 
> where did you get that for main dmc you need to write to CTL_3/HTP_3?

Bspec/72486, and checking the fixed MMIOs in the TGL/RKL firmwares (for
the above 1kHz events).

> > +
> > +			return true;
> > +		}
> > +		break;
> > +	case DMC_FW_PIPEA ... DMC_FW_PIPED:
> > +		if (IS_DG2(i915)) {
> > +			*ctl_reg = DMC_EVT_CTL(i915, dmc_id, 2);
> > +			*htp_reg = DMC_EVT_HTP(i915, dmc_id, 2);
> > +
> > +			return true;
> > +		}
> > +		break;
> > +	}
> > +
> > +	return false;
> > +}
> > +
> > +static void
> > +disable_all_simple_flip_queue_events(struct drm_i915_private *i915)
> > +{
> > +	int dmc_id;
> > +
> > +	for (dmc_id = 0; dmc_id < DMC_FW_MAX; dmc_id++) {
> > +		i915_reg_t ctl_reg;
> > +		i915_reg_t htp_reg;
> > +
> > +		if (!intel_dmc_has_fw_payload(i915, dmc_id))
> > +			continue;
> > +
> > +		if (!get_simple_flip_queue_event_regs(i915, dmc_id, &ctl_reg, &htp_reg))
> > +			continue;
> > +
> > +		disable_simple_flip_queue_event(i915, ctl_reg, htp_reg);
> > +	}
> > +}
> 
> it seems we are mixing "flip queue" and "simple flip queue". Maybe just
> remove "simple" as it doesn't add much information?

The other variant is called batch flip queue, but can rename this to
flip_queue.

> > +
> > /**
> >  * intel_dmc_load_program() - write the firmware from memory to register.
> >  * @dev_priv: i915 drm device.
> > @@ -308,6 +388,13 @@ void intel_dmc_load_program(struct drm_i915_private *dev_priv)
> > 	dev_priv->dmc.dc_state = 0;
> > 
> > 	gen9_set_dc_state_debugmask(dev_priv);
> > +
> > +	/*
> > +	 * Flip queue events need to be disabled before enabling DC5/6.
> > +	 * i915 doesn't use the flip queue feature, so disable it already
> > +	 * here.
> > +	 */
> > +	disable_all_simple_flip_queue_events(dev_priv);
> > }
> > 
> > void assert_dmc_loaded(struct drm_i915_private *i915)
> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> > index d65e698832eb5..43d780148b196 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> > @@ -10,6 +10,47 @@
> > 
> > #define DMC_PROGRAM(addr, i)	_MMIO((addr) + (i) * 4)
> > #define DMC_SSP_BASE_ADDR_GEN9	0x00002FC0
> > +
> > +#define _PIPEDMC_REG_MMIO_BASE_A_GEN13	0x5f000
> > +#define _PIPEDMC_REG_MMIO_BASE_A_GEN12	0x92000
> 
> no _GEN12/_GEN13 suffix

Why not? Is _ADLP/_TGL ok?

> > +
> > +#define _PIPEDMC_REG_MMIO_BASE(i915, dmc_id) \
> > +	((DISPLAY_VER(i915) >= 13 ? _PIPEDMC_REG_MMIO_BASE_A_GEN13 : \
> > +				    _PIPEDMC_REG_MMIO_BASE_A_GEN12) + \
> > +	 0x400 * ((dmc_id) - 1))
> > +
> > +#define _MAINDMC_REG_MMIO_BASE		0x8f000
> > +
> > +#define _DMC_REG_MMIO_BASE(i915, dmc_id) \
> > +	((dmc_id) == DMC_FW_MAIN ? _MAINDMC_REG_MMIO_BASE : \
> > +				   _PIPEDMC_REG_MMIO_BASE(i915, dmc_id))
> > +
> > +#define _DMC_REG(i915, dmc_id, reg) \
> > +	((reg) - _MAINDMC_REG_MMIO_BASE + _DMC_REG_MMIO_BASE(i915, dmc_id))
> > +
> > +#define _MAINDMC_EVT_HTP_0		0x8f004
> > +
> > +#define DMC_EVT_HTP(i915, dmc_id, handler) \
> > +	_MMIO(_DMC_REG(i915, dmc_id, _MAINDMC_EVT_HTP_0) + 4 * (handler))
> > +
> > +#define _MAINDMC_EVT_CTL_0		0x8f034
> 
> if we were to follow the spec names, we'd rather name
> _DMC_*  for main fw
> _PIPEDMC_* for others.

Ok.

> > +
> > +#define DMC_EVT_CTL(i915, dmc_id, handler) \
> > +	_MMIO(_DMC_REG(i915, dmc_id, _MAINDMC_EVT_CTL_0) + 4 * (handler))
> 
> s/handler/offset/?

There are a number of event handlers each main/pipe DMC can run,
each of which is configured via its control and HTP register. 'handler'
refers to such handler instances.

> It seems we have to massage the macros everywhere to handle pipe vs
> main. Given get_simple_flip_queue_event_regs() already handle them
> separate, I think it would be simpler to just split the macros on DMC_*
> vs PIPEDMC_*, which would be more inline with the spec too.

There are cases where it's practical being able to loop through all main
and pipe DMC registers in one go, for instance for clearing all
event control and HTP registers when reloading the firmware.

> 
> Maybe the most important question:
> 
> with this patch + the patch to load DMC on DG2, do we get the DC5
> transition to work? It'd be good to submit both together so we can
> ensure it does.

I think disabling flip queues is the correct thing even w/o considering
DC5. But yes, on DG2 it happens to fix that. The idea was to merge this
patch first to get separate CI results and follow up with a change to
enable DC5 on DG2.

> Lucas De Marchi
> 
> > +
> > +#define DMC_EVT_CTL_ENABLE		REG_BIT(31)
> > +#define DMC_EVT_CTL_RECURRING		REG_BIT(30)
> > +#define DMC_EVT_CTL_TYPE_MASK		REG_GENMASK(17, 16)
> > +#define DMC_EVT_CTL_TYPE_LEVEL_0	0
> > +#define DMC_EVT_CTL_TYPE_LEVEL_1	1
> > +#define DMC_EVT_CTL_TYPE_EDGE_1_0	2
> > +#define DMC_EVT_CTL_TYPE_EDGE_0_1	3
> > +
> > +#define DMC_EVT_CTL_EVENT_ID_MASK	REG_GENMASK(15, 8)
> > +#define DMC_EVT_CTL_EVENT_ID_FALSE	0x01
> > +/* An event handler scheduled to run at a 1 kHz frequency. */
> > +#define DMC_EVT_CTL_EVENT_ID_CLK_MSEC	0xbf
> > +
> > #define DMC_HTP_ADDR_SKL	0x00500034
> > #define DMC_SSP_BASE		_MMIO(0x8F074)
> > #define DMC_HTP_SKL		_MMIO(0x8F004)
> > -- 
> > 2.30.2
> > 
