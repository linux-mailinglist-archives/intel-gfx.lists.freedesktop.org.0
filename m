Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 75BC542BF47
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Oct 2021 13:55:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D25F86EA29;
	Wed, 13 Oct 2021 11:55:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBC1B6EA29
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Oct 2021 11:55:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634126139;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=JXDiuv4r3uBtslUuji1ef6K3DrSrXXMF8iDjJjDlHj4=;
 b=gocEkLDjrdu67H/WEs9Mn63fDT0z7SGUc6OCTlps0z0ezwBnOPArdLyU1bywgF68ZDraM1
 O9acXG7NZ9P2SXjxNKrvfIyl1U3vlDCJxr2AHsm5XKBGmlYMTU1DbfNm8VahWH8s7RnHON
 l5xpZ8+VnTn+mufyk7ZtZBdmVS4vW0c=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-403-5_VclW7cOJGWhyT11RIr8A-1; Wed, 13 Oct 2021 07:55:38 -0400
X-MC-Unique: 5_VclW7cOJGWhyT11RIr8A-1
Received: by mail-ed1-f69.google.com with SMTP id
 f4-20020a50e084000000b003db585bc274so1957913edl.17
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Oct 2021 04:55:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=JXDiuv4r3uBtslUuji1ef6K3DrSrXXMF8iDjJjDlHj4=;
 b=zhqpTJXeED3oxLUekNkGBFjWzdebhmgsOvsL9fI9mfFwMK8+UtHBBx9X6GaDYGxdC9
 /fIPJR5te8RvxQec9ezC7UdjyaTUgatOffcMkv23rgJixUMn8XeYnvIcf8t55fEmx5xi
 i1aEL5t4/pvAdmtkn+UGaKfAi0wJjZPZ+c3Qgi45HA5rppvS5aIDPbyBeNkEIUQMCioy
 JsSkJgnU43GSDHNG5b/ljNuWLoGQgkPt3V1tSa07yIzZ+0FMygg8Fe3bOvZaZiQokR+X
 tNx2Kh/3/maeZPScA0EuOz9PlgLlgblJm7P889jBkPdXSNsquT4z47rZ3GUvzn8UKm3n
 3Brg==
X-Gm-Message-State: AOAM533aLIRJkqjNHWJHMMzlGvdHYb3cGyAjvkNHiLH2nqvATCD3j1cC
 6Zx/FqgQD3JTpkHr7fSWiLzwsiwu8QRadRNsTmI52NkSRXEmq+P5CCcQNsaU/UoKbl22HC3Qdzz
 efgIyr3MHfpHU2GBbT+v89L1QD9H3
X-Received: by 2002:a17:906:c18d:: with SMTP id
 g13mr40090236ejz.518.1634126136580; 
 Wed, 13 Oct 2021 04:55:36 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxQbWDlxudpaqBeDOzC8d/xSr+kG36BdVw8TZ3tOobqyaA4cS6liRrnGlh4OVvds9xOM7myVQ==
X-Received: by 2002:a17:906:c18d:: with SMTP id
 g13mr40090186ejz.518.1634126136175; 
 Wed, 13 Oct 2021 04:55:36 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id lb20sm6580315ejc.40.2021.10.13.04.55.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 Oct 2021 04:55:35 -0700 (PDT)
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <cover.1634119597.git.jani.nikula@intel.com>
 <755ebbbaf01fc6d306b763b6ef60f45e671ba290.1634119597.git.jani.nikula@intel.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <cfe3a1d4-a274-4e93-d369-589e84f095ef@redhat.com>
Date: Wed, 13 Oct 2021 13:55:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <755ebbbaf01fc6d306b763b6ef60f45e671ba290.1634119597.git.jani.nikula@intel.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915: split out vlv sideband to a
 separate file
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

Hi,

On 10/13/21 12:11 PM, Jani Nikula wrote:
> The VLV/CHV sideband code is pretty distinct from the rest of the
> sideband code. Split it out to new vlv_sideband.[ch].
> 
> Pure code movement with relevant #include changes, and a tiny checkpatch
> fix on top.
> 
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Thanks, patch looks good to me:

Reviewed-by: Hans de Goede <hdegoede@redhat.com>

Feel free to keep the Reviewed-by if you do a new version with
the improved commit msg suggested by Ville.

Regards,

Hans

