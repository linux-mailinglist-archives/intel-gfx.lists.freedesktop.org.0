Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0D1F13B5F5
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 00:37:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D26DF6E5C3;
	Tue, 14 Jan 2020 23:37:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 981C76E5C3
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jan 2020 23:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579045018;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=kL501i3WSIKUNtDpyX6fXVobnyIygrYXqbdDBMUg6BQ=;
 b=b5YxEZmKwptmh0loRUm6iV33mxWVdQVSvqKxzACuJUjM4JKfCl2C2aQC8LVm9945vstuWj
 wwtGuuGF/1bhnHGVv+9lDC+KAPefNIAAn60HifvZZL1RTMbaSX43l7KuEl5F2PxxMzHP5/
 wRaheI4ykkUY2mUz6b/qqwQOGnuXtdg=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-214-_8t-h64CO4CYKNXmSFbFFg-1; Tue, 14 Jan 2020 18:36:54 -0500
Received: by mail-qt1-f200.google.com with SMTP id l25so10067147qtu.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jan 2020 15:36:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=kL501i3WSIKUNtDpyX6fXVobnyIygrYXqbdDBMUg6BQ=;
 b=JWdUo5BTlJTjH7ylRZg7jbvZt0B17vYidGufWi5+1bS0kliBb/lWM+BTwGcbAVOyhc
 KNEvbvgvRXlDCLAFOaXP6eTsrF/IJM1Y+h7IWEMgPRKHx8b7Zpop8TPASN7V19C+wDvX
 RGELWbV210eLgi6TdLo99NwIEdf4QAhcVDn2FICzzKRbzmUKN96BxoNdObeEN0+FLXOA
 yuEd0B46g3NLjYkuVfnLnCsFleyCmly0L247cwmYgx6XnF0Xv4cY4nRvEN/0rP40g4+o
 9GGSiiW3r1RUqNZugjqVGJz+F+XC0eSt/fqFhAR/3YJosUyM3N59MH9Zx4fTIR0bLfsc
 UJuQ==
X-Gm-Message-State: APjAAAXCL6jM8vFU9d/IFDnzP0cGjBGhnVXARq5+qGK88a324UNYsr2a
 nRO7UEDibHElM2rr6dEZCoXvjMDR/+IAeDmURZvTqWRqg0oa8Avyxap7A114XhDaeZBnXhmbsXZ
 rXxhsZRL/9uRxfKvMBvxwz7Z7RHNL
X-Received: by 2002:a37:4a0d:: with SMTP id x13mr24636083qka.332.1579045014031; 
 Tue, 14 Jan 2020 15:36:54 -0800 (PST)
X-Google-Smtp-Source: APXvYqyb6AVIQGY7kbw5LRztsZXmG+UxYVJp3V5ksYT4rf5S0YsGpUp183W3dWMm3286dUcs3K4iCA==
X-Received: by 2002:a37:4a0d:: with SMTP id x13mr24636067qka.332.1579045013729; 
 Tue, 14 Jan 2020 15:36:53 -0800 (PST)
Received: from dhcp-10-20-1-90.bss.redhat.com ([144.121.20.162])
 by smtp.gmail.com with ESMTPSA id z141sm7502388qkb.63.2020.01.14.15.36.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 15:36:52 -0800 (PST)
Message-ID: <fc4b86e27577d0467e3ca1bff52d7645b1e71e31.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Date: Tue, 14 Jan 2020 18:36:52 -0500
In-Reply-To: <99df51313fd8112a9eb8d30dde19dde51e0c618b.1579010266.git.jani.nikula@intel.com>
References: <cover.1579010266.git.jani.nikula@intel.com>
 <99df51313fd8112a9eb8d30dde19dde51e0c618b.1579010266.git.jani.nikula@intel.com>
Organization: Red Hat
User-Agent: Evolution 3.34.3 (3.34.3-1.fc31)
MIME-Version: 1.0
X-MC-Unique: _8t-h64CO4CYKNXmSFbFFg-1
X-Mimecast-Spam-Score: 0
Subject: Re: [Intel-gfx] [PATCH v2 5/5] drm/i915: Force DPCD backlight mode
 on X1 Extreme 2nd Gen 4K AMOLED panel
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
Cc: AceLan Kao <acelan.kao@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

fwiw - I got some feedback from one of the vendors that we work with that I
haven't gone through yet, but I'm hoping to figure out whether we want to
trust the vbt/dpcd based off that once I do. Once we've made up the decision
on that (and I send out a reroll if needed), think this is good to merge? (I
don't see any issues with any of the changes you've made, and they seem to
work fine on my machines)

