Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21E2CC5D740
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Nov 2025 14:57:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A59A10E244;
	Fri, 14 Nov 2025 13:57:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CuZWcJBe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25F6310E244;
 Fri, 14 Nov 2025 13:57:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763128674; x=1794664674;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=V6sPS267tlvXiiKLj3CPQTl+oOPz8w9R+6VNUbeY62U=;
 b=CuZWcJBeOdv03e03gOGfCXVWm9mrB9IsL8HvPoDYgyY4wJNi8Z03fTJK
 xtqW8AE5anGaHFKfDNL9BUZp/6Oql8xjZa/f/i1IpbLsUS5tisQKeCidM
 Xgn+tHV6NYE2Qzp0RiKzKz/Kw8+paSWmlgJJQVbFpzJpaSq5GmmHlHst9
 7vXu3J4vuqF4WQSehXz5SDg8fhfgoWoAmB/cRpbCaEmLgJeOzmlUpyO/L
 bgbN4yL101h2C28sXX5F4yXsUFSXkfCERCVE3ydmIox1dzXZAaGH2kMnX
 tHjRsYYk07pB2+iHId6TR37xQ9yTLyPjasSlp/If/DM8Mv6tYOcAdg3Wb Q==;
X-CSE-ConnectionGUID: ssME1EyqTCCNDmvVdJXzVQ==
X-CSE-MsgGUID: dBWCKtUPQIKYpydLTeDWsg==
X-IronPort-AV: E=McAfee;i="6800,10657,11612"; a="69091606"
X-IronPort-AV: E=Sophos;i="6.19,305,1754982000"; d="scan'208";a="69091606"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 05:57:54 -0800
X-CSE-ConnectionGUID: s26jbjw3SxGQz/iO5od6+A==
X-CSE-MsgGUID: CUD0G04eSuamVG4YeLxaHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,305,1754982000"; d="scan'208";a="190562110"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.70])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 05:57:52 -0800
Date: Fri, 14 Nov 2025 15:57:49 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 03/10] drm/{i915,xe}/display: move irq calls to parent
 interface
Message-ID: <aRc1XRbQvwrOMKD5@intel.com>
References: <cover.1763115899.git.jani.nikula@intel.com>
 <3878d539ec42835d1e61af7faaa1655cfeeaa18e.1763115899.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3878d539ec42835d1e61af7faaa1655cfeeaa18e.1763115899.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Fri, Nov 14, 2025 at 12:26:42PM +0200, Jani Nikula wrote:
