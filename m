Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 310C836CB65
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Apr 2021 21:00:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 058B86E54C;
	Tue, 27 Apr 2021 18:59:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 422676E21A
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Apr 2021 18:59:55 +0000 (UTC)
IronPort-SDR: 4u7SQ1+G2oEtBgOZrBzukgNwFDpUG10t7K8pQrwNfwoJq8f6hB+cWV8NWmWNCatEFvC7iIzxUK
 hr+gcSt9eBWg==
X-IronPort-AV: E=McAfee;i="6200,9189,9967"; a="217285851"
X-IronPort-AV: E=Sophos;i="5.82,255,1613462400"; d="scan'208";a="217285851"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2021 11:59:52 -0700
IronPort-SDR: 1+hYYRbl86uR7h2MrR086Ax1hDlxEuk5/bUq+T0ExKNxG7getVb9Ilwcw0RWHGIQeIySt/yHZH
 KgbkFNvRqimw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,255,1613462400"; d="scan'208";a="465594418"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 27 Apr 2021 11:59:49 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 27 Apr 2021 21:59:49 +0300
Date: Tue, 27 Apr 2021 21:59:49 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YIhfJdCOZhDVA0VB@intel.com>
References: <20210427120315.12342-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210427120315.12342-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: move crtc and dpll
 declarations where they belong
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 27, 2021 at 03:03:15PM +0300, Jani Nikula wrote:
> The definitions are in the crtc and dpll files; move the declarations to
> the corresponding headers.
> =

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c        | 1 +
>  drivers/gpu/drm/i915/display/intel_crt.c      | 1 +
>  drivers/gpu/drm/i915/display/intel_crtc.h     | 3 +++
>  drivers/gpu/drm/i915/display/intel_ddi.c      | 1 +
>  drivers/gpu/drm/i915/display/intel_display.h  | 6 ------
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   | 1 +
>  drivers/gpu/drm/i915/display/intel_dpll.h     | 5 +++++
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 1 +
>  drivers/gpu/drm/i915/display/intel_sdvo.c     | 1 +
>  drivers/gpu/drm/i915/display/vlv_dsi.c        | 1 +
>  drivers/gpu/drm/i915/i915_trace.h             | 1 +
>  11 files changed, 16 insertions(+), 6 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i91=
5/display/icl_dsi.c
> index 37e2d93d064c..781630a40f06 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -31,6 +31,7 @@
>  #include "intel_atomic.h"
>  #include "intel_combo_phy.h"
>  #include "intel_connector.h"
> +#include "intel_crtc.h"
>  #include "intel_ddi.h"
>  #include "intel_dsi.h"
>  #include "intel_panel.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i=
915/display/intel_crt.c
> index c85092eaa5c2..1aac8bead4eb 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -36,6 +36,7 @@
>  #include "i915_drv.h"
>  #include "intel_connector.h"
>  #include "intel_crt.h"
> +#include "intel_crtc.h"
>  #include "intel_ddi.h"
>  #include "intel_display_types.h"
>  #include "intel_fdi.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.h b/drivers/gpu/drm/=
i915/display/intel_crtc.h
> index 08112d557411..a5ae997581aa 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.h
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.h
> @@ -18,5 +18,8 @@ int intel_crtc_init(struct drm_i915_private *dev_priv, =
enum pipe pipe);
>  struct intel_crtc_state *intel_crtc_state_alloc(struct intel_crtc *crtc);
>  void intel_crtc_state_reset(struct intel_crtc_state *crtc_state,
>  			    struct intel_crtc *crtc);
> +u32 intel_crtc_get_vblank_counter(struct intel_crtc *crtc);
> +void intel_crtc_vblank_on(const struct intel_crtc_state *crtc_state);
> +void intel_crtc_vblank_off(const struct intel_crtc_state *crtc_state);
>  =

>  #endif
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index f4249f087fa7..93d94d50b63d 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -31,6 +31,7 @@
>  #include "intel_audio.h"
>  #include "intel_combo_phy.h"
>  #include "intel_connector.h"
> +#include "intel_crtc.h"
>  #include "intel_ddi.h"
>  #include "intel_ddi_buf_trans.h"
>  #include "intel_display_types.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index b68bcd502206..fc0df4c63e8d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -557,9 +557,6 @@ enum tc_port intel_port_to_tc(struct drm_i915_private=
 *dev_priv,
