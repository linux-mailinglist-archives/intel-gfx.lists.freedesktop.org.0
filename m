Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 296864A4B28
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Jan 2022 17:00:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79B6C10E589;
	Mon, 31 Jan 2022 16:00:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CACC10E578
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jan 2022 16:00:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643644831; x=1675180831;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=3h+qDHoBxejVIIf3t+E1zLjAODPGcZ4RSW4WAmwqwVM=;
 b=NLt3u1tBGJwNfkxy3gb4ytoZ9AYzxw02LuQe/ggrOZoKDmD88yystL68
 NC8UL0uCZdIKqDYsbH8EdIERhADspp+B9DA6ihT1Vb6pq/XNARVrEQNZA
 yzl+zovW8KV0guCrCMBGCDwhivssDX51LPDbw+hhKxBgEhFfurWLGeLIu
 Q9srRUpbR/Z46hka9olhtxPp3d0mKdNv7Vze7wzdEbBsCnjJ3KjiG5D8m
 ptpiQ4VoywQk2Nxq1a2u2jSBS+fiUHE7y2k0h1Gmy/ew0IJwIB9LkfBeY
 DrSTdTmZoIuj2juz5DhXtqk7WBtekxzu0dInXdlYbTgyNXsN7H1Bi5wli w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10244"; a="227456411"
