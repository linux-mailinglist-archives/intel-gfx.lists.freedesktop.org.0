Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48B4B4A8B83
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Feb 2022 19:24:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7E2710E6D4;
	Thu,  3 Feb 2022 18:24:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6956C10E6D4
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Feb 2022 18:24:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643912643; x=1675448643;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=55Xy0iWsEW1iKEynrB9MpXswAjpGOiHHRdW+EJXtO+M=;
 b=B8rv4jvTUsDwLlWtAS8JG9nYd9WKJRCdtZh4WJanGr+RHf3CqqX2/Xb7
 giij7bFwYvC+BStUhQQspMo7Z9P6xMAYQFrH7IW/BdNAAoI55oFntPsin
 lL2YxuBuT/C2O/d/9yKTMlJ5OSWfZBNVz8vVpn0eGwJbz8UaFhG3VVWx3
 vDoiJJ59KiwtH7tjdawCfRt1GYNLPW+uS+hgZdCnSdlcH8YcqL6xRbQRT
 7O73uCEWP6eOu30qgVFGQR9mwx+pGuoscllSYGvNProfJTD5JH8vsKsyY
 G6iizMTiLdHdE+3Fei3wZfKr3GoGhYU+J9orikHQ/GU4z0tKeX9ZoqGj8 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10247"; a="228866851"
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="228866851"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 10:12:03 -0800
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="483330724"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 10:12:01 -0800
Date: Thu, 3 Feb 2022 20:11:58 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20220203181158.GC2886729@ideak-desk.fi.intel.com>
References: <20220128114914.2339526-1-imre.deak@intel.com>
 <20220128114914.2339526-10-imre.deak@intel.com>
 <87fsp2vo4l.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87fsp2vo4l.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH 09/19] drm/i915: Convert the power well
 descriptor domain mask to a list
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

On Tue, Feb 01, 2022 at 01:10:18PM +0200, Jani Nikula wrote:
> On Fri, 28 Jan 2022, Imre Deak <imre.deak@intel.com> wrote:
> > The next patch converts the i915_power_well_desc::domain mask from a u64
> > mask to a bitmap. I didn't find a reasonably simple way to initialize
> > bitmaps statically, so prepare for the next patch here by converting the
> > masks to a list and initing the masks from these lists during module
> > loading.
> 
> I think "list" is a very specific thing in the kernel, and I find the
> list naming here confusing.

It's an array of enums, so can call it that way instead.

> I'll try to give the initialization thing some thought.

Just for reference, I tried
https://github.com/ideak/linux/commit/de8daa5362ce

but I didn't find it simple/generic/fast-to-compile enough.

There's also the planned
https://www.mail-archive.com/netdev@vger.kernel.org/msg402394.html
and
https://www.mail-archive.com/netdev@vger.kernel.org/msg402398.html

This one requires disabling some 'struct-field-reinited' warning, not
sure if it's getting merged or not.

--Imre