On Tue, 2020-01-14 at 16:01 +0200, Jani Nikula wrote:
> From: Lyude Paul <lyude@redhat.com>
> 
> Annoyingly, the VBT on the ThinkPad X1 Extreme 2nd Gen indicates that
> the system uses plain PWM based backlight controls, when in reality the
> only backlight controls that work are the standard VESA eDP DPCD
> backlight controls.
> 
> Honestly, this makes me wonder how many other systems have these issues
> or lie about this in their VBT. Not sure we have any good way of finding
> out until panels like this become more common place in the laptop
> market. For now, just add a DRM DP quirk to indicate that this panel is
> telling the truth and is being a good LCD.
> 
> v2 by Jani:
> - rebase
> 
> Bugzilla: https://bugs.freedesktop.org/show_bug.cgi?id=112376
> Closes: https://gitlab.freedesktop.org/drm/intel/issues/642
> Tested-by: AceLan Kao <acelan.kao@canonical.com>
> Signed-off-by: Lyude Paul <lyude@redhat.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/drm_dp_helper.c                       | 4 ++++
>  drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 8 ++++++--
>  include/drm/drm_dp_helper.h                           | 8 ++++++++
>  3 files changed, 18 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_dp_helper.c
> b/drivers/gpu/drm/drm_dp_helper.c
> index 5a103e9b3c86..90e122809fa4 100644
> --- a/drivers/gpu/drm/drm_dp_helper.c
> +++ b/drivers/gpu/drm/drm_dp_helper.c
> @@ -1179,6 +1179,10 @@ static const struct dpcd_quirk dpcd_quirk_list[] = {
>  	{ OUI(0x00, 0x00, 0x00), DEVICE_ID('C', 'H', '7', '5', '1', '1'),
> false, BIT(DP_DPCD_QUIRK_NO_SINK_COUNT) },
>  	/* Synaptics DP1.4 MST hubs can support DSC without virtual DPCD */
>  	{ OUI(0x90, 0xCC, 0x24), DEVICE_ID_ANY, true,
> BIT(DP_DPCD_QUIRK_DSC_WITHOUT_VIRTUAL_DPCD) },
> +	/* Optional 4K AMOLED panel in the ThinkPad X1 Extreme 2nd Generation
> +	 * only supports DPCD backlight controls, despite advertising
> otherwise
> +	 */
> +	{ OUI(0xba, 0x41, 0x59), DEVICE_ID_ANY, false,
> BIT(DP_DPCD_QUIRK_FORCE_DPCD_BACKLIGHT) },
>  };
>  
>  #undef OUI
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> index 77a759361c5c..57774003e8c5 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> @@ -328,11 +328,15 @@ intel_dp_aux_display_control_capable(struct
> intel_connector *connector)
>  int intel_dp_aux_init_backlight_funcs(struct intel_connector
> *intel_connector)
>  {
>  	struct intel_panel *panel = &intel_connector->panel;
> -	struct drm_i915_private *dev_priv = to_i915(intel_connector-
> >base.dev);
> +	struct intel_dp *intel_dp = enc_to_intel_dp(intel_connector->encoder);
> +	struct drm_i915_private *i915 = to_i915(intel_connector->base.dev);
>  
>  	if (i915_modparams.enable_dpcd_backlight == 0 ||
>  	    (i915_modparams.enable_dpcd_backlight == -1 &&
> -	    dev_priv->vbt.backlight.type !=
> INTEL_BACKLIGHT_VESA_EDP_AUX_INTERFACE))
> +	     i915->vbt.backlight.type !=
> +	     INTEL_BACKLIGHT_VESA_EDP_AUX_INTERFACE &&
> +	     !drm_dp_has_quirk(&intel_dp->desc,
> +			       DP_DPCD_QUIRK_FORCE_DPCD_BACKLIGHT)))
>  		return -ENODEV;
>  
>  	if (!intel_dp_aux_display_control_capable(intel_connector))
> diff --git a/include/drm/drm_dp_helper.h b/include/drm/drm_dp_helper.h
> index 262faf9e5e94..bb081921f53d 100644
> --- a/include/drm/drm_dp_helper.h
> +++ b/include/drm/drm_dp_helper.h
> @@ -1532,6 +1532,14 @@ enum drm_dp_quirk {
>  	 * The DSC caps can be read from the physical aux instead.
>  	 */
>  	DP_DPCD_QUIRK_DSC_WITHOUT_VIRTUAL_DPCD,
> +	/**
> +	 * @DP_DPCD_QUIRK_FORCE_DPCD_BACKLIGHT:
> +	 *
> +	 * The device is telling the truth when it says that it uses DPCD
> +	 * backlight controls, even if the system's firmware disagrees.
> +	 * The driver should honor the DPCD backlight capabilities advertised.
> +	 */
> +	DP_DPCD_QUIRK_FORCE_DPCD_BACKLIGHT,
>  };
>  
>  /**
-- 
Cheers,
	Lyude Paul

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