>  			      enum port port);
>  int intel_get_pipe_from_crtc_id_ioctl(struct drm_device *dev, void *data,
>  				      struct drm_file *file_priv);
> -u32 intel_crtc_get_vblank_counter(struct intel_crtc *crtc);
> -void intel_crtc_vblank_on(const struct intel_crtc_state *crtc_state);
> -void intel_crtc_vblank_off(const struct intel_crtc_state *crtc_state);
>  =

>  int ilk_get_lanes_required(int target_clock, int link_bw, int bpp);
>  void vlv_wait_port_ready(struct drm_i915_private *dev_priv,
> @@ -598,9 +595,6 @@ void intel_dp_get_m_n(struct intel_crtc *crtc,
>  void intel_dp_set_m_n(const struct intel_crtc_state *crtc_state,
>  		      enum link_m_n_set m_n);
>  int intel_dotclock_calculate(int link_freq, const struct intel_link_m_n =
*m_n);
> -bool bxt_find_best_dpll(struct intel_crtc_state *crtc_state,
> -			struct dpll *best_clock);
> -int chv_calc_dpll_params(int refclk, struct dpll *pll_clock);
>  =

>  bool hsw_crtc_state_ips_capable(const struct intel_crtc_state *crtc_stat=
e);
>  void hsw_enable_ips(const struct intel_crtc_state *crtc_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.c
> index 3558bce242ee..a30ca4380a06 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -32,6 +32,7 @@
>  #include "intel_atomic.h"
>  #include "intel_audio.h"
>  #include "intel_connector.h"
> +#include "intel_crtc.h"
>  #include "intel_ddi.h"
>  #include "intel_display_types.h"
>  #include "intel_dp.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.h b/drivers/gpu/drm/=
i915/display/intel_dpll.h
> index 7ff4b0d29ed1..88247027fd5a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.h
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.h
> @@ -6,6 +6,8 @@
>  #ifndef _INTEL_DPLL_H_
>  #define _INTEL_DPLL_H_
>  =

> +#include <linux/types.h>
> +
>  struct dpll;
>  struct drm_i915_private;
>  struct intel_crtc;
> @@ -37,5 +39,8 @@ void vlv_prepare_pll(struct intel_crtc *crtc,
>  		     const struct intel_crtc_state *pipe_config);
>  void chv_prepare_pll(struct intel_crtc *crtc,
>  		     const struct intel_crtc_state *pipe_config);
> +bool bxt_find_best_dpll(struct intel_crtc_state *crtc_state,
> +			struct dpll *best_clock);
> +int chv_calc_dpll_params(int refclk, struct dpll *pll_clock);
>  =

>  #endif
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/=
drm/i915/display/intel_dpll_mgr.c
> index e1c916640768..da2ff0b3ceac 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -23,6 +23,7 @@
>  =

>  #include "intel_display_types.h"
>  #include "intel_dpio_phy.h"
> +#include "intel_dpll.h"
>  #include "intel_dpll_mgr.h"
>  =

>  /**
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/=
i915/display/intel_sdvo.c
> index f770d6bcd2c9..f6eb95c717d2 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -38,6 +38,7 @@
>  #include "i915_drv.h"
>  #include "intel_atomic.h"
>  #include "intel_connector.h"
> +#include "intel_crtc.h"
>  #include "intel_display_types.h"
>  #include "intel_fifo_underrun.h"
>  #include "intel_gmbus.h"
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i91=
5/display/vlv_dsi.c
> index 0d52da613101..ac0553d492aa 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> @@ -33,6 +33,7 @@
>  #include "i915_drv.h"
>  #include "intel_atomic.h"
>  #include "intel_connector.h"
> +#include "intel_crtc.h"
>  #include "intel_display_types.h"
>  #include "intel_dsi.h"
>  #include "intel_fifo_underrun.h"
> diff --git a/drivers/gpu/drm/i915/i915_trace.h b/drivers/gpu/drm/i915/i91=
5_trace.h
> index a4addcc64978..cac385e526c1 100644
> --- a/drivers/gpu/drm/i915/i915_trace.h
> +++ b/drivers/gpu/drm/i915/i915_trace.h
> @@ -8,6 +8,7 @@
>  =

>  #include <drm/drm_drv.h>
>  =

> +#include "display/intel_crtc.h"
>  #include "display/intel_display_types.h"
>  #include "gt/intel_engine.h"
>  =

> -- =

> 2.20.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
