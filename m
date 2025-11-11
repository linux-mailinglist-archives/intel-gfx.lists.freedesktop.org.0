Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3F78C4EDAC
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Nov 2025 16:50:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4350910E343;
	Tue, 11 Nov 2025 15:50:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dXRxPd+a";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F7DA10E06C;
 Tue, 11 Nov 2025 15:50:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762876217; x=1794412217;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=KfoXMuVmV7vXyRW463ZxpFPTDYTAyLCzjTxgi0W9eps=;
 b=dXRxPd+agMvR0P5HN+aJyojqVDTJzNi+RpIBigu5pGZrgDC2YNcJogPM
 6YUp2nHsSPDKMAUANuOHikjkEZcGsffl1IK/3dfSfUVO2kKkAmsl7Mo5J
 DMoaRJUGu+tw+QrFa8d+UjeKgMwTsju0NTZuwvaMf5P69bkEvazhHn6nO
 DikkyXJkJN8716pC4J0/E5oE4nDRpsnuu64ZPnFHUb+1OjH803AhMV+wQ
 bh1G3+9ojIvTIdQm9OuEksqzdvi6ayUbgmSs11cRB71wZzefRwEKPKboA
 uhHAwSNvX4mTGbkxbY06lsMvitrM0ZyOdZ0gie0/XjQ6ro7iYbBDTmbck Q==;
X-CSE-ConnectionGUID: Qv5My4+nQViZ4ZzeG+jqNA==
X-CSE-MsgGUID: 3KN5ISC8T9Wfse5aBKdxEA==
X-IronPort-AV: E=McAfee;i="6800,10657,11610"; a="64974887"
X-IronPort-AV: E=Sophos;i="6.19,296,1754982000"; d="scan'208";a="64974887"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 07:50:17 -0800
X-CSE-ConnectionGUID: oy6cyFVzQEq/FbS20h2JZQ==
X-CSE-MsgGUID: oH2d2xvOSge5pBKRU5Greg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,296,1754982000"; d="scan'208";a="188837951"
Received: from bjrankin-mobl3.amr.corp.intel.com (HELO localhost)
 ([10.124.223.47])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 07:50:15 -0800
Date: Tue, 11 Nov 2025 17:50:12 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 3/3] drm/{i915,xe}/display: move irq calls to parent
 interface
Message-ID: <aRNbNOb-bJsg4k35@intel.com>
References: <cover.1762846363.git.jani.nikula@intel.com>
 <d0b480c27105b1013153212aafcb06bdf81a8757.1762846363.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <d0b480c27105b1013153212aafcb06bdf81a8757.1762846363.git.jani.nikula@intel.com>
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

On Tue, Nov 11, 2025 at 09:34:04AM +0200, Jani Nikula wrote:
> Add an irq parent driver interface for the .enabled and .synchronize
> calls. This lets us drop the dependency on i915_drv.h and i915_irq.h in
> multiple places, and subsequently remove the compat i915_irq.h and
> i915_irq.c files along with the display/ext directory from xe
> altogether.
> 
> Use intel_irqs_enabled() and intel_synchronize_irq() static wrappers for
> parent interface calls in intel_display_irq.c while chasing the function
> pointers everywhere else. It's still a bit uncertain if we should
> universally have wrappers for the parent interface calls or not.

Why would we want those ugly pointer chains anywhere (except perhaps
for single use cases)?

