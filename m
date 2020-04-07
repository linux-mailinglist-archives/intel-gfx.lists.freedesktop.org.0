Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1EB81A0CCA
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 13:26:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75FC88977A;
	Tue,  7 Apr 2020 11:26:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71C998977A
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 11:26:39 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id w10so3464033wrm.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 07 Apr 2020 04:26:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=KyfILNey555qU+M1eNSx84mrKDNEYSn8CQtlsdb+dxk=;
 b=Ak0Ig8n7X39BDg+avM7cfRXUSS/HWJQ1T0noNGJtGm3Qfx3LnIRLiq5io148XMP8Ra
 URiMjvgqX+bp5j8k3yKV6rUpAyQ+cqcPFB5cbcO36oVXTDwxoHaQL83oKyMGP26NlM9X
 d4f3jbA+fbl/mIn47/OgaR/WGGTy05w9gPDirvIyZ9IAx3m41qyyczzd+yh4KTRTCI41
 nXn5DM2jmvzbE/39nGojY7HwXInHlQpLjq1NjMha+IWKrYlIK0ChZxNhoNDh6m2pPt9H
 nEBhQmWxX6D9U3CtL9y+ebhgQTrYK/GgpIZbZqeJp/463eOTqpHK8Cc/M/r2CZTUzBGt
 mqWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=KyfILNey555qU+M1eNSx84mrKDNEYSn8CQtlsdb+dxk=;
 b=Hj9DWV3xNi+xComQbhM+3lp5fCaiXMUThrvAGrSq1kaHJX4KF4hU8+/X4aIrUJkCM/
 CrW3J6RxBDlw8zFXANcwl/sWQ63ntJwSZpWBIRrewQmiXv2gcA5hVDWvzrdGfZ0K9TS2
 Ezr0DI0or9SY/NemGDAY2WoDnWfFZt22x+78FupnrHmQCG0UuG4MijLmt/RxHUytx693
 2w+wc15nZdLgjDwUuqe5P5X+WY2BsKEeJKa1SY6mixileOJjUnLj+oRD/7oUuZfJFHFT
 3iK4iDG3ZDCbt/avuFefOntnNSh6RVzcg7p0LK5CSQadE+E+lFc/y2h6PZObZ98DaHSf
 PkCA==
X-Gm-Message-State: AGi0PuZMLRy9AGwg6TC2YrcBARi8VXxrUaX9SIahK4Bm0cDJ8fzG2qG3
 Duqi2EBZgJc/lHc7pE7rVMk=
X-Google-Smtp-Source: APiQypIcpeHaoozOx2Z9fsx8eTbs8KvlMmF0u44paXz9AkkImWwxMg9q7IJ1gD7khHqU1+TJzbPYFg==
X-Received: by 2002:adf:fa4f:: with SMTP id y15mr2431182wrr.118.1586258798069; 
 Tue, 07 Apr 2020 04:26:38 -0700 (PDT)
Received: from wambui.local ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id d13sm3558659wrg.21.2020.04.07.04.26.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Apr 2020 04:26:37 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
X-Google-Original-From: Wambui Karuga <wambui@wambui>
Date: Tue, 7 Apr 2020 14:26:00 +0300 (EAT)
To: Jani Nikula <jani.nikula@intel.com>
In-Reply-To: <20200402114819.17232-3-jani.nikula@intel.com>
Message-ID: <alpine.LNX.2.21.99999.375.2004071425180.77089@wambui>
References: <20200402114819.17232-1-jani.nikula@intel.com>
 <20200402114819.17232-3-jani.nikula@intel.com>
User-Agent: Alpine 2.21.99999 (LNX 375 2019-10-29)
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 03/17] drm/i915/tc: use struct drm_device
 based logging
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On Thu, 2 Apr 2020, Jani Nikula wrote:

