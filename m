Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 937301A0CB3
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 13:17:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB9646E836;
	Tue,  7 Apr 2020 11:17:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 331876E836
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 11:17:17 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id g3so3440793wrx.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 07 Apr 2020 04:17:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=9g0R7ihT0fQWCAF29vZBSjpHqqRci5R+SXszU6bbtbU=;
 b=RErZAuITrKf2fRvfXt80WuWwDoe73ZKgVvC8XKxcfQy2mFqrMHvPvO7xCB9DWTtijN
 3O3Mqya2m3GilzL2sK6q8Qwndi/h9PDOoxiAPRvt0vH6FAgbRn0VdWIAQzJ2ia4XrNoy
 M46Lpn/XPHV5eUKJWv4MgPorL/f7n3LGufB/QdjXkwVHhjzkO1e3c+z+vtAu8WiNNnLr
 XJ08UNULVSu05FImnEr1PMSmnpJl9qe5DG8M6Lr90He1cucsfgppewruCqiqjHbRHk32
 KG1ChzcqieqEX3M1ac+SdpigOIpLZdoi3eqPoJUdak2qZA77KpASBUo3w0/SSk0t0K+m
 SfMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=9g0R7ihT0fQWCAF29vZBSjpHqqRci5R+SXszU6bbtbU=;
 b=WjPF2y32Ok34Xbwlfq2gjmgu1wI/LaB9OtDI4YuoV/cchgXKdhKLZ7w9+lXt/Ubdjd
 uLPvfYjzAP0x8Yl+waxkDJJh9WJT0nR4S01rA8JgEHFiZSPluqbDYI1nnYzpKyaS2xhr
 iSNPm6Q9EPAKNVP4OTYTpm2AUjsLQAaiJWh4TQZ4k8+OZzX+2gYLg3MsEMTxr7vFo0ij
 TI8gCT6HKvvA56ls7nyQkiyWXPYFghnXqBEaSqhs1j2sXXpTxaCqZcKnsh1DImrwpbg8
 Fo1lGscTt2ZbNrwcr0pBS1SMxalK4+9pSWTTTJar/4SHFTCklPKnbf1kcwKL+3VZr7Nn
 980A==
X-Gm-Message-State: AGi0Pub34E6buoGC4m1uIoSe27lbSuLetva/BJ1P9I+qhZYzpub9Mi8e
 0UIGSpvBGd28v/R5icLrYI8=
X-Google-Smtp-Source: APiQypIpmGQcKcOsECilF2Az+qnI/+op+ybEHFSAAAUkN/iD5CA4DAMbf1edDTPmUvhQ3syb1HMAZQ==
X-Received: by 2002:adf:fe87:: with SMTP id l7mr2141960wrr.377.1586258235799; 
 Tue, 07 Apr 2020 04:17:15 -0700 (PDT)
Received: from wambui.local ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id f4sm13121356wrp.80.2020.04.07.04.17.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Apr 2020 04:17:15 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
X-Google-Original-From: Wambui Karuga <wambui@wambui>
Date: Tue, 7 Apr 2020 14:16:55 +0300 (EAT)
To: Jani Nikula <jani.nikula@intel.com>
In-Reply-To: <20200402114819.17232-2-jani.nikula@intel.com>
Message-ID: <alpine.LNX.2.21.99999.375.2004071416060.77089@wambui>
References: <20200402114819.17232-1-jani.nikula@intel.com>
 <20200402114819.17232-2-jani.nikula@intel.com>
User-Agent: Alpine 2.21.99999 (LNX 375 2019-10-29)
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 02/17] drm/i915/panel: use struct drm_device
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
> drivers/gpu/drm/i915/display/intel_panel.c | 19 +++++++++++--------
> 1 file changed, 11 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
> index 276f43870802..a080a623bed6 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -684,9 +684,10 @@ static void
> intel_panel_actually_set_backlight(const struct drm_connector_state *conn_state, u32 level)
> {
> 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
> +	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> 	struct intel_panel *panel = &connector->panel;
>
> -	DRM_DEBUG_DRIVER("set backlight PWM = %d\n", level);
> +	drm_dbg_kms(&i915->drm, "set backlight PWM = %d\n", level);
>
> 	level = intel_panel_compute_brightness(connector, level);
> 	panel->backlight.set(conn_state, level);
> @@ -867,8 +868,8 @@ void intel_panel_disable_backlight(const struct drm_connector_state *old_conn_st
> 	 * another client is not activated.
> 	 */
> 	if (dev_priv->drm.switch_power_state == DRM_SWITCH_POWER_CHANGING) {
> -		drm_dbg(&dev_priv->drm,
> -			"Skipping backlight disable on vga switch\n");
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "Skipping backlight disable on vga switch\n");
> 		return;
> 	}
>
> @@ -1244,7 +1245,7 @@ static u32 intel_panel_get_backlight(struct intel_connector *connector)
>
> 	mutex_unlock(&dev_priv->backlight_lock);
>
> -	drm_dbg(&dev_priv->drm, "get backlight PWM = %d\n", val);
> +	drm_dbg_kms(&dev_priv->drm, "get backlight PWM = %d\n", val);
> 	return val;
> }
>
> @@ -1335,6 +1336,7 @@ static const struct backlight_ops intel_backlight_device_ops = {
>
> int intel_backlight_device_register(struct intel_connector *connector)
> {
> +	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> 	struct intel_panel *panel = &connector->panel;
> 	struct backlight_properties props;
>
> @@ -1374,14 +1376,15 @@ int intel_backlight_device_register(struct intel_connector *connector)
> 					  &intel_backlight_device_ops, &props);
>
> 	if (IS_ERR(panel->backlight.device)) {
> -		DRM_ERROR("Failed to register backlight: %ld\n",
> -			  PTR_ERR(panel->backlight.device));
> +		drm_err(&i915->drm, "Failed to register backlight: %ld\n",
> +			PTR_ERR(panel->backlight.device));
> 		panel->backlight.device = NULL;
> 		return -ENODEV;
> 	}
>
> -	DRM_DEBUG_KMS("Connector %s backlight sysfs interface registered\n",
> -		      connector->base.name);
> +	drm_dbg_kms(&i915->drm,
> +		    "Connector %s backlight sysfs interface registered\n",
> +		    connector->base.name);
>
> 	return 0;
> }
> -- 
> 2.20.1
>
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
