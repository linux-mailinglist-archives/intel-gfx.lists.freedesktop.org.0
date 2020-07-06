Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 20F7B21579D
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jul 2020 14:51:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D159B6E432;
	Mon,  6 Jul 2020 12:51:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F36556E42B
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jul 2020 12:51:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1594039911;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=MI1FzeFA7SBhdD0KctsKzqgSrRlE7bEq8CZ2q3jRouY=;
 b=GQynL8SxBH8OLOCDyxi3QN4ULoJOZTW5U3vtdrah6uvPd5T9PHC3lRW5hHDa4OugzixBOS
 uCF1KHgg9UGsrne7JWYcxd20cEWJ6auFgewktWyHtJIYXHSJSRZkIT0X71yDYgp8ez70aD
 i61kxxsIpHHXHaGE6ZkjvlYG2J1PvVQ=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-280-HMdMHd7-OH2LRIWHI5SfQQ-1; Mon, 06 Jul 2020 08:51:44 -0400
X-MC-Unique: HMdMHd7-OH2LRIWHI5SfQQ-1
Received: by mail-ed1-f70.google.com with SMTP id h5so47896337edl.7
 for <intel-gfx@lists.freedesktop.org>; Mon, 06 Jul 2020 05:51:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=MI1FzeFA7SBhdD0KctsKzqgSrRlE7bEq8CZ2q3jRouY=;
 b=in5UkT7cjS6KAICU14moIbIi27cjLAD1yEgkYj7BScNM1Qb98ZIhU+yyaJA82vi8Rb
 GdMHjE7h+rpPy4jLrZVqXX62tRxh+RCc6Zs6c7NkCEBbgReP2G8QWOatLsVMsouPy4b5
 ka4cYdEtzTuX7ecRVWRnu6bi9P3IDmuM+f/74M1VWpoGtA89pwbb2VL1b5C/RQta4dBb
 G0FbB+A14HwbOZSOnJ3mUJP8pAcJ5upF0aZ4FeMoWSt1F4/SXyPdSkWI1VKxqQ9cjig0
 j9HnEfwSeyJZTdIqmEzf/62ZS1r6UZdxt64Of3NurUI3+XAl0J8V2JBPOupL2eNONIaM
 D3CA==
X-Gm-Message-State: AOAM532P+XHkH1PgTHk6MjbaRf0H8zIz9/T5g5dJ6ObJSysnUiwJ0ylU
 W3Rft7pWzzlavoQYN1Cc7MPGEpTzonxFIvRacF2s0QhV0qVxT6UXgoeLXSOaa3EgCCb8zw1dtXh
 EagFb3FOVpw7PfSDh0vmk0mtdiE+j
X-Received: by 2002:a05:6402:3049:: with SMTP id
 bu9mr42600795edb.232.1594039903312; 
 Mon, 06 Jul 2020 05:51:43 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxNvO/1YMo8GP9rOuLLyG5ZTis9lK2MEW3uCEMKowt6CGdru2HeGyfuE+9B9HykuzeraeGZRw==
X-Received: by 2002:a05:6402:3049:: with SMTP id
 bu9mr42600738edb.232.1594039902925; 
 Mon, 06 Jul 2020 05:51:42 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id a2sm19819251edt.48.2020.07.06.05.51.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 06 Jul 2020 05:51:42 -0700 (PDT)
To: Rajat Jain <rajatja@google.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Sean Paul <sean@poorly.run>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>, Imre Deak <imre.deak@intel.com>,
 =?UTF-8?Q?Jos=c3=a9_Roberto_de_Souza?= <jose.souza@intel.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, gregkh@linuxfoundation.org,
 mathewk@google.com, Daniel Thompson <daniel.thompson@linaro.org>,
 Jonathan Corbet <corbet@lwn.net>, Pavel Machek <pavel@denx.de>,
 seanpaul@google.com, Duncan Laurie <dlaurie@google.com>,
 jsbarnes@google.com, Thierry Reding <thierry.reding@gmail.com>,
 mpearson@lenovo.com, Nitin Joshi1 <njoshi1@lenovo.com>,
 Sugumaran Lacshiminarayanan <slacshiminar@lenovo.com>,
 Tomoki Maruichi <maruichit@lenovo.com>
References: <20200312185629.141280-1-rajatja@google.com>
 <20200312185629.141280-6-rajatja@google.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <76d1a721-5f7b-1e86-b8ee-183bffb78ff1@redhat.com>
Date: Mon, 6 Jul 2020 14:51:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200312185629.141280-6-rajatja@google.com>
Content-Language: en-US
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH v9 5/5] drm/i915: Enable support for
 integrated privacy screen
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
Cc: rajatxjain@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 3/12/20 7:56 PM, Rajat Jain wrote:
> Add support for an ACPI based integrated privacy screen that is
> available on some systems.
> 
> Signed-off-by: Rajat Jain <rajatja@google.com>

