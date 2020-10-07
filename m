Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 17696286A86
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Oct 2020 23:53:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1F426E9BE;
	Wed,  7 Oct 2020 21:53:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC99C6E9BE
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Oct 2020 21:53:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1602107605;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=BXDLJy3cpaM5bBZA0XOwM+ZPJVSdq/P/kp7oZvNnPnY=;
 b=X5640okfPXJTktdvl2NE0KeCy2nk2DO0qfWioBoW05db4KLD4ub3SSbdVOv9i0ycpx2avS
 3t8NC87NpAI1h2ZlvIcM5UAzsSEcIRDjm3kpz7JtpYmVzk7m+jQi3wcgWqLdUmVnlhoGhy
 E0AOwk+dvptRPwDQ/DgBmU47BygRQaA=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-188-2UNSzMtrPn2GxYSPklM51g-1; Wed, 07 Oct 2020 17:53:23 -0400
X-MC-Unique: 2UNSzMtrPn2GxYSPklM51g-1
Received: by mail-qv1-f71.google.com with SMTP id t7so2290210qvz.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 07 Oct 2020 14:53:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:reply-to:to:date
 :in-reply-to:references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=BXDLJy3cpaM5bBZA0XOwM+ZPJVSdq/P/kp7oZvNnPnY=;
 b=unPZXut6qdY61ah5PRwYp7X/13gVGCrd2aHjYxlt/YR5DA3XQVH+Kfk4/Wa0OCbGM0
 nLcxB+0naoQsT5IuKnOMyfs/b6L3VDowyhuYkiMf/Zs+fcg+L9jW595bcEfaHBVCMIa8
 EIdgEpWmdhOZogevMe/YZF8qL6F5G6nfA71Dox0xTfJwVyJVEo76n6G43bDVNlUCN/24
 2fbdJZi9tNgUIPRC6SqfD1HTLC3oSSkPrszO9S5JdYEq8Cqi1Ni6nX+k5oVEYfPBYLw/
 68xzhfpyHS3I3hAcEL8mAvexEPXsXz2DePKk6Zao97vHTo2bC4wxPuBOb3ud9OsGeEiV
 MT9A==
X-Gm-Message-State: AOAM533O/djitnTLDvyUPm4GMg5eddDamGNWlE4kB48qMbCATZR1ugUe
 ACQsBtXq8iYNSJnxC3oiHr8bD6bR6+i1eA97uMH8qxQzZjYV+RobSTu7Zi6zVdU8cFoPkek5Dti
 8O4TX3rBqiNRy756wDhqdupeIpLa7
X-Received: by 2002:ac8:2f4f:: with SMTP id k15mr5437826qta.178.1602107603052; 
 Wed, 07 Oct 2020 14:53:23 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJztgHq1DT8+0EZ0EAp6o4jDXABu9jdnfkiN69e3Dl5kWLMjxM+WdfGkPc8Onrw+Fq1DP+x8Zg==
X-Received: by 2002:ac8:2f4f:: with SMTP id k15mr5437813qta.178.1602107602829; 
 Wed, 07 Oct 2020 14:53:22 -0700 (PDT)
Received: from Whitewolf.lyude.net
 (pool-108-49-102-102.bstnma.fios.verizon.net. [108.49.102.102])
 by smtp.gmail.com with ESMTPSA id g1sm2485892qtp.74.2020.10.07.14.53.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 07 Oct 2020 14:53:22 -0700 (PDT)
Message-ID: <268f495fbb7e3042eb613398a8513a83d28d3fd9.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Satadru Pramanik <satadru@gmail.com>, Kai-Heng Feng
 <kai.heng.feng@canonical.com>, Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>, Daniel Vetter
 <daniel@ffwll.ch>, Ville =?ISO-8859-1?Q?Syrj=E4l=E4?=
 <ville.syrjala@linux.intel.com>, Juha-Pekka Heikkila
 <juhapekka.heikkila@gmail.com>, intel-gfx@lists.freedesktop.org, "open
 list:DRM DRIVERS" <dri-devel@lists.freedesktop.org>, open list
 <linux-kernel@vger.kernel.org>
Date: Wed, 07 Oct 2020 17:53:21 -0400
In-Reply-To: <20201007065915.13883-1-kai.heng.feng@canonical.com>
References: <20201007065915.13883-1-kai.heng.feng@canonical.com>
Organization: Red Hat
User-Agent: Evolution 3.36.5 (3.36.5-1.fc32)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/dpcd_bl: Skip testing control
 capability with force DPCD quirk
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
Reply-To: lyude@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi! I thought this patch rang a bell, we actually already had some discussion
about this since there's a couple of other systems this was causing issues for.
Unfortunately it never seems like that patch got sent out. Satadru?

(if I don't hear back from them soon, I'll just send out a patch for this
myself)

JFYI - the proper fix here is to just drop the
DP_EDP_BACKLIGHT_BRIGHTNESS_PWM_PIN_CAP check from the code entirely. As long as
the backlight supports AUX_SET_CAP, that should be enough for us to control it.


On Wed, 2020-10-07 at 14:58 +0800, Kai-Heng Feng wrote:
> HP DreamColor panel needs to be controlled via AUX interface. However,
> it has both DP_EDP_BACKLIGHT_BRIGHTNESS_AUX_SET_CAP and
> DP_EDP_BACKLIGHT_BRIGHTNESS_PWM_PIN_CAP set, so it fails to pass
> intel_dp_aux_display_control_capable() test.
> 
> Skip the test if the panel has force DPCD quirk.
> 
> Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> index acbd7eb66cbe..acf2e1c65290 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> @@ -347,9 +347,13 @@ int intel_dp_aux_init_backlight_funcs(struct
> intel_connector *intel_connector)
>  	struct intel_panel *panel = &intel_connector->panel;
>  	struct intel_dp *intel_dp = enc_to_intel_dp(intel_connector->encoder);
>  	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> +	bool force_dpcd;
> +
> +	force_dpcd = drm_dp_has_quirk(&intel_dp->desc, intel_dp->edid_quirks,
> +				      DP_QUIRK_FORCE_DPCD_BACKLIGHT);
>  
>  	if (i915->params.enable_dpcd_backlight == 0 ||
> -	    !intel_dp_aux_display_control_capable(intel_connector))
> +	    (!force_dpcd &&
> !intel_dp_aux_display_control_capable(intel_connector)))
>  		return -ENODEV;
>  
>  	/*
> @@ -358,9 +362,7 @@ int intel_dp_aux_init_backlight_funcs(struct
> intel_connector *intel_connector)
>  	 */
>  	if (i915->vbt.backlight.type !=
>  	    INTEL_BACKLIGHT_VESA_EDP_AUX_INTERFACE &&
> -	    i915->params.enable_dpcd_backlight != 1 &&
> -	    !drm_dp_has_quirk(&intel_dp->desc, intel_dp->edid_quirks,
> -			      DP_QUIRK_FORCE_DPCD_BACKLIGHT)) {
> +	    i915->params.enable_dpcd_backlight != 1 && !force_dpcd) {
>  		drm_info(&i915->drm,
>  			 "Panel advertises DPCD backlight support, but "
>  			 "VBT disagrees. If your backlight controls "
-- 
Sincerely,
      Lyude Paul (she/her)
      Software Engineer at Red Hat

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