X-IronPort-AV: E=Sophos;i="5.88,331,1635231600"; d="scan'208";a="227456411"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2022 08:00:28 -0800
X-IronPort-AV: E=Sophos;i="5.88,331,1635231600"; d="scan'208";a="496963750"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2022 08:00:26 -0800
Date: Mon, 31 Jan 2022 18:00:22 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20220131160022.GA2434344@ideak-desk.fi.intel.com>
References: <20220128114914.2339526-1-imre.deak@intel.com>
 <20220128114914.2339526-5-imre.deak@intel.com>
 <871r0ow17m.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <871r0ow17m.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH 04/19] drm/i915: Move the power domain->well
 mappings to intel_display_power_map.c
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 31, 2022 at 02:15:25PM +0200, Jani Nikula wrote:
> On Fri, 28 Jan 2022, Imre Deak <imre.deak@intel.com> wrote:
> > Move the list of platform specific power domain -> power well
> > definitions to intel_display_power_map.c. While at it group the
> > platforms' power domain macros with the corresponding power well lists
> > and keep all the power domain lists in the same order (matching the enum
> > order).
> >
> > No functional changes.
> >
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> 
> The commit message should explain the why.
> 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
> > index b30e6133c66d0..a0e68ae691021 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> > @@ -197,6 +197,7 @@ struct intel_display_power_domain_set {
> >  	for ((domain) = 0; (domain) < POWER_DOMAIN_NUM; (domain)++)	\
> >  		for_each_if(BIT_ULL(domain) & (mask))
> >  
> > +/* intel_display_power.c */
> >  int intel_power_domains_init(struct drm_i915_private *dev_priv);
> >  void intel_power_domains_cleanup(struct drm_i915_private *dev_priv);
> >  void intel_power_domains_init_hw(struct drm_i915_private *dev_priv, bool resume);
> > @@ -316,4 +317,8 @@ void chv_phy_powergate_lanes(struct intel_encoder *encoder,
> >  bool chv_phy_powergate_ch(struct drm_i915_private *dev_priv, enum dpio_phy phy,
> >  			  enum dpio_channel ch, bool override);
> >  
> > +/* intel_display_power_map.c */
> > +const char *
> > +intel_display_power_domain_str(enum intel_display_power_domain domain);
> > +
> >  #endif /* __INTEL_DISPLAY_POWER_H__ */
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power_internal.h b/drivers/gpu/drm/i915/display/intel_display_power_internal.h
> > new file mode 100644
> > index 0000000000000..3fc7c7d0bc9e9
> > --- /dev/null
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power_internal.h
> > @@ -0,0 +1,93 @@
> > +/* SPDX-License-Identifier: MIT */
> > +/*
> > + * Copyright © 2022 Intel Corporation
> > + */
> > +
> > +#ifndef __INTEL_DISPLAY_POWER_INTERNAL_H__
> > +#define __INTEL_DISPLAY_POWER_INTERNAL_H__
> > +
> > +#include "i915_reg_defs.h"
> > +
> > +#include "intel_display.h"
> > +#include "intel_display_power.h"
> > +
> > +struct i915_power_well_regs;
> > +
> > +/* Power well structure for haswell */
> > +struct i915_power_well_desc {
> > +	const char *name;
> > +	bool always_on;
> > +	u64 domains;
> > +	/* unique identifier for this power well */
> > +	enum i915_power_well_id id;
> > +	/*
> > +	 * Arbitraty data associated with this power well. Platform and power
> > +	 * well specific.
> > +	 */
> > +	union {
> > +		struct {
> > +			/*
> > +			 * request/status flag index in the PUNIT power well
> > +			 * control/status registers.
> > +			 */
> > +			u8 idx;
> > +		} vlv;
> > +		struct {
> > +			enum dpio_phy phy;
> > +		} bxt;
> > +		struct {
> > +			/*
> > +			 * request/status flag index in the power well
> > +			 * constrol/status registers.
> > +			 */
> > +			u8 idx;
> > +			/* Mask of pipes whose IRQ logic is backed by the pw */
> > +			u8 irq_pipe_mask;
> > +			/*
> > +			 * Instead of waiting for the status bit to ack enables,
> > +			 * just wait a specific amount of time and then consider
> > +			 * the well enabled.
> > +			 */
> > +			u16 fixed_enable_delay;
> > +			/* The pw is backing the VGA functionality */
> > +			bool has_vga:1;
> > +			bool has_fuses:1;
> > +			/*
> > +			 * The pw is for an ICL+ TypeC PHY port in
> > +			 * Thunderbolt mode.
> > +			 */
> > +			bool is_tc_tbt:1;
> > +		} hsw;
> > +	};
> > +	const struct i915_power_well_ops *ops;
> > +};
> > +
> > +struct i915_power_well {
> > +	const struct i915_power_well_desc *desc;
> > +	/* power well enable/disable usage count */
> > +	int count;
> > +	/* cached hw enabled state */
> > +	bool hw_enabled;
> > +};
> > +
> > +/* intel_display_power.c */
> 
> I've put a lot of effort into splitting our (display) codebase towards
> having a 1-to-1 mapping between .c and .h files. This patch adds an odd
> split between two headers and two compilation units, and I don't think
> it's pretty.

This header includes struct definitions used by intel_display_power.c
and intel_display_power_map.c. I don't see why this would be a problem,
there are many other cases where multiple .c files include a header file
for the same reason.

> > +extern const struct i915_power_well_ops i9xx_always_on_power_well_ops;
> > +extern const struct i915_power_well_ops chv_pipe_power_well_ops;
> > +extern const struct i915_power_well_ops chv_dpio_cmn_power_well_ops;
> > +extern const struct i915_power_well_ops i830_pipes_power_well_ops;
> > +extern const struct i915_power_well_ops hsw_power_well_ops;
> > +extern const struct i915_power_well_ops hsw_power_well_ops;
> > +extern const struct i915_power_well_ops gen9_dc_off_power_well_ops;
> > +extern const struct i915_power_well_ops bxt_dpio_cmn_power_well_ops;
> > +extern const struct i915_power_well_ops vlv_display_power_well_ops;
> > +extern const struct i915_power_well_ops vlv_dpio_cmn_power_well_ops;
> > +extern const struct i915_power_well_ops vlv_dpio_power_well_ops;
> > +extern const struct i915_power_well_ops icl_ddi_power_well_ops;
> > +extern const struct i915_power_well_ops icl_aux_power_well_ops;
> > +extern const struct i915_power_well_ops tgl_tc_cold_off_ops;
> 
> Also not happy about this. Data is not an interface.
> 
> We currently have 20 symbols with extern, and this adds 14 more with a
> clear path to add more for new platforms. I'd rather we were heading in
> the other direction.
> 
> I'm just wondering if the split introduced here is sound. All of the
> above would make this turn up when I look for stuff that I think needs
> to be refactored. And the commit message does not even say why...

The reason is to reduce the size of intel_display_power.c, to make it
more readable/manageable. The implementation of the power well
enable/disable etc. functionality and the mapping of these power wells
to power domains are two distinct parts in that file that can be
separated.

The externs above are power wells that are mapped to domains, and
besides the symbol name are opaque to the mapping code.

> BR,
> Jani.
> 
> 
> > +
> > +/* intel_display_power_map.c */
> > +int intel_init_power_wells(struct i915_power_domains *power_domains);
> > +void intel_cleanup_power_wells(struct i915_power_domains *power_domains);
> > +
> > +#endif
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
