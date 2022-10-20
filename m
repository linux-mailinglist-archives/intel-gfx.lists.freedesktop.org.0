Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CDEF605A4B
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Oct 2022 10:53:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D8C710E56E;
	Thu, 20 Oct 2022 08:53:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C956F10E56E
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Oct 2022 08:53:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666256005; x=1697792005;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=UcBBGnWmlcTvDpK0DPKRlcgSYvy4mAOiWHQTCBiXGg0=;
 b=XdCQyqGAXdTw24JSNH3hmxeRz4cktZmvdafmdlatX2qK4vPHkvBFuyeG
 C1DpNzqpiRBqTXuA+jbit94SdT7y8fGVSIYEOriRFENuGX1TZcxSa0Ays
 k8IChoiMuT8QJnY7kXIYvJIWprzuj0KPf6kCGg4+HtAERpyb21CScpxkf
 JrElGBCPyXGyvXALE6mI5Zwva78YNLb/tqN1gYC0hSW0wBf3WV4hxfmXH
 bPYuaKmAKZ8nxfGTgIZGszOhhhL2ERrafm8ZjzQWhDWoERGJMbSkanEbo
 7S8Ob3CTIgwJOlHiZc2JKOPFHHJajYwiKPwmVE7AMXCeFbxXsqKK+sHNW Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="294049094"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="294049094"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 01:53:24 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="662922030"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="662922030"
Received: from xhallade-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.45.249])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 01:53:22 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <MWHPR11MB17418451B1D7D2C2B23D14A0E32A9@MWHPR11MB1741.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220919130505.1984383-1-suraj.kandpal@intel.com>
 <20220919130505.1984383-3-suraj.kandpal@intel.com>
 <877d1esgtt.fsf@intel.com>
 <MWHPR11MB17418451B1D7D2C2B23D14A0E32A9@MWHPR11MB1741.namprd11.prod.outlook.com>
Date: Thu, 20 Oct 2022 11:53:19 +0300
Message-ID: <87h6zyho5c.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v6 2/3] drm/i915 : Changing intel_connector
 iterators
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