> Add an irq parent driver interface for the .enabled and .synchronize
> calls. This lets us drop the dependency on i915_drv.h and i915_irq.h in
> multiple places, and subsequently remove the compat i915_irq.h and
> i915_irq.c files along with the display/ext directory from xe
> altogether.
> 
> Introduce new intel_parent.[ch] as the wrapper layer to chase the
> function pointers and convert between generic and more specific display
> types.
> 
> v2: Keep static wrappers in intel_display_irq.c (Ville)
> 
> v3: Full blown wrappers in intel_parent.[ch] (Ville)
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile                 |  1 +
>  .../gpu/drm/i915/display/intel_display_irq.c  | 37 ++++++-------------
>  .../drm/i915/display/intel_display_power.c    |  5 +--
>  .../i915/display/intel_display_power_well.c   | 15 ++------
>  drivers/gpu/drm/i915/display/intel_gmbus.c    |  6 +--
>  drivers/gpu/drm/i915/display/intel_hotplug.c  |  6 +--
>  .../gpu/drm/i915/display/intel_lpe_audio.c    |  1 -
>  drivers/gpu/drm/i915/display/intel_parent.c   | 33 +++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_parent.h   | 14 +++++++
>  drivers/gpu/drm/i915/display/intel_pipe_crc.c |  6 +--
>  drivers/gpu/drm/i915/i915_driver.c            |  1 +
>  drivers/gpu/drm/i915/i915_irq.c               | 16 ++++++++
>  drivers/gpu/drm/i915/i915_irq.h               |  2 +
>  drivers/gpu/drm/xe/Makefile                   |  5 +--
>  .../gpu/drm/xe/compat-i915-headers/i915_irq.h |  6 ---
>  drivers/gpu/drm/xe/display/ext/i915_irq.c     | 18 ---------
>  drivers/gpu/drm/xe/display/xe_display.c       | 18 +++++++++
>  include/drm/intel/display_parent_interface.h  |  8 ++++
>  18 files changed, 119 insertions(+), 79 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_parent.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_parent.h
>  delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/i915_irq.h
>  delete mode 100644 drivers/gpu/drm/xe/display/ext/i915_irq.c
> 
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 7c89e5e0a277..9a4f89c9a1cd 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -292,6 +292,7 @@ i915-y += \
>  	display/intel_modeset_verify.o \
>  	display/intel_overlay.o \
>  	display/intel_panic.o \
> +	display/intel_parent.o \
>  	display/intel_pch.o \
>  	display/intel_pch_display.o \
>  	display/intel_pch_refclk.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index 2a92ca6c2f82..d2933ac3acb4 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -6,8 +6,6 @@
>  #include <drm/drm_print.h>
>  #include <drm/drm_vblank.h>
>  
> -#include "i915_drv.h"
> -#include "i915_irq.h"
>  #include "i915_reg.h"
>  #include "icl_dsi_regs.h"
>  #include "intel_crtc.h"
> @@ -25,6 +23,7 @@
>  #include "intel_fifo_underrun.h"
>  #include "intel_gmbus.h"
>  #include "intel_hotplug_irq.h"
> +#include "intel_parent.h"
>  #include "intel_pipe_crc_regs.h"
>  #include "intel_plane.h"
>  #include "intel_pmdemand.h"
> @@ -160,7 +159,6 @@ intel_handle_vblank(struct intel_display *display, enum pipe pipe)
>  void ilk_update_display_irq(struct intel_display *display,
>  			    u32 interrupt_mask, u32 enabled_irq_mask)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  	u32 new_val;
>  
>  	lockdep_assert_held(&display->irq.lock);
> @@ -171,7 +169,7 @@ void ilk_update_display_irq(struct intel_display *display,
>  	new_val |= (~enabled_irq_mask & interrupt_mask);
>  
>  	if (new_val != display->irq.ilk_de_imr_mask &&
> -	    !drm_WARN_ON(display->drm, !intel_irqs_enabled(dev_priv))) {
> +	    !drm_WARN_ON(display->drm, !intel_parent_irq_enabled(display))) {

I think the fact that the call goes all the way out to the parent
driver is more of an implementation detail on many of these places.
I think we should be rather checking for display_irqs_enabled in
many of these places. Granted that only differs from the parent
irq state on vlv/chv, but still would be the logcally correct thing
to check.

But this stuff is already kinda borked anyway, so this isn't making
the situation any worse.
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

>  		display->irq.ilk_de_imr_mask = new_val;
>  		intel_de_write(display, DEIMR, display->irq.ilk_de_imr_mask);
>  		intel_de_posting_read(display, DEIMR);
> @@ -197,7 +195,6 @@ void ilk_disable_display_irq(struct intel_display *display, u32 bits)
>  void bdw_update_port_irq(struct intel_display *display,
>  			 u32 interrupt_mask, u32 enabled_irq_mask)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  	u32 new_val;
>  	u32 old_val;
>  
> @@ -205,7 +202,7 @@ void bdw_update_port_irq(struct intel_display *display,
>  
>  	drm_WARN_ON(display->drm, enabled_irq_mask & ~interrupt_mask);
>  
> -	if (drm_WARN_ON(display->drm, !intel_irqs_enabled(dev_priv)))
> +	if (drm_WARN_ON(display->drm, !intel_parent_irq_enabled(display)))
>  		return;
>  
>  	old_val = intel_de_read(display, GEN8_DE_PORT_IMR);
> @@ -231,14 +228,13 @@ static void bdw_update_pipe_irq(struct intel_display *display,
>  				enum pipe pipe, u32 interrupt_mask,
>  				u32 enabled_irq_mask)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  	u32 new_val;
>  
>  	lockdep_assert_held(&display->irq.lock);
>  
>  	drm_WARN_ON(display->drm, enabled_irq_mask & ~interrupt_mask);
>  
> -	if (drm_WARN_ON(display->drm, !intel_irqs_enabled(dev_priv)))
> +	if (drm_WARN_ON(display->drm, !intel_parent_irq_enabled(display)))
>  		return;
>  
>  	new_val = display->irq.de_pipe_imr_mask[pipe];
> @@ -274,7 +270,6 @@ void ibx_display_interrupt_update(struct intel_display *display,
>  				  u32 interrupt_mask,
>  				  u32 enabled_irq_mask)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  	u32 sdeimr = intel_de_read(display, SDEIMR);
>  
>  	sdeimr &= ~interrupt_mask;
> @@ -284,7 +279,7 @@ void ibx_display_interrupt_update(struct intel_display *display,
>  
>  	lockdep_assert_held(&display->irq.lock);
>  
> -	if (drm_WARN_ON(display->drm, !intel_irqs_enabled(dev_priv)))
> +	if (drm_WARN_ON(display->drm, !intel_parent_irq_enabled(display)))
>  		return;
>  
>  	intel_de_write(display, SDEIMR, sdeimr);
> @@ -348,7 +343,6 @@ u32 i915_pipestat_enable_mask(struct intel_display *display,
>  void i915_enable_pipestat(struct intel_display *display,
>  			  enum pipe pipe, u32 status_mask)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  	i915_reg_t reg = PIPESTAT(display, pipe);
>  	u32 enable_mask;
>  
> @@ -357,7 +351,7 @@ void i915_enable_pipestat(struct intel_display *display,
>  		      pipe_name(pipe), status_mask);
>  
>  	lockdep_assert_held(&display->irq.lock);
> -	drm_WARN_ON(display->drm, !intel_irqs_enabled(dev_priv));
> +	drm_WARN_ON(display->drm, !intel_parent_irq_enabled(display));
>  
>  	if ((display->irq.pipestat_irq_mask[pipe] & status_mask) == status_mask)
>  		return;
> @@ -372,7 +366,6 @@ void i915_enable_pipestat(struct intel_display *display,
>  void i915_disable_pipestat(struct intel_display *display,
>  			   enum pipe pipe, u32 status_mask)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  	i915_reg_t reg = PIPESTAT(display, pipe);
>  	u32 enable_mask;
>  
> @@ -381,7 +374,7 @@ void i915_disable_pipestat(struct intel_display *display,
>  		      pipe_name(pipe), status_mask);
>  
>  	lockdep_assert_held(&display->irq.lock);
> -	drm_WARN_ON(display->drm, !intel_irqs_enabled(dev_priv));
> +	drm_WARN_ON(display->drm, !intel_parent_irq_enabled(display));
>  
>  	if ((display->irq.pipestat_irq_mask[pipe] & status_mask) == 0)
>  		return;
> @@ -2174,14 +2167,13 @@ void gen11_display_irq_reset(struct intel_display *display)
>  void gen8_irq_power_well_post_enable(struct intel_display *display,
>  				     u8 pipe_mask)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  	u32 extra_ier = GEN8_PIPE_VBLANK | GEN8_PIPE_FIFO_UNDERRUN |
>  		gen8_de_pipe_flip_done_mask(display);
>  	enum pipe pipe;
>  
>  	spin_lock_irq(&display->irq.lock);
>  
> -	if (!intel_irqs_enabled(dev_priv)) {
> +	if (!intel_parent_irq_enabled(display)) {
>  		spin_unlock_irq(&display->irq.lock);
>  		return;
>  	}
> @@ -2197,12 +2189,11 @@ void gen8_irq_power_well_post_enable(struct intel_display *display,
>  void gen8_irq_power_well_pre_disable(struct intel_display *display,
>  				     u8 pipe_mask)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  	enum pipe pipe;
>  
>  	spin_lock_irq(&display->irq.lock);
>  
> -	if (!intel_irqs_enabled(dev_priv)) {
> +	if (!intel_parent_irq_enabled(display)) {
>  		spin_unlock_irq(&display->irq.lock);
>  		return;
>  	}
> @@ -2213,7 +2204,7 @@ void gen8_irq_power_well_pre_disable(struct intel_display *display,
>  	spin_unlock_irq(&display->irq.lock);
>  
>  	/* make sure we're done processing display irqs */
> -	intel_synchronize_irq(dev_priv);
> +	intel_parent_irq_synchronize(display);
>  }
>  
>  /*
> @@ -2246,8 +2237,6 @@ static void ibx_irq_postinstall(struct intel_display *display)
>  
>  void valleyview_enable_display_irqs(struct intel_display *display)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
> -
>  	spin_lock_irq(&display->irq.lock);
>  
>  	if (display->irq.vlv_display_irqs_enabled)
> @@ -2255,7 +2244,7 @@ void valleyview_enable_display_irqs(struct intel_display *display)
>  
>  	display->irq.vlv_display_irqs_enabled = true;
>  
> -	if (intel_irqs_enabled(dev_priv)) {
> +	if (intel_parent_irq_enabled(display)) {
>  		_vlv_display_irq_reset(display);
>  		_vlv_display_irq_postinstall(display);
>  	}
> @@ -2266,8 +2255,6 @@ void valleyview_enable_display_irqs(struct intel_display *display)
>  
>  void valleyview_disable_display_irqs(struct intel_display *display)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
> -
>  	spin_lock_irq(&display->irq.lock);
>  
>  	if (!display->irq.vlv_display_irqs_enabled)
> @@ -2275,7 +2262,7 @@ void valleyview_disable_display_irqs(struct intel_display *display)
>  
>  	display->irq.vlv_display_irqs_enabled = false;
>  
> -	if (intel_irqs_enabled(dev_priv))
> +	if (intel_parent_irq_enabled(display))
>  		_vlv_display_irq_reset(display);
>  out:
>  	spin_unlock_irq(&display->irq.lock);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 2a4cc1dcc293..a383ef23391d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -11,7 +11,6 @@
>  #include "soc/intel_dram.h"
>  
>  #include "i915_drv.h"
> -#include "i915_irq.h"
>  #include "i915_reg.h"
>  #include "intel_backlight_regs.h"
>  #include "intel_cdclk.h"
> @@ -27,6 +26,7 @@
>  #include "intel_display_utils.h"
>  #include "intel_dmc.h"
>  #include "intel_mchbar_regs.h"
> +#include "intel_parent.h"
>  #include "intel_pch_refclk.h"
>  #include "intel_pcode.h"
>  #include "intel_pmdemand.h"
> @@ -1202,7 +1202,6 @@ static void hsw_assert_cdclk(struct intel_display *display)
>  
>  static void assert_can_disable_lcpll(struct intel_display *display)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  	struct intel_crtc *crtc;
>  
>  	for_each_intel_crtc(display->drm, crtc)
> @@ -1247,7 +1246,7 @@ static void assert_can_disable_lcpll(struct intel_display *display)
>  	 * gen-specific and since we only disable LCPLL after we fully disable
>  	 * the interrupts, the check below should be enough.
>  	 */
> -	INTEL_DISPLAY_STATE_WARN(display, intel_irqs_enabled(dev_priv),
> +	INTEL_DISPLAY_STATE_WARN(display, intel_parent_irq_enabled(display),
>  				 "IRQs enabled\n");
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index f4f7e73acc87..719f58e43269 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -7,8 +7,6 @@
>  
>  #include <drm/drm_print.h>
>  
> -#include "i915_drv.h"
> -#include "i915_irq.h"
>  #include "i915_reg.h"
>  #include "intel_backlight_regs.h"
>  #include "intel_combo_phy.h"
> @@ -28,6 +26,7 @@
>  #include "intel_dpio_phy.h"
>  #include "intel_dpll.h"
>  #include "intel_hotplug.h"
> +#include "intel_parent.h"
>  #include "intel_pcode.h"
>  #include "intel_pps.h"
>  #include "intel_psr.h"
> @@ -628,8 +627,6 @@ static bool hsw_power_well_enabled(struct intel_display *display,
>  
>  static void assert_can_enable_dc9(struct intel_display *display)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
> -
>  	drm_WARN_ONCE(display->drm,
>  		      (intel_de_read(display, DC_STATE_EN) & DC_STATE_EN_DC9),
>  		      "DC9 already programmed to be enabled.\n");
> @@ -641,7 +638,7 @@ static void assert_can_enable_dc9(struct intel_display *display)
>  		      intel_de_read(display, HSW_PWR_WELL_CTL2) &
>  		      HSW_PWR_WELL_CTL_REQ(SKL_PW_CTL_IDX_PW_2),
>  		      "Power well 2 on.\n");
> -	drm_WARN_ONCE(display->drm, intel_irqs_enabled(dev_priv),
> +	drm_WARN_ONCE(display->drm, intel_parent_irq_enabled(display),
>  		      "Interrupts not disabled yet.\n");
>  
>  	 /*
> @@ -655,9 +652,7 @@ static void assert_can_enable_dc9(struct intel_display *display)
>  
>  static void assert_can_disable_dc9(struct intel_display *display)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
> -
> -	drm_WARN_ONCE(display->drm, intel_irqs_enabled(dev_priv),
> +	drm_WARN_ONCE(display->drm, intel_parent_irq_enabled(display),
>  		      "Interrupts not disabled yet.\n");
>  	drm_WARN_ONCE(display->drm,
>  		      intel_de_read(display, DC_STATE_EN) &
> @@ -1281,12 +1276,10 @@ static void vlv_display_power_well_init(struct intel_display *display)
>  
>  static void vlv_display_power_well_deinit(struct intel_display *display)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
> -
>  	valleyview_disable_display_irqs(display);
>  
>  	/* make sure we're done processing display irqs */
> -	intel_synchronize_irq(dev_priv);
> +	intel_parent_irq_synchronize(display);
>  
>  	vlv_pps_reset_all(display);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
> index 795012d7c24c..acc85853b2a7 100644
> --- a/drivers/gpu/drm/i915/display/intel_gmbus.c
> +++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
> @@ -35,8 +35,6 @@
>  #include <drm/drm_print.h>
>  #include <drm/display/drm_hdcp_helper.h>
>  
> -#include "i915_drv.h"
> -#include "i915_irq.h"
>  #include "i915_reg.h"
>  #include "intel_de.h"
>  #include "intel_display_regs.h"
> @@ -44,6 +42,7 @@
>  #include "intel_display_wa.h"
>  #include "intel_gmbus.h"
>  #include "intel_gmbus_regs.h"
> +#include "intel_parent.h"
>  
>  struct intel_gmbus {
>  	struct i2c_adapter adapter;
> @@ -391,12 +390,11 @@ intel_gpio_setup(struct intel_gmbus *bus, i915_reg_t gpio_reg)
>  
>  static bool has_gmbus_irq(struct intel_display *display)
>  {
> -	struct drm_i915_private *i915 = to_i915(display->drm);
>  	/*
>  	 * encoder->shutdown() may want to use GMBUS
>  	 * after irqs have already been disabled.
>  	 */
> -	return HAS_GMBUS_IRQ(display) && intel_irqs_enabled(i915);
> +	return HAS_GMBUS_IRQ(display) && intel_parent_irq_enabled(display);
>  }
>  
>  static int gmbus_wait(struct intel_display *display, u32 status, u32 irq_en)
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
> index 235706229ffb..7575a063f7be 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
> @@ -27,8 +27,6 @@
>  #include <drm/drm_print.h>
>  #include <drm/drm_probe_helper.h>
>  
> -#include "i915_drv.h"
> -#include "i915_irq.h"
>  #include "intel_connector.h"
>  #include "intel_display_core.h"
>  #include "intel_display_power.h"
> @@ -39,6 +37,7 @@
>  #include "intel_hdcp.h"
>  #include "intel_hotplug.h"
>  #include "intel_hotplug_irq.h"
> +#include "intel_parent.h"
>  
>  /**
>   * DOC: Hotplug
> @@ -1177,13 +1176,12 @@ bool intel_hpd_schedule_detection(struct intel_display *display)
>  static int i915_hpd_storm_ctl_show(struct seq_file *m, void *data)
>  {
>  	struct intel_display *display = m->private;
> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  	struct intel_hotplug *hotplug = &display->hotplug;
>  
>  	/* Synchronize with everything first in case there's been an HPD
>  	 * storm, but we haven't finished handling it in the kernel yet
>  	 */
> -	intel_synchronize_irq(dev_priv);
> +	intel_parent_irq_synchronize(display);
>  	flush_work(&display->hotplug.dig_port_work);
>  	flush_delayed_work(&display->hotplug.hotplug_work);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_lpe_audio.c b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
> index 42284e9928f2..5b41abe1c64d 100644
> --- a/drivers/gpu/drm/i915/display/intel_lpe_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
> @@ -71,7 +71,6 @@
>  #include <drm/drm_print.h>
>  #include <drm/intel/intel_lpe_audio.h>
>  
> -#include "i915_irq.h"
>  #include "intel_audio_regs.h"
>  #include "intel_de.h"
>  #include "intel_lpe_audio.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_parent.c b/drivers/gpu/drm/i915/display/intel_parent.c
> new file mode 100644
> index 000000000000..375713f6f411
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_parent.c
> @@ -0,0 +1,33 @@
> +// SPDX-License-Identifier: MIT
> +/* Copyright © 2025 Intel Corporation */
> +
> +/*
> + * Convenience wrapper functions to call the parent interface functions:
> + *
> + * - display->parent->SUBSTRUCT->FUNCTION()
> + * - display->parent->FUNCTION()
> + *
> + * All functions here should be named accordingly:
> + *
> + * - intel_parent_SUBSTRUCT_FUNCTION()
> + * - intel_parent_FUNCTION()
> + *
> + * These functions may use display driver specific types for parameters and
> + * return values, translating them to and from the generic types used in the
> + * function pointer interface.
> + */
> +
> +#include <drm/intel/display_parent_interface.h>
> +
> +#include "intel_display_core.h"
> +#include "intel_parent.h"
> +
> +bool intel_parent_irq_enabled(struct intel_display *display)
> +{
> +	return display->parent->irq->enabled(display->drm);
> +}
> +
> +void intel_parent_irq_synchronize(struct intel_display *display)
> +{
> +	display->parent->irq->synchronize(display->drm);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_parent.h b/drivers/gpu/drm/i915/display/intel_parent.h
> new file mode 100644
> index 000000000000..3ade493f1008
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_parent.h
> @@ -0,0 +1,14 @@
> +/* SPDX-License-Identifier: MIT */
> +/* Copyright © 2025 Intel Corporation */
> +
> +#ifndef __INTEL_PARENT_H__
> +#define __INTEL_PARENT_H__
> +
> +#include <linux/types.h>
> +
> +struct intel_display;
> +
> +bool intel_parent_irq_enabled(struct intel_display *display);
> +void intel_parent_irq_synchronize(struct intel_display *display);
> +
> +#endif /* __INTEL_PARENT_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_pipe_crc.c b/drivers/gpu/drm/i915/display/intel_pipe_crc.c
> index 1f27643412f1..71cb0178c8b1 100644
> --- a/drivers/gpu/drm/i915/display/intel_pipe_crc.c
> +++ b/drivers/gpu/drm/i915/display/intel_pipe_crc.c
> @@ -30,13 +30,12 @@
>  
>  #include <drm/drm_print.h>
>  
> -#include "i915_drv.h"
> -#include "i915_irq.h"
>  #include "intel_atomic.h"
>  #include "intel_de.h"
>  #include "intel_display_irq.h"
>  #include "intel_display_regs.h"
>  #include "intel_display_types.h"
> +#include "intel_parent.h"
>  #include "intel_pipe_crc.h"
>  #include "intel_pipe_crc_regs.h"
>  
> @@ -658,7 +657,6 @@ void intel_crtc_enable_pipe_crc(struct intel_crtc *crtc)
>  void intel_crtc_disable_pipe_crc(struct intel_crtc *crtc)
>  {
>  	struct intel_display *display = to_intel_display(crtc);
> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  	struct intel_pipe_crc *pipe_crc = &crtc->pipe_crc;
>  	enum pipe pipe = crtc->pipe;
>  
> @@ -669,5 +667,5 @@ void intel_crtc_disable_pipe_crc(struct intel_crtc *crtc)
>  
>  	intel_de_write(display, PIPE_CRC_CTL(display, pipe), 0);
>  	intel_de_posting_read(display, PIPE_CRC_CTL(display, pipe));
> -	intel_synchronize_irq(dev_priv);
> +	intel_parent_irq_synchronize(display);
>  }
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index c97b76771917..07715aef62d3 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -741,6 +741,7 @@ static void i915_welcome_messages(struct drm_i915_private *dev_priv)
>  
>  static const struct intel_display_parent_interface parent = {
>  	.rpm = &i915_display_rpm_interface,
> +	.irq = &i915_display_irq_interface,
>  };
>  
>  const struct intel_display_parent_interface *i915_driver_parent_interface(void)
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index 1898be4ddc8b..3fe978d4ea53 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -33,6 +33,7 @@
>  
>  #include <drm/drm_drv.h>
>  #include <drm/drm_print.h>
> +#include <drm/intel/display_parent_interface.h>
>  
>  #include "display/intel_display_irq.h"
>  #include "display/intel_hotplug.h"
> @@ -1252,3 +1253,18 @@ void intel_synchronize_hardirq(struct drm_i915_private *i915)
>  {
>  	synchronize_hardirq(to_pci_dev(i915->drm.dev)->irq);
>  }
> +
> +static bool _intel_irq_enabled(struct drm_device *drm)
> +{
> +	return intel_irqs_enabled(to_i915(drm));
> +}
> +
> +static void _intel_irq_synchronize(struct drm_device *drm)
> +{
> +	return intel_synchronize_irq(to_i915(drm));
> +}
> +
> +const struct intel_display_irq_interface i915_display_irq_interface = {
> +	.enabled = _intel_irq_enabled,
> +	.synchronize = _intel_irq_synchronize,
> +};
> diff --git a/drivers/gpu/drm/i915/i915_irq.h b/drivers/gpu/drm/i915/i915_irq.h
> index 58789b264575..5c87d6d41c74 100644
> --- a/drivers/gpu/drm/i915/i915_irq.h
> +++ b/drivers/gpu/drm/i915/i915_irq.h
> @@ -51,4 +51,6 @@ void gen2_error_reset(struct intel_uncore *uncore, struct i915_error_regs regs);
>  void gen2_error_init(struct intel_uncore *uncore, struct i915_error_regs regs,
>  		     u32 emr_val);
>  
> +extern const struct intel_display_irq_interface i915_display_irq_interface;
> +
>  #endif /* __I915_IRQ_H__ */
> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> index e4b273b025d2..c2d2303a8198 100644
> --- a/drivers/gpu/drm/xe/Makefile
> +++ b/drivers/gpu/drm/xe/Makefile
> @@ -191,7 +191,6 @@ endif
>  
>  # i915 Display compat #defines and #includes
>  subdir-ccflags-$(CONFIG_DRM_XE_DISPLAY) += \
> -	-I$(src)/display/ext \
>  	-I$(src)/compat-i915-headers \
>  	-I$(srctree)/drivers/gpu/drm/i915/display/ \
>  	-Ddrm_i915_private=xe_device
> @@ -208,7 +207,6 @@ $(obj)/i915-display/%.o: $(srctree)/drivers/gpu/drm/i915/display/%.c FORCE
>  
>  # Display code specific to xe
>  xe-$(CONFIG_DRM_XE_DISPLAY) += \
> -	display/ext/i915_irq.o \
>  	display/intel_bo.o \
>  	display/intel_fb_bo.o \
>  	display/intel_fbdev_fb.o \
> @@ -304,10 +302,11 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
>  	i915-display/intel_modeset_setup.o \
>  	i915-display/intel_modeset_verify.o \
>  	i915-display/intel_panel.o \
> +	i915-display/intel_parent.o \
> +	i915-display/intel_pch.o \
>  	i915-display/intel_pfit.o \
>  	i915-display/intel_plane.o \
>  	i915-display/intel_pmdemand.o \
> -	i915-display/intel_pch.o \
>  	i915-display/intel_pps.o \
>  	i915-display/intel_psr.o \
>  	i915-display/intel_qp_tables.o \
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_irq.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_irq.h
> deleted file mode 100644
> index 61707a07f91f..000000000000
> --- a/drivers/gpu/drm/xe/compat-i915-headers/i915_irq.h
> +++ /dev/null
> @@ -1,6 +0,0 @@
> -/* SPDX-License-Identifier: MIT */
> -/*
> - * Copyright © 2023 Intel Corporation
> - */
> -
> -#include "../../i915/i915_irq.h"
> diff --git a/drivers/gpu/drm/xe/display/ext/i915_irq.c b/drivers/gpu/drm/xe/display/ext/i915_irq.c
> deleted file mode 100644
> index 1011c1c754d0..000000000000
> --- a/drivers/gpu/drm/xe/display/ext/i915_irq.c
> +++ /dev/null
> @@ -1,18 +0,0 @@
> -// SPDX-License-Identifier: MIT
> -/*
> - * Copyright © 2023 Intel Corporation
> - */
> -
> -#include "i915_irq.h"
> -#include "i915_reg.h"
> -#include "intel_uncore.h"
> -
> -bool intel_irqs_enabled(struct xe_device *xe)
> -{
> -	return atomic_read(&xe->irq.enabled);
> -}
> -
> -void intel_synchronize_irq(struct xe_device *xe)
> -{
> -	synchronize_irq(to_pci_dev(xe->drm.dev)->irq);
> -}
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> index 8b0afa270216..e3320d9e6314 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -516,8 +516,26 @@ static void display_device_remove(struct drm_device *dev, void *arg)
>  	intel_display_device_remove(display);
>  }
>  
> +static bool irq_enabled(struct drm_device *drm)
> +{
> +	struct xe_device *xe = to_xe_device(drm);
> +
> +	return atomic_read(&xe->irq.enabled);
> +}
> +
> +static void irq_synchronize(struct drm_device *drm)
> +{
> +	synchronize_irq(to_pci_dev(drm->dev)->irq);
> +}
> +
> +static const struct intel_display_irq_interface xe_display_irq_interface = {
> +	.enabled = irq_enabled,
> +	.synchronize = irq_synchronize,
> +};
> +
>  static const struct intel_display_parent_interface parent = {
>  	.rpm = &xe_display_rpm_interface,
> +	.irq = &xe_display_irq_interface,
>  };
>  
>  /**
> diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/intel/display_parent_interface.h
> index 26bedc360044..3a008a18eb65 100644
> --- a/include/drm/intel/display_parent_interface.h
> +++ b/include/drm/intel/display_parent_interface.h
> @@ -25,6 +25,11 @@ struct intel_display_rpm_interface {
>  	void (*assert_unblock)(const struct drm_device *drm);
>  };
>  
> +struct intel_display_irq_interface {
> +	bool (*enabled)(struct drm_device *drm);
> +	void (*synchronize)(struct drm_device *drm);
> +};
> +
>  /**
>   * struct intel_display_parent_interface - services parent driver provides to display
>   *
> @@ -40,6 +45,9 @@ struct intel_display_rpm_interface {
>  struct intel_display_parent_interface {
>  	/** @rpm: Runtime PM functions */
>  	const struct intel_display_rpm_interface *rpm;
> +
> +	/** @irq: IRQ interface */
> +	const struct intel_display_irq_interface *irq;
>  };
>  
>  #endif
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
