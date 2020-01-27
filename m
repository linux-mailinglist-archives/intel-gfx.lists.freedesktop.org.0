Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BAE3C14A17E
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2020 11:09:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C15B6EABD;
	Mon, 27 Jan 2020 10:09:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 674F56EABD
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2020 10:09:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 02:09:46 -0800
X-IronPort-AV: E=Sophos;i="5.70,369,1574150400"; d="scan'208";a="221690712"
Received: from jpanina-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.52.12])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 02:09:45 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org,
 Arkadiusz Hiler <arkadiusz.hiler@intel.com>
In-Reply-To: <20200126195654.2172937-1-chris@chris-wilson.co.uk>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200126195654.2172937-1-chris@chris-wilson.co.uk>
Date: Mon, 27 Jan 2020 12:09:46 +0200
Message-ID: <87pnf5b47p.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Squelch kerneldoc
 complaints
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, 26 Jan 2020, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> drivers/gpu/drm/i915/display/intel_atomic.c:185: warning: Function parameter or member 'state' not described in 'intel_connector_needs_modeset'
> drivers/gpu/drm/i915/display/intel_atomic.c:185: warning: Function parameter or member 'connector' not described in 'intel_connector_needs_modeset'
>
> drivers/gpu/drm/i915/display/intel_fbc.c:1124: warning: Function parameter or member 'state' not described in 'intel_fbc_enable'
> drivers/gpu/drm/i915/display/intel_fbc.c:1124: warning: Excess function parameter 'crtc_state' description in 'intel_fbc_enable'
> drivers/gpu/drm/i915/display/intel_fbc.c:1124: warning: Excess function parameter 'plane_state' description in 'intel_fbc_enable'

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Arek, what does it take to enable automated documentation builds and
error reporting on CI?

>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/display/intel_atomic.c  | 2 ++
>  drivers/gpu/drm/i915/display/intel_display.c | 2 +-
>  drivers/gpu/drm/i915/display/intel_fbc.c     | 3 +--
>  3 files changed, 4 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
> index c362eecdd414..9921b1fa4e70 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> @@ -178,6 +178,8 @@ intel_digital_connector_duplicate_state(struct drm_connector *connector)
>  
>  /**
>   * intel_connector_needs_modeset - check if connector needs a modeset
> + * @state: the atomic state corresponding to this modeset
> + * @connector: the connector
>   */
>  bool
>  intel_connector_needs_modeset(struct intel_atomic_state *state,
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 9c81576dc43e..aaef06e19828 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -15861,7 +15861,7 @@ static void fb_obj_bump_render_priority(struct drm_i915_gem_object *obj)
>  
>  /**
>   * intel_prepare_plane_fb - Prepare fb for usage on plane
> - * @plane: drm plane to prepare for
> + * @_plane: drm plane to prepare for
>   * @_new_plane_state: the plane state being prepared
>   *
>   * Prepares a framebuffer for usage on a display plane.  Generally this
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index 88a9c2fea695..d3be6f619b31 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -1111,8 +1111,7 @@ void intel_fbc_choose_crtc(struct drm_i915_private *dev_priv,
>  /**
>   * intel_fbc_enable: tries to enable FBC on the CRTC
>   * @crtc: the CRTC
> - * @crtc_state: corresponding &drm_crtc_state for @crtc
> - * @plane_state: corresponding &drm_plane_state for the primary plane of @crtc
> + * @state: corresponding &drm_crtc_state for @crtc
>   *
>   * This function checks if the given CRTC was chosen for FBC, then enables it if
>   * possible. Notice that it doesn't activate FBC. It is valid to call

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
