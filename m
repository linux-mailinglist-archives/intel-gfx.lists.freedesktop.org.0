Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7C196F6DE5
	for <lists+intel-gfx@lfdr.de>; Thu,  4 May 2023 16:42:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D919010E163;
	Thu,  4 May 2023 14:42:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78BD110E120
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 May 2023 14:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683211325; x=1714747325;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=t/ZuaxTObS+0P3jW7cGg3p5+dttKe7ukiqt/s2F5g4Q=;
 b=Nl5bP48Eeq1PLbuQZ2JloRl8denu63okT/1h+WyMXRzWMucV/aY1LE4Q
 sbnQ6wMFBpvj+ZoFJhEbgwUF6J02W60kxX84F5NPK2kCk98C7u6iXSzVy
 g5/r6OSvfxFHSp91o6f5QGxN+40hKlbNE4Ju53s5Y9qWUFWWNu6HfInmf
 GP2v3i9iaQZLgZuH0dphb1beifIWqkiuXeBCvJy34Dd8gi0vjlPQjCd0Z
 YjkOR0Bkl0kUPBkW4cOZXU09cED9+pegRqRs1sJWbfyOaTjSiW5XIY/BZ
 RkIPHsgg0H24XiybWbwfPyvkJkzVa8Jse9caSN2WL4sKiPJ/Cykhu+E8d A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="351063664"
X-IronPort-AV: E=Sophos;i="5.99,249,1677571200"; d="scan'208";a="351063664"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 07:42:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="871374527"
X-IronPort-AV: E=Sophos;i="5.99,249,1677571200"; d="scan'208";a="871374527"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga005.jf.intel.com with SMTP; 04 May 2023 07:42:02 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 04 May 2023 17:42:01 +0300
Date: Thu, 4 May 2023 17:42:01 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZFPEOdFDSzpB0Z3C@intel.com>
References: <20230503231048.432368-1-imre.deak@intel.com>
 <20230503231048.432368-4-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230503231048.432368-4-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 03/12] drm/i915: Update connector atomic
 state before crtc sanitize-disabling
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

On Thu, May 04, 2023 at 02:10:39AM +0300, Imre Deak wrote:
> During HW state readout/sanitization an up-to-date connector atomic
> state will be required by a follow-up patch, which can disable CRTCs
> with an encoder (and calling the correct encoder hooks happens via the
> connector atomic state encoder pointer). So update the connector state
> already before the CRTC sanitize/disable step. For now this doesn't make
> a difference, since intel_modeset_update_connector_atomic_state() will
> update/enable the atomic state only for connectors that have an enabled
> encoder/CRTC. Such CRTCs/encoders will not be affected by
> intel_sanitize_crtc().
> 
> v2: Add comment about why the connector state needs to be up-to-date.
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_modeset_setup.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> index 2ca66e49d8863..c1a4a7bcc56ae 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> @@ -701,6 +701,12 @@ void intel_modeset_setup_hw_state(struct drm_i915_private *i915,
>  	for_each_intel_encoder(&i915->drm, encoder)
>  		intel_sanitize_encoder(encoder);
>  
> +	/*
> +	 * Sanitizing CRTCs needs their connector atomic state to be
> +	 * up-to-date, so ensure that already here.
> +	 */
> +	intel_modeset_update_connector_atomic_state(i915);
> +
>  	for_each_intel_crtc(&i915->drm, crtc) {
>  		struct intel_crtc_state *crtc_state =
>  			to_intel_crtc_state(crtc->base.state);
> @@ -709,8 +715,6 @@ void intel_modeset_setup_hw_state(struct drm_i915_private *i915,
>  		intel_crtc_state_dump(crtc_state, NULL, "setup_hw_state");
>  	}
>  
> -	intel_modeset_update_connector_atomic_state(i915);
> -
>  	intel_dpll_sanitize_state(i915);
>  
>  	intel_wm_get_hw_state(i915);
> -- 
> 2.37.2

-- 
Ville Syrjälä
Intel
