Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1AD0413397
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Sep 2021 14:52:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E27066E97A;
	Tue, 21 Sep 2021 12:52:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6E6A6E97A
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Sep 2021 12:52:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10113"; a="308899680"
X-IronPort-AV: E=Sophos;i="5.85,311,1624345200"; d="scan'208";a="308899680"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2021 05:52:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,311,1624345200"; d="scan'208";a="512303093"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 21 Sep 2021 05:52:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 21 Sep 2021 15:52:42 +0300
Date: Tue, 21 Sep 2021 15:52:42 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <YUnVmuhQJ+UXmp/a@intel.com>
References: <20210921110244.8666-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210921110244.8666-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/hdmi: convert intel_hdmi_to_dev to
 intel_hdmi_to_i915
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

On Tue, Sep 21, 2021 at 02:02:44PM +0300, Jani Nikula wrote:
> Prefer i915 over drm pointer.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_hdmi.c | 16 +++++++---------
>  1 file changed, 7 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 1bc33766ed39..1e8a87f81e8e 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -53,21 +53,20 @@
>  #include "intel_panel.h"
>  #include "intel_snps_phy.h"
>  
> -static struct drm_device *intel_hdmi_to_dev(struct intel_hdmi *intel_hdmi)
> +static struct drm_i915_private *intel_hdmi_to_i915(struct intel_hdmi *intel_hdmi)
>  {
> -	return hdmi_to_dig_port(intel_hdmi)->base.base.dev;
> +	return to_i915(hdmi_to_dig_port(intel_hdmi)->base.base.dev);
>  }
>  
>  static void
>  assert_hdmi_port_disabled(struct intel_hdmi *intel_hdmi)
>  {
> -	struct drm_device *dev = intel_hdmi_to_dev(intel_hdmi);
> -	struct drm_i915_private *dev_priv = to_i915(dev);
> +	struct drm_i915_private *dev_priv = intel_hdmi_to_i915(intel_hdmi);
>  	u32 enabled_bits;
>  
>  	enabled_bits = HAS_DDI(dev_priv) ? DDI_BUF_CTL_ENABLE : SDVO_ENABLE;
>  
> -	drm_WARN(dev,
> +	drm_WARN(&dev_priv->drm,
>  		 intel_de_read(dev_priv, intel_hdmi->hdmi_reg) & enabled_bits,
>  		 "HDMI port enabled, expecting disabled\n");
>  }
> @@ -1246,7 +1245,7 @@ static void hsw_set_infoframes(struct intel_encoder *encoder,
>  
>  void intel_dp_dual_mode_set_tmds_output(struct intel_hdmi *hdmi, bool enable)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(intel_hdmi_to_dev(hdmi));
> +	struct drm_i915_private *dev_priv = intel_hdmi_to_i915(hdmi);
>  	struct i2c_adapter *adapter =
>  		intel_gmbus_get_adapter(dev_priv, hdmi->ddc_bus);
>  
> @@ -1830,7 +1829,7 @@ hdmi_port_clock_valid(struct intel_hdmi *hdmi,
>  		      int clock, bool respect_downstream_limits,
>  		      bool has_hdmi_sink)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(intel_hdmi_to_dev(hdmi));
> +	struct drm_i915_private *dev_priv = intel_hdmi_to_i915(hdmi);
>  
>  	if (clock < 25000)
>  		return MODE_CLOCK_LOW;
> @@ -1946,8 +1945,7 @@ intel_hdmi_mode_valid(struct drm_connector *connector,
>  		      struct drm_display_mode *mode)
>  {
>  	struct intel_hdmi *hdmi = intel_attached_hdmi(to_intel_connector(connector));
> -	struct drm_device *dev = intel_hdmi_to_dev(hdmi);
> -	struct drm_i915_private *dev_priv = to_i915(dev);
> +	struct drm_i915_private *dev_priv = intel_hdmi_to_i915(hdmi);
>  	enum drm_mode_status status;
>  	int clock = mode->clock;
>  	int max_dotclk = to_i915(connector->dev)->max_dotclk_freq;
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel
