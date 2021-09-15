Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA8EC40CE8B
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Sep 2021 23:11:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD3DE6EA48;
	Wed, 15 Sep 2021 21:11:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BE956EA50
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Sep 2021 21:11:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1631740278;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=g6BfT/bWvfgSQj6yRG8JvR0JOGusdA0R9kseiicnTX0=;
 b=UYikE4Y7NjlEZ78yzH3oPJedN/3JUPsTlV1iB1vSknu0/HnyCLGKeeHvMeDqoc5lvKRm9K
 vFz6xYHYq0pv0twPzM8BUYSOzKR0KS7YU7A2HKo+e7RKYQJW49QobH7FNF+k+CyYDX7PoW
 1Ta88ephMpFUCYg9PBFa6pGR6MQFhNI=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-468-d7ibmyKWNEaOM5q7KxTitw-1; Wed, 15 Sep 2021 17:11:18 -0400
X-MC-Unique: d7ibmyKWNEaOM5q7KxTitw-1
Received: by mail-qk1-f200.google.com with SMTP id
 h10-20020a05620a284a00b003d30e8c8cb5so9377888qkp.11
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Sep 2021 14:11:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=g6BfT/bWvfgSQj6yRG8JvR0JOGusdA0R9kseiicnTX0=;
 b=m0SL1XIqS7Vn2uu+jI0KTUo6BpEDJZHPwQa3RaPMiamWB0SzNnALNkI2tiS0bJoOpM
 DQMTKbxxVolMN8Jk7Owji4M60jSLABV/flIKDIU6echKn0IsVIE8LYDcuVfXq9S/DTjA
 Ct/8Wzsdi7sJJgvU2x+c/s0cAtEQhcbrEeHAk7rS9KU0AneUCiBiHO2DdWicsvqNfNu3
 udthKVFLV6QpfWLpDhlcysflBTaiKkWQD5IiR63J9ttSQVE5cERh6kdGOzPhStiB/MD9
 hQBPGFPnMD5iNpLCeNxL0yJFFo2qAM17EydXAlgsyz/6Fn62ZGXau6rrcoAPfG2q1HNA
 sWMQ==
X-Gm-Message-State: AOAM530cM7mUDky+LuE0WvhhNZGK20kVpEpaMTxi5Hl3MdB2TsrFdMS9
 P4yeHx0PR1QmMVq+pNNDIQAqMlC6xgnnXJnx9na5r5OILBdNHmaiRn3S5mGF7vav2HUJMMrH1sm
 /1aplCuNm7EQbDAWVHJotKSOsXww0
X-Received: by 2002:ad4:4ab1:: with SMTP id i17mr1814741qvx.11.1631740276289; 
 Wed, 15 Sep 2021 14:11:16 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwyk+0M3TmhG/pOqAeC0dVVTXyMcbdKUArP5owyG8E+WZ5dRwQwZrfy7hjk+95sKVoXlmF4fw==
X-Received: by 2002:ad4:4ab1:: with SMTP id i17mr1814720qvx.11.1631740276095; 
 Wed, 15 Sep 2021 14:11:16 -0700 (PDT)
Received: from [192.168.8.206] (pool-108-49-102-102.bstnma.fios.verizon.net.
 [108.49.102.102])
 by smtp.gmail.com with ESMTPSA id h6sm772062qtn.51.2021.09.15.14.11.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Sep 2021 14:11:15 -0700 (PDT)
Message-ID: <65286f7effc8b336f28f0c6f92fa9ae65e6e621b.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Hans de Goede <hdegoede@redhat.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>, Rajat Jain <rajatja@google.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,  Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Mark Gross <mgross@linux.intel.com>, Andy Shevchenko <andy@infradead.org>
Cc: Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>, Pekka
 Paalanen <pekka.paalanen@collabora.com>, Mario Limonciello
 <mario.limonciello@outlook.com>, Mark Pearson <markpearson@lenovo.com>,
 Sebastien Bacher <seb128@ubuntu.com>, Marco Trevisan
 <marco.trevisan@canonical.com>, Emil Velikov <emil.l.velikov@gmail.com>, 
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel@lists.freedesktop.org,  platform-driver-x86@vger.kernel.org
Date: Wed, 15 Sep 2021 17:11:13 -0400
In-Reply-To: <20210906073519.4615-10-hdegoede@redhat.com>
References: <20210906073519.4615-1-hdegoede@redhat.com>
 <20210906073519.4615-10-hdegoede@redhat.com>
Organization: Red Hat
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 9/9] drm/i915: Add privacy-screen support
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