> 
> v2: Keep static wrappers in intel_display_irq.c (Ville)
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_irq.c  | 47 +++++++++----------
>  .../drm/i915/display/intel_display_power.c    |  5 +-
>  .../i915/display/intel_display_power_well.c   | 15 ++----
>  drivers/gpu/drm/i915/display/intel_gmbus.c    |  9 ++--
>  drivers/gpu/drm/i915/display/intel_hotplug.c  |  6 +--
>  .../gpu/drm/i915/display/intel_lpe_audio.c    |  1 -
>  drivers/gpu/drm/i915/display/intel_pipe_crc.c |  6 +--
>  drivers/gpu/drm/i915/i915_driver.c            |  1 +
>  drivers/gpu/drm/i915/i915_irq.c               | 16 +++++++
>  drivers/gpu/drm/i915/i915_irq.h               |  2 +
>  drivers/gpu/drm/xe/Makefile                   |  2 -
>  .../gpu/drm/xe/compat-i915-headers/i915_irq.h |  6 ---
>  drivers/gpu/drm/xe/display/ext/i915_irq.c     | 18 -------
>  drivers/gpu/drm/xe/display/xe_display.c       | 18 +++++++
>  include/drm/intel/display_parent_interface.h  |  8 ++++
>  15 files changed, 81 insertions(+), 79 deletions(-)
>  delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/i915_irq.h
>  delete mode 100644 drivers/gpu/drm/xe/display/ext/i915_irq.c
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index 2a92ca6c2f82..c6b1683a367b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -5,9 +5,8 @@
>  
>  #include <drm/drm_print.h>
>  #include <drm/drm_vblank.h>
> +#include <drm/intel/display_parent_interface.h>
>  
> -#include "i915_drv.h"
> -#include "i915_irq.h"
>  #include "i915_reg.h"
>  #include "icl_dsi_regs.h"
>  #include "intel_crtc.h"
> @@ -31,6 +30,16 @@
>  #include "intel_psr.h"
>  #include "intel_psr_regs.h"
>  
> +static bool intel_irqs_enabled(struct intel_display *display)
> +{
> +	return display->parent->irq->enabled(display->drm);
> +}
> +
> +static void intel_synchronize_irq(struct intel_display *display)
> +{
> +	display->parent->irq->synchronize(display->drm);
> +}
> +
>  static void irq_reset(struct intel_display *display, struct i915_irq_regs regs)
>  {
>  	intel_de_write(display, regs.imr, 0xffffffff);
> @@ -160,7 +169,6 @@ intel_handle_vblank(struct intel_display *display, enum pipe pipe)
>  void ilk_update_display_irq(struct intel_display *display,
>  			    u32 interrupt_mask, u32 enabled_irq_mask)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  	u32 new_val;
>  
>  	lockdep_assert_held(&display->irq.lock);
> @@ -171,7 +179,7 @@ void ilk_update_display_irq(struct intel_display *display,
>  	new_val |= (~enabled_irq_mask & interrupt_mask);
>  
>  	if (new_val != display->irq.ilk_de_imr_mask &&
> -	    !drm_WARN_ON(display->drm, !intel_irqs_enabled(dev_priv))) {
> +	    !drm_WARN_ON(display->drm, !intel_irqs_enabled(display))) {
>  		display->irq.ilk_de_imr_mask = new_val;
>  		intel_de_write(display, DEIMR, display->irq.ilk_de_imr_mask);
>  		intel_de_posting_read(display, DEIMR);
> @@ -197,7 +205,6 @@ void ilk_disable_display_irq(struct intel_display *display, u32 bits)
>  void bdw_update_port_irq(struct intel_display *display,
>  			 u32 interrupt_mask, u32 enabled_irq_mask)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  	u32 new_val;
>  	u32 old_val;
>  
> @@ -205,7 +212,7 @@ void bdw_update_port_irq(struct intel_display *display,
>  
>  	drm_WARN_ON(display->drm, enabled_irq_mask & ~interrupt_mask);
>  
> -	if (drm_WARN_ON(display->drm, !intel_irqs_enabled(dev_priv)))
> +	if (drm_WARN_ON(display->drm, !intel_irqs_enabled(display)))
>  		return;
>  
>  	old_val = intel_de_read(display, GEN8_DE_PORT_IMR);
> @@ -231,14 +238,13 @@ static void bdw_update_pipe_irq(struct intel_display *display,
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
> +	if (drm_WARN_ON(display->drm, !intel_irqs_enabled(display)))
>  		return;
>  
>  	new_val = display->irq.de_pipe_imr_mask[pipe];
> @@ -274,7 +280,6 @@ void ibx_display_interrupt_update(struct intel_display *display,
>  				  u32 interrupt_mask,
>  				  u32 enabled_irq_mask)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  	u32 sdeimr = intel_de_read(display, SDEIMR);
>  
>  	sdeimr &= ~interrupt_mask;
> @@ -284,7 +289,7 @@ void ibx_display_interrupt_update(struct intel_display *display,
>  
>  	lockdep_assert_held(&display->irq.lock);
>  
> -	if (drm_WARN_ON(display->drm, !intel_irqs_enabled(dev_priv)))
> +	if (drm_WARN_ON(display->drm, !intel_irqs_enabled(display)))
>  		return;
>  
>  	intel_de_write(display, SDEIMR, sdeimr);
> @@ -348,7 +353,6 @@ u32 i915_pipestat_enable_mask(struct intel_display *display,
>  void i915_enable_pipestat(struct intel_display *display,
>  			  enum pipe pipe, u32 status_mask)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  	i915_reg_t reg = PIPESTAT(display, pipe);
>  	u32 enable_mask;
>  
> @@ -357,7 +361,7 @@ void i915_enable_pipestat(struct intel_display *display,
>  		      pipe_name(pipe), status_mask);
>  
>  	lockdep_assert_held(&display->irq.lock);
> -	drm_WARN_ON(display->drm, !intel_irqs_enabled(dev_priv));
> +	drm_WARN_ON(display->drm, !intel_irqs_enabled(display));
>  
>  	if ((display->irq.pipestat_irq_mask[pipe] & status_mask) == status_mask)
>  		return;
> @@ -372,7 +376,6 @@ void i915_enable_pipestat(struct intel_display *display,
>  void i915_disable_pipestat(struct intel_display *display,
>  			   enum pipe pipe, u32 status_mask)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  	i915_reg_t reg = PIPESTAT(display, pipe);
>  	u32 enable_mask;
>  
> @@ -381,7 +384,7 @@ void i915_disable_pipestat(struct intel_display *display,
>  		      pipe_name(pipe), status_mask);
>  
>  	lockdep_assert_held(&display->irq.lock);
> -	drm_WARN_ON(display->drm, !intel_irqs_enabled(dev_priv));
> +	drm_WARN_ON(display->drm, !intel_irqs_enabled(display));
>  
>  	if ((display->irq.pipestat_irq_mask[pipe] & status_mask) == 0)
>  		return;
> @@ -2174,14 +2177,13 @@ void gen11_display_irq_reset(struct intel_display *display)
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
> +	if (!intel_irqs_enabled(display)) {
>  		spin_unlock_irq(&display->irq.lock);
>  		return;
>  	}
> @@ -2197,12 +2199,11 @@ void gen8_irq_power_well_post_enable(struct intel_display *display,
>  void gen8_irq_power_well_pre_disable(struct intel_display *display,
>  				     u8 pipe_mask)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  	enum pipe pipe;
>  
>  	spin_lock_irq(&display->irq.lock);
>  
> -	if (!intel_irqs_enabled(dev_priv)) {
> +	if (!intel_irqs_enabled(display)) {
>  		spin_unlock_irq(&display->irq.lock);
>  		return;
>  	}
> @@ -2213,7 +2214,7 @@ void gen8_irq_power_well_pre_disable(struct intel_display *display,
>  	spin_unlock_irq(&display->irq.lock);
>  
>  	/* make sure we're done processing display irqs */
> -	intel_synchronize_irq(dev_priv);
> +	intel_synchronize_irq(display);
>  }
>  
>  /*
> @@ -2246,8 +2247,6 @@ static void ibx_irq_postinstall(struct intel_display *display)
>  
>  void valleyview_enable_display_irqs(struct intel_display *display)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
> -
>  	spin_lock_irq(&display->irq.lock);
>  
>  	if (display->irq.vlv_display_irqs_enabled)
> @@ -2255,7 +2254,7 @@ void valleyview_enable_display_irqs(struct intel_display *display)
>  
>  	display->irq.vlv_display_irqs_enabled = true;
>  
> -	if (intel_irqs_enabled(dev_priv)) {
> +	if (intel_irqs_enabled(display)) {
>  		_vlv_display_irq_reset(display);
>  		_vlv_display_irq_postinstall(display);
>  	}
> @@ -2266,8 +2265,6 @@ void valleyview_enable_display_irqs(struct intel_display *display)
>  
>  void valleyview_disable_display_irqs(struct intel_display *display)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
> -
>  	spin_lock_irq(&display->irq.lock);
>  
>  	if (!display->irq.vlv_display_irqs_enabled)
> @@ -2275,7 +2272,7 @@ void valleyview_disable_display_irqs(struct intel_display *display)
>  
>  	display->irq.vlv_display_irqs_enabled = false;
>  
> -	if (intel_irqs_enabled(dev_priv))
> +	if (intel_irqs_enabled(display))
>  		_vlv_display_irq_reset(display);
>  out:
>  	spin_unlock_irq(&display->irq.lock);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 74fcd9cfe911..7c857291ad4c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -7,11 +7,11 @@
>  #include <linux/string_helpers.h>
>  
>  #include <drm/drm_print.h>
> +#include <drm/intel/display_parent_interface.h>
>  
>  #include "soc/intel_dram.h"
>  
>  #include "i915_drv.h"
> -#include "i915_irq.h"
>  #include "i915_reg.h"
>  #include "intel_backlight_regs.h"
>  #include "intel_cdclk.h"
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
> +	INTEL_DISPLAY_STATE_WARN(display, display->parent->irq->enabled(display->drm),
>  				 "IRQs enabled\n");
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index eab7019f2252..5ae064bc536a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -6,9 +6,8 @@
>  #include <linux/iopoll.h>
>  
>  #include <drm/drm_print.h>
> +#include <drm/intel/display_parent_interface.h>
>  
> -#include "i915_drv.h"
> -#include "i915_irq.h"
>  #include "i915_reg.h"
>  #include "intel_backlight_regs.h"
>  #include "intel_combo_phy.h"
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
> +	drm_WARN_ONCE(display->drm, display->parent->irq->enabled(display->drm),
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
> +	drm_WARN_ONCE(display->drm, display->parent->irq->enabled(display->drm),
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
> +	display->parent->irq->synchronize(display->drm);
>  
>  	vlv_pps_reset_all(display);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
> index 82f3a40ecac7..98834cf622d2 100644
> --- a/drivers/gpu/drm/i915/display/intel_gmbus.c
> +++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
> @@ -32,11 +32,11 @@
>  #include <linux/i2c.h>
>  #include <linux/iopoll.h>
>  
> -#include <drm/drm_print.h>
>  #include <drm/display/drm_hdcp_helper.h>
> +#include <drm/drm_print.h>
> +#include <drm/drm_print.h>
> +#include <drm/intel/display_parent_interface.h>
>  
> -#include "i915_drv.h"
> -#include "i915_irq.h"
>  #include "i915_reg.h"
>  #include "intel_de.h"
>  #include "intel_display_regs.h"
> @@ -391,12 +391,11 @@ intel_gpio_setup(struct intel_gmbus *bus, i915_reg_t gpio_reg)
>  
>  static bool has_gmbus_irq(struct intel_display *display)
>  {
> -	struct drm_i915_private *i915 = to_i915(display->drm);
>  	/*
>  	 * encoder->shutdown() may want to use GMBUS
>  	 * after irqs have already been disabled.
>  	 */
> -	return HAS_GMBUS_IRQ(display) && intel_irqs_enabled(i915);
> +	return HAS_GMBUS_IRQ(display) && display->parent->irq->enabled(display->drm);
>  }
>  
>  static int gmbus_wait(struct intel_display *display, u32 status, u32 irq_en)
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
> index 235706229ffb..a4254d4e9a4a 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
> @@ -26,9 +26,8 @@
>  
>  #include <drm/drm_print.h>
>  #include <drm/drm_probe_helper.h>
> +#include <drm/intel/display_parent_interface.h>
>  
> -#include "i915_drv.h"
> -#include "i915_irq.h"
>  #include "intel_connector.h"
>  #include "intel_display_core.h"
>  #include "intel_display_power.h"
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
> +	display->parent->irq->synchronize(display->drm);
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
> diff --git a/drivers/gpu/drm/i915/display/intel_pipe_crc.c b/drivers/gpu/drm/i915/display/intel_pipe_crc.c
> index 1f27643412f1..b782f894cce8 100644
> --- a/drivers/gpu/drm/i915/display/intel_pipe_crc.c
> +++ b/drivers/gpu/drm/i915/display/intel_pipe_crc.c
> @@ -29,9 +29,8 @@
>  #include <linux/seq_file.h>
>  
>  #include <drm/drm_print.h>
> +#include <drm/intel/display_parent_interface.h>
>  
> -#include "i915_drv.h"
> -#include "i915_irq.h"
>  #include "intel_atomic.h"
>  #include "intel_de.h"
>  #include "intel_display_irq.h"
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
> +	display->parent->irq->synchronize(display->drm);
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
> index 7b4ca591a4ae..3bf64fdcf93a 100644
> --- a/drivers/gpu/drm/xe/Makefile
> +++ b/drivers/gpu/drm/xe/Makefile
> @@ -189,7 +189,6 @@ endif
>  
>  # i915 Display compat #defines and #includes
>  subdir-ccflags-$(CONFIG_DRM_XE_DISPLAY) += \
> -	-I$(src)/display/ext \
>  	-I$(src)/compat-i915-headers \
>  	-I$(srctree)/drivers/gpu/drm/i915/display/ \
>  	-Ddrm_i915_private=xe_device
> @@ -206,7 +205,6 @@ $(obj)/i915-display/%.o: $(srctree)/drivers/gpu/drm/i915/display/%.c FORCE
>  
>  # Display code specific to xe
>  xe-$(CONFIG_DRM_XE_DISPLAY) += \
> -	display/ext/i915_irq.o \
>  	display/intel_bo.o \
>  	display/intel_fb_bo.o \
>  	display/intel_fbdev_fb.o \
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