> ---
>  drivers/gpu/drm/i915/Makefile                 |   1 +
>  drivers/gpu/drm/i915/display/g4x_dp.c         |   2 +-
>  drivers/gpu/drm/i915/display/g4x_hdmi.c       |   2 +-
>  drivers/gpu/drm/i915/display/intel_cdclk.c    |   1 +
>  drivers/gpu/drm/i915/display/intel_display.c  |   1 +
>  .../drm/i915/display/intel_display_debugfs.c  |   1 -
>  .../drm/i915/display/intel_display_power.c    |   4 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       |   1 -
>  drivers/gpu/drm/i915/display/intel_dpio_phy.c |   5 +-
>  drivers/gpu/drm/i915/display/intel_dpll.c     |   2 +-
>  drivers/gpu/drm/i915/display/intel_dsi_vbt.c  |   2 +-
>  drivers/gpu/drm/i915/display/vlv_dsi.c        |   2 +-
>  drivers/gpu/drm/i915/display/vlv_dsi_pll.c    |   2 +-
>  drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c |   1 +
>  drivers/gpu/drm/i915/gt/intel_rps.c           |   1 +
>  drivers/gpu/drm/i915/i915_debugfs.c           |   1 -
>  drivers/gpu/drm/i915/i915_sysfs.c             |   1 -
>  drivers/gpu/drm/i915/intel_pm.c               |   1 +
>  drivers/gpu/drm/i915/intel_sideband.c         | 257 -----------------
>  drivers/gpu/drm/i915/intel_sideband.h         | 110 --------
>  drivers/gpu/drm/i915/vlv_sideband.c           | 266 ++++++++++++++++++
>  drivers/gpu/drm/i915/vlv_sideband.h           | 123 ++++++++
>  22 files changed, 405 insertions(+), 382 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/vlv_sideband.c
>  create mode 100644 drivers/gpu/drm/i915/vlv_sideband.h
> 
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 21b05ed0e4e8..d50d2b144fc6 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -54,6 +54,7 @@ i915-y += i915_drv.o \
>  	  intel_step.o \
>  	  intel_uncore.o \
>  	  intel_wakeref.o \
> +	  vlv_sideband.o \
>  	  vlv_suspend.o
>  
>  # core library code
> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
> index 85a09c3e09e8..dc41868d01ef 100644
> --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> @@ -18,7 +18,7 @@
>  #include "intel_hdmi.h"
>  #include "intel_hotplug.h"
>  #include "intel_pps.h"
> -#include "intel_sideband.h"
> +#include "vlv_sideband.h"
>  
>  struct dp_link_dpll {
>  	int clock;
> diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> index be352e9f0afc..88c427f3c346 100644
> --- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> @@ -14,8 +14,8 @@
>  #include "intel_fifo_underrun.h"
>  #include "intel_hdmi.h"
>  #include "intel_hotplug.h"
> -#include "intel_sideband.h"
>  #include "intel_sdvo.h"
> +#include "vlv_sideband.h"
>  
>  static void intel_hdmi_prepare(struct intel_encoder *encoder,
>  			       const struct intel_crtc_state *crtc_state)
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index ecb28e8f1eb6..44bb18773509 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -30,6 +30,7 @@
>  #include "intel_display_types.h"
>  #include "intel_psr.h"
>  #include "intel_sideband.h"
> +#include "vlv_sideband.h"
>  
>  /**
>   * DOC: CDCLK / RAWCLK
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 9cf987ee143d..3602fdb2a549 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -109,6 +109,7 @@
>  #include "i9xx_plane.h"
>  #include "skl_scaler.h"
>  #include "skl_universal_plane.h"
> +#include "vlv_sideband.h"
>  
>  static void i9xx_crtc_clock_get(struct intel_crtc *crtc,
>  				struct intel_crtc_state *pipe_config);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index bc5113589f0a..e04767695530 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -20,7 +20,6 @@
>  #include "intel_hdmi.h"
>  #include "intel_pm.h"
>  #include "intel_psr.h"
> -#include "intel_sideband.h"
>  #include "intel_sprite.h"
>  
>  static inline struct drm_i915_private *node_to_i915(struct drm_info_node *node)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 06e9879aedd7..709569211c85 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -3,12 +3,11 @@
>   * Copyright © 2019 Intel Corporation
>   */
>  
> -#include "display/intel_crt.h"
> -
>  #include "i915_drv.h"
>  #include "i915_irq.h"
>  #include "intel_cdclk.h"
>  #include "intel_combo_phy.h"
> +#include "intel_crt.h"
>  #include "intel_de.h"
>  #include "intel_display_power.h"
>  #include "intel_display_types.h"
> @@ -22,6 +21,7 @@
>  #include "intel_snps_phy.h"
>  #include "intel_tc.h"
>  #include "intel_vga.h"
> +#include "vlv_sideband.h"
>  
>  bool intel_display_power_well_is_enabled(struct drm_i915_private *dev_priv,
>  					 enum i915_power_well_id power_well_id);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 10fda20a5bd8..9d8132dd4cc5 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -66,7 +66,6 @@
>  #include "intel_panel.h"
>  #include "intel_pps.h"
>  #include "intel_psr.h"
> -#include "intel_sideband.h"
>  #include "intel_tc.h"
>  #include "intel_vdsc.h"
>  #include "intel_vrr.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
> index 5a2eccb12fe4..44edeb2e55c0 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
> @@ -21,14 +21,13 @@
>   * DEALINGS IN THE SOFTWARE.
>   */
>  
> -#include "display/intel_dp.h"
> -
>  #include "intel_ddi.h"
>  #include "intel_ddi_buf_trans.h"
>  #include "intel_de.h"
>  #include "intel_display_types.h"
> +#include "intel_dp.h"
>  #include "intel_dpio_phy.h"
> -#include "intel_sideband.h"
> +#include "vlv_sideband.h"
>  
>  /**
>   * DOC: DPIO
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
> index b84ed4a1bd95..04a7af8340ca 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -13,8 +13,8 @@
>  #include "intel_lvds.h"
>  #include "intel_panel.h"
>  #include "intel_pps.h"
> -#include "intel_sideband.h"
>  #include "intel_snps_phy.h"
> +#include "vlv_sideband.h"
>  
>  struct intel_limit {
>  	struct {
> diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> index 61c2ef6a4b8c..f241bedb8597 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> @@ -41,7 +41,7 @@
>  #include "i915_drv.h"
>  #include "intel_display_types.h"
>  #include "intel_dsi.h"
> -#include "intel_sideband.h"
> +#include "vlv_sideband.h"
>  
>  #define MIPI_TRANSFER_MODE_SHIFT	0
>  #define MIPI_VIRTUAL_CHANNEL_SHIFT	1
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
> index 081b772bfe10..07584695514b 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> @@ -40,8 +40,8 @@
>  #include "intel_dsi.h"
>  #include "intel_fifo_underrun.h"
>  #include "intel_panel.h"
> -#include "intel_sideband.h"
>  #include "skl_scaler.h"
> +#include "vlv_sideband.h"
>  
>  /* return pixels in terms of txbyteclkhs */
>  static u16 txbyteclkhs(u16 pixels, int bpp, int lane_count,
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
> index 0078973cd219..5413b52ab6ba 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
> @@ -31,7 +31,7 @@
>  #include "intel_de.h"
>  #include "intel_display_types.h"
>  #include "intel_dsi.h"
> -#include "intel_sideband.h"
> +#include "vlv_sideband.h"
>  
>  static const u16 lfsr_converts[] = {
>  	426, 469, 234, 373, 442, 221, 110, 311, 411,		/* 62 - 70 */
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
> index 5f84ad602642..1e00fa6fbf27 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
> @@ -18,6 +18,7 @@
>  #include "intel_runtime_pm.h"
>  #include "intel_sideband.h"
>  #include "intel_uncore.h"
> +#include "vlv_sideband.h"
>  
>  static int fw_domains_show(struct seq_file *m, void *data)
>  {
> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
> index 172de6c9f949..c47024dbe246 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rps.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
> @@ -13,6 +13,7 @@
>  #include "intel_gt_pm_irq.h"
>  #include "intel_rps.h"
>  #include "intel_sideband.h"
> +#include "vlv_sideband.h"
>  #include "../../../platform/x86/intel_ips.h"
>  
>  #define BUSY_MAX_EI	20u /* ms */
> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
> index fdbd46ff59e0..54ae75db121f 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> @@ -49,7 +49,6 @@
>  #include "i915_scheduler.h"
>  #include "i915_trace.h"
>  #include "intel_pm.h"
> -#include "intel_sideband.h"
>  
>  static inline struct drm_i915_private *node_to_i915(struct drm_info_node *node)
>  {
> diff --git a/drivers/gpu/drm/i915/i915_sysfs.c b/drivers/gpu/drm/i915/i915_sysfs.c
> index cdf0e9c6fd73..1804f4142740 100644
> --- a/drivers/gpu/drm/i915/i915_sysfs.c
> +++ b/drivers/gpu/drm/i915/i915_sysfs.c
> @@ -37,7 +37,6 @@
>  #include "i915_drv.h"
>  #include "i915_sysfs.h"
>  #include "intel_pm.h"
> -#include "intel_sideband.h"
>  
>  static inline struct drm_i915_private *kdev_minor_to_i915(struct device *kdev)
>  {
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 8dbf8ec0d890..e4e0d7f9cb60 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -49,6 +49,7 @@
>  #include "i915_trace.h"
>  #include "intel_pm.h"
>  #include "intel_sideband.h"
> +#include "vlv_sideband.h"
>  #include "../../../platform/x86/intel_ips.h"
>  
>  /* Stores plane specific WM parameters */
> diff --git a/drivers/gpu/drm/i915/intel_sideband.c b/drivers/gpu/drm/i915/intel_sideband.c
> index e304bf44e1ff..59ef67216c15 100644
> --- a/drivers/gpu/drm/i915/intel_sideband.c
> +++ b/drivers/gpu/drm/i915/intel_sideband.c
> @@ -27,263 +27,6 @@
>  #include "i915_drv.h"
>  #include "intel_sideband.h"
>  
> -/*
> - * IOSF sideband, see VLV2_SidebandMsg_HAS.docx and
> - * VLV_VLV2_PUNIT_HAS_0.8.docx
> - */
> -
> -/* Standard MMIO read, non-posted */
> -#define SB_MRD_NP	0x00
> -/* Standard MMIO write, non-posted */
> -#define SB_MWR_NP	0x01
> -/* Private register read, double-word addressing, non-posted */
> -#define SB_CRRDDA_NP	0x06
> -/* Private register write, double-word addressing, non-posted */
> -#define SB_CRWRDA_NP	0x07
> -
> -static void ping(void *info)
> -{
> -}
> -
> -static void __vlv_punit_get(struct drm_i915_private *i915)
> -{
> -	iosf_mbi_punit_acquire();
> -
> -	/*
> -	 * Prevent the cpu from sleeping while we use this sideband, otherwise
> -	 * the punit may cause a machine hang. The issue appears to be isolated
> -	 * with changing the power state of the CPU package while changing
> -	 * the power state via the punit, and we have only observed it
> -	 * reliably on 4-core Baytail systems suggesting the issue is in the
> -	 * power delivery mechanism and likely to be be board/function
> -	 * specific. Hence we presume the workaround needs only be applied
> -	 * to the Valleyview P-unit and not all sideband communications.
> -	 */
> -	if (IS_VALLEYVIEW(i915)) {
> -		cpu_latency_qos_update_request(&i915->sb_qos, 0);
> -		on_each_cpu(ping, NULL, 1);
> -	}
> -}
> -
> -static void __vlv_punit_put(struct drm_i915_private *i915)
> -{
> -	if (IS_VALLEYVIEW(i915))
> -		cpu_latency_qos_update_request(&i915->sb_qos,
> -					       PM_QOS_DEFAULT_VALUE);
> -
> -	iosf_mbi_punit_release();
> -}
> -
> -void vlv_iosf_sb_get(struct drm_i915_private *i915, unsigned long ports)
> -{
> -	if (ports & BIT(VLV_IOSF_SB_PUNIT))
> -		__vlv_punit_get(i915);
> -
> -	mutex_lock(&i915->sb_lock);
> -}
> -
> -void vlv_iosf_sb_put(struct drm_i915_private *i915, unsigned long ports)
> -{
> -	mutex_unlock(&i915->sb_lock);
> -
> -	if (ports & BIT(VLV_IOSF_SB_PUNIT))
> -		__vlv_punit_put(i915);
> -}
> -
> -static int vlv_sideband_rw(struct drm_i915_private *i915,
> -			   u32 devfn, u32 port, u32 opcode,
> -			   u32 addr, u32 *val)
> -{
> -	struct intel_uncore *uncore = &i915->uncore;
> -	const bool is_read = (opcode == SB_MRD_NP || opcode == SB_CRRDDA_NP);
> -	int err;
> -
> -	lockdep_assert_held(&i915->sb_lock);
> -	if (port == IOSF_PORT_PUNIT)
> -		iosf_mbi_assert_punit_acquired();
> -
> -	/* Flush the previous comms, just in case it failed last time. */
> -	if (intel_wait_for_register(uncore,
> -				    VLV_IOSF_DOORBELL_REQ, IOSF_SB_BUSY, 0,
> -				    5)) {
> -		drm_dbg(&i915->drm, "IOSF sideband idle wait (%s) timed out\n",
> -			is_read ? "read" : "write");
> -		return -EAGAIN;
> -	}
> -
> -	preempt_disable();
> -
> -	intel_uncore_write_fw(uncore, VLV_IOSF_ADDR, addr);
> -	intel_uncore_write_fw(uncore, VLV_IOSF_DATA, is_read ? 0 : *val);
> -	intel_uncore_write_fw(uncore, VLV_IOSF_DOORBELL_REQ,
> -			      (devfn << IOSF_DEVFN_SHIFT) |
> -			      (opcode << IOSF_OPCODE_SHIFT) |
> -			      (port << IOSF_PORT_SHIFT) |
> -			      (0xf << IOSF_BYTE_ENABLES_SHIFT) |
> -			      (0 << IOSF_BAR_SHIFT) |
> -			      IOSF_SB_BUSY);
> -
> -	if (__intel_wait_for_register_fw(uncore,
> -					 VLV_IOSF_DOORBELL_REQ, IOSF_SB_BUSY, 0,
> -					 10000, 0, NULL) == 0) {
> -		if (is_read)
> -			*val = intel_uncore_read_fw(uncore, VLV_IOSF_DATA);
> -		err = 0;
> -	} else {
> -		drm_dbg(&i915->drm, "IOSF sideband finish wait (%s) timed out\n",
> -			is_read ? "read" : "write");
> -		err = -ETIMEDOUT;
> -	}
> -
> -	preempt_enable();
> -
> -	return err;
> -}
> -
> -u32 vlv_punit_read(struct drm_i915_private *i915, u32 addr)
> -{
> -	u32 val = 0;
> -
> -	vlv_sideband_rw(i915, PCI_DEVFN(0, 0), IOSF_PORT_PUNIT,
> -			SB_CRRDDA_NP, addr, &val);
> -
> -	return val;
> -}
> -
> -int vlv_punit_write(struct drm_i915_private *i915, u32 addr, u32 val)
> -{
> -	return vlv_sideband_rw(i915, PCI_DEVFN(0, 0), IOSF_PORT_PUNIT,
> -			       SB_CRWRDA_NP, addr, &val);
> -}
> -
> -u32 vlv_bunit_read(struct drm_i915_private *i915, u32 reg)
> -{
> -	u32 val = 0;
> -
> -	vlv_sideband_rw(i915, PCI_DEVFN(0, 0), IOSF_PORT_BUNIT,
> -			SB_CRRDDA_NP, reg, &val);
> -
> -	return val;
> -}
> -
> -void vlv_bunit_write(struct drm_i915_private *i915, u32 reg, u32 val)
> -{
> -	vlv_sideband_rw(i915, PCI_DEVFN(0, 0), IOSF_PORT_BUNIT,
> -			SB_CRWRDA_NP, reg, &val);
> -}
> -
> -u32 vlv_nc_read(struct drm_i915_private *i915, u8 addr)
> -{
> -	u32 val = 0;
> -
> -	vlv_sideband_rw(i915, PCI_DEVFN(0, 0), IOSF_PORT_NC,
> -			SB_CRRDDA_NP, addr, &val);
> -
> -	return val;
> -}
> -
> -u32 vlv_iosf_sb_read(struct drm_i915_private *i915, u8 port, u32 reg)
> -{
> -	u32 val = 0;
> -
> -	vlv_sideband_rw(i915, PCI_DEVFN(0, 0), port,
> -			SB_CRRDDA_NP, reg, &val);
> -
> -	return val;
> -}
> -
> -void vlv_iosf_sb_write(struct drm_i915_private *i915,
> -		       u8 port, u32 reg, u32 val)
> -{
> -	vlv_sideband_rw(i915, PCI_DEVFN(0, 0), port,
> -			SB_CRWRDA_NP, reg, &val);
> -}
> -
> -u32 vlv_cck_read(struct drm_i915_private *i915, u32 reg)
> -{
> -	u32 val = 0;
> -
> -	vlv_sideband_rw(i915, PCI_DEVFN(0, 0), IOSF_PORT_CCK,
> -			SB_CRRDDA_NP, reg, &val);
> -
> -	return val;
> -}
> -
> -void vlv_cck_write(struct drm_i915_private *i915, u32 reg, u32 val)
> -{
> -	vlv_sideband_rw(i915, PCI_DEVFN(0, 0), IOSF_PORT_CCK,
> -			SB_CRWRDA_NP, reg, &val);
> -}
> -
> -u32 vlv_ccu_read(struct drm_i915_private *i915, u32 reg)
> -{
> -	u32 val = 0;
> -
> -	vlv_sideband_rw(i915, PCI_DEVFN(0, 0), IOSF_PORT_CCU,
> -			SB_CRRDDA_NP, reg, &val);
> -
> -	return val;
> -}
> -
> -void vlv_ccu_write(struct drm_i915_private *i915, u32 reg, u32 val)
> -{
> -	vlv_sideband_rw(i915, PCI_DEVFN(0, 0), IOSF_PORT_CCU,
> -			SB_CRWRDA_NP, reg, &val);
> -}
> -
> -static u32 vlv_dpio_phy_iosf_port(struct drm_i915_private *i915, enum dpio_phy phy)
> -{
> -	/*
> -	 * IOSF_PORT_DPIO: VLV x2 PHY (DP/HDMI B and C), CHV x1 PHY (DP/HDMI D)
> -	 * IOSF_PORT_DPIO_2: CHV x2 PHY (DP/HDMI B and C)
> -	 */
> -	if (IS_CHERRYVIEW(i915))
> -		return phy == DPIO_PHY0 ? IOSF_PORT_DPIO_2 : IOSF_PORT_DPIO;
> -	else
> -		return IOSF_PORT_DPIO;
> -}
> -
> -u32 vlv_dpio_read(struct drm_i915_private *i915, enum pipe pipe, int reg)
> -{
> -	u32 port = vlv_dpio_phy_iosf_port(i915, DPIO_PHY(pipe));
> -	u32 val = 0;
> -
> -	vlv_sideband_rw(i915, DPIO_DEVFN, port, SB_MRD_NP, reg, &val);
> -
> -	/*
> -	 * FIXME: There might be some registers where all 1's is a valid value,
> -	 * so ideally we should check the register offset instead...
> -	 */
> -	drm_WARN(&i915->drm, val == 0xffffffff,
> -		 "DPIO read pipe %c reg 0x%x == 0x%x\n",
> -		 pipe_name(pipe), reg, val);
> -
> -	return val;
> -}
> -
> -void vlv_dpio_write(struct drm_i915_private *i915,
> -		    enum pipe pipe, int reg, u32 val)
> -{
> -	u32 port = vlv_dpio_phy_iosf_port(i915, DPIO_PHY(pipe));
> -
> -	vlv_sideband_rw(i915, DPIO_DEVFN, port, SB_MWR_NP, reg, &val);
> -}
> -
> -u32 vlv_flisdsi_read(struct drm_i915_private *i915, u32 reg)
> -{
> -	u32 val = 0;
> -
> -	vlv_sideband_rw(i915, DPIO_DEVFN, IOSF_PORT_FLISDSI, SB_CRRDDA_NP,
> -			reg, &val);
> -	return val;
> -}
> -
> -void vlv_flisdsi_write(struct drm_i915_private *i915, u32 reg, u32 val)
> -{
> -	vlv_sideband_rw(i915, DPIO_DEVFN, IOSF_PORT_FLISDSI, SB_CRWRDA_NP,
> -			reg, &val);
> -}
> -
>  /* SBI access */
>  static int intel_sbi_rw(struct drm_i915_private *i915, u16 reg,
>  			enum intel_sbi_destination destination,
> diff --git a/drivers/gpu/drm/i915/intel_sideband.h b/drivers/gpu/drm/i915/intel_sideband.h
> index d1d14bcb8f56..914ffd98b38f 100644
> --- a/drivers/gpu/drm/i915/intel_sideband.h
> +++ b/drivers/gpu/drm/i915/intel_sideband.h
> @@ -3,125 +3,15 @@
>  #ifndef _INTEL_SIDEBAND_H_
>  #define _INTEL_SIDEBAND_H_
>  
> -#include <linux/bitops.h>
>  #include <linux/types.h>
>  
>  struct drm_i915_private;
> -enum pipe;
>  
>  enum intel_sbi_destination {
>  	SBI_ICLK,
>  	SBI_MPHY,
>  };
>  
> -enum {
> -	VLV_IOSF_SB_BUNIT,
> -	VLV_IOSF_SB_CCK,
> -	VLV_IOSF_SB_CCU,
> -	VLV_IOSF_SB_DPIO,
> -	VLV_IOSF_SB_FLISDSI,
> -	VLV_IOSF_SB_GPIO,
> -	VLV_IOSF_SB_NC,
> -	VLV_IOSF_SB_PUNIT,
> -};
> -
> -void vlv_iosf_sb_get(struct drm_i915_private *i915, unsigned long ports);
> -u32 vlv_iosf_sb_read(struct drm_i915_private *i915, u8 port, u32 reg);
> -void vlv_iosf_sb_write(struct drm_i915_private *i915,
> -		       u8 port, u32 reg, u32 val);
> -void vlv_iosf_sb_put(struct drm_i915_private *i915, unsigned long ports);
> -
> -static inline void vlv_bunit_get(struct drm_i915_private *i915)
> -{
> -	vlv_iosf_sb_get(i915, BIT(VLV_IOSF_SB_BUNIT));
> -}
> -
> -u32 vlv_bunit_read(struct drm_i915_private *i915, u32 reg);
> -void vlv_bunit_write(struct drm_i915_private *i915, u32 reg, u32 val);
> -
> -static inline void vlv_bunit_put(struct drm_i915_private *i915)
> -{
> -	vlv_iosf_sb_put(i915, BIT(VLV_IOSF_SB_BUNIT));
> -}
> -
> -static inline void vlv_cck_get(struct drm_i915_private *i915)
> -{
> -	vlv_iosf_sb_get(i915, BIT(VLV_IOSF_SB_CCK));
> -}
> -
> -u32 vlv_cck_read(struct drm_i915_private *i915, u32 reg);
> -void vlv_cck_write(struct drm_i915_private *i915, u32 reg, u32 val);
> -
> -static inline void vlv_cck_put(struct drm_i915_private *i915)
> -{
> -	vlv_iosf_sb_put(i915, BIT(VLV_IOSF_SB_CCK));
> -}
> -
> -static inline void vlv_ccu_get(struct drm_i915_private *i915)
> -{
> -	vlv_iosf_sb_get(i915, BIT(VLV_IOSF_SB_CCU));
> -}
> -
> -u32 vlv_ccu_read(struct drm_i915_private *i915, u32 reg);
> -void vlv_ccu_write(struct drm_i915_private *i915, u32 reg, u32 val);
> -
> -static inline void vlv_ccu_put(struct drm_i915_private *i915)
> -{
> -	vlv_iosf_sb_put(i915, BIT(VLV_IOSF_SB_CCU));
> -}
> -
> -static inline void vlv_dpio_get(struct drm_i915_private *i915)
> -{
> -	vlv_iosf_sb_get(i915, BIT(VLV_IOSF_SB_DPIO));
> -}
> -
> -u32 vlv_dpio_read(struct drm_i915_private *i915, enum pipe pipe, int reg);
> -void vlv_dpio_write(struct drm_i915_private *i915,
> -		    enum pipe pipe, int reg, u32 val);
> -
> -static inline void vlv_dpio_put(struct drm_i915_private *i915)
> -{
> -	vlv_iosf_sb_put(i915, BIT(VLV_IOSF_SB_DPIO));
> -}
> -
> -static inline void vlv_flisdsi_get(struct drm_i915_private *i915)
> -{
> -	vlv_iosf_sb_get(i915, BIT(VLV_IOSF_SB_FLISDSI));
> -}
> -
> -u32 vlv_flisdsi_read(struct drm_i915_private *i915, u32 reg);
> -void vlv_flisdsi_write(struct drm_i915_private *i915, u32 reg, u32 val);
> -
> -static inline void vlv_flisdsi_put(struct drm_i915_private *i915)
> -{
> -	vlv_iosf_sb_put(i915, BIT(VLV_IOSF_SB_FLISDSI));
> -}
> -
> -static inline void vlv_nc_get(struct drm_i915_private *i915)
> -{
> -	vlv_iosf_sb_get(i915, BIT(VLV_IOSF_SB_NC));
> -}
> -
> -u32 vlv_nc_read(struct drm_i915_private *i915, u8 addr);
> -
> -static inline void vlv_nc_put(struct drm_i915_private *i915)
> -{
> -	vlv_iosf_sb_put(i915, BIT(VLV_IOSF_SB_NC));
> -}
> -
> -static inline void vlv_punit_get(struct drm_i915_private *i915)
> -{
> -	vlv_iosf_sb_get(i915, BIT(VLV_IOSF_SB_PUNIT));
> -}
> -
> -u32 vlv_punit_read(struct drm_i915_private *i915, u32 addr);
> -int vlv_punit_write(struct drm_i915_private *i915, u32 addr, u32 val);
> -
> -static inline void vlv_punit_put(struct drm_i915_private *i915)
> -{
> -	vlv_iosf_sb_put(i915, BIT(VLV_IOSF_SB_PUNIT));
> -}
> -
>  u32 intel_sbi_read(struct drm_i915_private *i915, u16 reg,
>  		   enum intel_sbi_destination destination);
>  void intel_sbi_write(struct drm_i915_private *i915, u16 reg, u32 value,
> diff --git a/drivers/gpu/drm/i915/vlv_sideband.c b/drivers/gpu/drm/i915/vlv_sideband.c
> new file mode 100644
> index 000000000000..35380738a951
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/vlv_sideband.c
> @@ -0,0 +1,266 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright © 2013-2021 Intel Corporation
> + */
> +
> +#include <asm/iosf_mbi.h>
> +
> +#include "i915_drv.h"
> +#include "vlv_sideband.h"
> +
> +/*
> + * IOSF sideband, see VLV2_SidebandMsg_HAS.docx and
> + * VLV_VLV2_PUNIT_HAS_0.8.docx
> + */
> +
> +/* Standard MMIO read, non-posted */
> +#define SB_MRD_NP	0x00
> +/* Standard MMIO write, non-posted */
> +#define SB_MWR_NP	0x01
> +/* Private register read, double-word addressing, non-posted */
> +#define SB_CRRDDA_NP	0x06
> +/* Private register write, double-word addressing, non-posted */
> +#define SB_CRWRDA_NP	0x07
> +
> +static void ping(void *info)
> +{
> +}
> +
> +static void __vlv_punit_get(struct drm_i915_private *i915)
> +{
> +	iosf_mbi_punit_acquire();
> +
> +	/*
> +	 * Prevent the cpu from sleeping while we use this sideband, otherwise
> +	 * the punit may cause a machine hang. The issue appears to be isolated
> +	 * with changing the power state of the CPU package while changing
> +	 * the power state via the punit, and we have only observed it
> +	 * reliably on 4-core Baytail systems suggesting the issue is in the
> +	 * power delivery mechanism and likely to be board/function
> +	 * specific. Hence we presume the workaround needs only be applied
> +	 * to the Valleyview P-unit and not all sideband communications.
> +	 */
> +	if (IS_VALLEYVIEW(i915)) {
> +		cpu_latency_qos_update_request(&i915->sb_qos, 0);
> +		on_each_cpu(ping, NULL, 1);
> +	}
> +}
> +
> +static void __vlv_punit_put(struct drm_i915_private *i915)
> +{
> +	if (IS_VALLEYVIEW(i915))
> +		cpu_latency_qos_update_request(&i915->sb_qos,
> +					       PM_QOS_DEFAULT_VALUE);
> +
> +	iosf_mbi_punit_release();
> +}
> +
> +void vlv_iosf_sb_get(struct drm_i915_private *i915, unsigned long ports)
> +{
> +	if (ports & BIT(VLV_IOSF_SB_PUNIT))
> +		__vlv_punit_get(i915);
> +
> +	mutex_lock(&i915->sb_lock);
> +}
> +
> +void vlv_iosf_sb_put(struct drm_i915_private *i915, unsigned long ports)
> +{
> +	mutex_unlock(&i915->sb_lock);
> +
> +	if (ports & BIT(VLV_IOSF_SB_PUNIT))
> +		__vlv_punit_put(i915);
> +}
> +
> +static int vlv_sideband_rw(struct drm_i915_private *i915,
> +			   u32 devfn, u32 port, u32 opcode,
> +			   u32 addr, u32 *val)
> +{
> +	struct intel_uncore *uncore = &i915->uncore;
> +	const bool is_read = (opcode == SB_MRD_NP || opcode == SB_CRRDDA_NP);
> +	int err;
> +
> +	lockdep_assert_held(&i915->sb_lock);
> +	if (port == IOSF_PORT_PUNIT)
> +		iosf_mbi_assert_punit_acquired();
> +
> +	/* Flush the previous comms, just in case it failed last time. */
> +	if (intel_wait_for_register(uncore,
> +				    VLV_IOSF_DOORBELL_REQ, IOSF_SB_BUSY, 0,
> +				    5)) {
> +		drm_dbg(&i915->drm, "IOSF sideband idle wait (%s) timed out\n",
> +			is_read ? "read" : "write");
> +		return -EAGAIN;
> +	}
> +
> +	preempt_disable();
> +
> +	intel_uncore_write_fw(uncore, VLV_IOSF_ADDR, addr);
> +	intel_uncore_write_fw(uncore, VLV_IOSF_DATA, is_read ? 0 : *val);
> +	intel_uncore_write_fw(uncore, VLV_IOSF_DOORBELL_REQ,
> +			      (devfn << IOSF_DEVFN_SHIFT) |
> +			      (opcode << IOSF_OPCODE_SHIFT) |
> +			      (port << IOSF_PORT_SHIFT) |
> +			      (0xf << IOSF_BYTE_ENABLES_SHIFT) |
> +			      (0 << IOSF_BAR_SHIFT) |
> +			      IOSF_SB_BUSY);
> +
> +	if (__intel_wait_for_register_fw(uncore,
> +					 VLV_IOSF_DOORBELL_REQ, IOSF_SB_BUSY, 0,
> +					 10000, 0, NULL) == 0) {
> +		if (is_read)
> +			*val = intel_uncore_read_fw(uncore, VLV_IOSF_DATA);
> +		err = 0;
> +	} else {
> +		drm_dbg(&i915->drm, "IOSF sideband finish wait (%s) timed out\n",
> +			is_read ? "read" : "write");
> +		err = -ETIMEDOUT;
> +	}
> +
> +	preempt_enable();
> +
> +	return err;
> +}
> +
> +u32 vlv_punit_read(struct drm_i915_private *i915, u32 addr)
> +{
> +	u32 val = 0;
> +
> +	vlv_sideband_rw(i915, PCI_DEVFN(0, 0), IOSF_PORT_PUNIT,
> +			SB_CRRDDA_NP, addr, &val);
> +
> +	return val;
> +}
> +
> +int vlv_punit_write(struct drm_i915_private *i915, u32 addr, u32 val)
> +{
> +	return vlv_sideband_rw(i915, PCI_DEVFN(0, 0), IOSF_PORT_PUNIT,
> +			       SB_CRWRDA_NP, addr, &val);
> +}
> +
> +u32 vlv_bunit_read(struct drm_i915_private *i915, u32 reg)
> +{
> +	u32 val = 0;
> +
> +	vlv_sideband_rw(i915, PCI_DEVFN(0, 0), IOSF_PORT_BUNIT,
> +			SB_CRRDDA_NP, reg, &val);
> +
> +	return val;
> +}
> +
> +void vlv_bunit_write(struct drm_i915_private *i915, u32 reg, u32 val)
> +{
> +	vlv_sideband_rw(i915, PCI_DEVFN(0, 0), IOSF_PORT_BUNIT,
> +			SB_CRWRDA_NP, reg, &val);
> +}
> +
> +u32 vlv_nc_read(struct drm_i915_private *i915, u8 addr)
> +{
> +	u32 val = 0;
> +
> +	vlv_sideband_rw(i915, PCI_DEVFN(0, 0), IOSF_PORT_NC,
> +			SB_CRRDDA_NP, addr, &val);
> +
> +	return val;
> +}
> +
> +u32 vlv_iosf_sb_read(struct drm_i915_private *i915, u8 port, u32 reg)
> +{
> +	u32 val = 0;
> +
> +	vlv_sideband_rw(i915, PCI_DEVFN(0, 0), port,
> +			SB_CRRDDA_NP, reg, &val);
> +
> +	return val;
> +}
> +
> +void vlv_iosf_sb_write(struct drm_i915_private *i915,
> +		       u8 port, u32 reg, u32 val)
> +{
> +	vlv_sideband_rw(i915, PCI_DEVFN(0, 0), port,
> +			SB_CRWRDA_NP, reg, &val);
> +}
> +
> +u32 vlv_cck_read(struct drm_i915_private *i915, u32 reg)
> +{
> +	u32 val = 0;
> +
> +	vlv_sideband_rw(i915, PCI_DEVFN(0, 0), IOSF_PORT_CCK,
> +			SB_CRRDDA_NP, reg, &val);
> +
> +	return val;
> +}
> +
> +void vlv_cck_write(struct drm_i915_private *i915, u32 reg, u32 val)
> +{
> +	vlv_sideband_rw(i915, PCI_DEVFN(0, 0), IOSF_PORT_CCK,
> +			SB_CRWRDA_NP, reg, &val);
> +}
> +
> +u32 vlv_ccu_read(struct drm_i915_private *i915, u32 reg)
> +{
> +	u32 val = 0;
> +
> +	vlv_sideband_rw(i915, PCI_DEVFN(0, 0), IOSF_PORT_CCU,
> +			SB_CRRDDA_NP, reg, &val);
> +
> +	return val;
> +}
> +
> +void vlv_ccu_write(struct drm_i915_private *i915, u32 reg, u32 val)
> +{
> +	vlv_sideband_rw(i915, PCI_DEVFN(0, 0), IOSF_PORT_CCU,
> +			SB_CRWRDA_NP, reg, &val);
> +}
> +
> +static u32 vlv_dpio_phy_iosf_port(struct drm_i915_private *i915, enum dpio_phy phy)
> +{
> +	/*
> +	 * IOSF_PORT_DPIO: VLV x2 PHY (DP/HDMI B and C), CHV x1 PHY (DP/HDMI D)
> +	 * IOSF_PORT_DPIO_2: CHV x2 PHY (DP/HDMI B and C)
> +	 */
> +	if (IS_CHERRYVIEW(i915))
> +		return phy == DPIO_PHY0 ? IOSF_PORT_DPIO_2 : IOSF_PORT_DPIO;
> +	else
> +		return IOSF_PORT_DPIO;
> +}
> +
> +u32 vlv_dpio_read(struct drm_i915_private *i915, enum pipe pipe, int reg)
> +{
> +	u32 port = vlv_dpio_phy_iosf_port(i915, DPIO_PHY(pipe));
> +	u32 val = 0;
> +
> +	vlv_sideband_rw(i915, DPIO_DEVFN, port, SB_MRD_NP, reg, &val);
> +
> +	/*
> +	 * FIXME: There might be some registers where all 1's is a valid value,
> +	 * so ideally we should check the register offset instead...
> +	 */
> +	drm_WARN(&i915->drm, val == 0xffffffff,
> +		 "DPIO read pipe %c reg 0x%x == 0x%x\n",
> +		 pipe_name(pipe), reg, val);
> +
> +	return val;
> +}
> +
> +void vlv_dpio_write(struct drm_i915_private *i915,
> +		    enum pipe pipe, int reg, u32 val)
> +{
> +	u32 port = vlv_dpio_phy_iosf_port(i915, DPIO_PHY(pipe));
> +
> +	vlv_sideband_rw(i915, DPIO_DEVFN, port, SB_MWR_NP, reg, &val);
> +}
> +
> +u32 vlv_flisdsi_read(struct drm_i915_private *i915, u32 reg)
> +{
> +	u32 val = 0;
> +
> +	vlv_sideband_rw(i915, DPIO_DEVFN, IOSF_PORT_FLISDSI, SB_CRRDDA_NP,
> +			reg, &val);
> +	return val;
> +}
> +
> +void vlv_flisdsi_write(struct drm_i915_private *i915, u32 reg, u32 val)
> +{
> +	vlv_sideband_rw(i915, DPIO_DEVFN, IOSF_PORT_FLISDSI, SB_CRWRDA_NP,
> +			reg, &val);
> +}
> diff --git a/drivers/gpu/drm/i915/vlv_sideband.h b/drivers/gpu/drm/i915/vlv_sideband.h
> new file mode 100644
> index 000000000000..d7732f612e7f
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/vlv_sideband.h
> @@ -0,0 +1,123 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright © 2013-2021 Intel Corporation
> + */
> +
> +#ifndef _VLV_SIDEBAND_H_
> +#define _VLV_SIDEBAND_H_
> +
> +#include <linux/bitops.h>
> +#include <linux/types.h>
> +
> +enum pipe;
> +struct drm_i915_private;
> +
> +enum {
> +	VLV_IOSF_SB_BUNIT,
> +	VLV_IOSF_SB_CCK,
> +	VLV_IOSF_SB_CCU,
> +	VLV_IOSF_SB_DPIO,
> +	VLV_IOSF_SB_FLISDSI,
> +	VLV_IOSF_SB_GPIO,
> +	VLV_IOSF_SB_NC,
> +	VLV_IOSF_SB_PUNIT,
> +};
> +
> +void vlv_iosf_sb_get(struct drm_i915_private *i915, unsigned long ports);
> +u32 vlv_iosf_sb_read(struct drm_i915_private *i915, u8 port, u32 reg);
> +void vlv_iosf_sb_write(struct drm_i915_private *i915,
> +		       u8 port, u32 reg, u32 val);
> +void vlv_iosf_sb_put(struct drm_i915_private *i915, unsigned long ports);
> +
> +static inline void vlv_bunit_get(struct drm_i915_private *i915)
> +{
> +	vlv_iosf_sb_get(i915, BIT(VLV_IOSF_SB_BUNIT));
> +}
> +
> +u32 vlv_bunit_read(struct drm_i915_private *i915, u32 reg);
> +void vlv_bunit_write(struct drm_i915_private *i915, u32 reg, u32 val);
> +
> +static inline void vlv_bunit_put(struct drm_i915_private *i915)
> +{
> +	vlv_iosf_sb_put(i915, BIT(VLV_IOSF_SB_BUNIT));
> +}
> +
> +static inline void vlv_cck_get(struct drm_i915_private *i915)
> +{
> +	vlv_iosf_sb_get(i915, BIT(VLV_IOSF_SB_CCK));
> +}
> +
> +u32 vlv_cck_read(struct drm_i915_private *i915, u32 reg);
> +void vlv_cck_write(struct drm_i915_private *i915, u32 reg, u32 val);
> +
> +static inline void vlv_cck_put(struct drm_i915_private *i915)
> +{
> +	vlv_iosf_sb_put(i915, BIT(VLV_IOSF_SB_CCK));
> +}
> +
> +static inline void vlv_ccu_get(struct drm_i915_private *i915)
> +{
> +	vlv_iosf_sb_get(i915, BIT(VLV_IOSF_SB_CCU));
> +}
> +
> +u32 vlv_ccu_read(struct drm_i915_private *i915, u32 reg);
> +void vlv_ccu_write(struct drm_i915_private *i915, u32 reg, u32 val);
> +
> +static inline void vlv_ccu_put(struct drm_i915_private *i915)
> +{
> +	vlv_iosf_sb_put(i915, BIT(VLV_IOSF_SB_CCU));
> +}
> +
> +static inline void vlv_dpio_get(struct drm_i915_private *i915)
> +{
> +	vlv_iosf_sb_get(i915, BIT(VLV_IOSF_SB_DPIO));
> +}
> +
> +u32 vlv_dpio_read(struct drm_i915_private *i915, enum pipe pipe, int reg);
> +void vlv_dpio_write(struct drm_i915_private *i915,
> +		    enum pipe pipe, int reg, u32 val);
> +
> +static inline void vlv_dpio_put(struct drm_i915_private *i915)
> +{
> +	vlv_iosf_sb_put(i915, BIT(VLV_IOSF_SB_DPIO));
> +}
> +
> +static inline void vlv_flisdsi_get(struct drm_i915_private *i915)
> +{
> +	vlv_iosf_sb_get(i915, BIT(VLV_IOSF_SB_FLISDSI));
> +}
> +
> +u32 vlv_flisdsi_read(struct drm_i915_private *i915, u32 reg);
> +void vlv_flisdsi_write(struct drm_i915_private *i915, u32 reg, u32 val);
> +
> +static inline void vlv_flisdsi_put(struct drm_i915_private *i915)
> +{
> +	vlv_iosf_sb_put(i915, BIT(VLV_IOSF_SB_FLISDSI));
> +}
> +
> +static inline void vlv_nc_get(struct drm_i915_private *i915)
> +{
> +	vlv_iosf_sb_get(i915, BIT(VLV_IOSF_SB_NC));
> +}
> +
> +u32 vlv_nc_read(struct drm_i915_private *i915, u8 addr);
> +
> +static inline void vlv_nc_put(struct drm_i915_private *i915)
> +{
> +	vlv_iosf_sb_put(i915, BIT(VLV_IOSF_SB_NC));
> +}
> +
> +static inline void vlv_punit_get(struct drm_i915_private *i915)
> +{
> +	vlv_iosf_sb_get(i915, BIT(VLV_IOSF_SB_PUNIT));
> +}
> +
> +u32 vlv_punit_read(struct drm_i915_private *i915, u32 addr);
> +int vlv_punit_write(struct drm_i915_private *i915, u32 addr, u32 val);
> +
> +static inline void vlv_punit_put(struct drm_i915_private *i915)
> +{
> +	vlv_iosf_sb_put(i915, BIT(VLV_IOSF_SB_PUNIT));
> +}
> +
> +#endif /* _VLV_SIDEBAND_H_ */
> 