On Thu, 20 Oct 2022, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>> > diff --git a/drivers/gpu/drm/i915/display/intel_acpi.c
>> > b/drivers/gpu/drm/i915/display/intel_acpi.c
>> > index 9df78e7caa2b..912fe5c2ffe5 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_acpi.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_acpi.c
>> > @@ -349,8 +349,13 @@ void intel_acpi_video_register(struct
>> drm_i915_private *i915)
>> >      */
>> >     drm_connector_list_iter_begin(&i915->drm, &conn_iter);
>> >     drm_for_each_connector_iter(connector, &conn_iter) {
>> > -           struct intel_panel *panel = &to_intel_connector(connector)-
>> >panel;
>> > +           struct intel_panel *panel;
>> > +           struct intel_connector *intel_connector =
>> > +                                   to_intel_connector(connector);
>> >
>> > +           if (!intel_connector)
>> > +                   continue;
>> > +           panel = &intel_connector->panel;
>> >             if (panel->backlight.funcs && !panel->backlight.device) {
>> >                     acpi_video_register_backlight();
>> >                     break;
>> > diff --git a/drivers/gpu/drm/i915/display/intel_display.h
>> > b/drivers/gpu/drm/i915/display/intel_display.h
>> > index a1ed9c82e2ed..102bf7d47ccc 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_display.h
>> > +++ b/drivers/gpu/drm/i915/display/intel_display.h
>> > @@ -52,6 +52,7 @@ struct intel_crtc_state;  struct intel_digital_port;
>> > struct intel_dp;  struct intel_encoder;
>> > +struct intel_connector;
>> >  struct intel_initial_plane_config;
>> >  struct intel_load_detect_pipe;
>> >  struct intel_plane;
>> > @@ -469,16 +470,12 @@ enum hpd_pin {
>> >             for_each_if(intel_encoder_can_psr(intel_encoder))
>> >
>> >  #define for_each_intel_connector_iter(intel_connector, iter) \
>> > -   while ((intel_connector =
>> to_intel_connector(drm_connector_list_iter_next(iter))))
>> > +   while ((intel_connector = intel_connector_list_iter_next(iter)))
>> >
>> >  #define for_each_encoder_on_crtc(dev, __crtc, intel_encoder) \
>> >     list_for_each_entry((intel_encoder), &(dev)-
>> >mode_config.encoder_list, base.head) \
>> >             for_each_if((intel_encoder)->base.crtc == (__crtc))
>> >
>> > -#define for_each_connector_on_encoder(dev, __encoder,
>> intel_connector) \
>> > -   list_for_each_entry((intel_connector), &(dev)-
>> >mode_config.connector_list, base.head) \
>> > -           for_each_if((intel_connector)->base.encoder ==
>> (__encoder))
>> > -
>>
>> Getting rid of this macro should be a separate change. As the first patch,
>> could've been merged already.
>>
> Hi Jani,
> This change has no dependency on the last patch  as the only place this is called (intel_encoder_find_connector)
> Is also being fixed in this patch itself so creating a new patch for this may not be necessary

It's a good idea no matter what to get rid of this single use macro, so
please just send a patch for it separately, and get it merged.

BR,
Jani.

>
> Regards,
> Suraj Kandpal
>> >  #define for_each_old_intel_plane_in_state(__state, plane,
>> old_plane_state, __i) \
>> >     for ((__i) = 0; \
>> >          (__i) < (__state)->base.dev->mode_config.num_total_plane && \
>> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
>> > b/drivers/gpu/drm/i915/display/intel_display_types.h
>> > index 633cacd79074..a2d294929a64 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> > @@ -1498,12 +1498,14 @@ struct cxsr_latency {  #define
>> > to_intel_atomic_state(x) container_of(x, struct intel_atomic_state,
>> > base)  #define to_intel_crtc(x) container_of(x, struct intel_crtc,
>> > base)  #define to_intel_crtc_state(x) container_of(x, struct
>> > intel_crtc_state, uapi) -#define to_intel_connector(x) container_of(x,
>> > struct intel_connector, base)
>> > +#define to_intel_wb_connector(x) container_of(x, struct
>> > +intel_wb_connector, base)
>>
>> Note that all of the macros here are sorted alphabetically.
>>
>> The wb/wd difference is a pretty bad eyesore. Maybe we should use one or
>> the other, not mix them. (Except if we go with writeback, leave the register
>> macros WD because that's what they are.)
>>
>> >  #define to_intel_encoder(x) container_of(x, struct intel_encoder,
>> > base)  #define to_intel_framebuffer(x) container_of(x, struct
>> > intel_framebuffer, base)  #define to_intel_plane(x) container_of(x,
>> > struct intel_plane, base)  #define to_intel_plane_state(x)
>> > container_of(x, struct intel_plane_state, uapi)  #define
>> > intel_fb_obj(x) ((x) ? to_intel_bo((x)->obj[0]) : NULL)
>> > +#define to_intel_connector(x) (((x->connector_type ==
>> DRM_MODE_CONNECTOR_WRITEBACK)) ?      \
>> > +                           NULL : container_of(x, struct
>> intel_connector, base))
>>
>> Would need to have (x)->connector_type, with parenthesis.
>>
>> The problem with this is that we currently have 131 uses of
>> to_intel_connector() and practically all of them expect to get non-NULL
>> result.
>>
>> You're going to get 131 static analyzer reports that you don't check for
>> NULL. You can't check for NULL in most places, because they're in the
>> middle of local parameter initialization.
>>
>> >
>> >  struct intel_hdmi {
>> >     i915_reg_t hdmi_reg;
>> > @@ -2069,4 +2071,26 @@ to_intel_frontbuffer(struct drm_framebuffer
>> *fb)
>> >     return fb ? to_intel_framebuffer(fb)->frontbuffer : NULL;  }
>> >
>> > +static inline struct intel_connector *
>> > +intel_connector_list_iter_next(struct drm_connector_list_iter *iter)
>> > +{
>> > +   struct drm_connector *connector;
>> > +   bool flag = true;
>> > +   /*
>> > +    * Skipping connector that are Writeback connector as they will
>> > +    * not be embedded in intel connector
>> > +    */
>> > +   while (flag) {
>> > +           connector = drm_connector_list_iter_next(iter);
>> > +           if (connector && !to_intel_connector(connector))
>> > +                   continue;
>> > +
>> > +           flag = false;
>> > +
>> > +           if (connector)
>> > +                   return to_intel_connector(connector);
>> > +
>> > +   }
>> > +   return NULL;
>> > +}
>>
>> This gets pretty ugly. I've got an idea, I'll send patches later today.
>>
>> Code is worth a thousand words, it's easier to explain that way.
>>
>> BR,
>> Jani.
>>
>> >  #endif /*  __INTEL_DISPLAY_TYPES_H__ */ diff --git
>> > a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
>> > b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
>> > index cbfabd58b75a..e1a90331c230 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
>> > @@ -205,12 +205,22 @@ static bool intel_crtc_has_encoders(struct
>> > intel_crtc *crtc)
>> >
>> >  static struct intel_connector *intel_encoder_find_connector(struct
>> > intel_encoder *encoder)  {
>> > -   struct drm_device *dev = encoder->base.dev;
>> > +   struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>> >     struct intel_connector *connector;
>> > +   struct drm_connector_list_iter conn_iter;
>> > +   bool found_connector = false;
>> >
>> > -   for_each_connector_on_encoder(dev, &encoder->base, connector)
>> > -           return connector;
>> > +   drm_connector_list_iter_begin(&i915->drm, &conn_iter);
>> > +   for_each_intel_connector_iter(connector, &conn_iter) {
>> > +           if (&encoder->base == connector->base.encoder) {
>> > +                   found_connector = true;
>> > +                   break;
>> > +           }
>> > +   }
>> > +   drm_connector_list_iter_end(&conn_iter);
>> >
>> > +   if (found_connector)
>> > +           return connector;
>> >     return NULL;
>> >  }
>>
>> --
>> Jani Nikula, Intel Open Source Graphics Center

-- 
Jani Nikula, Intel Open Source Graphics Center