On Mon, 2021-09-06 at 09:35 +0200, Hans de Goede wrote:
> Add support for eDP panels with a built-in privacy screen using the
> new drm_privacy_screen class.
> 
> One thing which stands out here is the addition of these 2 lines to
> intel_atomic_commit_tail:
> 
>         for_each_new_connector_in_state(&state->base, connector, ...
>                 drm_connector_update_privacy_screen(connector, state);
> 
> It may seem more logical to instead take care of updating the
> privacy-screen state by marking the crtc as needing a modeset and then
> do this in both the encoder update_pipe (for fast-sets) and enable
> (for full modesets) callbacks. But ATM these callbacks only get passed
> the new connector_state and these callbacks are all called after
> drm_atomic_helper_swap_state() at which point there is no way to get
> the old state from the new state.

I was going to suggest that you workaround this simply by adding a variable
that corresponds to the most recently committed privacy screen state somewhere
in a driver private structure. But, then I realized that's basically the same
as what you're doing now except that your current solution stores said state
in a shared struct. So, I think you probably do have the right idea here as
long as we don't get any non-ACPI providers in the future. This also seems
like something that wouldn't be difficult to fixup down the line if that ends
up changing.

> 
> Without access to the old state, we do not know if the sw_state of
> the privacy-screen has changes so we would need to call
> drm_privacy_screen_set_sw_state() unconditionally. This is undesirable
> since all current known privacy-screen providers use ACPI calls which
> are somewhat expensive to make.
> 
> Also, as all providers use ACPI calls, rather then poking GPU registers,
> there is no need to order this together with other encoder operations.
> Since no GPU poking is involved having this as a separate step of the
> commit process actually is the logical thing to do.
> 
> Reviewed-by: Emil Velikov <emil.l.velikov@gmail.com>
> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c |  5 +++++
>  drivers/gpu/drm/i915/display/intel_dp.c      | 10 ++++++++++
>  drivers/gpu/drm/i915/i915_pci.c              | 12 ++++++++++++
>  3 files changed, 27 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 5560d2f4c352..7285873d329a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -10140,6 +10140,8 @@ static void intel_atomic_commit_tail(struct
> intel_atomic_state *state)
>         struct drm_device *dev = state->base.dev;
>         struct drm_i915_private *dev_priv = to_i915(dev);
>         struct intel_crtc_state *new_crtc_state, *old_crtc_state;
> +       struct drm_connector_state *new_connector_state;
> +       struct drm_connector *connector;
>         struct intel_crtc *crtc;
>         u64 put_domains[I915_MAX_PIPES] = {};
>         intel_wakeref_t wakeref = 0;
> @@ -10237,6 +10239,9 @@ static void intel_atomic_commit_tail(struct
> intel_atomic_state *state)
>                         intel_color_load_luts(new_crtc_state);
>         }
>  
> +       for_each_new_connector_in_state(&state->base, connector,
> new_connector_state, i)
> +               drm_connector_update_privacy_screen(connector, &state-
> >base);
> +
>         /*
>          * Now that the vblank has passed, we can go ahead and program the
>          * optimal watermarks on platforms that need two-step watermark
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 7f8e8865048f..3aa2072cccf6 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -37,6 +37,7 @@
>  #include <drm/drm_crtc.h>
>  #include <drm/drm_dp_helper.h>
>  #include <drm/drm_edid.h>
> +#include <drm/drm_privacy_screen_consumer.h>
>  #include <drm/drm_probe_helper.h>
>  
>  #include "g4x_dp.h"
> @@ -5217,6 +5218,7 @@ static bool intel_edp_init_connector(struct intel_dp
> *intel_dp,
>         struct drm_connector *connector = &intel_connector->base;
>         struct drm_display_mode *fixed_mode = NULL;
>         struct drm_display_mode *downclock_mode = NULL;
> +       struct drm_privacy_screen *privacy_screen;
>         bool has_dpcd;
>         enum pipe pipe = INVALID_PIPE;
>         struct edid *edid;
> @@ -5308,6 +5310,14 @@ static bool intel_edp_init_connector(struct intel_dp
> *intel_dp,
>                                 fixed_mode->hdisplay, fixed_mode->vdisplay);
>         }
>  
> +       privacy_screen = drm_privacy_screen_get(dev->dev, NULL);
> +       if (!IS_ERR(privacy_screen)) {
> +               drm_connector_attach_privacy_screen_provider(connector,
> +                                                           
> privacy_screen);
> +       } else if (PTR_ERR(privacy_screen) != -ENODEV) {
> +               drm_warn(&dev_priv->drm, "Error getting privacy-screen\n");
> +       }
> +
>         return true;
>  
>  out_vdd_off:
> diff --git a/drivers/gpu/drm/i915/i915_pci.c
> b/drivers/gpu/drm/i915/i915_pci.c
> index 146f7e39182a..d6913f567a1c 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -25,6 +25,7 @@
>  #include <linux/vga_switcheroo.h>
>  
>  #include <drm/drm_drv.h>
> +#include <drm/drm_privacy_screen_consumer.h>
>  #include <drm/i915_pciids.h>
>  
>  #include "i915_drv.h"
> @@ -1167,6 +1168,7 @@ static int i915_pci_probe(struct pci_dev *pdev, const
> struct pci_device_id *ent)
>  {
>         struct intel_device_info *intel_info =
>                 (struct intel_device_info *) ent->driver_data;
> +       struct drm_privacy_screen *privacy_screen;
>         int err;
>  
>         if (intel_info->require_force_probe &&
> @@ -1195,7 +1197,17 @@ static int i915_pci_probe(struct pci_dev *pdev, const
> struct pci_device_id *ent)
>         if (vga_switcheroo_client_probe_defer(pdev))
>                 return -EPROBE_DEFER;
>  
> +       /*
> +        * We do not handle -EPROBE_DEFER further into the probe process, so
> +        * check if we have a laptop-panel privacy-screen for which the
> driver
> +        * has not loaded yet here.
> +        */
> +       privacy_screen = drm_privacy_screen_get(&pdev->dev, NULL);
> +       if (IS_ERR(privacy_screen) && PTR_ERR(privacy_screen) == -
> EPROBE_DEFER)
> +               return -EPROBE_DEFER;
> +
>         err = i915_driver_probe(pdev, ent);
> +       drm_privacy_screen_put(privacy_screen);
>         if (err)
>                 return err;
>  

-- 
Cheers,
 Lyude Paul (she/her)
 Software Engineer at Red Hat