> BR,
> Jani.
> 
> >
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  .../drm/i915/display/intel_display_power.c    |   12 +-
> >  .../display/intel_display_power_internal.h    |    6 +-
> >  .../i915/display/intel_display_power_map.c    | 1426 +++++++++--------
> >  3 files changed, 756 insertions(+), 688 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> > index 69b75752258d9..a370ef8376410 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > @@ -40,11 +40,11 @@
> >  
> >  #define for_each_power_domain_well(__dev_priv, __power_well, __domain_mask)	\
> >  	for_each_power_well(__dev_priv, __power_well)				\
> > -		for_each_if((__power_well)->desc->domains & (__domain_mask))
> > +		for_each_if((__power_well)->domains & (__domain_mask))
> >  
> >  #define for_each_power_domain_well_reverse(__dev_priv, __power_well, __domain_mask) \
> >  	for_each_power_well_reverse(__dev_priv, __power_well)		        \
> > -		for_each_if((__power_well)->desc->domains & (__domain_mask))
> > +		for_each_if((__power_well)->domains & (__domain_mask))
> >  
> >  struct i915_power_well_regs {
> >  	i915_reg_t bios;
> > @@ -465,7 +465,7 @@ static u64 async_put_domains_mask(struct i915_power_domains *power_domains);
> >  static int power_well_async_ref_count(struct drm_i915_private *dev_priv,
> >  				      struct i915_power_well *power_well)
> >  {
> > -	int refs = hweight64(power_well->desc->domains &
> > +	int refs = hweight64(power_well->domains &
> >  			     async_put_domains_mask(&dev_priv->power_domains));
> >  
> >  	drm_WARN_ON(&dev_priv->drm, refs > power_well->count);
> > @@ -3805,7 +3805,7 @@ static void intel_power_domains_dump_info(struct drm_i915_private *i915)
> >  		drm_dbg(&i915->drm, "%-25s %d\n",
> >  			power_well->desc->name, power_well->count);
> >  
> > -		for_each_power_domain(domain, power_well->desc->domains)
> > +		for_each_power_domain(domain, power_well->domains)
> >  			drm_dbg(&i915->drm, "  %-23s %d\n",
> >  				intel_display_power_domain_str(domain),
> >  				power_domains->domain_use_count[domain]);
> > @@ -3847,7 +3847,7 @@ static void intel_power_domains_verify_state(struct drm_i915_private *i915)
> >  				power_well->count, enabled);
> >  
> >  		domains_count = 0;
> > -		for_each_power_domain(domain, power_well->desc->domains)
> > +		for_each_power_domain(domain, power_well->domains)
> >  			domains_count += power_domains->domain_use_count[domain];
> >  
> >  		if (power_well->count != domains_count) {
> > @@ -3962,7 +3962,7 @@ void intel_display_power_debug(struct drm_i915_private *i915, struct seq_file *m
> >  		seq_printf(m, "%-25s %d\n", power_well->desc->name,
> >  			   power_well->count);
> >  
> > -		for_each_power_domain(power_domain, power_well->desc->domains)
> > +		for_each_power_domain(power_domain, power_well->domains)
> >  			seq_printf(m, "  %-23s %d\n",
> >  				   intel_display_power_domain_str(power_domain),
> >  				   power_domains->domain_use_count[power_domain]);
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power_internal.h b/drivers/gpu/drm/i915/display/intel_display_power_internal.h
> > index fd1abb64a8a47..49f6155e62c47 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power_internal.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power_internal.h
> > @@ -16,7 +16,10 @@ struct i915_power_well_regs;
> >  /* Power well structure for haswell */
> >  struct i915_power_well_desc {
> >  	const char *name;
> > -	u64 domains;
> > +	const struct i915_power_domain_list {
> > +		const enum intel_display_power_domain *list;
> > +		u8 count;
> > +	} *domain_list;
> >  	/* Mask of pipes whose IRQ logic is backed by the pw */
> >  	u16 irq_pipe_mask:4;
> >  	u16 always_on:1;
> > @@ -65,6 +68,7 @@ struct i915_power_well_desc {
> >  
> >  struct i915_power_well {
> >  	const struct i915_power_well_desc *desc;
> > +	u64 domains;
> >  	/* power well enable/disable usage count */
> >  	int count;
> >  	/* cached hw enabled state */
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> > index 773b133902e3d..42f5541c5ecc8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> > @@ -10,7 +10,24 @@
> >  #include "intel_display_power.h"
> >  #include "intel_display_power_internal.h"
> >  
> > -#define POWER_DOMAIN_MASK (GENMASK_ULL(POWER_DOMAIN_NUM - 1, 0))
> > +#define __LIST_INLINE_ELEMS(__elem_type, ...) \
> > +	((__elem_type []){ __VA_ARGS__ })
> > +
> > +#define __LIST(__elems) { \
> > +	.list = __elems, \
> > +	.count = ARRAY_SIZE(__elems), \
> > +}
> > +
> > +#define I915_PW_DOMAINS(...) \
> > +	(const struct i915_power_domain_list) \
> > +		__LIST(__LIST_INLINE_ELEMS(enum intel_display_power_domain, __VA_ARGS__))
> > +
> > +#define I915_DECL_PW_DOMAINS(__name, ...) \
> > +	static const struct i915_power_domain_list __name = I915_PW_DOMAINS(__VA_ARGS__)
> > +
> > +/* Zero-length list assigns all power domains, a NULL list assigns none. */
> > +#define I915_PW_DOMAINS_NONE	NULL
> > +#define I915_PW_DOMAINS_ALL	/* zero-length list */
> >  
> >  const char *
> >  intel_display_power_domain_str(enum intel_display_power_domain domain)
> > @@ -150,68 +167,70 @@ intel_display_power_domain_str(enum intel_display_power_domain domain)
> >  	}
> >  }
> >  
> > +I915_DECL_PW_DOMAINS(i9xx_pwdoms_always_on, I915_PW_DOMAINS_ALL);
> > +
> >  static const struct i915_power_well_desc i9xx_always_on_power_well[] = {
> >  	{
> >  		.name = "always-on",
> > -		.domains = POWER_DOMAIN_MASK,
> > +		.domain_list = &i9xx_pwdoms_always_on,
> >  		.ops = &i9xx_always_on_power_well_ops,
> >  		.always_on = true,
> >  		.id = DISP_PW_ID_NONE,
> >  	},
> >  };
> >  
> > -#define I830_PIPES_POWER_DOMAINS (		\
> > -	BIT_ULL(POWER_DOMAIN_PIPE_A) |		\
> > -	BIT_ULL(POWER_DOMAIN_PIPE_B) |		\
> > -	BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER_A) |	\
> > -	BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER_B) |	\
> > -	BIT_ULL(POWER_DOMAIN_TRANSCODER_A) |	\
> > -	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |	\
> > -	BIT_ULL(POWER_DOMAIN_INIT))
> > +I915_DECL_PW_DOMAINS(i830_pwdoms_pipes,
> > +	POWER_DOMAIN_PIPE_A,
> > +	POWER_DOMAIN_PIPE_B,
> > +	POWER_DOMAIN_PIPE_PANEL_FITTER_A,
> > +	POWER_DOMAIN_PIPE_PANEL_FITTER_B,
> > +	POWER_DOMAIN_TRANSCODER_A,
> > +	POWER_DOMAIN_TRANSCODER_B,
> > +	POWER_DOMAIN_INIT);
> >  
> >  static const struct i915_power_well_desc i830_power_wells[] = {
> >  	{
> >  		.name = "always-on",
> > -		.domains = POWER_DOMAIN_MASK,
> > +		.domain_list = &i9xx_pwdoms_always_on,
> >  		.ops = &i9xx_always_on_power_well_ops,
> >  		.always_on = true,
> >  		.id = DISP_PW_ID_NONE,
> >  	}, {
> >  		.name = "pipes",
> > -		.domains = I830_PIPES_POWER_DOMAINS,
> > +		.domain_list = &i830_pwdoms_pipes,
> >  		.ops = &i830_pipes_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  	},
> >  };
> >  
> > -#define HSW_DISPLAY_POWER_DOMAINS (			\
> > -	BIT_ULL(POWER_DOMAIN_PIPE_B) |			\
> > -	BIT_ULL(POWER_DOMAIN_PIPE_C) |			\
> > -	BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER_A) |		\
> > -	BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER_B) |		\
> > -	BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER_C) |		\
> > -	BIT_ULL(POWER_DOMAIN_TRANSCODER_A) |		\
> > -	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |		\
> > -	BIT_ULL(POWER_DOMAIN_TRANSCODER_C) |		\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_B) |		\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_C) |		\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_D) |		\
> > -	BIT_ULL(POWER_DOMAIN_PORT_CRT) | /* DDI E */	\
> > -	BIT_ULL(POWER_DOMAIN_VGA) |				\
> > -	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
> > -	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |			\
> > -	BIT_ULL(POWER_DOMAIN_INIT))
> > +I915_DECL_PW_DOMAINS(hsw_pwdoms_display,
> > +	POWER_DOMAIN_PIPE_B,
> > +	POWER_DOMAIN_PIPE_C,
> > +	POWER_DOMAIN_PIPE_PANEL_FITTER_A,
> > +	POWER_DOMAIN_PIPE_PANEL_FITTER_B,
> > +	POWER_DOMAIN_PIPE_PANEL_FITTER_C,
> > +	POWER_DOMAIN_TRANSCODER_A,
> > +	POWER_DOMAIN_TRANSCODER_B,
> > +	POWER_DOMAIN_TRANSCODER_C,
> > +	POWER_DOMAIN_PORT_DDI_LANES_B,
> > +	POWER_DOMAIN_PORT_DDI_LANES_C,
> > +	POWER_DOMAIN_PORT_DDI_LANES_D,
> > +	POWER_DOMAIN_PORT_CRT, /* DDI E */
> > +	POWER_DOMAIN_VGA,
> > +	POWER_DOMAIN_AUDIO_MMIO,
> > +	POWER_DOMAIN_AUDIO_PLAYBACK,
> > +	POWER_DOMAIN_INIT);
> >  
> >  static const struct i915_power_well_desc hsw_power_wells[] = {
> >  	{
> >  		.name = "always-on",
> > -		.domains = POWER_DOMAIN_MASK,
> > +		.domain_list = &i9xx_pwdoms_always_on,
> >  		.ops = &i9xx_always_on_power_well_ops,
> >  		.always_on = true,
> >  		.id = DISP_PW_ID_NONE,
> >  	}, {
> >  		.name = "display",
> > -		.domains = HSW_DISPLAY_POWER_DOMAINS,
> > +		.domain_list = &hsw_pwdoms_display,
> >  		.ops = &hsw_power_well_ops,
> >  		.has_vga = true,
> >  		.id = HSW_DISP_PW_GLOBAL,
> > @@ -221,33 +240,33 @@ static const struct i915_power_well_desc hsw_power_wells[] = {
> >  	},
> >  };
> >  
> > -#define BDW_DISPLAY_POWER_DOMAINS (			\
> > -	BIT_ULL(POWER_DOMAIN_PIPE_B) |			\
> > -	BIT_ULL(POWER_DOMAIN_PIPE_C) |			\
> > -	BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER_B) |		\
> > -	BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER_C) |		\
> > -	BIT_ULL(POWER_DOMAIN_TRANSCODER_A) |		\
> > -	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |		\
> > -	BIT_ULL(POWER_DOMAIN_TRANSCODER_C) |		\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_B) |		\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_C) |		\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_D) |		\
> > -	BIT_ULL(POWER_DOMAIN_PORT_CRT) | /* DDI E */	\
> > -	BIT_ULL(POWER_DOMAIN_VGA) |				\
> > -	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
> > -	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |			\
> > -	BIT_ULL(POWER_DOMAIN_INIT))
> > +I915_DECL_PW_DOMAINS(bdw_pwdoms_display,
> > +	POWER_DOMAIN_PIPE_B,
> > +	POWER_DOMAIN_PIPE_C,
> > +	POWER_DOMAIN_PIPE_PANEL_FITTER_B,
> > +	POWER_DOMAIN_PIPE_PANEL_FITTER_C,
> > +	POWER_DOMAIN_TRANSCODER_A,
> > +	POWER_DOMAIN_TRANSCODER_B,
> > +	POWER_DOMAIN_TRANSCODER_C,
> > +	POWER_DOMAIN_PORT_DDI_LANES_B,
> > +	POWER_DOMAIN_PORT_DDI_LANES_C,
> > +	POWER_DOMAIN_PORT_DDI_LANES_D,
> > +	POWER_DOMAIN_PORT_CRT, /* DDI E */
> > +	POWER_DOMAIN_VGA,
> > +	POWER_DOMAIN_AUDIO_MMIO,
> > +	POWER_DOMAIN_AUDIO_PLAYBACK,
> > +	POWER_DOMAIN_INIT);
> >  
> >  static const struct i915_power_well_desc bdw_power_wells[] = {
> >  	{
> >  		.name = "always-on",
> > -		.domains = POWER_DOMAIN_MASK,
> > +		.domain_list = &i9xx_pwdoms_always_on,
> >  		.ops = &i9xx_always_on_power_well_ops,
> >  		.always_on = true,
> >  		.id = DISP_PW_ID_NONE,
> >  	}, {
> >  		.name = "display",
> > -		.domains = BDW_DISPLAY_POWER_DOMAINS,
> > +		.domain_list = &bdw_pwdoms_display,
> >  		.ops = &hsw_power_well_ops,
> >  		.has_vga = true,
> >  		.irq_pipe_mask = BIT(PIPE_B) | BIT(PIPE_C),
> > @@ -258,64 +277,51 @@ static const struct i915_power_well_desc bdw_power_wells[] = {
> >  	},
> >  };
> >  
> > -#define VLV_DISPLAY_POWER_DOMAINS (		\
> > -	BIT_ULL(POWER_DOMAIN_DISPLAY_CORE) |	\
> > -	BIT_ULL(POWER_DOMAIN_PIPE_A) |		\
> > -	BIT_ULL(POWER_DOMAIN_PIPE_B) |		\
> > -	BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER_A) |	\
> > -	BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER_B) |	\
> > -	BIT_ULL(POWER_DOMAIN_TRANSCODER_A) |	\
> > -	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |	\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_B) |	\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_C) |	\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DSI) |		\
> > -	BIT_ULL(POWER_DOMAIN_PORT_CRT) |		\
> > -	BIT_ULL(POWER_DOMAIN_VGA) |			\
> > -	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
> > -	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |		\
> > -	BIT_ULL(POWER_DOMAIN_AUX_B) |		\
> > -	BIT_ULL(POWER_DOMAIN_AUX_C) |		\
> > -	BIT_ULL(POWER_DOMAIN_GMBUS) |		\
> > -	BIT_ULL(POWER_DOMAIN_INIT))
> > +I915_DECL_PW_DOMAINS(vlv_pwdoms_display,
> > +	POWER_DOMAIN_DISPLAY_CORE,
> > +	POWER_DOMAIN_PIPE_A,
> > +	POWER_DOMAIN_PIPE_B,
> > +	POWER_DOMAIN_PIPE_PANEL_FITTER_A,
> > +	POWER_DOMAIN_PIPE_PANEL_FITTER_B,
> > +	POWER_DOMAIN_TRANSCODER_A,
> > +	POWER_DOMAIN_TRANSCODER_B,
> > +	POWER_DOMAIN_PORT_DDI_LANES_B,
> > +	POWER_DOMAIN_PORT_DDI_LANES_C,
> > +	POWER_DOMAIN_PORT_DSI,
> > +	POWER_DOMAIN_PORT_CRT,
> > +	POWER_DOMAIN_VGA,
> > +	POWER_DOMAIN_AUDIO_MMIO,
> > +	POWER_DOMAIN_AUDIO_PLAYBACK,
> > +	POWER_DOMAIN_AUX_B,
> > +	POWER_DOMAIN_AUX_C,
> > +	POWER_DOMAIN_GMBUS,
> > +	POWER_DOMAIN_INIT);
> >  
> > -#define VLV_DPIO_CMN_BC_POWER_DOMAINS (		\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_B) |	\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_C) |	\
> > -	BIT_ULL(POWER_DOMAIN_PORT_CRT) |		\
> > -	BIT_ULL(POWER_DOMAIN_AUX_B) |		\
> > -	BIT_ULL(POWER_DOMAIN_AUX_C) |		\
> > -	BIT_ULL(POWER_DOMAIN_INIT))
> > +I915_DECL_PW_DOMAINS(vlv_pwdoms_dpio_cmn_bc,
> > +	POWER_DOMAIN_PORT_DDI_LANES_B,
> > +	POWER_DOMAIN_PORT_DDI_LANES_C,
> > +	POWER_DOMAIN_PORT_CRT,
> > +	POWER_DOMAIN_AUX_B,
> > +	POWER_DOMAIN_AUX_C,
> > +	POWER_DOMAIN_INIT);
> >  
> > -#define VLV_DPIO_TX_B_LANES_01_POWER_DOMAINS (	\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_B) |	\
> > -	BIT_ULL(POWER_DOMAIN_AUX_B) |		\
> > -	BIT_ULL(POWER_DOMAIN_INIT))
> > -
> > -#define VLV_DPIO_TX_B_LANES_23_POWER_DOMAINS (	\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_B) |	\
> > -	BIT_ULL(POWER_DOMAIN_AUX_B) |		\
> > -	BIT_ULL(POWER_DOMAIN_INIT))
> > -
> > -#define VLV_DPIO_TX_C_LANES_01_POWER_DOMAINS (	\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_C) |	\
> > -	BIT_ULL(POWER_DOMAIN_AUX_C) |		\
> > -	BIT_ULL(POWER_DOMAIN_INIT))
> > -
> > -#define VLV_DPIO_TX_C_LANES_23_POWER_DOMAINS (	\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_C) |	\
> > -	BIT_ULL(POWER_DOMAIN_AUX_C) |		\
> > -	BIT_ULL(POWER_DOMAIN_INIT))
> > +I915_DECL_PW_DOMAINS(vlv_pwdoms_dpio_tx_bc_lanes,
> > +	POWER_DOMAIN_PORT_DDI_LANES_B,
> > +	POWER_DOMAIN_PORT_DDI_LANES_C,
> > +	POWER_DOMAIN_AUX_B,
> > +	POWER_DOMAIN_AUX_C,
> > +	POWER_DOMAIN_INIT);
> >  
> >  static const struct i915_power_well_desc vlv_power_wells[] = {
> >  	{
> >  		.name = "always-on",
> > -		.domains = POWER_DOMAIN_MASK,
> > +		.domain_list = &i9xx_pwdoms_always_on,
> >  		.ops = &i9xx_always_on_power_well_ops,
> >  		.always_on = true,
> >  		.id = DISP_PW_ID_NONE,
> >  	}, {
> >  		.name = "display",
> > -		.domains = VLV_DISPLAY_POWER_DOMAINS,
> > +		.domain_list = &vlv_pwdoms_display,
> >  		.ops = &vlv_display_power_well_ops,
> >  		.id = VLV_DISP_PW_DISP2D,
> >  		{
> > @@ -323,10 +329,7 @@ static const struct i915_power_well_desc vlv_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "dpio-tx-b-01",
> > -		.domains = VLV_DPIO_TX_B_LANES_01_POWER_DOMAINS |
> > -			   VLV_DPIO_TX_B_LANES_23_POWER_DOMAINS |
> > -			   VLV_DPIO_TX_C_LANES_01_POWER_DOMAINS |
> > -			   VLV_DPIO_TX_C_LANES_23_POWER_DOMAINS,
> > +		.domain_list = &vlv_pwdoms_dpio_tx_bc_lanes,
> >  		.ops = &vlv_dpio_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -334,10 +337,7 @@ static const struct i915_power_well_desc vlv_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "dpio-tx-b-23",
> > -		.domains = VLV_DPIO_TX_B_LANES_01_POWER_DOMAINS |
> > -			   VLV_DPIO_TX_B_LANES_23_POWER_DOMAINS |
> > -			   VLV_DPIO_TX_C_LANES_01_POWER_DOMAINS |
> > -			   VLV_DPIO_TX_C_LANES_23_POWER_DOMAINS,
> > +		.domain_list = &vlv_pwdoms_dpio_tx_bc_lanes,
> >  		.ops = &vlv_dpio_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -345,10 +345,7 @@ static const struct i915_power_well_desc vlv_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "dpio-tx-c-01",
> > -		.domains = VLV_DPIO_TX_B_LANES_01_POWER_DOMAINS |
> > -			   VLV_DPIO_TX_B_LANES_23_POWER_DOMAINS |
> > -			   VLV_DPIO_TX_C_LANES_01_POWER_DOMAINS |
> > -			   VLV_DPIO_TX_C_LANES_23_POWER_DOMAINS,
> > +		.domain_list = &vlv_pwdoms_dpio_tx_bc_lanes,
> >  		.ops = &vlv_dpio_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -356,10 +353,7 @@ static const struct i915_power_well_desc vlv_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "dpio-tx-c-23",
> > -		.domains = VLV_DPIO_TX_B_LANES_01_POWER_DOMAINS |
> > -			   VLV_DPIO_TX_B_LANES_23_POWER_DOMAINS |
> > -			   VLV_DPIO_TX_C_LANES_01_POWER_DOMAINS |
> > -			   VLV_DPIO_TX_C_LANES_23_POWER_DOMAINS,
> > +		.domain_list = &vlv_pwdoms_dpio_tx_bc_lanes,
> >  		.ops = &vlv_dpio_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -367,7 +361,7 @@ static const struct i915_power_well_desc vlv_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "dpio-common",
> > -		.domains = VLV_DPIO_CMN_BC_POWER_DOMAINS,
> > +		.domain_list = &vlv_pwdoms_dpio_cmn_bc,
> >  		.ops = &vlv_dpio_cmn_power_well_ops,
> >  		.id = VLV_DISP_PW_DPIO_CMN_BC,
> >  		{
> > @@ -376,46 +370,46 @@ static const struct i915_power_well_desc vlv_power_wells[] = {
> >  	},
> >  };
> >  
> > -#define CHV_DISPLAY_POWER_DOMAINS (		\
> > -	BIT_ULL(POWER_DOMAIN_DISPLAY_CORE) |	\
> > -	BIT_ULL(POWER_DOMAIN_PIPE_A) |		\
> > -	BIT_ULL(POWER_DOMAIN_PIPE_B) |		\
> > -	BIT_ULL(POWER_DOMAIN_PIPE_C) |		\
> > -	BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER_A) |	\
> > -	BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER_B) |	\
> > -	BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER_C) |	\
> > -	BIT_ULL(POWER_DOMAIN_TRANSCODER_A) |	\
> > -	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |	\
> > -	BIT_ULL(POWER_DOMAIN_TRANSCODER_C) |	\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_B) |	\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_C) |	\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_D) |	\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DSI) |		\
> > -	BIT_ULL(POWER_DOMAIN_VGA) |			\
> > -	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
> > -	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |		\
> > -	BIT_ULL(POWER_DOMAIN_AUX_B) |		\
> > -	BIT_ULL(POWER_DOMAIN_AUX_C) |		\
> > -	BIT_ULL(POWER_DOMAIN_AUX_D) |		\
> > -	BIT_ULL(POWER_DOMAIN_GMBUS) |		\
> > -	BIT_ULL(POWER_DOMAIN_INIT))
> > +I915_DECL_PW_DOMAINS(chv_pwdoms_display,
> > +	POWER_DOMAIN_DISPLAY_CORE,
> > +	POWER_DOMAIN_PIPE_A,
> > +	POWER_DOMAIN_PIPE_B,
> > +	POWER_DOMAIN_PIPE_C,
> > +	POWER_DOMAIN_PIPE_PANEL_FITTER_A,
> > +	POWER_DOMAIN_PIPE_PANEL_FITTER_B,
> > +	POWER_DOMAIN_PIPE_PANEL_FITTER_C,
> > +	POWER_DOMAIN_TRANSCODER_A,
> > +	POWER_DOMAIN_TRANSCODER_B,
> > +	POWER_DOMAIN_TRANSCODER_C,
> > +	POWER_DOMAIN_PORT_DDI_LANES_B,
> > +	POWER_DOMAIN_PORT_DDI_LANES_C,
> > +	POWER_DOMAIN_PORT_DDI_LANES_D,
> > +	POWER_DOMAIN_PORT_DSI,
> > +	POWER_DOMAIN_VGA,
> > +	POWER_DOMAIN_AUDIO_MMIO,
> > +	POWER_DOMAIN_AUDIO_PLAYBACK,
> > +	POWER_DOMAIN_AUX_B,
> > +	POWER_DOMAIN_AUX_C,
> > +	POWER_DOMAIN_AUX_D,
> > +	POWER_DOMAIN_GMBUS,
> > +	POWER_DOMAIN_INIT);
> >  
> > -#define CHV_DPIO_CMN_BC_POWER_DOMAINS (		\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_B) |	\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_C) |	\
> > -	BIT_ULL(POWER_DOMAIN_AUX_B) |		\
> > -	BIT_ULL(POWER_DOMAIN_AUX_C) |		\
> > -	BIT_ULL(POWER_DOMAIN_INIT))
> > +I915_DECL_PW_DOMAINS(chv_pwdoms_dpio_cmn_bc,
> > +	POWER_DOMAIN_PORT_DDI_LANES_B,
> > +	POWER_DOMAIN_PORT_DDI_LANES_C,
> > +	POWER_DOMAIN_AUX_B,
> > +	POWER_DOMAIN_AUX_C,
> > +	POWER_DOMAIN_INIT);
> >  
> > -#define CHV_DPIO_CMN_D_POWER_DOMAINS (		\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_D) |	\
> > -	BIT_ULL(POWER_DOMAIN_AUX_D) |		\
> > -	BIT_ULL(POWER_DOMAIN_INIT))
> > +I915_DECL_PW_DOMAINS(chv_pwdoms_dpio_cmn_d,
> > +	POWER_DOMAIN_PORT_DDI_LANES_D,
> > +	POWER_DOMAIN_AUX_D,
> > +	POWER_DOMAIN_INIT);
> >  
> >  static const struct i915_power_well_desc chv_power_wells[] = {
> >  	{
> >  		.name = "always-on",
> > -		.domains = POWER_DOMAIN_MASK,
> > +		.domain_list = &i9xx_pwdoms_always_on,
> >  		.ops = &i9xx_always_on_power_well_ops,
> >  		.always_on = true,
> >  		.id = DISP_PW_ID_NONE,
> > @@ -426,12 +420,12 @@ static const struct i915_power_well_desc chv_power_wells[] = {
> >  		 * power wells don't actually exist. Pipe A power well is
> >  		 * required for any pipe to work.
> >  		 */
> > -		.domains = CHV_DISPLAY_POWER_DOMAINS,
> > +		.domain_list = &chv_pwdoms_display,
> >  		.ops = &chv_pipe_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  	}, {
> >  		.name = "dpio-common-bc",
> > -		.domains = CHV_DPIO_CMN_BC_POWER_DOMAINS,
> > +		.domain_list = &chv_pwdoms_dpio_cmn_bc,
> >  		.ops = &chv_dpio_cmn_power_well_ops,
> >  		.id = VLV_DISP_PW_DPIO_CMN_BC,
> >  		{
> > @@ -439,7 +433,7 @@ static const struct i915_power_well_desc chv_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "dpio-common-d",
> > -		.domains = CHV_DPIO_CMN_D_POWER_DOMAINS,
> > +		.domain_list = &chv_pwdoms_dpio_cmn_d,
> >  		.ops = &chv_dpio_cmn_power_well_ops,
> >  		.id = CHV_DISP_PW_DPIO_CMN_D,
> >  		{
> > @@ -448,61 +442,64 @@ static const struct i915_power_well_desc chv_power_wells[] = {
> >  	},
> >  };
> >  
> > -#define SKL_DISPLAY_POWERWELL_2_POWER_DOMAINS (		\
> > -	BIT_ULL(POWER_DOMAIN_PIPE_B) |			\
> > -	BIT_ULL(POWER_DOMAIN_PIPE_C) |			\
> > -	BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER_B) |		\
> > -	BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER_C) |		\
> > -	BIT_ULL(POWER_DOMAIN_TRANSCODER_A) |		\
> > -	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |		\
> > -	BIT_ULL(POWER_DOMAIN_TRANSCODER_C) |		\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_B) |		\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_C) |		\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_D) |		\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_E) |		\
> > -	BIT_ULL(POWER_DOMAIN_VGA) |				\
> > -	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
> > -	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |			\
> > -	BIT_ULL(POWER_DOMAIN_AUX_B) |                       \
> > -	BIT_ULL(POWER_DOMAIN_AUX_C) |			\
> > -	BIT_ULL(POWER_DOMAIN_AUX_D) |			\
> > -	BIT_ULL(POWER_DOMAIN_INIT))
> > +#define SKL_PW_2_POWER_DOMAINS \
> > +	POWER_DOMAIN_PIPE_B, \
> > +	POWER_DOMAIN_PIPE_C, \
> > +	POWER_DOMAIN_PIPE_PANEL_FITTER_B, \
> > +	POWER_DOMAIN_PIPE_PANEL_FITTER_C, \
> > +	POWER_DOMAIN_TRANSCODER_A, \
> > +	POWER_DOMAIN_TRANSCODER_B, \
> > +	POWER_DOMAIN_TRANSCODER_C, \
> > +	POWER_DOMAIN_PORT_DDI_LANES_B, \
> > +	POWER_DOMAIN_PORT_DDI_LANES_C, \
> > +	POWER_DOMAIN_PORT_DDI_LANES_D, \
> > +	POWER_DOMAIN_PORT_DDI_LANES_E, \
> > +	POWER_DOMAIN_VGA, \
> > +	POWER_DOMAIN_AUDIO_MMIO, \
> > +	POWER_DOMAIN_AUDIO_PLAYBACK, \
> > +	POWER_DOMAIN_AUX_B, \
> > +	POWER_DOMAIN_AUX_C, \
> > +	POWER_DOMAIN_AUX_D
> >  
> > -#define SKL_DISPLAY_DC_OFF_POWER_DOMAINS (		\
> > -	SKL_DISPLAY_POWERWELL_2_POWER_DOMAINS |		\
> > -	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
> > -	BIT_ULL(POWER_DOMAIN_MODESET) |			\
> > -	BIT_ULL(POWER_DOMAIN_GT_IRQ) |			\
> > -	BIT_ULL(POWER_DOMAIN_INIT))
> > +I915_DECL_PW_DOMAINS(skl_pwdoms_pw_2,
> > +	SKL_PW_2_POWER_DOMAINS,
> > +	POWER_DOMAIN_INIT);
> >  
> > -#define SKL_DISPLAY_DDI_IO_A_E_POWER_DOMAINS (		\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_A) |		\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_E) |		\
> > -	BIT_ULL(POWER_DOMAIN_INIT))
> > +I915_DECL_PW_DOMAINS(skl_pwdoms_dc_off,
> > +	SKL_PW_2_POWER_DOMAINS,
> > +	POWER_DOMAIN_AUX_A,
> > +	POWER_DOMAIN_MODESET,
> > +	POWER_DOMAIN_GT_IRQ,
> > +	POWER_DOMAIN_INIT);
> >  
> > -#define SKL_DISPLAY_DDI_IO_B_POWER_DOMAINS (		\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_B) |		\
> > -	BIT_ULL(POWER_DOMAIN_INIT))
> > +I915_DECL_PW_DOMAINS(skl_pwdoms_ddi_io_a_e,
> > +	POWER_DOMAIN_PORT_DDI_IO_A,
> > +	POWER_DOMAIN_PORT_DDI_IO_E,
> > +	POWER_DOMAIN_INIT);
> >  
> > -#define SKL_DISPLAY_DDI_IO_C_POWER_DOMAINS (		\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_C) |		\
> > -	BIT_ULL(POWER_DOMAIN_INIT))
> > +I915_DECL_PW_DOMAINS(skl_pwdoms_ddi_io_b,
> > +	POWER_DOMAIN_PORT_DDI_IO_B,
> > +	POWER_DOMAIN_INIT);
> >  
> > -#define SKL_DISPLAY_DDI_IO_D_POWER_DOMAINS (		\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_D) |		\
> > -	BIT_ULL(POWER_DOMAIN_INIT))
> > +I915_DECL_PW_DOMAINS(skl_pwdoms_ddi_io_c,
> > +	POWER_DOMAIN_PORT_DDI_IO_C,
> > +	POWER_DOMAIN_INIT);
> > +
> > +I915_DECL_PW_DOMAINS(skl_pwdoms_ddi_io_d,
> > +	POWER_DOMAIN_PORT_DDI_IO_D,
> > +	POWER_DOMAIN_INIT);
> >  
> >  static const struct i915_power_well_desc skl_power_wells[] = {
> >  	{
> >  		.name = "always-on",
> > -		.domains = POWER_DOMAIN_MASK,
> > +		.domain_list = &i9xx_pwdoms_always_on,
> >  		.ops = &i9xx_always_on_power_well_ops,
> >  		.always_on = true,
> >  		.id = DISP_PW_ID_NONE,
> >  	}, {
> >  		.name = "PW_1",
> >  		/* Handled by the DMC firmware */
> > -		.domains = 0,
> > +		.domain_list = I915_PW_DOMAINS_NONE,
> >  		.ops = &hsw_power_well_ops,
> >  		.always_on = true,
> >  		.has_fuses = true,
> > @@ -513,7 +510,7 @@ static const struct i915_power_well_desc skl_power_wells[] = {
> >  	}, {
> >  		.name = "MISC_IO",
> >  		/* Handled by the DMC firmware */
> > -		.domains = 0,
> > +		.domain_list = I915_PW_DOMAINS_NONE,
> >  		.ops = &hsw_power_well_ops,
> >  		.always_on = true,
> >  		.id = SKL_DISP_PW_MISC_IO,
> > @@ -522,12 +519,12 @@ static const struct i915_power_well_desc skl_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "DC_off",
> > -		.domains = SKL_DISPLAY_DC_OFF_POWER_DOMAINS,
> > +		.domain_list = &skl_pwdoms_dc_off,
> >  		.ops = &gen9_dc_off_power_well_ops,
> >  		.id = SKL_DISP_DC_OFF,
> >  	}, {
> >  		.name = "PW_2",
> > -		.domains = SKL_DISPLAY_POWERWELL_2_POWER_DOMAINS,
> > +		.domain_list = &skl_pwdoms_pw_2,
> >  		.ops = &hsw_power_well_ops,
> >  		.has_vga = true,
> >  		.irq_pipe_mask = BIT(PIPE_B) | BIT(PIPE_C),
> > @@ -538,7 +535,7 @@ static const struct i915_power_well_desc skl_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "DDI_IO_A_E",
> > -		.domains = SKL_DISPLAY_DDI_IO_A_E_POWER_DOMAINS,
> > +		.domain_list = &skl_pwdoms_ddi_io_a_e,
> >  		.ops = &hsw_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -546,7 +543,7 @@ static const struct i915_power_well_desc skl_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "DDI_IO_B",
> > -		.domains = SKL_DISPLAY_DDI_IO_B_POWER_DOMAINS,
> > +		.domain_list = &skl_pwdoms_ddi_io_b,
> >  		.ops = &hsw_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -554,7 +551,7 @@ static const struct i915_power_well_desc skl_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "DDI_IO_C",
> > -		.domains = SKL_DISPLAY_DDI_IO_C_POWER_DOMAINS,
> > +		.domain_list = &skl_pwdoms_ddi_io_c,
> >  		.ops = &hsw_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -562,7 +559,7 @@ static const struct i915_power_well_desc skl_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "DDI_IO_D",
> > -		.domains = SKL_DISPLAY_DDI_IO_D_POWER_DOMAINS,
> > +		.domain_list = &skl_pwdoms_ddi_io_d,
> >  		.ops = &hsw_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -571,54 +568,57 @@ static const struct i915_power_well_desc skl_power_wells[] = {
> >  	},
> >  };
> >  
> > -#define BXT_DISPLAY_POWERWELL_2_POWER_DOMAINS (		\
> > -	BIT_ULL(POWER_DOMAIN_PIPE_B) |			\
> > -	BIT_ULL(POWER_DOMAIN_PIPE_C) |			\
> > -	BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER_B) |		\
> > -	BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER_C) |		\
> > -	BIT_ULL(POWER_DOMAIN_TRANSCODER_A) |		\
> > -	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |		\
> > -	BIT_ULL(POWER_DOMAIN_TRANSCODER_C) |		\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_B) |		\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_C) |		\
> > -	BIT_ULL(POWER_DOMAIN_VGA) |				\
> > -	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
> > -	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |			\
> > -	BIT_ULL(POWER_DOMAIN_AUX_B) |			\
> > -	BIT_ULL(POWER_DOMAIN_AUX_C) |			\
> > -	BIT_ULL(POWER_DOMAIN_INIT))
> > +#define BXT_PW_2_POWER_DOMAINS \
> > +	POWER_DOMAIN_PIPE_B, \
> > +	POWER_DOMAIN_PIPE_C, \
> > +	POWER_DOMAIN_PIPE_PANEL_FITTER_B, \
> > +	POWER_DOMAIN_PIPE_PANEL_FITTER_C, \
> > +	POWER_DOMAIN_TRANSCODER_A, \
> > +	POWER_DOMAIN_TRANSCODER_B, \
> > +	POWER_DOMAIN_TRANSCODER_C, \
> > +	POWER_DOMAIN_PORT_DDI_LANES_B, \
> > +	POWER_DOMAIN_PORT_DDI_LANES_C, \
> > +	POWER_DOMAIN_VGA, \
> > +	POWER_DOMAIN_AUDIO_MMIO, \
> > +	POWER_DOMAIN_AUDIO_PLAYBACK, \
> > +	POWER_DOMAIN_AUX_B, \
> > +	POWER_DOMAIN_AUX_C
> >  
> > -#define BXT_DISPLAY_DC_OFF_POWER_DOMAINS (		\
> > -	BXT_DISPLAY_POWERWELL_2_POWER_DOMAINS |		\
> > -	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
> > -	BIT_ULL(POWER_DOMAIN_GMBUS) |			\
> > -	BIT_ULL(POWER_DOMAIN_MODESET) |			\
> > -	BIT_ULL(POWER_DOMAIN_GT_IRQ) |			\
> > -	BIT_ULL(POWER_DOMAIN_INIT))
> > +I915_DECL_PW_DOMAINS(bxt_pwdoms_pw_2,
> > +	BXT_PW_2_POWER_DOMAINS,
> > +	POWER_DOMAIN_INIT);
> >  
> > -#define BXT_DPIO_CMN_A_POWER_DOMAINS (			\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_A) |		\
> > -	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
> > -	BIT_ULL(POWER_DOMAIN_INIT))
> > +I915_DECL_PW_DOMAINS(bxt_pwdoms_dc_off,
> > +	BXT_PW_2_POWER_DOMAINS,
> > +	POWER_DOMAIN_AUX_A,
> > +	POWER_DOMAIN_GMBUS,
> > +	POWER_DOMAIN_MODESET,
> > +	POWER_DOMAIN_GT_IRQ,
> > +	POWER_DOMAIN_INIT);
> >  
> > -#define BXT_DPIO_CMN_BC_POWER_DOMAINS (			\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_B) |		\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_C) |		\
> > -	BIT_ULL(POWER_DOMAIN_AUX_B) |			\
> > -	BIT_ULL(POWER_DOMAIN_AUX_C) |			\
> > -	BIT_ULL(POWER_DOMAIN_INIT))
> > +I915_DECL_PW_DOMAINS(bxt_pwdoms_dpio_cmn_a,
> > +	POWER_DOMAIN_PORT_DDI_LANES_A,
> > +	POWER_DOMAIN_AUX_A,
> > +	POWER_DOMAIN_INIT);
> > +
> > +I915_DECL_PW_DOMAINS(bxt_pwdoms_dpio_cmn_bc,
> > +	POWER_DOMAIN_PORT_DDI_LANES_B,
> > +	POWER_DOMAIN_PORT_DDI_LANES_C,
> > +	POWER_DOMAIN_AUX_B,
> > +	POWER_DOMAIN_AUX_C,
> > +	POWER_DOMAIN_INIT);
> >  
> >  static const struct i915_power_well_desc bxt_power_wells[] = {
> >  	{
> >  		.name = "always-on",
> > -		.domains = POWER_DOMAIN_MASK,
> > +		.domain_list = &i9xx_pwdoms_always_on,
> >  		.ops = &i9xx_always_on_power_well_ops,
> >  		.always_on = true,
> >  		.id = DISP_PW_ID_NONE,
> >  	}, {
> >  		.name = "PW_1",
> >  		/* Handled by the DMC firmware */
> > -		.domains = 0,
> > +		.domain_list = I915_PW_DOMAINS_NONE,
> >  		.ops = &hsw_power_well_ops,
> >  		.always_on = true,
> >  		.has_fuses = true,
> > @@ -628,12 +628,12 @@ static const struct i915_power_well_desc bxt_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "DC_off",
> > -		.domains = BXT_DISPLAY_DC_OFF_POWER_DOMAINS,
> > +		.domain_list = &bxt_pwdoms_dc_off,
> >  		.ops = &gen9_dc_off_power_well_ops,
> >  		.id = SKL_DISP_DC_OFF,
> >  	}, {
> >  		.name = "PW_2",
> > -		.domains = BXT_DISPLAY_POWERWELL_2_POWER_DOMAINS,
> > +		.domain_list = &bxt_pwdoms_pw_2,
> >  		.ops = &hsw_power_well_ops,
> >  		.has_vga = true,
> >  		.irq_pipe_mask = BIT(PIPE_B) | BIT(PIPE_C),
> > @@ -644,7 +644,7 @@ static const struct i915_power_well_desc bxt_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "dpio-common-a",
> > -		.domains = BXT_DPIO_CMN_A_POWER_DOMAINS,
> > +		.domain_list = &bxt_pwdoms_dpio_cmn_a,
> >  		.ops = &bxt_dpio_cmn_power_well_ops,
> >  		.id = BXT_DISP_PW_DPIO_CMN_A,
> >  		{
> > @@ -652,7 +652,7 @@ static const struct i915_power_well_desc bxt_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "dpio-common-bc",
> > -		.domains = BXT_DPIO_CMN_BC_POWER_DOMAINS,
> > +		.domain_list = &bxt_pwdoms_dpio_cmn_bc,
> >  		.ops = &bxt_dpio_cmn_power_well_ops,
> >  		.id = VLV_DISP_PW_DPIO_CMN_BC,
> >  		{
> > @@ -661,74 +661,77 @@ static const struct i915_power_well_desc bxt_power_wells[] = {
> >  	},
> >  };
> >  
> > -#define GLK_DISPLAY_POWERWELL_2_POWER_DOMAINS (		\
> > -	BIT_ULL(POWER_DOMAIN_PIPE_B) |			\
> > -	BIT_ULL(POWER_DOMAIN_PIPE_C) |			\
> > -	BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER_B) |		\
> > -	BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER_C) |		\
> > -	BIT_ULL(POWER_DOMAIN_TRANSCODER_A) |		\
> > -	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |		\
> > -	BIT_ULL(POWER_DOMAIN_TRANSCODER_C) |		\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_B) |		\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_C) |		\
> > -	BIT_ULL(POWER_DOMAIN_VGA) |				\
> > -	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
> > -	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |			\
> > -	BIT_ULL(POWER_DOMAIN_AUX_B) |                       \
> > -	BIT_ULL(POWER_DOMAIN_AUX_C) |			\
> > -	BIT_ULL(POWER_DOMAIN_INIT))
> > -
> > -#define GLK_DISPLAY_DC_OFF_POWER_DOMAINS (		\
> > -	GLK_DISPLAY_POWERWELL_2_POWER_DOMAINS |		\
> > -	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
> > -	BIT_ULL(POWER_DOMAIN_GMBUS) |			\
> > -	BIT_ULL(POWER_DOMAIN_MODESET) |			\
> > -	BIT_ULL(POWER_DOMAIN_GT_IRQ) |			\
> > -	BIT_ULL(POWER_DOMAIN_INIT))
> > -
> > -#define GLK_DISPLAY_DDI_IO_A_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_A)
> > -#define GLK_DISPLAY_DDI_IO_B_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_B)
> > -#define GLK_DISPLAY_DDI_IO_C_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_C)
> > -
> > -#define GLK_DPIO_CMN_A_POWER_DOMAINS (			\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_A) |		\
> > -	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
> > -	BIT_ULL(POWER_DOMAIN_INIT))
> > -
> > -#define GLK_DPIO_CMN_B_POWER_DOMAINS (			\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_B) |		\
> > -	BIT_ULL(POWER_DOMAIN_AUX_B) |			\
> > -	BIT_ULL(POWER_DOMAIN_INIT))
> > -
> > -#define GLK_DPIO_CMN_C_POWER_DOMAINS (			\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_C) |		\
> > -	BIT_ULL(POWER_DOMAIN_AUX_C) |			\
> > -	BIT_ULL(POWER_DOMAIN_INIT))
> > -
> > -#define GLK_DISPLAY_AUX_A_POWER_DOMAINS (		\
> > -	BIT_ULL(POWER_DOMAIN_AUX_A) |		\
> > -	BIT_ULL(POWER_DOMAIN_AUX_IO_A) |		\
> > -	BIT_ULL(POWER_DOMAIN_INIT))
> > -
> > -#define GLK_DISPLAY_AUX_B_POWER_DOMAINS (		\
> > -	BIT_ULL(POWER_DOMAIN_AUX_B) |		\
> > -	BIT_ULL(POWER_DOMAIN_INIT))
> > -
> > -#define GLK_DISPLAY_AUX_C_POWER_DOMAINS (		\
> > -	BIT_ULL(POWER_DOMAIN_AUX_C) |		\
> > -	BIT_ULL(POWER_DOMAIN_INIT))
> > +#define GLK_PW_2_POWER_DOMAINS \
> > +	POWER_DOMAIN_PIPE_B, \
> > +	POWER_DOMAIN_PIPE_C, \
> > +	POWER_DOMAIN_PIPE_PANEL_FITTER_B, \
> > +	POWER_DOMAIN_PIPE_PANEL_FITTER_C, \
> > +	POWER_DOMAIN_TRANSCODER_A, \
> > +	POWER_DOMAIN_TRANSCODER_B, \
> > +	POWER_DOMAIN_TRANSCODER_C, \
> > +	POWER_DOMAIN_PORT_DDI_LANES_B, \
> > +	POWER_DOMAIN_PORT_DDI_LANES_C, \
> > +	POWER_DOMAIN_VGA, \
> > +	POWER_DOMAIN_AUDIO_MMIO, \
> > +	POWER_DOMAIN_AUDIO_PLAYBACK, \
> > +	POWER_DOMAIN_AUX_B, \
> > +	POWER_DOMAIN_AUX_C
> > +
> > +I915_DECL_PW_DOMAINS(glk_pwdoms_pw_2,
> > +	GLK_PW_2_POWER_DOMAINS,
> > +	POWER_DOMAIN_INIT);
> > +
> > +I915_DECL_PW_DOMAINS(glk_pwdoms_dc_off,
> > +	GLK_PW_2_POWER_DOMAINS,
> > +	POWER_DOMAIN_AUX_A,
> > +	POWER_DOMAIN_GMBUS,
> > +	POWER_DOMAIN_MODESET,
> > +	POWER_DOMAIN_GT_IRQ,
> > +	POWER_DOMAIN_INIT);
> > +
> > +I915_DECL_PW_DOMAINS(glk_pwdoms_ddi_io_a,	POWER_DOMAIN_PORT_DDI_IO_A);
> > +I915_DECL_PW_DOMAINS(glk_pwdoms_ddi_io_b,	POWER_DOMAIN_PORT_DDI_IO_B);
> > +I915_DECL_PW_DOMAINS(glk_pwdoms_ddi_io_c,	POWER_DOMAIN_PORT_DDI_IO_C);
> > +
> > +I915_DECL_PW_DOMAINS(glk_pwdoms_dpio_cmn_a,
> > +	POWER_DOMAIN_PORT_DDI_LANES_A,
> > +	POWER_DOMAIN_AUX_A,
> > +	POWER_DOMAIN_INIT);
> > +
> > +I915_DECL_PW_DOMAINS(glk_pwdoms_dpio_cmn_b,
> > +	POWER_DOMAIN_PORT_DDI_LANES_B,
> > +	POWER_DOMAIN_AUX_B,
> > +	POWER_DOMAIN_INIT);
> > +
> > +I915_DECL_PW_DOMAINS(glk_pwdoms_dpio_cmn_c,
> > +	POWER_DOMAIN_PORT_DDI_LANES_C,
> > +	POWER_DOMAIN_AUX_C,
> > +	POWER_DOMAIN_INIT);
> > +
> > +I915_DECL_PW_DOMAINS(glk_pwdoms_aux_a,
> > +	POWER_DOMAIN_AUX_A,
> > +	POWER_DOMAIN_AUX_IO_A,
> > +	POWER_DOMAIN_INIT);
> > +
> > +I915_DECL_PW_DOMAINS(glk_pwdoms_aux_b,
> > +	POWER_DOMAIN_AUX_B,
> > +	POWER_DOMAIN_INIT);
> > +
> > +I915_DECL_PW_DOMAINS(glk_pwdoms_aux_c,
> > +	POWER_DOMAIN_AUX_C,
> > +	POWER_DOMAIN_INIT);
> >  
> >  static const struct i915_power_well_desc glk_power_wells[] = {
> >  	{
> >  		.name = "always-on",
> > -		.domains = POWER_DOMAIN_MASK,
> > +		.domain_list = &i9xx_pwdoms_always_on,
> >  		.ops = &i9xx_always_on_power_well_ops,
> >  		.always_on = true,
> >  		.id = DISP_PW_ID_NONE,
> >  	}, {
> >  		.name = "PW_1",
> >  		/* Handled by the DMC firmware */
> > -		.domains = 0,
> > +		.domain_list = I915_PW_DOMAINS_NONE,
> >  		.ops = &hsw_power_well_ops,
> >  		.always_on = true,
> >  		.has_fuses = true,
> > @@ -738,12 +741,12 @@ static const struct i915_power_well_desc glk_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "DC_off",
> > -		.domains = GLK_DISPLAY_DC_OFF_POWER_DOMAINS,
> > +		.domain_list = &glk_pwdoms_dc_off,
> >  		.ops = &gen9_dc_off_power_well_ops,
> >  		.id = SKL_DISP_DC_OFF,
> >  	}, {
> >  		.name = "PW_2",
> > -		.domains = GLK_DISPLAY_POWERWELL_2_POWER_DOMAINS,
> > +		.domain_list = &glk_pwdoms_pw_2,
> >  		.ops = &hsw_power_well_ops,
> >  		.has_vga = true,
> >  		.irq_pipe_mask = BIT(PIPE_B) | BIT(PIPE_C),
> > @@ -754,7 +757,7 @@ static const struct i915_power_well_desc glk_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "dpio-common-a",
> > -		.domains = GLK_DPIO_CMN_A_POWER_DOMAINS,
> > +		.domain_list = &glk_pwdoms_dpio_cmn_a,
> >  		.ops = &bxt_dpio_cmn_power_well_ops,
> >  		.id = BXT_DISP_PW_DPIO_CMN_A,
> >  		{
> > @@ -762,7 +765,7 @@ static const struct i915_power_well_desc glk_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "dpio-common-b",
> > -		.domains = GLK_DPIO_CMN_B_POWER_DOMAINS,
> > +		.domain_list = &glk_pwdoms_dpio_cmn_b,
> >  		.ops = &bxt_dpio_cmn_power_well_ops,
> >  		.id = VLV_DISP_PW_DPIO_CMN_BC,
> >  		{
> > @@ -770,7 +773,7 @@ static const struct i915_power_well_desc glk_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "dpio-common-c",
> > -		.domains = GLK_DPIO_CMN_C_POWER_DOMAINS,
> > +		.domain_list = &glk_pwdoms_dpio_cmn_c,
> >  		.ops = &bxt_dpio_cmn_power_well_ops,
> >  		.id = GLK_DISP_PW_DPIO_CMN_C,
> >  		{
> > @@ -778,7 +781,7 @@ static const struct i915_power_well_desc glk_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "AUX_A",
> > -		.domains = GLK_DISPLAY_AUX_A_POWER_DOMAINS,
> > +		.domain_list = &glk_pwdoms_aux_a,
> >  		.ops = &hsw_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -786,7 +789,7 @@ static const struct i915_power_well_desc glk_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "AUX_B",
> > -		.domains = GLK_DISPLAY_AUX_B_POWER_DOMAINS,
> > +		.domain_list = &glk_pwdoms_aux_b,
> >  		.ops = &hsw_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -794,7 +797,7 @@ static const struct i915_power_well_desc glk_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "AUX_C",
> > -		.domains = GLK_DISPLAY_AUX_C_POWER_DOMAINS,
> > +		.domain_list = &glk_pwdoms_aux_c,
> >  		.ops = &hsw_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -802,7 +805,7 @@ static const struct i915_power_well_desc glk_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "DDI_IO_A",
> > -		.domains = GLK_DISPLAY_DDI_IO_A_POWER_DOMAINS,
> > +		.domain_list = &glk_pwdoms_ddi_io_a,
> >  		.ops = &hsw_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -810,7 +813,7 @@ static const struct i915_power_well_desc glk_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "DDI_IO_B",
> > -		.domains = GLK_DISPLAY_DDI_IO_B_POWER_DOMAINS,
> > +		.domain_list = &glk_pwdoms_ddi_io_b,
> >  		.ops = &hsw_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -818,7 +821,7 @@ static const struct i915_power_well_desc glk_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "DDI_IO_C",
> > -		.domains = GLK_DISPLAY_DDI_IO_C_POWER_DOMAINS,
> > +		.domain_list = &glk_pwdoms_ddi_io_c,
> >  		.ops = &hsw_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -841,89 +844,97 @@ static const struct i915_power_well_desc glk_power_wells[] = {
> >   * - DDI_A
> >   * - FBC
> >   */
> > -#define ICL_PW_4_POWER_DOMAINS (			\
> > -	BIT_ULL(POWER_DOMAIN_PIPE_C) |			\
> > -	BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER_C) |	\
> > -	BIT_ULL(POWER_DOMAIN_INIT))
> > +#define ICL_PW_4_POWER_DOMAINS \
> > +	POWER_DOMAIN_PIPE_C, \
> > +	POWER_DOMAIN_PIPE_PANEL_FITTER_C
> > +
> > +I915_DECL_PW_DOMAINS(icl_pwdoms_pw_4,
> > +	ICL_PW_4_POWER_DOMAINS,
> > +	POWER_DOMAIN_INIT);
> >  	/* VDSC/joining */
> >  
> > -#define ICL_PW_3_POWER_DOMAINS (			\
> > -	ICL_PW_4_POWER_DOMAINS |			\
> > -	BIT_ULL(POWER_DOMAIN_PIPE_B) |			\
> > -	BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER_B) |	\
> > -	BIT_ULL(POWER_DOMAIN_TRANSCODER_A) |		\
> > -	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |		\
> > -	BIT_ULL(POWER_DOMAIN_TRANSCODER_C) |		\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_B) |	\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_C) |	\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_D) |	\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_E) |	\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_F) |	\
> > -	BIT_ULL(POWER_DOMAIN_VGA) |			\
> > -	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
> > -	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |		\
> > -	BIT_ULL(POWER_DOMAIN_AUX_B) |			\
> > -	BIT_ULL(POWER_DOMAIN_AUX_C) |			\
> > -	BIT_ULL(POWER_DOMAIN_AUX_D) |			\
> > -	BIT_ULL(POWER_DOMAIN_AUX_E) |			\
> > -	BIT_ULL(POWER_DOMAIN_AUX_F) |			\
> > -	BIT_ULL(POWER_DOMAIN_AUX_TBT_C) |		\
> > -	BIT_ULL(POWER_DOMAIN_AUX_TBT_D) |		\
> > -	BIT_ULL(POWER_DOMAIN_AUX_TBT_E) |		\
> > -	BIT_ULL(POWER_DOMAIN_AUX_TBT_F) |		\
> > -	BIT_ULL(POWER_DOMAIN_INIT))
> > +#define ICL_PW_3_POWER_DOMAINS \
> > +	ICL_PW_4_POWER_DOMAINS, \
> > +	POWER_DOMAIN_PIPE_B, \
> > +	POWER_DOMAIN_PIPE_PANEL_FITTER_B, \
> > +	POWER_DOMAIN_TRANSCODER_A, \
> > +	POWER_DOMAIN_TRANSCODER_B, \
> > +	POWER_DOMAIN_TRANSCODER_C, \
> > +	POWER_DOMAIN_PORT_DDI_LANES_B, \
> > +	POWER_DOMAIN_PORT_DDI_LANES_C, \
> > +	POWER_DOMAIN_PORT_DDI_LANES_D, \
> > +	POWER_DOMAIN_PORT_DDI_LANES_E, \
> > +	POWER_DOMAIN_PORT_DDI_LANES_F, \
> > +	POWER_DOMAIN_VGA, \
> > +	POWER_DOMAIN_AUDIO_MMIO, \
> > +	POWER_DOMAIN_AUDIO_PLAYBACK, \
> > +	POWER_DOMAIN_AUX_B, \
> > +	POWER_DOMAIN_AUX_C, \
> > +	POWER_DOMAIN_AUX_D, \
> > +	POWER_DOMAIN_AUX_E, \
> > +	POWER_DOMAIN_AUX_F, \
> > +	POWER_DOMAIN_AUX_TBT_C, \
> > +	POWER_DOMAIN_AUX_TBT_D, \
> > +	POWER_DOMAIN_AUX_TBT_E, \
> > +	POWER_DOMAIN_AUX_TBT_F
> > +
> > +I915_DECL_PW_DOMAINS(icl_pwdoms_pw_3,
> > +	ICL_PW_3_POWER_DOMAINS,
> > +	POWER_DOMAIN_INIT);
> >  	/*
> >  	 * - transcoder WD
> >  	 * - KVMR (HW control)
> >  	 */
> >  
> > -#define ICL_PW_2_POWER_DOMAINS (			\
> > -	ICL_PW_3_POWER_DOMAINS |			\
> > -	BIT_ULL(POWER_DOMAIN_TRANSCODER_VDSC_PW2) |		\
> > -	BIT_ULL(POWER_DOMAIN_INIT))
> > +#define ICL_PW_2_POWER_DOMAINS \
> > +	ICL_PW_3_POWER_DOMAINS, \
> > +	POWER_DOMAIN_TRANSCODER_VDSC_PW2
> > +
> > +I915_DECL_PW_DOMAINS(icl_pwdoms_pw_2,
> > +	ICL_PW_2_POWER_DOMAINS,
> > +	POWER_DOMAIN_INIT);
> >  	/*
> >  	 * - KVMR (HW control)
> >  	 */
> >  
> > -#define ICL_DISPLAY_DC_OFF_POWER_DOMAINS (		\
> > -	ICL_PW_2_POWER_DOMAINS |			\
> > -	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
> > -	BIT_ULL(POWER_DOMAIN_MODESET) |			\
> > -	BIT_ULL(POWER_DOMAIN_DC_OFF) |			\
> > -	BIT_ULL(POWER_DOMAIN_INIT))
> > +I915_DECL_PW_DOMAINS(icl_pwdoms_dc_off,
> > +	ICL_PW_2_POWER_DOMAINS,
> > +	POWER_DOMAIN_AUX_A,
> > +	POWER_DOMAIN_MODESET,
> > +	POWER_DOMAIN_DC_OFF,
> > +	POWER_DOMAIN_INIT);
> >  
> > -#define ICL_DDI_IO_A_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_A)
> > -#define ICL_DDI_IO_B_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_B)
> > -#define ICL_DDI_IO_C_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_C)
> > -#define ICL_DDI_IO_D_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_D)
> > -#define ICL_DDI_IO_E_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_E)
> > -#define ICL_DDI_IO_F_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_F)
> > +I915_DECL_PW_DOMAINS(icl_pwdoms_ddi_io_a,	POWER_DOMAIN_PORT_DDI_IO_A);
> > +I915_DECL_PW_DOMAINS(icl_pwdoms_ddi_io_b,	POWER_DOMAIN_PORT_DDI_IO_B);
> > +I915_DECL_PW_DOMAINS(icl_pwdoms_ddi_io_c,	POWER_DOMAIN_PORT_DDI_IO_C);
> > +I915_DECL_PW_DOMAINS(icl_pwdoms_ddi_io_d,	POWER_DOMAIN_PORT_DDI_IO_D);
> > +I915_DECL_PW_DOMAINS(icl_pwdoms_ddi_io_e,	POWER_DOMAIN_PORT_DDI_IO_E);
> > +I915_DECL_PW_DOMAINS(icl_pwdoms_ddi_io_f,	POWER_DOMAIN_PORT_DDI_IO_F);
> >  
> > -#define ICL_AUX_A_IO_POWER_DOMAINS (			\
> > -	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
> > -	BIT_ULL(POWER_DOMAIN_AUX_IO_A))
> > -
> > -#define ICL_AUX_B_IO_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_AUX_B)
> > -#define ICL_AUX_C_TC1_IO_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_AUX_C)
> > -#define ICL_AUX_D_TC2_IO_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_AUX_D)
> > -#define ICL_AUX_E_TC3_IO_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_AUX_E)
> > -#define ICL_AUX_F_TC4_IO_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_AUX_F)
> > -#define ICL_AUX_C_TBT1_IO_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_AUX_TBT_C)
> > -#define ICL_AUX_D_TBT2_IO_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_AUX_TBT_D)
> > -#define ICL_AUX_E_TBT3_IO_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_AUX_TBT_E)
> > -#define ICL_AUX_F_TBT4_IO_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_AUX_TBT_F)
> > +I915_DECL_PW_DOMAINS(icl_pwdoms_aux_a,
> > +	POWER_DOMAIN_AUX_A,
> > +	POWER_DOMAIN_AUX_IO_A);
> > +I915_DECL_PW_DOMAINS(icl_pwdoms_aux_b,		POWER_DOMAIN_AUX_B);
> > +I915_DECL_PW_DOMAINS(icl_pwdoms_aux_c,		POWER_DOMAIN_AUX_C);
> > +I915_DECL_PW_DOMAINS(icl_pwdoms_aux_d,		POWER_DOMAIN_AUX_D);
> > +I915_DECL_PW_DOMAINS(icl_pwdoms_aux_e,		POWER_DOMAIN_AUX_E);
> > +I915_DECL_PW_DOMAINS(icl_pwdoms_aux_f,		POWER_DOMAIN_AUX_F);
> > +I915_DECL_PW_DOMAINS(icl_pwdoms_aux_tbt1,	POWER_DOMAIN_AUX_TBT_C);
> > +I915_DECL_PW_DOMAINS(icl_pwdoms_aux_tbt2,	POWER_DOMAIN_AUX_TBT_D);
> > +I915_DECL_PW_DOMAINS(icl_pwdoms_aux_tbt3,	POWER_DOMAIN_AUX_TBT_E);
> > +I915_DECL_PW_DOMAINS(icl_pwdoms_aux_tbt4,	POWER_DOMAIN_AUX_TBT_F);
> >  
> >  static const struct i915_power_well_desc icl_power_wells[] = {
> >  	{
> >  		.name = "always-on",
> > -		.domains = POWER_DOMAIN_MASK,
> > +		.domain_list = &i9xx_pwdoms_always_on,
> >  		.ops = &i9xx_always_on_power_well_ops,
> >  		.always_on = true,
> >  		.id = DISP_PW_ID_NONE,
> >  	}, {
> >  		.name = "PW_1",
> >  		/* Handled by the DMC firmware */
> > -		.domains = 0,
> > +		.domain_list = I915_PW_DOMAINS_NONE,
> >  		.ops = &hsw_power_well_ops,
> >  		.always_on = true,
> >  		.has_fuses = true,
> > @@ -933,12 +944,12 @@ static const struct i915_power_well_desc icl_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "DC_off",
> > -		.domains = ICL_DISPLAY_DC_OFF_POWER_DOMAINS,
> > +		.domain_list = &icl_pwdoms_dc_off,
> >  		.ops = &gen9_dc_off_power_well_ops,
> >  		.id = SKL_DISP_DC_OFF,
> >  	}, {
> >  		.name = "PW_2",
> > -		.domains = ICL_PW_2_POWER_DOMAINS,
> > +		.domain_list = &icl_pwdoms_pw_2,
> >  		.ops = &hsw_power_well_ops,
> >  		.has_fuses = true,
> >  		.id = SKL_DISP_PW_2,
> > @@ -947,7 +958,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "PW_3",
> > -		.domains = ICL_PW_3_POWER_DOMAINS,
> > +		.domain_list = &icl_pwdoms_pw_3,
> >  		.ops = &hsw_power_well_ops,
> >  		.has_vga = true,
> >  		.irq_pipe_mask = BIT(PIPE_B),
> > @@ -958,7 +969,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "DDI_IO_A",
> > -		.domains = ICL_DDI_IO_A_POWER_DOMAINS,
> > +		.domain_list = &icl_pwdoms_ddi_io_a,
> >  		.ops = &icl_ddi_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -966,7 +977,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "DDI_IO_B",
> > -		.domains = ICL_DDI_IO_B_POWER_DOMAINS,
> > +		.domain_list = &icl_pwdoms_ddi_io_b,
> >  		.ops = &icl_ddi_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -974,7 +985,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "DDI_IO_C",
> > -		.domains = ICL_DDI_IO_C_POWER_DOMAINS,
> > +		.domain_list = &icl_pwdoms_ddi_io_c,
> >  		.ops = &icl_ddi_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -982,7 +993,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "DDI_IO_D",
> > -		.domains = ICL_DDI_IO_D_POWER_DOMAINS,
> > +		.domain_list = &icl_pwdoms_ddi_io_d,
> >  		.ops = &icl_ddi_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -990,7 +1001,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "DDI_IO_E",
> > -		.domains = ICL_DDI_IO_E_POWER_DOMAINS,
> > +		.domain_list = &icl_pwdoms_ddi_io_e,
> >  		.ops = &icl_ddi_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -998,7 +1009,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "DDI_IO_F",
> > -		.domains = ICL_DDI_IO_F_POWER_DOMAINS,
> > +		.domain_list = &icl_pwdoms_ddi_io_f,
> >  		.ops = &icl_ddi_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -1006,7 +1017,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "AUX_A",
> > -		.domains = ICL_AUX_A_IO_POWER_DOMAINS,
> > +		.domain_list = &icl_pwdoms_aux_a,
> >  		.ops = &icl_aux_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -1014,7 +1025,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "AUX_B",
> > -		.domains = ICL_AUX_B_IO_POWER_DOMAINS,
> > +		.domain_list = &icl_pwdoms_aux_b,
> >  		.ops = &icl_aux_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -1022,7 +1033,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "AUX_C",
> > -		.domains = ICL_AUX_C_TC1_IO_POWER_DOMAINS,
> > +		.domain_list = &icl_pwdoms_aux_c,
> >  		.ops = &icl_aux_power_well_ops,
> >  		.is_tc_tbt = false,
> >  		.id = DISP_PW_ID_NONE,
> > @@ -1031,7 +1042,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "AUX_D",
> > -		.domains = ICL_AUX_D_TC2_IO_POWER_DOMAINS,
> > +		.domain_list = &icl_pwdoms_aux_d,
> >  		.ops = &icl_aux_power_well_ops,
> >  		.is_tc_tbt = false,
> >  		.id = DISP_PW_ID_NONE,
> > @@ -1040,7 +1051,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "AUX_E",
> > -		.domains = ICL_AUX_E_TC3_IO_POWER_DOMAINS,
> > +		.domain_list = &icl_pwdoms_aux_e,
> >  		.ops = &icl_aux_power_well_ops,
> >  		.is_tc_tbt = false,
> >  		.id = DISP_PW_ID_NONE,
> > @@ -1049,7 +1060,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "AUX_F",
> > -		.domains = ICL_AUX_F_TC4_IO_POWER_DOMAINS,
> > +		.domain_list = &icl_pwdoms_aux_f,
> >  		.ops = &icl_aux_power_well_ops,
> >  		.is_tc_tbt = false,
> >  		.id = DISP_PW_ID_NONE,
> > @@ -1058,7 +1069,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "AUX_TBT1",
> > -		.domains = ICL_AUX_C_TBT1_IO_POWER_DOMAINS,
> > +		.domain_list = &icl_pwdoms_aux_tbt1,
> >  		.ops = &icl_aux_power_well_ops,
> >  		.is_tc_tbt = true,
> >  		.id = DISP_PW_ID_NONE,
> > @@ -1067,7 +1078,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "AUX_TBT2",
> > -		.domains = ICL_AUX_D_TBT2_IO_POWER_DOMAINS,
> > +		.domain_list = &icl_pwdoms_aux_tbt2,
> >  		.ops = &icl_aux_power_well_ops,
> >  		.is_tc_tbt = true,
> >  		.id = DISP_PW_ID_NONE,
> > @@ -1076,7 +1087,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "AUX_TBT3",
> > -		.domains = ICL_AUX_E_TBT3_IO_POWER_DOMAINS,
> > +		.domain_list = &icl_pwdoms_aux_tbt3,
> >  		.ops = &icl_aux_power_well_ops,
> >  		.is_tc_tbt = true,
> >  		.id = DISP_PW_ID_NONE,
> > @@ -1085,7 +1096,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "AUX_TBT4",
> > -		.domains = ICL_AUX_F_TBT4_IO_POWER_DOMAINS,
> > +		.domain_list = &icl_pwdoms_aux_tbt4,
> >  		.ops = &icl_aux_power_well_ops,
> >  		.is_tc_tbt = true,
> >  		.id = DISP_PW_ID_NONE,
> > @@ -1094,7 +1105,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "PW_4",
> > -		.domains = ICL_PW_4_POWER_DOMAINS,
> > +		.domain_list = &icl_pwdoms_pw_4,
> >  		.ops = &hsw_power_well_ops,
> >  		.irq_pipe_mask = BIT(PIPE_C),
> >  		.has_fuses = true,
> > @@ -1105,113 +1116,122 @@ static const struct i915_power_well_desc icl_power_wells[] = {
> >  	},
> >  };
> >  
> > -#define TGL_PW_5_POWER_DOMAINS (			\
> > -	BIT_ULL(POWER_DOMAIN_PIPE_D) |			\
> > -	BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER_D) |     \
> > -	BIT_ULL(POWER_DOMAIN_TRANSCODER_D) |		\
> > -	BIT_ULL(POWER_DOMAIN_INIT))
> > +#define TGL_PW_5_POWER_DOMAINS \
> > +	POWER_DOMAIN_PIPE_D, \
> > +	POWER_DOMAIN_PIPE_PANEL_FITTER_D, \
> > +	POWER_DOMAIN_TRANSCODER_D
> >  
> > -#define TGL_PW_4_POWER_DOMAINS (			\
> > -	TGL_PW_5_POWER_DOMAINS |			\
> > -	BIT_ULL(POWER_DOMAIN_PIPE_C) |			\
> > -	BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER_C) |	\
> > -	BIT_ULL(POWER_DOMAIN_TRANSCODER_C) |		\
> > -	BIT_ULL(POWER_DOMAIN_INIT))
> > +I915_DECL_PW_DOMAINS(tgl_pwdoms_pw_5,
> > +	TGL_PW_5_POWER_DOMAINS,
> > +	POWER_DOMAIN_INIT);
> >  
> > -#define TGL_PW_3_POWER_DOMAINS (			\
> > -	TGL_PW_4_POWER_DOMAINS |			\
> > -	BIT_ULL(POWER_DOMAIN_PIPE_B) |			\
> > -	BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER_B) |	\
> > -	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |		\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC1) |	\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC2) |	\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC3) |	\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC4) |	\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC5) |	\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC6) |	\
> > -	BIT_ULL(POWER_DOMAIN_VGA) |			\
> > -	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
> > -	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |		\
> > -	BIT_ULL(POWER_DOMAIN_AUX_USBC1) |		\
> > -	BIT_ULL(POWER_DOMAIN_AUX_USBC2) |		\
> > -	BIT_ULL(POWER_DOMAIN_AUX_USBC3) |		\
> > -	BIT_ULL(POWER_DOMAIN_AUX_USBC4) |		\
> > -	BIT_ULL(POWER_DOMAIN_AUX_USBC5) |		\
> > -	BIT_ULL(POWER_DOMAIN_AUX_USBC6) |		\
> > -	BIT_ULL(POWER_DOMAIN_AUX_TBT1) |		\
> > -	BIT_ULL(POWER_DOMAIN_AUX_TBT2) |		\
> > -	BIT_ULL(POWER_DOMAIN_AUX_TBT3) |		\
> > -	BIT_ULL(POWER_DOMAIN_AUX_TBT4) |		\
> > -	BIT_ULL(POWER_DOMAIN_AUX_TBT5) |		\
> > -	BIT_ULL(POWER_DOMAIN_AUX_TBT6) |		\
> > -	BIT_ULL(POWER_DOMAIN_INIT))
> > +#define TGL_PW_4_POWER_DOMAINS \
> > +	TGL_PW_5_POWER_DOMAINS, \
> > +	POWER_DOMAIN_PIPE_C, \
> > +	POWER_DOMAIN_PIPE_PANEL_FITTER_C, \
> > +	POWER_DOMAIN_TRANSCODER_C
> >  
> > -#define TGL_PW_2_POWER_DOMAINS (			\
> > -	TGL_PW_3_POWER_DOMAINS |			\
> > -	BIT_ULL(POWER_DOMAIN_TRANSCODER_VDSC_PW2) |	\
> > -	BIT_ULL(POWER_DOMAIN_INIT))
> > +I915_DECL_PW_DOMAINS(tgl_pwdoms_pw_4,
> > +	TGL_PW_4_POWER_DOMAINS,
> > +	POWER_DOMAIN_INIT);
> >  
> > -#define TGL_DISPLAY_DC_OFF_POWER_DOMAINS (		\
> > -	TGL_PW_3_POWER_DOMAINS |			\
> > -	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
> > -	BIT_ULL(POWER_DOMAIN_AUX_B) |			\
> > -	BIT_ULL(POWER_DOMAIN_AUX_C) |			\
> > -	BIT_ULL(POWER_DOMAIN_MODESET) |			\
> > -	BIT_ULL(POWER_DOMAIN_INIT))
> > +#define TGL_PW_3_POWER_DOMAINS \
> > +	TGL_PW_4_POWER_DOMAINS, \
> > +	POWER_DOMAIN_PIPE_B, \
> > +	POWER_DOMAIN_PIPE_PANEL_FITTER_B, \
> > +	POWER_DOMAIN_TRANSCODER_B, \
> > +	POWER_DOMAIN_PORT_DDI_LANES_TC1, \
> > +	POWER_DOMAIN_PORT_DDI_LANES_TC2, \
> > +	POWER_DOMAIN_PORT_DDI_LANES_TC3, \
> > +	POWER_DOMAIN_PORT_DDI_LANES_TC4, \
> > +	POWER_DOMAIN_PORT_DDI_LANES_TC5, \
> > +	POWER_DOMAIN_PORT_DDI_LANES_TC6, \
> > +	POWER_DOMAIN_VGA, \
> > +	POWER_DOMAIN_AUDIO_MMIO, \
> > +	POWER_DOMAIN_AUDIO_PLAYBACK, \
> > +	POWER_DOMAIN_AUX_USBC1, \
> > +	POWER_DOMAIN_AUX_USBC2, \
> > +	POWER_DOMAIN_AUX_USBC3, \
> > +	POWER_DOMAIN_AUX_USBC4, \
> > +	POWER_DOMAIN_AUX_USBC5, \
> > +	POWER_DOMAIN_AUX_USBC6, \
> > +	POWER_DOMAIN_AUX_TBT1, \
> > +	POWER_DOMAIN_AUX_TBT2, \
> > +	POWER_DOMAIN_AUX_TBT3, \
> > +	POWER_DOMAIN_AUX_TBT4, \
> > +	POWER_DOMAIN_AUX_TBT5, \
> > +	POWER_DOMAIN_AUX_TBT6
> >  
> > -#define TGL_DDI_IO_TC1_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_TC1)
> > -#define TGL_DDI_IO_TC2_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_TC2)
> > -#define TGL_DDI_IO_TC3_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_TC3)
> > -#define TGL_DDI_IO_TC4_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_TC4)
> > -#define TGL_DDI_IO_TC5_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_TC5)
> > -#define TGL_DDI_IO_TC6_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_TC6)
> > +I915_DECL_PW_DOMAINS(tgl_pwdoms_pw_3,
> > +	TGL_PW_3_POWER_DOMAINS,
> > +	POWER_DOMAIN_INIT);
> >  
> > -#define TGL_AUX_A_IO_POWER_DOMAINS (		\
> > -	BIT_ULL(POWER_DOMAIN_AUX_A) |		\
> > -	BIT_ULL(POWER_DOMAIN_AUX_IO_A))
> > -#define TGL_AUX_B_IO_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_B)
> > -#define TGL_AUX_C_IO_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_C)
> > +I915_DECL_PW_DOMAINS(tgl_pwdoms_pw_2,
> > +	TGL_PW_3_POWER_DOMAINS,
> > +	POWER_DOMAIN_TRANSCODER_VDSC_PW2,
> > +	POWER_DOMAIN_INIT);
> >  
> > -#define TGL_AUX_IO_USBC1_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_USBC1)
> > -#define TGL_AUX_IO_USBC2_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_USBC2)
> > -#define TGL_AUX_IO_USBC3_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_USBC3)
> > -#define TGL_AUX_IO_USBC4_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_USBC4)
> > -#define TGL_AUX_IO_USBC5_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_USBC5)
> > -#define TGL_AUX_IO_USBC6_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_USBC6)
> > +I915_DECL_PW_DOMAINS(tgl_pwdoms_dc_off,
> > +	TGL_PW_3_POWER_DOMAINS,
> > +	POWER_DOMAIN_AUX_A,
> > +	POWER_DOMAIN_AUX_B,
> > +	POWER_DOMAIN_AUX_C,
> > +	POWER_DOMAIN_MODESET,
> > +	POWER_DOMAIN_INIT);
> >  
> > -#define TGL_AUX_IO_TBT1_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_TBT1)
> > -#define TGL_AUX_IO_TBT2_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_TBT2)
> > -#define TGL_AUX_IO_TBT3_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_TBT3)
> > -#define TGL_AUX_IO_TBT4_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_TBT4)
> > -#define TGL_AUX_IO_TBT5_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_TBT5)
> > -#define TGL_AUX_IO_TBT6_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_TBT6)
> > +I915_DECL_PW_DOMAINS(tgl_pwdoms_ddi_io_tc1,	POWER_DOMAIN_PORT_DDI_IO_TC1);
> > +I915_DECL_PW_DOMAINS(tgl_pwdoms_ddi_io_tc2,	POWER_DOMAIN_PORT_DDI_IO_TC2);
> > +I915_DECL_PW_DOMAINS(tgl_pwdoms_ddi_io_tc3,	POWER_DOMAIN_PORT_DDI_IO_TC3);
> > +I915_DECL_PW_DOMAINS(tgl_pwdoms_ddi_io_tc4,	POWER_DOMAIN_PORT_DDI_IO_TC4);
> > +I915_DECL_PW_DOMAINS(tgl_pwdoms_ddi_io_tc5,	POWER_DOMAIN_PORT_DDI_IO_TC5);
> > +I915_DECL_PW_DOMAINS(tgl_pwdoms_ddi_io_tc6,	POWER_DOMAIN_PORT_DDI_IO_TC6);
> >  
> > -#define TGL_TC_COLD_OFF_POWER_DOMAINS (		\
> > -	BIT_ULL(POWER_DOMAIN_AUX_USBC1)	|	\
> > -	BIT_ULL(POWER_DOMAIN_AUX_USBC2)	|	\
> > -	BIT_ULL(POWER_DOMAIN_AUX_USBC3)	|	\
> > -	BIT_ULL(POWER_DOMAIN_AUX_USBC4)	|	\
> > -	BIT_ULL(POWER_DOMAIN_AUX_USBC5)	|	\
> > -	BIT_ULL(POWER_DOMAIN_AUX_USBC6)	|	\
> > -	BIT_ULL(POWER_DOMAIN_AUX_TBT1) |	\
> > -	BIT_ULL(POWER_DOMAIN_AUX_TBT2) |	\
> > -	BIT_ULL(POWER_DOMAIN_AUX_TBT3) |	\
> > -	BIT_ULL(POWER_DOMAIN_AUX_TBT4) |	\
> > -	BIT_ULL(POWER_DOMAIN_AUX_TBT5) |	\
> > -	BIT_ULL(POWER_DOMAIN_AUX_TBT6) |	\
> > -	BIT_ULL(POWER_DOMAIN_TC_COLD_OFF))
> > +I915_DECL_PW_DOMAINS(tgl_pwdoms_aux_a,
> > +	POWER_DOMAIN_AUX_A,
> > +	POWER_DOMAIN_AUX_IO_A);
> > +I915_DECL_PW_DOMAINS(tgl_pwdoms_aux_b,		POWER_DOMAIN_AUX_B);
> > +I915_DECL_PW_DOMAINS(tgl_pwdoms_aux_c,		POWER_DOMAIN_AUX_C);
> > +
> > +I915_DECL_PW_DOMAINS(tgl_pwdoms_aux_usbc1,	POWER_DOMAIN_AUX_USBC1);
> > +I915_DECL_PW_DOMAINS(tgl_pwdoms_aux_usbc2,	POWER_DOMAIN_AUX_USBC2);
> > +I915_DECL_PW_DOMAINS(tgl_pwdoms_aux_usbc3,	POWER_DOMAIN_AUX_USBC3);
> > +I915_DECL_PW_DOMAINS(tgl_pwdoms_aux_usbc4,	POWER_DOMAIN_AUX_USBC4);
> > +I915_DECL_PW_DOMAINS(tgl_pwdoms_aux_usbc5,	POWER_DOMAIN_AUX_USBC5);
> > +I915_DECL_PW_DOMAINS(tgl_pwdoms_aux_usbc6,	POWER_DOMAIN_AUX_USBC6);
> > +
> > +I915_DECL_PW_DOMAINS(tgl_pwdoms_aux_tbt1,	POWER_DOMAIN_AUX_TBT1);
> > +I915_DECL_PW_DOMAINS(tgl_pwdoms_aux_tbt2,	POWER_DOMAIN_AUX_TBT2);
> > +I915_DECL_PW_DOMAINS(tgl_pwdoms_aux_tbt3,	POWER_DOMAIN_AUX_TBT3);
> > +I915_DECL_PW_DOMAINS(tgl_pwdoms_aux_tbt4,	POWER_DOMAIN_AUX_TBT4);
> > +I915_DECL_PW_DOMAINS(tgl_pwdoms_aux_tbt5,	POWER_DOMAIN_AUX_TBT5);
> > +I915_DECL_PW_DOMAINS(tgl_pwdoms_aux_tbt6,	POWER_DOMAIN_AUX_TBT6);
> > +
> > +I915_DECL_PW_DOMAINS(tgl_pwdoms_tc_cold_off,
> > +	POWER_DOMAIN_AUX_USBC1,
> > +	POWER_DOMAIN_AUX_USBC2,
> > +	POWER_DOMAIN_AUX_USBC3,
> > +	POWER_DOMAIN_AUX_USBC4,
> > +	POWER_DOMAIN_AUX_USBC5,
> > +	POWER_DOMAIN_AUX_USBC6,
> > +	POWER_DOMAIN_AUX_TBT1,
> > +	POWER_DOMAIN_AUX_TBT2,
> > +	POWER_DOMAIN_AUX_TBT3,
> > +	POWER_DOMAIN_AUX_TBT4,
> > +	POWER_DOMAIN_AUX_TBT5,
> > +	POWER_DOMAIN_AUX_TBT6,
> > +	POWER_DOMAIN_TC_COLD_OFF);
> >  
> >  static const struct i915_power_well_desc tgl_power_wells[] = {
> >  	{
> >  		.name = "always-on",
> > -		.domains = POWER_DOMAIN_MASK,
> > +		.domain_list = &i9xx_pwdoms_always_on,
> >  		.ops = &i9xx_always_on_power_well_ops,
> >  		.always_on = true,
> >  		.id = DISP_PW_ID_NONE,
> >  	}, {
> >  		.name = "PW_1",
> >  		/* Handled by the DMC firmware */
> > -		.domains = 0,
> > +		.domain_list = I915_PW_DOMAINS_NONE,
> >  		.ops = &hsw_power_well_ops,
> >  		.always_on = true,
> >  		.has_fuses = true,
> > @@ -1221,12 +1241,12 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "DC_off",
> > -		.domains = TGL_DISPLAY_DC_OFF_POWER_DOMAINS,
> > +		.domain_list = &tgl_pwdoms_dc_off,
> >  		.ops = &gen9_dc_off_power_well_ops,
> >  		.id = SKL_DISP_DC_OFF,
> >  	}, {
> >  		.name = "PW_2",
> > -		.domains = TGL_PW_2_POWER_DOMAINS,
> > +		.domain_list = &tgl_pwdoms_pw_2,
> >  		.ops = &hsw_power_well_ops,
> >  		.has_fuses = true,
> >  		.id = SKL_DISP_PW_2,
> > @@ -1235,7 +1255,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "PW_3",
> > -		.domains = TGL_PW_3_POWER_DOMAINS,
> > +		.domain_list = &tgl_pwdoms_pw_3,
> >  		.ops = &hsw_power_well_ops,
> >  		.has_vga = true,
> >  		.irq_pipe_mask = BIT(PIPE_B),
> > @@ -1246,7 +1266,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "DDI_IO_A",
> > -		.domains = ICL_DDI_IO_A_POWER_DOMAINS,
> > +		.domain_list = &icl_pwdoms_ddi_io_a,
> >  		.ops = &icl_ddi_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -1254,7 +1274,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
> >  		}
> >  	}, {
> >  		.name = "DDI_IO_B",
> > -		.domains = ICL_DDI_IO_B_POWER_DOMAINS,
> > +		.domain_list = &icl_pwdoms_ddi_io_b,
> >  		.ops = &icl_ddi_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -1262,7 +1282,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
> >  		}
> >  	}, {
> >  		.name = "DDI_IO_C",
> > -		.domains = ICL_DDI_IO_C_POWER_DOMAINS,
> > +		.domain_list = &icl_pwdoms_ddi_io_c,
> >  		.ops = &icl_ddi_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -1270,7 +1290,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
> >  		}
> >  	}, {
> >  		.name = "DDI_IO_TC1",
> > -		.domains = TGL_DDI_IO_TC1_POWER_DOMAINS,
> > +		.domain_list = &tgl_pwdoms_ddi_io_tc1,
> >  		.ops = &icl_ddi_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -1278,7 +1298,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "DDI_IO_TC2",
> > -		.domains = TGL_DDI_IO_TC2_POWER_DOMAINS,
> > +		.domain_list = &tgl_pwdoms_ddi_io_tc2,
> >  		.ops = &icl_ddi_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -1286,7 +1306,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "DDI_IO_TC3",
> > -		.domains = TGL_DDI_IO_TC3_POWER_DOMAINS,
> > +		.domain_list = &tgl_pwdoms_ddi_io_tc3,
> >  		.ops = &icl_ddi_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -1294,7 +1314,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "DDI_IO_TC4",
> > -		.domains = TGL_DDI_IO_TC4_POWER_DOMAINS,
> > +		.domain_list = &tgl_pwdoms_ddi_io_tc4,
> >  		.ops = &icl_ddi_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -1302,7 +1322,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "DDI_IO_TC5",
> > -		.domains = TGL_DDI_IO_TC5_POWER_DOMAINS,
> > +		.domain_list = &tgl_pwdoms_ddi_io_tc5,
> >  		.ops = &icl_ddi_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -1310,7 +1330,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "DDI_IO_TC6",
> > -		.domains = TGL_DDI_IO_TC6_POWER_DOMAINS,
> > +		.domain_list = &tgl_pwdoms_ddi_io_tc6,
> >  		.ops = &icl_ddi_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -1318,12 +1338,12 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "TC_cold_off",
> > -		.domains = TGL_TC_COLD_OFF_POWER_DOMAINS,
> > +		.domain_list = &tgl_pwdoms_tc_cold_off,
> >  		.ops = &tgl_tc_cold_off_ops,
> >  		.id = TGL_DISP_PW_TC_COLD_OFF,
> >  	}, {
> >  		.name = "AUX_A",
> > -		.domains = TGL_AUX_A_IO_POWER_DOMAINS,
> > +		.domain_list = &tgl_pwdoms_aux_a,
> >  		.ops = &icl_aux_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -1331,7 +1351,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "AUX_B",
> > -		.domains = TGL_AUX_B_IO_POWER_DOMAINS,
> > +		.domain_list = &tgl_pwdoms_aux_b,
> >  		.ops = &icl_aux_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -1339,7 +1359,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "AUX_C",
> > -		.domains = TGL_AUX_C_IO_POWER_DOMAINS,
> > +		.domain_list = &tgl_pwdoms_aux_c,
> >  		.ops = &icl_aux_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -1347,7 +1367,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "AUX_USBC1",
> > -		.domains = TGL_AUX_IO_USBC1_POWER_DOMAINS,
> > +		.domain_list = &tgl_pwdoms_aux_usbc1,
> >  		.ops = &icl_aux_power_well_ops,
> >  		.is_tc_tbt = false,
> >  		.id = DISP_PW_ID_NONE,
> > @@ -1356,7 +1376,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "AUX_USBC2",
> > -		.domains = TGL_AUX_IO_USBC2_POWER_DOMAINS,
> > +		.domain_list = &tgl_pwdoms_aux_usbc2,
> >  		.ops = &icl_aux_power_well_ops,
> >  		.is_tc_tbt = false,
> >  		.id = DISP_PW_ID_NONE,
> > @@ -1365,7 +1385,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "AUX_USBC3",
> > -		.domains = TGL_AUX_IO_USBC3_POWER_DOMAINS,
> > +		.domain_list = &tgl_pwdoms_aux_usbc3,
> >  		.ops = &icl_aux_power_well_ops,
> >  		.is_tc_tbt = false,
> >  		.id = DISP_PW_ID_NONE,
> > @@ -1374,7 +1394,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "AUX_USBC4",
> > -		.domains = TGL_AUX_IO_USBC4_POWER_DOMAINS,
> > +		.domain_list = &tgl_pwdoms_aux_usbc4,
> >  		.ops = &icl_aux_power_well_ops,
> >  		.is_tc_tbt = false,
> >  		.id = DISP_PW_ID_NONE,
> > @@ -1383,7 +1403,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "AUX_USBC5",
> > -		.domains = TGL_AUX_IO_USBC5_POWER_DOMAINS,
> > +		.domain_list = &tgl_pwdoms_aux_usbc5,
> >  		.ops = &icl_aux_power_well_ops,
> >  		.is_tc_tbt = false,
> >  		.id = DISP_PW_ID_NONE,
> > @@ -1392,7 +1412,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "AUX_USBC6",
> > -		.domains = TGL_AUX_IO_USBC6_POWER_DOMAINS,
> > +		.domain_list = &tgl_pwdoms_aux_usbc6,
> >  		.ops = &icl_aux_power_well_ops,
> >  		.is_tc_tbt = false,
> >  		.id = DISP_PW_ID_NONE,
> > @@ -1401,7 +1421,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "AUX_TBT1",
> > -		.domains = TGL_AUX_IO_TBT1_POWER_DOMAINS,
> > +		.domain_list = &tgl_pwdoms_aux_tbt1,
> >  		.ops = &icl_aux_power_well_ops,
> >  		.is_tc_tbt = true,
> >  		.id = DISP_PW_ID_NONE,
> > @@ -1410,7 +1430,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "AUX_TBT2",
> > -		.domains = TGL_AUX_IO_TBT2_POWER_DOMAINS,
> > +		.domain_list = &tgl_pwdoms_aux_tbt2,
> >  		.ops = &icl_aux_power_well_ops,
> >  		.is_tc_tbt = true,
> >  		.id = DISP_PW_ID_NONE,
> > @@ -1419,7 +1439,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "AUX_TBT3",
> > -		.domains = TGL_AUX_IO_TBT3_POWER_DOMAINS,
> > +		.domain_list = &tgl_pwdoms_aux_tbt3,
> >  		.ops = &icl_aux_power_well_ops,
> >  		.is_tc_tbt = true,
> >  		.id = DISP_PW_ID_NONE,
> > @@ -1428,7 +1448,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "AUX_TBT4",
> > -		.domains = TGL_AUX_IO_TBT4_POWER_DOMAINS,
> > +		.domain_list = &tgl_pwdoms_aux_tbt4,
> >  		.ops = &icl_aux_power_well_ops,
> >  		.is_tc_tbt = true,
> >  		.id = DISP_PW_ID_NONE,
> > @@ -1437,7 +1457,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "AUX_TBT5",
> > -		.domains = TGL_AUX_IO_TBT5_POWER_DOMAINS,
> > +		.domain_list = &tgl_pwdoms_aux_tbt5,
> >  		.ops = &icl_aux_power_well_ops,
> >  		.is_tc_tbt = true,
> >  		.id = DISP_PW_ID_NONE,
> > @@ -1446,7 +1466,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "AUX_TBT6",
> > -		.domains = TGL_AUX_IO_TBT6_POWER_DOMAINS,
> > +		.domain_list = &tgl_pwdoms_aux_tbt6,
> >  		.ops = &icl_aux_power_well_ops,
> >  		.is_tc_tbt = true,
> >  		.id = DISP_PW_ID_NONE,
> > @@ -1455,7 +1475,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "PW_4",
> > -		.domains = TGL_PW_4_POWER_DOMAINS,
> > +		.domain_list = &tgl_pwdoms_pw_4,
> >  		.ops = &hsw_power_well_ops,
> >  		.has_fuses = true,
> >  		.irq_pipe_mask = BIT(PIPE_C),
> > @@ -1465,7 +1485,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
> >  		}
> >  	}, {
> >  		.name = "PW_5",
> > -		.domains = TGL_PW_5_POWER_DOMAINS,
> > +		.domain_list = &tgl_pwdoms_pw_5,
> >  		.ops = &hsw_power_well_ops,
> >  		.has_fuses = true,
> >  		.irq_pipe_mask = BIT(PIPE_D),
> > @@ -1476,25 +1496,31 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
> >  	},
> >  };
> >  
> > -#define RKL_PW_4_POWER_DOMAINS (			\
> > -	BIT_ULL(POWER_DOMAIN_PIPE_C) |			\
> > -	BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER_C) |	\
> > -	BIT_ULL(POWER_DOMAIN_TRANSCODER_C) |		\
> > -	BIT_ULL(POWER_DOMAIN_INIT))
> > +#define RKL_PW_4_POWER_DOMAINS \
> > +	POWER_DOMAIN_PIPE_C, \
> > +	POWER_DOMAIN_PIPE_PANEL_FITTER_C, \
> > +	POWER_DOMAIN_TRANSCODER_C
> >  
> > -#define RKL_PW_3_POWER_DOMAINS (			\
> > -	RKL_PW_4_POWER_DOMAINS |			\
> > -	BIT_ULL(POWER_DOMAIN_PIPE_B) |			\
> > -	BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER_B) |	\
> > -	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |		\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC1) |	\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC2) |	\
> > -	BIT_ULL(POWER_DOMAIN_VGA) |			\
> > -	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
> > -	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |			\
> > -	BIT_ULL(POWER_DOMAIN_AUX_USBC1) |		\
> > -	BIT_ULL(POWER_DOMAIN_AUX_USBC2) |		\
> > -	BIT_ULL(POWER_DOMAIN_INIT))
> > +I915_DECL_PW_DOMAINS(rkl_pwdoms_pw_4,
> > +	RKL_PW_4_POWER_DOMAINS,
> > +	POWER_DOMAIN_INIT);
> > +
> > +#define RKL_PW_3_POWER_DOMAINS \
> > +	RKL_PW_4_POWER_DOMAINS, \
> > +	POWER_DOMAIN_PIPE_B, \
> > +	POWER_DOMAIN_PIPE_PANEL_FITTER_B, \
> > +	POWER_DOMAIN_TRANSCODER_B, \
> > +	POWER_DOMAIN_PORT_DDI_LANES_TC1, \
> > +	POWER_DOMAIN_PORT_DDI_LANES_TC2, \
> > +	POWER_DOMAIN_VGA, \
> > +	POWER_DOMAIN_AUDIO_MMIO, \
> > +	POWER_DOMAIN_AUDIO_PLAYBACK, \
> > +	POWER_DOMAIN_AUX_USBC1, \
> > +	POWER_DOMAIN_AUX_USBC2
> > +
> > +I915_DECL_PW_DOMAINS(rkl_pwdoms_pw_3,
> > +	RKL_PW_3_POWER_DOMAINS,
> > +	POWER_DOMAIN_INIT);
> >  
> >  /*
> >   * There is no PW_2/PG_2 on RKL.
> > @@ -1517,24 +1543,24 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
> >   * - top-level GTC (DDI-level GTC is in the well associated with the DDI)
> >   */
> >  
> > -#define RKL_DISPLAY_DC_OFF_POWER_DOMAINS (		\
> > -	RKL_PW_3_POWER_DOMAINS |			\
> > -	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
> > -	BIT_ULL(POWER_DOMAIN_AUX_B) |			\
> > -	BIT_ULL(POWER_DOMAIN_MODESET) |			\
> > -	BIT_ULL(POWER_DOMAIN_INIT))
> > +I915_DECL_PW_DOMAINS(rkl_pwdoms_dc_off,
> > +	RKL_PW_3_POWER_DOMAINS,
> > +	POWER_DOMAIN_AUX_A,
> > +	POWER_DOMAIN_AUX_B,
> > +	POWER_DOMAIN_MODESET,
> > +	POWER_DOMAIN_INIT);
> >  
> >  static const struct i915_power_well_desc rkl_power_wells[] = {
> >  	{
> >  		.name = "always-on",
> > -		.domains = POWER_DOMAIN_MASK,
> > +		.domain_list = &i9xx_pwdoms_always_on,
> >  		.ops = &i9xx_always_on_power_well_ops,
> >  		.always_on = true,
> >  		.id = DISP_PW_ID_NONE,
> >  	}, {
> >  		.name = "PW_1",
> >  		/* Handled by the DMC firmware */
> > -		.domains = 0,
> > +		.domain_list = I915_PW_DOMAINS_NONE,
> >  		.ops = &hsw_power_well_ops,
> >  		.always_on = true,
> >  		.has_fuses = true,
> > @@ -1544,12 +1570,12 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "DC_off",
> > -		.domains = RKL_DISPLAY_DC_OFF_POWER_DOMAINS,
> > +		.domain_list = &rkl_pwdoms_dc_off,
> >  		.ops = &gen9_dc_off_power_well_ops,
> >  		.id = SKL_DISP_DC_OFF,
> >  	}, {
> >  		.name = "PW_3",
> > -		.domains = RKL_PW_3_POWER_DOMAINS,
> > +		.domain_list = &rkl_pwdoms_pw_3,
> >  		.ops = &hsw_power_well_ops,
> >  		.irq_pipe_mask = BIT(PIPE_B),
> >  		.has_vga = true,
> > @@ -1560,7 +1586,7 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "PW_4",
> > -		.domains = RKL_PW_4_POWER_DOMAINS,
> > +		.domain_list = &rkl_pwdoms_pw_4,
> >  		.ops = &hsw_power_well_ops,
> >  		.has_fuses = true,
> >  		.irq_pipe_mask = BIT(PIPE_C),
> > @@ -1570,7 +1596,7 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
> >  		}
> >  	}, {
> >  		.name = "DDI_IO_A",
> > -		.domains = ICL_DDI_IO_A_POWER_DOMAINS,
> > +		.domain_list = &icl_pwdoms_ddi_io_a,
> >  		.ops = &icl_ddi_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -1578,7 +1604,7 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
> >  		}
> >  	}, {
> >  		.name = "DDI_IO_B",
> > -		.domains = ICL_DDI_IO_B_POWER_DOMAINS,
> > +		.domain_list = &icl_pwdoms_ddi_io_b,
> >  		.ops = &icl_ddi_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -1586,7 +1612,7 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
> >  		}
> >  	}, {
> >  		.name = "DDI_IO_TC1",
> > -		.domains = TGL_DDI_IO_TC1_POWER_DOMAINS,
> > +		.domain_list = &tgl_pwdoms_ddi_io_tc1,
> >  		.ops = &icl_ddi_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -1594,7 +1620,7 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "DDI_IO_TC2",
> > -		.domains = TGL_DDI_IO_TC2_POWER_DOMAINS,
> > +		.domain_list = &tgl_pwdoms_ddi_io_tc2,
> >  		.ops = &icl_ddi_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -1602,7 +1628,7 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "AUX_A",
> > -		.domains = ICL_AUX_A_IO_POWER_DOMAINS,
> > +		.domain_list = &icl_pwdoms_aux_a,
> >  		.ops = &icl_aux_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -1610,7 +1636,7 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "AUX_B",
> > -		.domains = ICL_AUX_B_IO_POWER_DOMAINS,
> > +		.domain_list = &icl_pwdoms_aux_b,
> >  		.ops = &icl_aux_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -1618,7 +1644,7 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "AUX_USBC1",
> > -		.domains = TGL_AUX_IO_USBC1_POWER_DOMAINS,
> > +		.domain_list = &tgl_pwdoms_aux_usbc1,
> >  		.ops = &icl_aux_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -1626,7 +1652,7 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "AUX_USBC2",
> > -		.domains = TGL_AUX_IO_USBC2_POWER_DOMAINS,
> > +		.domain_list = &tgl_pwdoms_aux_usbc2,
> >  		.ops = &icl_aux_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -1638,43 +1664,46 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
> >  /*
> >   * DG1 onwards Audio MMIO/VERBS lies in PG0 power well.
> >   */
> > -#define DG1_PW_3_POWER_DOMAINS (			\
> > -	TGL_PW_4_POWER_DOMAINS |			\
> > -	BIT_ULL(POWER_DOMAIN_PIPE_B) |			\
> > -	BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER_B) |	\
> > -	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |		\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC1) |	\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC2) |	\
> > -	BIT_ULL(POWER_DOMAIN_VGA) |			\
> > -	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |		\
> > -	BIT_ULL(POWER_DOMAIN_AUX_USBC1) |		\
> > -	BIT_ULL(POWER_DOMAIN_AUX_USBC2) |		\
> > -	BIT_ULL(POWER_DOMAIN_INIT))
> > +#define DG1_PW_3_POWER_DOMAINS \
> > +	TGL_PW_4_POWER_DOMAINS, \
> > +	POWER_DOMAIN_PIPE_B, \
> > +	POWER_DOMAIN_PIPE_PANEL_FITTER_B, \
> > +	POWER_DOMAIN_TRANSCODER_B, \
> > +	POWER_DOMAIN_PORT_DDI_LANES_TC1, \
> > +	POWER_DOMAIN_PORT_DDI_LANES_TC2, \
> > +	POWER_DOMAIN_VGA, \
> > +	POWER_DOMAIN_AUDIO_PLAYBACK, \
> > +	POWER_DOMAIN_AUX_USBC1, \
> > +	POWER_DOMAIN_AUX_USBC2
> >  
> > -#define DG1_DISPLAY_DC_OFF_POWER_DOMAINS (		\
> > -	DG1_PW_3_POWER_DOMAINS |			\
> > -	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
> > -	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
> > -	BIT_ULL(POWER_DOMAIN_AUX_B) |			\
> > -	BIT_ULL(POWER_DOMAIN_MODESET) |			\
> > -	BIT_ULL(POWER_DOMAIN_INIT))
> > +I915_DECL_PW_DOMAINS(dg1_pwdoms_pw_3,
> > +	DG1_PW_3_POWER_DOMAINS,
> > +	POWER_DOMAIN_INIT);
> >  
> > -#define DG1_PW_2_POWER_DOMAINS (			\
> > -	DG1_PW_3_POWER_DOMAINS |			\
> > -	BIT_ULL(POWER_DOMAIN_TRANSCODER_VDSC_PW2) |	\
> > -	BIT_ULL(POWER_DOMAIN_INIT))
> > +I915_DECL_PW_DOMAINS(dg1_pwdoms_dc_off,
> > +	DG1_PW_3_POWER_DOMAINS,
> > +	POWER_DOMAIN_AUDIO_MMIO,
> > +	POWER_DOMAIN_AUX_A,
> > +	POWER_DOMAIN_AUX_B,
> > +	POWER_DOMAIN_MODESET,
> > +	POWER_DOMAIN_INIT);
> > +
> > +I915_DECL_PW_DOMAINS(dg1_pwdoms_pw_2,
> > +	DG1_PW_3_POWER_DOMAINS,
> > +	POWER_DOMAIN_TRANSCODER_VDSC_PW2,
> > +	POWER_DOMAIN_INIT);
> >  
> >  static const struct i915_power_well_desc dg1_power_wells[] = {
> >  	{
> >  		.name = "always-on",
> > -		.domains = POWER_DOMAIN_MASK,
> > +		.domain_list = &i9xx_pwdoms_always_on,
> >  		.ops = &i9xx_always_on_power_well_ops,
> >  		.always_on = true,
> >  		.id = DISP_PW_ID_NONE,
> >  	}, {
> >  		.name = "PW_1",
> >  		/* Handled by the DMC firmware */
> > -		.domains = 0,
> > +		.domain_list = I915_PW_DOMAINS_NONE,
> >  		.ops = &hsw_power_well_ops,
> >  		.always_on = true,
> >  		.has_fuses = true,
> > @@ -1684,12 +1713,12 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "DC_off",
> > -		.domains = DG1_DISPLAY_DC_OFF_POWER_DOMAINS,
> > +		.domain_list = &dg1_pwdoms_dc_off,
> >  		.ops = &gen9_dc_off_power_well_ops,
> >  		.id = SKL_DISP_DC_OFF,
> >  	}, {
> >  		.name = "PW_2",
> > -		.domains = DG1_PW_2_POWER_DOMAINS,
> > +		.domain_list = &dg1_pwdoms_pw_2,
> >  		.ops = &hsw_power_well_ops,
> >  		.has_fuses = true,
> >  		.id = SKL_DISP_PW_2,
> > @@ -1698,7 +1727,7 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "PW_3",
> > -		.domains = DG1_PW_3_POWER_DOMAINS,
> > +		.domain_list = &dg1_pwdoms_pw_3,
> >  		.ops = &hsw_power_well_ops,
> >  		.irq_pipe_mask = BIT(PIPE_B),
> >  		.has_vga = true,
> > @@ -1709,7 +1738,7 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "DDI_IO_A",
> > -		.domains = ICL_DDI_IO_A_POWER_DOMAINS,
> > +		.domain_list = &icl_pwdoms_ddi_io_a,
> >  		.ops = &icl_ddi_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -1717,7 +1746,7 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
> >  		}
> >  	}, {
> >  		.name = "DDI_IO_B",
> > -		.domains = ICL_DDI_IO_B_POWER_DOMAINS,
> > +		.domain_list = &icl_pwdoms_ddi_io_b,
> >  		.ops = &icl_ddi_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -1725,7 +1754,7 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
> >  		}
> >  	}, {
> >  		.name = "DDI_IO_TC1",
> > -		.domains = TGL_DDI_IO_TC1_POWER_DOMAINS,
> > +		.domain_list = &tgl_pwdoms_ddi_io_tc1,
> >  		.ops = &icl_ddi_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -1733,7 +1762,7 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "DDI_IO_TC2",
> > -		.domains = TGL_DDI_IO_TC2_POWER_DOMAINS,
> > +		.domain_list = &tgl_pwdoms_ddi_io_tc2,
> >  		.ops = &icl_ddi_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -1741,7 +1770,7 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "AUX_A",
> > -		.domains = TGL_AUX_A_IO_POWER_DOMAINS,
> > +		.domain_list = &tgl_pwdoms_aux_a,
> >  		.ops = &icl_aux_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -1749,7 +1778,7 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "AUX_B",
> > -		.domains = TGL_AUX_B_IO_POWER_DOMAINS,
> > +		.domain_list = &tgl_pwdoms_aux_b,
> >  		.ops = &icl_aux_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -1757,7 +1786,7 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "AUX_USBC1",
> > -		.domains = TGL_AUX_IO_USBC1_POWER_DOMAINS,
> > +		.domain_list = &tgl_pwdoms_aux_usbc1,
> >  		.ops = &icl_aux_power_well_ops,
> >  		.is_tc_tbt = false,
> >  		.id = DISP_PW_ID_NONE,
> > @@ -1766,7 +1795,7 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "AUX_USBC2",
> > -		.domains = TGL_AUX_IO_USBC2_POWER_DOMAINS,
> > +		.domain_list = &tgl_pwdoms_aux_usbc2,
> >  		.ops = &icl_aux_power_well_ops,
> >  		.is_tc_tbt = false,
> >  		.id = DISP_PW_ID_NONE,
> > @@ -1775,7 +1804,7 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "PW_4",
> > -		.domains = TGL_PW_4_POWER_DOMAINS,
> > +		.domain_list = &tgl_pwdoms_pw_4,
> >  		.ops = &hsw_power_well_ops,
> >  		.has_fuses = true,
> >  		.irq_pipe_mask = BIT(PIPE_C),
> > @@ -1785,7 +1814,7 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
> >  		}
> >  	}, {
> >  		.name = "PW_5",
> > -		.domains = TGL_PW_5_POWER_DOMAINS,
> > +		.domain_list = &tgl_pwdoms_pw_5,
> >  		.ops = &hsw_power_well_ops,
> >  		.has_fuses = true,
> >  		.irq_pipe_mask = BIT(PIPE_D),
> > @@ -1814,54 +1843,66 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
> >   * to top.  This allows pipes to be power gated independently.
> >   */
> >  
> > -#define XELPD_PW_D_POWER_DOMAINS (			\
> > -	BIT_ULL(POWER_DOMAIN_PIPE_D) |			\
> > -	BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER_D) |	\
> > -	BIT_ULL(POWER_DOMAIN_TRANSCODER_D) |		\
> > -	BIT_ULL(POWER_DOMAIN_INIT))
> > -
> > -#define XELPD_PW_C_POWER_DOMAINS (			\
> > -	BIT_ULL(POWER_DOMAIN_PIPE_C) |			\
> > -	BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER_C) |	\
> > -	BIT_ULL(POWER_DOMAIN_TRANSCODER_C) |		\
> > -	BIT_ULL(POWER_DOMAIN_INIT))
> > -
> > -#define XELPD_PW_B_POWER_DOMAINS (			\
> > -	BIT_ULL(POWER_DOMAIN_PIPE_B) |			\
> > -	BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER_B) |	\
> > -	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |		\
> > -	BIT_ULL(POWER_DOMAIN_INIT))
> > -
> > -#define XELPD_PW_A_POWER_DOMAINS (			\
> > -	BIT_ULL(POWER_DOMAIN_PIPE_A) |			\
> > -	BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER_A) |	\
> > -	BIT_ULL(POWER_DOMAIN_INIT))
> > -
> > -#define XELPD_PW_2_POWER_DOMAINS (			\
> > -	XELPD_PW_B_POWER_DOMAINS |			\
> > -	XELPD_PW_C_POWER_DOMAINS |			\
> > -	XELPD_PW_D_POWER_DOMAINS |			\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_C) |	\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_D_XELPD) |	\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_E_XELPD) |	\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC1) |	\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC2) |	\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC3) |	\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC4) |	\
> > -	BIT_ULL(POWER_DOMAIN_VGA) |			\
> > -	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |		\
> > -	BIT_ULL(POWER_DOMAIN_AUX_C) |			\
> > -	BIT_ULL(POWER_DOMAIN_AUX_D_XELPD) |		\
> > -	BIT_ULL(POWER_DOMAIN_AUX_E_XELPD) |		\
> > -	BIT_ULL(POWER_DOMAIN_AUX_USBC1) |			\
> > -	BIT_ULL(POWER_DOMAIN_AUX_USBC2) |			\
> > -	BIT_ULL(POWER_DOMAIN_AUX_USBC3) |			\
> > -	BIT_ULL(POWER_DOMAIN_AUX_USBC4) |			\
> > -	BIT_ULL(POWER_DOMAIN_AUX_TBT1) |			\
> > -	BIT_ULL(POWER_DOMAIN_AUX_TBT2) |			\
> > -	BIT_ULL(POWER_DOMAIN_AUX_TBT3) |			\
> > -	BIT_ULL(POWER_DOMAIN_AUX_TBT4) |			\
> > -	BIT_ULL(POWER_DOMAIN_INIT))
> > +#define XELPD_PW_D_POWER_DOMAINS \
> > +	POWER_DOMAIN_PIPE_D, \
> > +	POWER_DOMAIN_PIPE_PANEL_FITTER_D, \
> > +	POWER_DOMAIN_TRANSCODER_D
> > +
> > +I915_DECL_PW_DOMAINS(xelpd_pwdoms_pw_d,
> > +	XELPD_PW_D_POWER_DOMAINS,
> > +	POWER_DOMAIN_INIT);
> > +
> > +#define XELPD_PW_C_POWER_DOMAINS \
> > +	POWER_DOMAIN_PIPE_C, \
> > +	POWER_DOMAIN_PIPE_PANEL_FITTER_C, \
> > +	POWER_DOMAIN_TRANSCODER_C
> > +
> > +I915_DECL_PW_DOMAINS(xelpd_pwdoms_pw_c,
> > +	XELPD_PW_C_POWER_DOMAINS,
> > +	POWER_DOMAIN_INIT);
> > +
> > +#define XELPD_PW_B_POWER_DOMAINS \
> > +	POWER_DOMAIN_PIPE_B, \
> > +	POWER_DOMAIN_PIPE_PANEL_FITTER_B, \
> > +	POWER_DOMAIN_TRANSCODER_B
> > +
> > +I915_DECL_PW_DOMAINS(xelpd_pwdoms_pw_b,
> > +	XELPD_PW_B_POWER_DOMAINS,
> > +	POWER_DOMAIN_INIT);
> > +
> > +I915_DECL_PW_DOMAINS(xelpd_pwdoms_pw_a,
> > +	POWER_DOMAIN_PIPE_A,
> > +	POWER_DOMAIN_PIPE_PANEL_FITTER_A,
> > +	POWER_DOMAIN_INIT);
> > +
> > +#define XELPD_PW_2_POWER_DOMAINS \
> > +	XELPD_PW_B_POWER_DOMAINS, \
> > +	XELPD_PW_C_POWER_DOMAINS, \
> > +	XELPD_PW_D_POWER_DOMAINS, \
> > +	POWER_DOMAIN_PORT_DDI_LANES_C, \
> > +	POWER_DOMAIN_PORT_DDI_LANES_D_XELPD, \
> > +	POWER_DOMAIN_PORT_DDI_LANES_E_XELPD, \
> > +	POWER_DOMAIN_PORT_DDI_LANES_TC1, \
> > +	POWER_DOMAIN_PORT_DDI_LANES_TC2, \
> > +	POWER_DOMAIN_PORT_DDI_LANES_TC3, \
> > +	POWER_DOMAIN_PORT_DDI_LANES_TC4, \
> > +	POWER_DOMAIN_VGA, \
> > +	POWER_DOMAIN_AUDIO_PLAYBACK, \
> > +	POWER_DOMAIN_AUX_C, \
> > +	POWER_DOMAIN_AUX_D_XELPD, \
> > +	POWER_DOMAIN_AUX_E_XELPD, \
> > +	POWER_DOMAIN_AUX_USBC1, \
> > +	POWER_DOMAIN_AUX_USBC2, \
> > +	POWER_DOMAIN_AUX_USBC3, \
> > +	POWER_DOMAIN_AUX_USBC4, \
> > +	POWER_DOMAIN_AUX_TBT1, \
> > +	POWER_DOMAIN_AUX_TBT2, \
> > +	POWER_DOMAIN_AUX_TBT3, \
> > +	POWER_DOMAIN_AUX_TBT4
> > +
> > +I915_DECL_PW_DOMAINS(xelpd_pwdoms_pw_2,
> > +	XELPD_PW_2_POWER_DOMAINS,
> > +	POWER_DOMAIN_INIT);
> >  
> >  /*
> >   * XELPD PW_1/PG_1 domains (under HW/DMC control):
> > @@ -1880,45 +1921,46 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
> >   *  - Top-level GTC (DDI-level GTC is in the well associated with the DDI)
> >   */
> >  
> > -#define XELPD_DISPLAY_DC_OFF_POWER_DOMAINS (		\
> > -	XELPD_PW_2_POWER_DOMAINS |			\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DSI) |		\
> > -	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
> > -	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
> > -	BIT_ULL(POWER_DOMAIN_AUX_B) |			\
> > -	BIT_ULL(POWER_DOMAIN_MODESET) |			\
> > -	BIT_ULL(POWER_DOMAIN_INIT))
> > +I915_DECL_PW_DOMAINS(xelpd_pwdoms_dc_off,
> > +	XELPD_PW_2_POWER_DOMAINS,
> > +	POWER_DOMAIN_PORT_DSI,
> > +	POWER_DOMAIN_AUDIO_MMIO,
> > +	POWER_DOMAIN_AUX_A,
> > +	POWER_DOMAIN_AUX_B,
> > +	POWER_DOMAIN_MODESET,
> > +	POWER_DOMAIN_INIT);
> >  
> > -#define XELPD_AUX_IO_D_XELPD_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_D_XELPD)
> > -#define XELPD_AUX_IO_E_XELPD_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_E_XELPD)
> > -#define XELPD_AUX_IO_USBC1_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_USBC1)
> > -#define XELPD_AUX_IO_USBC2_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_USBC2)
> > -#define XELPD_AUX_IO_USBC3_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_USBC3)
> > -#define XELPD_AUX_IO_USBC4_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_USBC4)
> > +I915_DECL_PW_DOMAINS(xelpd_pwdoms_aux_d_xelpd,		POWER_DOMAIN_AUX_D_XELPD);
> > +I915_DECL_PW_DOMAINS(xelpd_pwdoms_aux_e_xelpd,		POWER_DOMAIN_AUX_E_XELPD);
> >  
> > -#define XELPD_AUX_IO_TBT1_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_AUX_TBT1)
> > -#define XELPD_AUX_IO_TBT2_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_AUX_TBT2)
> > -#define XELPD_AUX_IO_TBT3_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_AUX_TBT3)
> > -#define XELPD_AUX_IO_TBT4_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_AUX_TBT4)
> > +I915_DECL_PW_DOMAINS(xelpd_pwdoms_aux_usbc1,		POWER_DOMAIN_AUX_USBC1);
> > +I915_DECL_PW_DOMAINS(xelpd_pwdoms_aux_usbc2,		POWER_DOMAIN_AUX_USBC2);
> > +I915_DECL_PW_DOMAINS(xelpd_pwdoms_aux_usbc3,		POWER_DOMAIN_AUX_USBC3);
> > +I915_DECL_PW_DOMAINS(xelpd_pwdoms_aux_usbc4,		POWER_DOMAIN_AUX_USBC4);
> >  
> > -#define XELPD_DDI_IO_D_XELPD_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_D_XELPD)
> > -#define XELPD_DDI_IO_E_XELPD_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_E_XELPD)
> > -#define XELPD_DDI_IO_TC1_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_TC1)
> > -#define XELPD_DDI_IO_TC2_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_TC2)
> > -#define XELPD_DDI_IO_TC3_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_TC3)
> > -#define XELPD_DDI_IO_TC4_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_TC4)
> > +I915_DECL_PW_DOMAINS(xelpd_pwdoms_aux_tbt1,		POWER_DOMAIN_AUX_TBT1);
> > +I915_DECL_PW_DOMAINS(xelpd_pwdoms_aux_tbt2,		POWER_DOMAIN_AUX_TBT2);
> > +I915_DECL_PW_DOMAINS(xelpd_pwdoms_aux_tbt3,		POWER_DOMAIN_AUX_TBT3);
> > +I915_DECL_PW_DOMAINS(xelpd_pwdoms_aux_tbt4,		POWER_DOMAIN_AUX_TBT4);
> > +
> > +I915_DECL_PW_DOMAINS(xelpd_pwdoms_ddi_io_d_xelpd,	POWER_DOMAIN_PORT_DDI_IO_D_XELPD);
> > +I915_DECL_PW_DOMAINS(xelpd_pwdoms_ddi_io_e_xelpd,	POWER_DOMAIN_PORT_DDI_IO_E_XELPD);
> > +I915_DECL_PW_DOMAINS(xelpd_pwdoms_ddi_io_tc1,		POWER_DOMAIN_PORT_DDI_IO_TC1);
> > +I915_DECL_PW_DOMAINS(xelpd_pwdoms_ddi_io_tc2,		POWER_DOMAIN_PORT_DDI_IO_TC2);
> > +I915_DECL_PW_DOMAINS(xelpd_pwdoms_ddi_io_tc3,		POWER_DOMAIN_PORT_DDI_IO_TC3);
> > +I915_DECL_PW_DOMAINS(xelpd_pwdoms_ddi_io_tc4,		POWER_DOMAIN_PORT_DDI_IO_TC4);
> >  
> >  static const struct i915_power_well_desc xelpd_power_wells[] = {
> >  	{
> >  		.name = "always-on",
> > -		.domains = POWER_DOMAIN_MASK,
> > +		.domain_list = &i9xx_pwdoms_always_on,
> >  		.ops = &i9xx_always_on_power_well_ops,
> >  		.always_on = true,
> >  		.id = DISP_PW_ID_NONE,
> >  	}, {
> >  		.name = "PW_1",
> >  		/* Handled by the DMC firmware */
> > -		.domains = 0,
> > +		.domain_list = I915_PW_DOMAINS_NONE,
> >  		.ops = &hsw_power_well_ops,
> >  		.always_on = true,
> >  		.has_fuses = true,
> > @@ -1928,12 +1970,12 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "DC_off",
> > -		.domains = XELPD_DISPLAY_DC_OFF_POWER_DOMAINS,
> > +		.domain_list = &xelpd_pwdoms_dc_off,
> >  		.ops = &gen9_dc_off_power_well_ops,
> >  		.id = SKL_DISP_DC_OFF,
> >  	}, {
> >  		.name = "PW_2",
> > -		.domains = XELPD_PW_2_POWER_DOMAINS,
> > +		.domain_list = &xelpd_pwdoms_pw_2,
> >  		.ops = &hsw_power_well_ops,
> >  		.has_vga = true,
> >  		.has_fuses = true,
> > @@ -1943,7 +1985,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "PW_A",
> > -		.domains = XELPD_PW_A_POWER_DOMAINS,
> > +		.domain_list = &xelpd_pwdoms_pw_a,
> >  		.ops = &hsw_power_well_ops,
> >  		.irq_pipe_mask = BIT(PIPE_A),
> >  		.has_fuses = true,
> > @@ -1953,7 +1995,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "PW_B",
> > -		.domains = XELPD_PW_B_POWER_DOMAINS,
> > +		.domain_list = &xelpd_pwdoms_pw_b,
> >  		.ops = &hsw_power_well_ops,
> >  		.irq_pipe_mask = BIT(PIPE_B),
> >  		.has_fuses = true,
> > @@ -1963,7 +2005,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "PW_C",
> > -		.domains = XELPD_PW_C_POWER_DOMAINS,
> > +		.domain_list = &xelpd_pwdoms_pw_c,
> >  		.ops = &hsw_power_well_ops,
> >  		.irq_pipe_mask = BIT(PIPE_C),
> >  		.has_fuses = true,
> > @@ -1973,7 +2015,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "PW_D",
> > -		.domains = XELPD_PW_D_POWER_DOMAINS,
> > +		.domain_list = &xelpd_pwdoms_pw_d,
> >  		.ops = &hsw_power_well_ops,
> >  		.irq_pipe_mask = BIT(PIPE_D),
> >  		.has_fuses = true,
> > @@ -1983,7 +2025,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "DDI_IO_A",
> > -		.domains = ICL_DDI_IO_A_POWER_DOMAINS,
> > +		.domain_list = &icl_pwdoms_ddi_io_a,
> >  		.ops = &icl_ddi_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -1991,7 +2033,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
> >  		}
> >  	}, {
> >  		.name = "DDI_IO_B",
> > -		.domains = ICL_DDI_IO_B_POWER_DOMAINS,
> > +		.domain_list = &icl_pwdoms_ddi_io_b,
> >  		.ops = &icl_ddi_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -1999,7 +2041,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
> >  		}
> >  	}, {
> >  		.name = "DDI_IO_C",
> > -		.domains = ICL_DDI_IO_C_POWER_DOMAINS,
> > +		.domain_list = &icl_pwdoms_ddi_io_c,
> >  		.ops = &icl_ddi_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -2007,7 +2049,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
> >  		}
> >  	}, {
> >  		.name = "DDI_IO_D_XELPD",
> > -		.domains = XELPD_DDI_IO_D_XELPD_POWER_DOMAINS,
> > +		.domain_list = &xelpd_pwdoms_ddi_io_d_xelpd,
> >  		.ops = &icl_ddi_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -2015,7 +2057,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
> >  		}
> >  	}, {
> >  		.name = "DDI_IO_E_XELPD",
> > -		.domains = XELPD_DDI_IO_E_XELPD_POWER_DOMAINS,
> > +		.domain_list = &xelpd_pwdoms_ddi_io_e_xelpd,
> >  		.ops = &icl_ddi_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -2023,7 +2065,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
> >  		}
> >  	}, {
> >  		.name = "DDI_IO_TC1",
> > -		.domains = XELPD_DDI_IO_TC1_POWER_DOMAINS,
> > +		.domain_list = &xelpd_pwdoms_ddi_io_tc1,
> >  		.ops = &icl_ddi_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -2031,7 +2073,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
> >  		}
> >  	}, {
> >  		.name = "DDI_IO_TC2",
> > -		.domains = XELPD_DDI_IO_TC2_POWER_DOMAINS,
> > +		.domain_list = &xelpd_pwdoms_ddi_io_tc2,
> >  		.ops = &icl_ddi_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -2039,7 +2081,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
> >  		}
> >  	}, {
> >  		.name = "DDI_IO_TC3",
> > -		.domains = XELPD_DDI_IO_TC3_POWER_DOMAINS,
> > +		.domain_list = &xelpd_pwdoms_ddi_io_tc3,
> >  		.ops = &icl_ddi_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -2047,7 +2089,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
> >  		}
> >  	}, {
> >  		.name = "DDI_IO_TC4",
> > -		.domains = XELPD_DDI_IO_TC4_POWER_DOMAINS,
> > +		.domain_list = &xelpd_pwdoms_ddi_io_tc4,
> >  		.ops = &icl_ddi_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -2055,7 +2097,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
> >  		}
> >  	}, {
> >  		.name = "AUX_A",
> > -		.domains = ICL_AUX_A_IO_POWER_DOMAINS,
> > +		.domain_list = &icl_pwdoms_aux_a,
> >  		.ops = &icl_aux_power_well_ops,
> >  		.fixed_enable_delay = true,
> >  		.id = DISP_PW_ID_NONE,
> > @@ -2064,7 +2106,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "AUX_B",
> > -		.domains = ICL_AUX_B_IO_POWER_DOMAINS,
> > +		.domain_list = &icl_pwdoms_aux_b,
> >  		.ops = &icl_aux_power_well_ops,
> >  		.fixed_enable_delay = true,
> >  		.id = DISP_PW_ID_NONE,
> > @@ -2073,7 +2115,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "AUX_C",
> > -		.domains = TGL_AUX_C_IO_POWER_DOMAINS,
> > +		.domain_list = &tgl_pwdoms_aux_c,
> >  		.ops = &icl_aux_power_well_ops,
> >  		.fixed_enable_delay = true,
> >  		.id = DISP_PW_ID_NONE,
> > @@ -2082,7 +2124,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "AUX_D_XELPD",
> > -		.domains = XELPD_AUX_IO_D_XELPD_POWER_DOMAINS,
> > +		.domain_list = &xelpd_pwdoms_aux_d_xelpd,
> >  		.ops = &icl_aux_power_well_ops,
> >  		.fixed_enable_delay = true,
> >  		.id = DISP_PW_ID_NONE,
> > @@ -2091,7 +2133,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "AUX_E_XELPD",
> > -		.domains = XELPD_AUX_IO_E_XELPD_POWER_DOMAINS,
> > +		.domain_list = &xelpd_pwdoms_aux_e_xelpd,
> >  		.ops = &icl_aux_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -2099,7 +2141,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "AUX_USBC1",
> > -		.domains = XELPD_AUX_IO_USBC1_POWER_DOMAINS,
> > +		.domain_list = &xelpd_pwdoms_aux_usbc1,
> >  		.ops = &icl_aux_power_well_ops,
> >  		.fixed_enable_delay = true,
> >  		.id = DISP_PW_ID_NONE,
> > @@ -2108,7 +2150,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "AUX_USBC2",
> > -		.domains = XELPD_AUX_IO_USBC2_POWER_DOMAINS,
> > +		.domain_list = &xelpd_pwdoms_aux_usbc2,
> >  		.ops = &icl_aux_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -2116,7 +2158,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "AUX_USBC3",
> > -		.domains = XELPD_AUX_IO_USBC3_POWER_DOMAINS,
> > +		.domain_list = &xelpd_pwdoms_aux_usbc3,
> >  		.ops = &icl_aux_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -2124,7 +2166,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "AUX_USBC4",
> > -		.domains = XELPD_AUX_IO_USBC4_POWER_DOMAINS,
> > +		.domain_list = &xelpd_pwdoms_aux_usbc4,
> >  		.ops = &icl_aux_power_well_ops,
> >  		.id = DISP_PW_ID_NONE,
> >  		{
> > @@ -2132,7 +2174,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "AUX_TBT1",
> > -		.domains = XELPD_AUX_IO_TBT1_POWER_DOMAINS,
> > +		.domain_list = &xelpd_pwdoms_aux_tbt1,
> >  		.ops = &icl_aux_power_well_ops,
> >  		.is_tc_tbt = true,
> >  		.id = DISP_PW_ID_NONE,
> > @@ -2141,7 +2183,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "AUX_TBT2",
> > -		.domains = XELPD_AUX_IO_TBT2_POWER_DOMAINS,
> > +		.domain_list = &xelpd_pwdoms_aux_tbt2,
> >  		.ops = &icl_aux_power_well_ops,
> >  		.is_tc_tbt = true,
> >  		.id = DISP_PW_ID_NONE,
> > @@ -2150,7 +2192,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "AUX_TBT3",
> > -		.domains = XELPD_AUX_IO_TBT3_POWER_DOMAINS,
> > +		.domain_list = &xelpd_pwdoms_aux_tbt3,
> >  		.ops = &icl_aux_power_well_ops,
> >  		.is_tc_tbt = true,
> >  		.id = DISP_PW_ID_NONE,
> > @@ -2159,7 +2201,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
> >  		},
> >  	}, {
> >  		.name = "AUX_TBT4",
> > -		.domains = XELPD_AUX_IO_TBT4_POWER_DOMAINS,
> > +		.domain_list = &xelpd_pwdoms_aux_tbt4,
> >  		.ops = &icl_aux_power_well_ops,
> >  		.is_tc_tbt = true,
> >  		.id = DISP_PW_ID_NONE,
> > @@ -2169,6 +2211,24 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
> >  	},
> >  };
> >  
> > +static void init_power_well_domains(const struct i915_power_well_desc *desc,
> > +				    struct i915_power_well *power_well)
> > +{
> > +	int j;
> > +
> > +	if (!desc->domain_list)
> > +		return;
> > +
> > +	if (desc->domain_list->count == 0) {
> > +		power_well->domains = GENMASK_ULL(POWER_DOMAIN_NUM - 1, 0);
> > +
> > +		return;
> > +	}
> > +
> > +	for (j = 0; j < desc->domain_list->count; j++)
> > +		power_well->domains |= BIT_ULL(desc->domain_list->list[j]);
> > +}
> > +
> >  static int
> >  __set_power_wells(struct i915_power_domains *power_domains,
> >  		  const struct i915_power_well_desc *power_well_descs,
> > @@ -2199,9 +2259,13 @@ __set_power_wells(struct i915_power_domains *power_domains,
> >  		if (BIT_ULL(id) & skip_mask)
> >  			continue;
> >  
> > -		power_domains->power_wells[plt_idx++].desc =
> > +		power_domains->power_wells[plt_idx].desc =
> >  			&power_well_descs[i];
> >  
> > +		init_power_well_domains(&power_well_descs[i], &power_domains->power_wells[plt_idx]);
> > +
> > +		plt_idx++;
> > +
> >  		if (id == DISP_PW_ID_NONE)
> >  			continue;
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
