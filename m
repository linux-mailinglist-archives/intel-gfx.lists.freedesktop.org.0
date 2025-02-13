Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 926DAA34E4F
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 20:15:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BB6C10EB80;
	Thu, 13 Feb 2025 19:15:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DIsR/OaI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7421210EB80
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Feb 2025 19:15:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739474152; x=1771010152;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=AA67dxV2s4BrdNANolA/mBU1HRXoocBfG9czbmD417A=;
 b=DIsR/OaIN6EbqeFVqw+22DI5mB6tuaVQxaPzpf4urRGrEvQjfD1Ve8WS
 QoSSbojbZdhwdHm1cQ2QGfBKNkGnkYm3PPPWUwQSpnH5cKzeSChRER/G2
 IDEywQ2yxT7ycOr2JMmo+SxtDnNxznUSOzMImDxxUV/cgJOk/TD59BrEi
 b1nXfufhlrCuhJikdc6wmw+DT9vxQbbq8BZnFNuvN6VDudK4RmMzIccJ0
 Ty0L5iGQWmwwGTq4PhHwYjecy8Xw8E5ZF83Z4AYGzoNGnlKOUr8g9JyTp
 LQNBjUTeaLmW0W/Km7nKftpaZXmqTgdqurg4lDTak4gSJg5QbxgvtRqdr g==;
X-CSE-ConnectionGUID: DllV6yiaTb2NvpnRUAts5Q==
X-CSE-MsgGUID: SnUIfKmHQ6qeWpYyps06wg==
X-IronPort-AV: E=McAfee;i="6700,10204,11344"; a="50845585"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="50845585"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 11:15:52 -0800
X-CSE-ConnectionGUID: WfxT3a90RSaZPO4nxauObA==
X-CSE-MsgGUID: VAO/IQbCR/29YNdeBIhu7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="114122111"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.30])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 11:15:51 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 05/12] drm/i915: Move intel_hpd_poll_fini() into
 intel_hotplug.c
In-Reply-To: <20250213150220.13580-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250213150220.13580-1-ville.syrjala@linux.intel.com>
 <20250213150220.13580-6-ville.syrjala@linux.intel.com>
Date: Thu, 13 Feb 2025 21:15:46 +0200
Message-ID: <875xldy7tp.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Thu, 13 Feb 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> The name of intel_hpd_poll_fini() suggests that it should live
> in intel_hotplug.c. Make it so.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Side note, I've got patches convert all the hotplug and display irq code
over to struct intel_display. Let's get this merged first and I'll
rebase.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 16 ----------------
>  drivers/gpu/drm/i915/display/intel_display.h |  2 --
>  drivers/gpu/drm/i915/display/intel_hotplug.c | 16 ++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_hotplug.h |  1 +
>  4 files changed, 17 insertions(+), 18 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index d3f8af9c75ef..0807a4979ea2 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -62,7 +62,6 @@
>  #include "intel_bw.h"
>  #include "intel_cdclk.h"
>  #include "intel_clock_gating.h"
> -#include "intel_connector.h"
>  #include "intel_color.h"
>  #include "intel_crt.h"
>  #include "intel_crtc.h"
> @@ -93,7 +92,6 @@
>  #include "intel_fdi.h"
>  #include "intel_fifo_underrun.h"
>  #include "intel_frontbuffer.h"
> -#include "intel_hdcp.h"
>  #include "intel_hdmi.h"
>  #include "intel_hotplug.h"
>  #include "intel_link_bw.h"
> @@ -8781,20 +8779,6 @@ void i830_disable_pipe(struct intel_display *displ=
ay, enum pipe pipe)
>  	intel_de_posting_read(display, DPLL(display, pipe));
>  }
>=20=20
> -void intel_hpd_poll_fini(struct drm_i915_private *i915)
> -{
> -	struct intel_connector *connector;
> -	struct drm_connector_list_iter conn_iter;
> -
> -	/* Kill all the work that may have been queued by hpd. */
> -	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
> -	for_each_intel_connector_iter(connector, &conn_iter) {
> -		intel_connector_cancel_modeset_retry_work(connector);
> -		intel_hdcp_cancel_works(connector);
> -	}
> -	drm_connector_list_iter_end(&conn_iter);
> -}
> -
>  bool intel_scanout_needs_vtd_wa(struct intel_display *display)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(display->drm);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index d4a709588700..e14aa773323e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -571,8 +571,6 @@ enum drm_mode_status intel_mode_valid(struct drm_devi=
ce *dev,
>  int intel_atomic_commit(struct drm_device *dev, struct drm_atomic_state =
*_state,
>  			bool nonblock);
>=20=20
> -void intel_hpd_poll_fini(struct drm_i915_private *i915);
> -
>  /* modesetting asserts */
>  void assert_transcoder(struct intel_display *display,
>  		       enum transcoder cpu_transcoder, bool state);
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/d=
rm/i915/display/intel_hotplug.c
> index 9c935afc60aa..00d7b1ccf190 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
> @@ -28,8 +28,10 @@
>=20=20
>  #include "i915_drv.h"
>  #include "i915_irq.h"
> +#include "intel_connector.h"
>  #include "intel_display_power.h"
>  #include "intel_display_types.h"
> +#include "intel_hdcp.h"
>  #include "intel_hotplug.h"
>  #include "intel_hotplug_irq.h"
>=20=20
> @@ -864,6 +866,20 @@ void intel_hpd_poll_disable(struct drm_i915_private =
*dev_priv)
>  	spin_unlock_irq(&dev_priv->irq_lock);
>  }
>=20=20
> +void intel_hpd_poll_fini(struct drm_i915_private *i915)
> +{
> +	struct intel_connector *connector;
> +	struct drm_connector_list_iter conn_iter;
> +
> +	/* Kill all the work that may have been queued by hpd. */
> +	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
> +	for_each_intel_connector_iter(connector, &conn_iter) {
> +		intel_connector_cancel_modeset_retry_work(connector);
> +		intel_hdcp_cancel_works(connector);
> +	}
> +	drm_connector_list_iter_end(&conn_iter);
> +}
> +
>  void intel_hpd_init_early(struct drm_i915_private *i915)
>  {
>  	INIT_DELAYED_WORK(&i915->display.hotplug.hotplug_work,
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.h b/drivers/gpu/d=
rm/i915/display/intel_hotplug.h
> index d2ca9d2f1d39..d6986902b054 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug.h
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.h
> @@ -16,6 +16,7 @@ enum port;
>=20=20
>  void intel_hpd_poll_enable(struct drm_i915_private *dev_priv);
>  void intel_hpd_poll_disable(struct drm_i915_private *dev_priv);
> +void intel_hpd_poll_fini(struct drm_i915_private *i915);
>  enum intel_hotplug_state intel_encoder_hotplug(struct intel_encoder *enc=
oder,
>  					       struct intel_connector *connector);
>  void intel_hpd_irq_handler(struct drm_i915_private *dev_priv,

--=20
Jani Nikula, Intel