> Convert all the DRM_* logging macros to the struct drm_device based
> macros to provide device specific logging.
>
> No functional changes.
>
> Generated using the following semantic patch, originally written by
> Wambui Karuga <wambui.karugax@gmail.com>, with manual fixups on top:
>
> @@
> identifier fn, T;
> @@
>
> fn(...,struct drm_i915_private *T,...) {
> <+...
> (
> -DRM_INFO(
> +drm_info(&T->drm,
> ...)
> |
> -DRM_NOTE(
> +drm_notice(&T->drm,
> ...)
> |
> -DRM_ERROR(
> +drm_err(&T->drm,
> ...)
> |
> -DRM_WARN(
> +drm_warn(&T->drm,
> ...)
> |
> -DRM_DEBUG_DRIVER(
> +drm_dbg(&T->drm,
> ...)
> |
> -DRM_DEBUG_KMS(
> +drm_dbg_kms(&T->drm,
> ...)
> |
> -DRM_DEBUG_ATOMIC(
> +drm_dbg_atomic(&T->drm,
> ...)
> )
> ...+>
> }
>
> @@
> identifier fn, T;
> @@
>
> fn(...) {
> ...
> struct drm_i915_private *T = ...;
> <+...
> (
> -DRM_INFO(
> +drm_info(&T->drm,
> ...)
> |
> -DRM_NOTE(
> +drm_notice(&T->drm,
> ...)
> |
> -DRM_ERROR(
> +drm_err(&T->drm,
> ...)
> |
> -DRM_WARN(
> +drm_warn(&T->drm,
> ...)
> |
> -DRM_DEBUG_DRIVER(
> +drm_dbg(&T->drm,
> ...)
> |
> -DRM_DEBUG_KMS(
> +drm_dbg_kms(&T->drm,
> ...)
> |
> -DRM_DEBUG_ATOMIC(
> +drm_dbg_atomic(&T->drm,
> ...)
> )
> ...+>
> }
>
> Cc: Wambui Karuga <wambui.karugax@gmail.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Wambui Karuga <wambui.karugax@gmail.com>

> ---
> drivers/gpu/drm/i915/display/intel_tc.c | 47 ++++++++++++++-----------
> 1 file changed, 27 insertions(+), 20 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
> index 9b850c11aa78..275618bedf32 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -152,6 +152,7 @@ void intel_tc_port_set_fia_lane_count(struct intel_digital_port *dig_port,
> static void tc_port_fixup_legacy_flag(struct intel_digital_port *dig_port,
> 				      u32 live_status_mask)
> {
> +	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> 	u32 valid_hpd_mask;
>
> 	if (dig_port->tc_legacy_port)
> @@ -164,8 +165,9 @@ static void tc_port_fixup_legacy_flag(struct intel_digital_port *dig_port,
> 		return;
>
> 	/* If live status mismatches the VBT flag, trust the live status. */
> -	DRM_ERROR("Port %s: live status %08x mismatches the legacy port flag, fix flag\n",
> -		  dig_port->tc_port_name, live_status_mask);
> +	drm_err(&i915->drm,
> +		"Port %s: live status %08x mismatches the legacy port flag, fix flag\n",
> +		dig_port->tc_port_name, live_status_mask);
>
> 	dig_port->tc_legacy_port = !dig_port->tc_legacy_port;
> }
> @@ -233,8 +235,7 @@ static bool icl_tc_phy_set_safe_mode(struct intel_digital_port *dig_port,
> 	if (val == 0xffffffff) {
> 		drm_dbg_kms(&i915->drm,
> 			    "Port %s: PHY in TCCOLD, can't set safe-mode to %s\n",
> -			    dig_port->tc_port_name,
> -			      enableddisabled(enable));
> +			    dig_port->tc_port_name, enableddisabled(enable));
>
> 		return false;
> 	}
> @@ -286,11 +287,12 @@ static bool icl_tc_phy_is_in_safe_mode(struct intel_digital_port *dig_port)
> static void icl_tc_phy_connect(struct intel_digital_port *dig_port,
> 			       int required_lanes)
> {
> +	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> 	int max_lanes;
>
> 	if (!icl_tc_phy_status_complete(dig_port)) {
> -		DRM_DEBUG_KMS("Port %s: PHY not ready\n",
> -			      dig_port->tc_port_name);
> +		drm_dbg_kms(&i915->drm, "Port %s: PHY not ready\n",
> +			    dig_port->tc_port_name);
> 		goto out_set_tbt_alt_mode;
> 	}
>
> @@ -311,15 +313,16 @@ static void icl_tc_phy_connect(struct intel_digital_port *dig_port,
> 	 * became disconnected. Not necessary for legacy mode.
> 	 */
> 	if (!(tc_port_live_status_mask(dig_port) & BIT(TC_PORT_DP_ALT))) {
> -		DRM_DEBUG_KMS("Port %s: PHY sudden disconnect\n",
> -			      dig_port->tc_port_name);
> +		drm_dbg_kms(&i915->drm, "Port %s: PHY sudden disconnect\n",
> +			    dig_port->tc_port_name);
> 		goto out_set_safe_mode;
> 	}
>
> 	if (max_lanes < required_lanes) {
> -		DRM_DEBUG_KMS("Port %s: PHY max lanes %d < required lanes %d\n",
> -			      dig_port->tc_port_name,
> -			      max_lanes, required_lanes);
> +		drm_dbg_kms(&i915->drm,
> +			    "Port %s: PHY max lanes %d < required lanes %d\n",
> +			    dig_port->tc_port_name,
> +			    max_lanes, required_lanes);
> 		goto out_set_safe_mode;
> 	}
>
> @@ -357,15 +360,17 @@ static void icl_tc_phy_disconnect(struct intel_digital_port *dig_port)
>
> static bool icl_tc_phy_is_connected(struct intel_digital_port *dig_port)
> {
> +	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> +
> 	if (!icl_tc_phy_status_complete(dig_port)) {
> -		DRM_DEBUG_KMS("Port %s: PHY status not complete\n",
> -			      dig_port->tc_port_name);
> +		drm_dbg_kms(&i915->drm, "Port %s: PHY status not complete\n",
> +			    dig_port->tc_port_name);
> 		return dig_port->tc_mode == TC_PORT_TBT_ALT;
> 	}
>
> 	if (icl_tc_phy_is_in_safe_mode(dig_port)) {
> -		DRM_DEBUG_KMS("Port %s: PHY still in safe mode\n",
> -			      dig_port->tc_port_name);
> +		drm_dbg_kms(&i915->drm, "Port %s: PHY still in safe mode\n",
> +			    dig_port->tc_port_name);
>
> 		return false;
> 	}
> @@ -438,6 +443,7 @@ intel_tc_port_link_init_refcount(struct intel_digital_port *dig_port,
>
> void intel_tc_port_sanitize(struct intel_digital_port *dig_port)
> {
> +	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> 	struct intel_encoder *encoder = &dig_port->base;
> 	int active_links = 0;
>
> @@ -451,8 +457,9 @@ void intel_tc_port_sanitize(struct intel_digital_port *dig_port)
>
> 	if (active_links) {
> 		if (!icl_tc_phy_is_connected(dig_port))
> -			DRM_DEBUG_KMS("Port %s: PHY disconnected with %d active link(s)\n",
> -				      dig_port->tc_port_name, active_links);
> +			drm_dbg_kms(&i915->drm,
> +				    "Port %s: PHY disconnected with %d active link(s)\n",
> +				    dig_port->tc_port_name, active_links);
> 		intel_tc_port_link_init_refcount(dig_port, active_links);
>
> 		goto out;
> @@ -462,9 +469,9 @@ void intel_tc_port_sanitize(struct intel_digital_port *dig_port)
> 		icl_tc_phy_connect(dig_port, 1);
>
> out:
> -	DRM_DEBUG_KMS("Port %s: sanitize mode (%s)\n",
> -		      dig_port->tc_port_name,
> -		      tc_port_mode_name(dig_port->tc_mode));
> +	drm_dbg_kms(&i915->drm, "Port %s: sanitize mode (%s)\n",
> +		    dig_port->tc_port_name,
> +		    tc_port_mode_name(dig_port->tc_mode));
>
> 	mutex_unlock(&dig_port->tc_lock);
> }
> -- 
> 2.20.1
>
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
