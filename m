Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F81B36684C
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Apr 2021 11:43:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1EFB6E432;
	Wed, 21 Apr 2021 09:43:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D4AC89B68
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Apr 2021 09:43:04 +0000 (UTC)
IronPort-SDR: o55mqhBlkqPfrrKu1q0x8wi6TaiRcu/vW5mx4+i3v2WbBhmUlsrT4ZBFQVSPLekUKJUT0nH0bz
 RyHHf0yJPWpQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9960"; a="256984918"
X-IronPort-AV: E=Sophos;i="5.82,238,1613462400"; d="scan'208";a="256984918"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2021 02:43:04 -0700
IronPort-SDR: LJ3QD202mG1zvBDFhikKDGYGLq9MquduhClDQMRdVxPSKS5STjZR5jRwO9y0ee3wzrQTy2wC4J
 pjToa1K02izQ==
X-IronPort-AV: E=Sophos;i="5.82,238,1613462400"; d="scan'208";a="427453272"
Received: from uchalilx-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.36.64])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2021 02:43:01 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lee Shawn C <shawn.c.lee@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20210419151718.22979-1-shawn.c.lee@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210419151718.22979-1-shawn.c.lee@intel.com>
Date: Wed, 21 Apr 2021 12:42:55 +0300
Message-ID: <875z0g9dnk.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: set min brightness for aux
 backlight interface.
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
Cc: Cooper Chiou <cooper.chiou@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 19 Apr 2021, Lee Shawn C <shawn.c.lee@intel.com> wrote:
> Min brightness level for aux backlight interface is always zero.
> Driver should refer to VBT's setting to configure proper minimum
> level just like PWM backlight interface.

Unfortunately this change makes it harder for Lyude to extract the dpcd
backlight code from i915 to drm helpers, and I think the min brightness
should be handled after or in connection with that change.

BR,
Jani.


>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Cc: Lyude Paul <lyude@redhat.com>
> Cc: Cooper Chiou <cooper.chiou@intel.com>
>
> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 2 +-
>  drivers/gpu/drm/i915/display/intel_panel.c            | 2 +-
>  drivers/gpu/drm/i915/display/intel_panel.h            | 1 +
>  3 files changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> index 4f8337c7fd2e..efd8fa155105 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> @@ -571,7 +571,7 @@ static int intel_dp_aux_vesa_setup_backlight(struct intel_connector *connector,
>  	if (!panel->backlight.max)
>  		return -ENODEV;
>  
> -	panel->backlight.min = 0;
> +	panel->backlight.min = get_backlight_min_vbt(connector);
>  	panel->backlight.level = intel_dp_aux_vesa_get_backlight(connector, pipe);
>  	panel->backlight.enabled = intel_dp_aux_vesa_backlight_dpcd_mode(connector) &&
>  				   panel->backlight.level != 0;
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
> index 551fcaa77c2c..6d58ec192a04 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -1614,7 +1614,7 @@ static u32 get_backlight_max_vbt(struct intel_connector *connector)
>  /*
>   * Note: The setup hooks can't assume pipe is set!
>   */
> -static u32 get_backlight_min_vbt(struct intel_connector *connector)
> +u32 get_backlight_min_vbt(struct intel_connector *connector)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
>  	struct intel_panel *panel = &connector->panel;
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.h b/drivers/gpu/drm/i915/display/intel_panel.h
> index 1d340f77bffc..63da4e355585 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.h
> +++ b/drivers/gpu/drm/i915/display/intel_panel.h
> @@ -53,6 +53,7 @@ void intel_panel_set_pwm_level(const struct drm_connector_state *conn_state, u32
>  u32 intel_panel_invert_pwm_level(struct intel_connector *connector, u32 level);
>  u32 intel_panel_backlight_level_to_pwm(struct intel_connector *connector, u32 level);
>  u32 intel_panel_backlight_level_from_pwm(struct intel_connector *connector, u32 val);
> +u32 get_backlight_min_vbt(struct intel_connector *connector);
>  
>  #if IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
>  int intel_backlight_device_register(struct intel_connector *connector);

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
