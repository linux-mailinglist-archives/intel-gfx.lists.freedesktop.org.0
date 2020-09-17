Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D28826E356
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Sep 2020 20:15:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14F016E2B4;
	Thu, 17 Sep 2020 18:15:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F81E6E2B4
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Sep 2020 18:15:01 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id g4so3551877edk.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Sep 2020 11:15:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hp+Z6P9+vyT3ezI9WHfGBcLrIejOM3tRxHdTMEeDKb4=;
 b=n4r7EtjhiWgQuF445EbeLvaQXdfWcB7uTdKD2W3MxM7qkbUbnLTvcgt12cWJzM/73Q
 E9a7IRpK660ME+oFkAV8WweEO9EA5KXXwBhtk9kb5VTkRE4OdgbfB/gBbCPAv07l97AN
 OT7eCjuX8Rk+iYhWfA/uRDs727SDYE4652XTw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hp+Z6P9+vyT3ezI9WHfGBcLrIejOM3tRxHdTMEeDKb4=;
 b=SIo2kZG3or9t5XE4QomDQrE233bvCJmTBAuVDXF4FjlFExH492yiUmKa3r6n792nGw
 V7ieKsCSKZQ7CvNzhZ0jm1iAVGPbGppXF8//2Hn4aGtoX8NmsW6XFiz4r1+GFLV9Mulg
 Qe7WIhzNF5AlICDMHXGs4gVgjE8qztFK3E5pwHdDSxIgcWWhleVtB+tASaZBsYiOD/kn
 Y/c/ZlYcjM2FnE105MCA6J480NqU4UfCqJORQAuh/MR0e1YHMXJ5qk/XMWeTUs/bYXKA
 O/NjkxgtOLEZATBprTKrmuWJATYUL/jtfo5xBtXtFO3/BQTTCs/DF46Vaixamh9FGWfA
 a44Q==
X-Gm-Message-State: AOAM532xpKoFCIYH4JGl0JU4WvAMF+xWVD+6+lVjpATkx6X8Rlv888Cd
 ENLjJPBudWbO+dxNpm1daww60LzzKDCPCAqNwChnFOirpzPGWw==
X-Google-Smtp-Source: ABdhPJxVQMOyL2pdA4FLxCiNpdphqs0CKGv0DXsJMUO02yGrm4AZYPuB8bOgci2h6ec4P1VbpLLYci8tiq2E9HSsEQE=
X-Received: by 2002:aa7:c896:: with SMTP id p22mr33966792eds.382.1600366499167; 
 Thu, 17 Sep 2020 11:14:59 -0700 (PDT)
MIME-Version: 1.0
References: <20200917110838.1.I63d52f5b96d7e81e1e2dc2a72c4bf5fd84d3d3d0@changeid>
 <87o8m4uxcn.fsf@intel.com>
 <CANM=9DOn9wvL1RBDhxzawY1rRq0PFUBmKdXUGmG1CygApK1Vyg@mail.gmail.com>
In-Reply-To: <CANM=9DOn9wvL1RBDhxzawY1rRq0PFUBmKdXUGmG1CygApK1Vyg@mail.gmail.com>
From: Puthikorn Voravootivat <puthik@chromium.org>
Date: Thu, 17 Sep 2020 11:14:43 -0700
Message-ID: <CANCcNXc18jEXF+wdLm8sxR3ySR88D8S65a2x_vYtR5ihZ6XnMw@mail.gmail.com>
To: Kevin Chowski <chowski@chromium.org>
Subject: Re: [Intel-gfx] [PATCH] i915: Introduce quirk for shifting eDP
 brightness.
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
Cc: David Airlie <airlied@linux.ie>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 Puthikorn Voravootivat <puthik@chromium.org>,
 Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The Lyude fde7266fb2f6 change is actually based on Chromium change