So as discussed a while ago I'm working on adding support for the
privacy-screen on Lenovo Thinkpads, introducing a small new
subsystem / helper-class as intermediary for when the privacy-screen
is controlled by e.g. some random drivers/platform/x86 driver rather
then directly by the GPU driver.

I'm almost ready to send out v1. I was working on hooking things
up in the i915 code and I was wondering what you were doing when
the property is actually changed and we need to commit the new
privacy-screen state to the hardware.

This made me look at this patch, some comments inline:

> ---
> v9: same as v8
> v8: - separate the APCI privacy screen into a separate patch.
>      - Don't destroy the property if there is no privacy screen (because
>        drm core doesn't like destroying property in late_register()).
>      - The setting change needs to be committed in ->update_pipe() for
>        ddi.c as well as dp.c and both of them call intel_dp_add_properties()
> v7: Look for ACPI node in ->late_register() hook.
>      Do the scan only once per drm_device (instead of 1 per drm_connector)
> v6: Addressed minor comments from Jani at
>      https://lkml.org/lkml/2020/1/24/1143
>       - local variable renamed.
>       - used drm_dbg_kms()
>       - used acpi_device_handle()
>       - Used opaque type acpi_handle instead of void*
> v5: same as v4
> v4: Same as v3
> v3: fold the code into existing acpi_device_id_update() function
> v2: formed by splitting the original patch into ACPI lookup, and privacy
>      screen property. Also move it into i915 now that I found existing code
>      in i915 that can be re-used.
> 
>   drivers/gpu/drm/i915/display/intel_atomic.c |  2 ++
>   drivers/gpu/drm/i915/display/intel_ddi.c    |  1 +
>   drivers/gpu/drm/i915/display/intel_dp.c     | 34 ++++++++++++++++++++-
>   drivers/gpu/drm/i915/display/intel_dp.h     |  5 +++
>   4 files changed, 41 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
> index d043057d2fa03..9898d8980e7ce 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> @@ -150,6 +150,8 @@ int intel_digital_connector_atomic_check(struct drm_connector *conn,
>   	    new_conn_state->base.picture_aspect_ratio != old_conn_state->base.picture_aspect_ratio ||
>   	    new_conn_state->base.content_type != old_conn_state->base.content_type ||
>   	    new_conn_state->base.scaling_mode != old_conn_state->base.scaling_mode ||
> +	    new_conn_state->base.privacy_screen_status !=
> +		old_conn_state->base.privacy_screen_status ||
>   	    !blob_equal(new_conn_state->base.hdr_output_metadata,
>   			old_conn_state->base.hdr_output_metadata))
>   		crtc_state->mode_changed = true;

Right I was planning on doing this to.

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 73d0f4648c06a..69a5423216dc5 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3708,6 +3708,7 @@ static void intel_ddi_update_pipe(struct intel_encoder *encoder,
>   	if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
>   		intel_ddi_update_pipe_dp(encoder, crtc_state, conn_state);
>   
> +	intel_dp_update_privacy_screen(encoder, crtc_state, conn_state);
>   	intel_hdcp_update_pipe(encoder, crtc_state, conn_state);
>   }
>   

And this too.

> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 3ddc424b028c1..5f33ebb466135 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -62,6 +62,7 @@
>   #include "intel_lspcon.h"
>   #include "intel_lvds.h"
>   #include "intel_panel.h"
> +#include "intel_privacy_screen.h"
>   #include "intel_psr.h"
>   #include "intel_sideband.h"
>   #include "intel_tc.h"
> @@ -5886,6 +5887,10 @@ intel_dp_connector_register(struct drm_connector *connector)
>   		dev_priv->acpi_scan_done = true;
>   	}
>   
> +	/* Check for integrated Privacy screen support */
> +	if (intel_privacy_screen_present(to_intel_connector(connector)))
> +		drm_connector_attach_privacy_screen_property(connector);
> +
>   	DRM_DEBUG_KMS("registering %s bus for %s\n",
>   		      intel_dp->aux.name, connector->kdev->kobj.name);
>   
> @@ -6883,6 +6888,33 @@ intel_dp_add_properties(struct intel_dp *intel_dp, struct drm_connector *connect
>   		connector->state->scaling_mode = DRM_MODE_SCALE_ASPECT;
>   
>   	}
> +
> +	/*
> +	 * Created here, but depending on result of probing for privacy-screen
> +	 * in intel_dp_connector_register(), gets attached in that function.
> +	 * Need to create here because the drm core doesn't like creating
> +	 * properties during ->late_register().
> +	 */
> +	drm_connector_create_privacy_screen_property(connector);
> +}
> +
> +void
> +intel_dp_update_privacy_screen(struct intel_encoder *encoder,
> +			       const struct intel_crtc_state *crtc_state,
> +			       const struct drm_connector_state *conn_state)
> +{
> +	struct drm_connector *connector = conn_state->connector;
> +
> +	intel_privacy_screen_set_val(to_intel_connector(connector),
> +				     conn_state->privacy_screen_status);
> +}
> +
> +static void intel_dp_update_pipe(struct intel_encoder *encoder,
> +				 const struct intel_crtc_state *crtc_state,
> +				 const struct drm_connector_state *conn_state)
> +{
> +	intel_dp_update_privacy_screen(encoder, crtc_state, conn_state);
> +	intel_panel_update_backlight(encoder, crtc_state, conn_state);
>   }
>   
>   static void intel_dp_init_panel_power_timestamps(struct intel_dp *intel_dp)
> @@ -7826,7 +7858,7 @@ bool intel_dp_init(struct drm_i915_private *dev_priv,
>   	intel_encoder->compute_config = intel_dp_compute_config;
>   	intel_encoder->get_hw_state = intel_dp_get_hw_state;
>   	intel_encoder->get_config = intel_dp_get_config;
> -	intel_encoder->update_pipe = intel_panel_update_backlight;
> +	intel_encoder->update_pipe = intel_dp_update_pipe;
>   	intel_encoder->suspend = intel_dp_encoder_suspend;
>   	if (IS_CHERRYVIEW(dev_priv)) {
>   		intel_encoder->pre_pll_enable = chv_dp_pre_pll_enable;

And this too.

One problem here is that AFAICT the update_pipe callback is only called on
fast modesets. So if the privacy_screen state is changed as part of a
full modeset, then the change will be ignored.

Even if we ignore that for now, this means that we end up calling
intel_privacy_screen_set_val(), or my equivalent of that for
each fast modeset.

In patch 4/5 intel_privacy_screen_set_val() is defined like this:

+void intel_privacy_screen_set_val(struct intel_connector *connector,
+				  enum drm_privacy_screen_status val)
+{
+	struct drm_device *drm = connector->base.dev;
+
+	if (val == PRIVACY_SCREEN_DISABLED) {
+		drm_dbg_kms(drm, "%s: disabling privacy-screen\n",
+			    CONN_NAME(connector));
+		acpi_privacy_screen_call_dsm(connector,
+					     CONNECTOR_DSM_FN_PRIVACY_DISABLE);
+	} else {
+		drm_dbg_kms(drm, "%s: enabling privacy-screen\n",
+			    CONN_NAME(connector));
+		acpi_privacy_screen_call_dsm(connector,
+					     CONNECTOR_DSM_FN_PRIVACY_ENABLE);
+	}
+}
+

There are 2 problems with this:

1. It makes the call even if there is no privacy-screen, and then
acpi_privacy_screen_call_dsm() will log an error (if the connector has an
associated handle but not the DSM).

2. It makes this call on any modeset, even if the property did non change
(and even if there is no privacy-screen) and AFAIK these ACPI calls are somewhat
expensive to make.

1. Should be easy to fix, fixing 2. is trickier. We really need access
to the new and old connector_state here to only make the ACPI calls when
necessary. But ATM all callbacks only ever get passed the new-state and
these callbacks are all called after drm_atomic_helper_swap_state() at
which point there is no way to get the old_state from the new_state.

I've chosen to instead do this to update the privacy-screen change:

--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -15501,6 +15503,9 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
  			intel_color_load_luts(new_crtc_state);
  	}

+	for_each_new_connector_in_state(&state->base, connector, new_connector_state, i)
+		drm_connector_update_privacy_screen(connector, &state->base);
+
  	/*
  	 * Now that the vblank has passed, we can go ahead and program the
  	 * optimal watermarks on platforms that need two-step watermark

With drm_connector_update_privacy_screen() looking like this:

+void drm_connector_update_privacy_screen(struct drm_connector *connector,
+					 struct drm_atomic_state *state)
+{
+	struct drm_connector_state *new_connector_state, *old_connector_state;
+	int ret;
+
+	if (!connector->privacy_screen)
+		return;
+
+	new_connector_state = drm_atomic_get_new_connector_state(state, connector);
+	old_connector_state = drm_atomic_get_old_connector_state(state, connector);
+
+	if (new_connector_state->privacy_screen_sw_state ==
+	    old_connector_state->privacy_screen_sw_state)
+		return;
+
+	ret = drm_privacy_screen_set_sw_state(connector->privacy_screen,
+				new_connector_state->privacy_screen_sw_state);
+	if (ret)
+		drm_err(connector->dev, "Error updating privacy-screen sw_state\n");
+}

Which avoids all the problems described above.

REgards,

Hans




> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index 0c7be8ed1423a..e4594e27ce5a8 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -123,4 +123,9 @@ static inline unsigned int intel_dp_unused_lane_mask(int lane_count)
>   
>   u32 intel_dp_mode_to_fec_clock(u32 mode_clock);
>   
> +void
> +intel_dp_update_privacy_screen(struct intel_encoder *encoder,
> +			       const struct intel_crtc_state *crtc_state,
> +			       const struct drm_connector_state *conn_state);
> +
>   #endif /* __INTEL_DP_H__ */
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