(https://crrev.com/c/1650325) that fixes the brightness for Samsung
Galaxy Chromebook. So currently we have 2 examples that use LSB
interpretation and 1 that use MSB.


On Thu, Sep 17, 2020 at 10:55 AM Kevin Chowski <chowski@chromium.org> wrote:
>
> Apologies for being too vague. To be as precise I can be, here is the
> specific code delta I tested: https://crrev.com/c/2406616 . To answer
> your other question, the code I tested against is indeed including the
> fde7266fb2f6 (despite ostensibly being called 5.4 in my commit
> message): our current top-of-tree for our 5.4 branch includes the
> intel_dp_aux_calc_max_backlight logic. Further, I'll note that change
> is exactly the change which breaks my Pixelbook model: prior to the
> change, the max_brightness was hard-coded to 0xFFFF and the math
> worked out that it didn't matter that the hardware cared about the MSB
> despite the driver code caring about the LSB.
>
> To answer Ville's question: the fde7266fb2f6 change which fixes one
> laptop (I believe Thinkpad X1 extreme Gen 2, from some bug reports I
> dug up) and breaks another (Pixelbook); so unfortunately I believe we
> need a quirk at least for some laptop. Reading through the copy of the
> datasheet I have, it wasn't clear to me which was the correct
> interpretation. I'm cc'ing puthik@, who was leaning toward the current
> kernel code (caring about LSB) being the correct interpretation. I
> believe we have other chromebooks which do rely on LSB functionality,
> so unless we can find more examples of laptops wanting MSB it
> currently looks like Pixelbook is the outlier.
>
> On Thu, Sep 17, 2020 at 11:28 AM Jani Nikula
> <jani.nikula@linux.intel.com> wrote:
> >
> > On Thu, 17 Sep 2020, Kevin Chowski <chowski@chromium.org> wrote:
> > > We have observed that Google Pixelbook's backlight hardware is
> > > interpretting these backlight bits from the most-significant side of the
> > > 16 bit word (if DP_EDP_PWMGEN_BIT_COUNT < 16), whereas the driver code
> > > assumes the peripheral cares about the least-significant bits.
> > >
> > > Testing was done from within Chrome OS's build environment when the
> > > patch is backported to 5.4 (the version we are newly targeting for the
> > > Pixelbook); for the record:
> > >    $ emerge-eve-kernelnext sys-kernel/chromeos-kernel-5_4 && \
> > >       ./update_kernel.sh --remote=$IP
> > >
> > > I used `/sys/kernel/debug/dri/0/eDP-1/i915_dpcd` on my laptop to verify
> > > that the registers were being set according to what the actual hardware
> > > expects; I also observe that the backlight is noticeably brighter with
> > > this patch.
> >
> > It's unclear to me what kernel version this is against, and what you've
> > actually tested.
> >
> > Have you tried v5.7 kernel with Lyude's fde7266fb2f6 ("drm/i915: Fix eDP
> > DPCD aux max backlight calculations")?
> >
> > I just want to make sure you've tested with all the relevant fixes
> > before adding quirks.
> >
> > BR,
> > Jani.
> >
> > >
> > > Signed-off-by: Kevin Chowski <chowski@chromium.org>
> > > ---
> > >
> > >  .../drm/i915/display/intel_dp_aux_backlight.c | 34 +++++++++++++++++++
> > >  drivers/gpu/drm/i915/display/intel_quirks.c   | 13 +++++++
> > >  drivers/gpu/drm/i915/i915_drv.h               |  1 +
> > >  3 files changed, 48 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > > index acbd7eb66cbe3..99c98f217356d 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > > @@ -91,6 +91,23 @@ static u32 intel_dp_aux_get_backlight(struct intel_connector *connector)
> > >       if (intel_dp->edp_dpcd[2] & DP_EDP_BACKLIGHT_BRIGHTNESS_BYTE_COUNT)
> > >               level = (read_val[0] << 8 | read_val[1]);
> > >
> > > +     if (i915->quirks & QUIRK_SHIFT_EDP_BACKLIGHT_BRIGHTNESS) {
> > > +             if (!drm_dp_dpcd_readb(&intel_dp->aux, DP_EDP_PWMGEN_BIT_COUNT,
> > > +                                             &read_val[0])) {
> > > +                     DRM_DEBUG_KMS("Failed to read DPCD register 0x%x\n",
> > > +                                     DP_EDP_PWMGEN_BIT_COUNT);
> > > +                     return 0;
> > > +             }
> > > +             // Only bits 4:0 are used, 7:5 are reserved.
> > > +             read_val[0] = read_val[0] & 0x1F;
> > > +             if (read_val[0] > 16) {
> > > +                     DRM_DEBUG_KMS("Invalid DP_EDP_PWNGEN_BIT_COUNT 0x%X, expected at most 16\n",
> > > +                                             read_val[0]);
> > > +                     return 0;
> > > +             }
> > > +             level >>= 16 - read_val[0];
> > > +     }
> > > +
> > >       return level;
> > >  }
> > >
> > > @@ -106,6 +123,23 @@ intel_dp_aux_set_backlight(const struct drm_connector_state *conn_state, u32 lev
> > >       struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> > >       u8 vals[2] = { 0x0 };
> > >
> > > +     if (i915->quirks & QUIRK_SHIFT_EDP_BACKLIGHT_BRIGHTNESS) {
> > > +             if (!drm_dp_dpcd_readb(&intel_dp->aux, DP_EDP_PWMGEN_BIT_COUNT,
> > > +                                             &vals[0])) {
> > > +                     DRM_DEBUG_KMS("Failed to write aux backlight level: Failed to read DPCD register 0x%x\n",
> > > +                                       DP_EDP_PWMGEN_BIT_COUNT);
> > > +                     return;
> > > +             }
> > > +             // Only bits 4:0 are used, 7:5 are reserved.
> > > +             vals[0] = vals[0] & 0x1F;
> > > +             if (vals[0] > 16) {
> > > +                     DRM_DEBUG_KMS("Failed to write aux backlight level: Invalid DP_EDP_PWNGEN_BIT_COUNT 0x%X, expected at most 16\n",
> > > +                                             vals[0]);
> > > +                     return;
> > > +             }
> > > +             level <<= (16 - vals[0]) & 0xFFFF;
> > > +     }
> > > +
> > >       vals[0] = level;
> > >
> > >       /* Write the MSB and/or LSB */
> > > diff --git a/drivers/gpu/drm/i915/display/intel_quirks.c b/drivers/gpu/drm/i915/display/intel_quirks.c
> > > index 46beb155d835f..63b27d49b2864 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_quirks.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_quirks.c
> > > @@ -53,6 +53,16 @@ static void quirk_increase_ddi_disabled_time(struct drm_i915_private *i915)
> > >       drm_info(&i915->drm, "Applying Increase DDI Disabled quirk\n");
> > >  }
> > >
> > > +/*
> > > + * Some eDP backlight hardware uses the most-significant bits of the brightness
> > > + * register, so brightness values must be shifted first.
> > > + */
> > > +static void quirk_shift_edp_backlight_brightness(struct drm_i915_private *i915)
> > > +{
> > > +     i915->quirks |= QUIRK_SHIFT_EDP_BACKLIGHT_BRIGHTNESS;
> > > +     DRM_INFO("Applying shift eDP backlight brightness quirk\n");
> > > +}
> > > +
> > >  struct intel_quirk {
> > >       int device;
> > >       int subsystem_vendor;
> > > @@ -156,6 +166,9 @@ static struct intel_quirk intel_quirks[] = {
> > >       /* ASRock ITX*/
> > >       { 0x3185, 0x1849, 0x2212, quirk_increase_ddi_disabled_time },
> > >       { 0x3184, 0x1849, 0x2212, quirk_increase_ddi_disabled_time },
> > > +
> > > +     /* Google Pixelbook */
> > > +     { 0x591E, 0x8086, 0x2212, quirk_shift_edp_backlight_brightness },
> > >  };
> > >
> > >  void intel_init_quirks(struct drm_i915_private *i915)
> > > diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> > > index e4f7f6518945b..cc93bede4fab8 100644
> > > --- a/drivers/gpu/drm/i915/i915_drv.h
> > > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > > @@ -525,6 +525,7 @@ struct i915_psr {
> > >  #define QUIRK_PIN_SWIZZLED_PAGES (1<<5)
> > >  #define QUIRK_INCREASE_T12_DELAY (1<<6)
> > >  #define QUIRK_INCREASE_DDI_DISABLED_TIME (1<<7)
> > > +#define QUIRK_SHIFT_EDP_BACKLIGHT_BRIGHTNESS (1<<8)
> > >
> > >  struct intel_fbdev;
> > >  struct intel_fbc_work;
> >
> > --
> > Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
