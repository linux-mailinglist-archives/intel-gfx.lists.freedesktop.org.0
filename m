Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F5A6435549
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Oct 2021 23:30:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4E196E3DA;
	Wed, 20 Oct 2021 21:30:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 370F26E3D2
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Oct 2021 21:30:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634765430;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=RV1rIRTbOsjZSGuHadXECmZG9Ht5wqarQfGNXPGidus=;
 b=MMBJ+6r0wAUIwBhBqMSzn8bJCFxKraC67hhFJq8LsDaJ7hYKtGmDanf0mCAl4v8PVk/BpA
 HaxXlzpjyTWf9UyrF5Nclw3Ans1natg2nd4/73c3yIuBx00riJP8xHoVcqqS7JdLmjyJYP
 /uXaYTUd5R7lwBZIzRYRfIONwX6Ns7Q=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-468-FyQkYKWpMzifZJ3EuVv7tQ-1; Wed, 20 Oct 2021 17:30:27 -0400
X-MC-Unique: FyQkYKWpMzifZJ3EuVv7tQ-1
Received: by mail-qk1-f198.google.com with SMTP id
 c14-20020a37e10e000000b0045f3f44539eso3110022qkm.14
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Oct 2021 14:30:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=RV1rIRTbOsjZSGuHadXECmZG9Ht5wqarQfGNXPGidus=;
 b=Ys2J2X0mENnQG/xFT9yub1I19Mb38WOiDs6zKAm2IBegLAx5r9tWdWo5j8Gh/yGzMK
 ++lXmPIChvmfVKmNwpI0Rq1qBErwhGv10RQoBn7G1I7DHX+pHuWOD1hsX7QabKqpniKl
 Wf4h3HxdsgwaPdlsRlZaPdMT/DGSWq3KL5NCZfpGOInlXXD44LuyAOKRUqnbBDlyBrD3
 0jb4XnjNu7BAoyiTHDwatfznZDfmRUta5x6YxMbiB5FlxnqqFRy5SL/Gt027ucVZq5hI
 gedb94UE2+zfb9UoUmkh4e0f/KeIVMFW4QuNcJnOTms1u+hkU9mA8uiuBbNhNQvZ8WCs
 tJDg==
X-Gm-Message-State: AOAM5309pCht1+Rrgtdtg6L92ZKJ8sNr5QlOSVySPk85eAU0KOQCnTIc
 uo8KC+pN1PqDWi7efJc4mxlrDoWCm4Qjxv+/7ATnMQ6/dAg0p8hwhM5FFgElRfJPoRZMLkXB9pS
 TPz6rKHFlJgmmCOhJWCCKHVO37FZ6
X-Received: by 2002:a05:622a:1441:: with SMTP id
 v1mr1867640qtx.45.1634765427171; 
 Wed, 20 Oct 2021 14:30:27 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxttYgyOhoBD/hfsiaamAqXyKnPdFWlhkE27NB7JaYHoHjqQJXVxg+Z5QWhx0ZQmTuKEZOxbQ==
X-Received: by 2002:a05:622a:1441:: with SMTP id
 v1mr1867618qtx.45.1634765426912; 
 Wed, 20 Oct 2021 14:30:26 -0700 (PDT)
Received: from [192.168.8.138] (pool-96-230-249-157.bstnma.fios.verizon.net.
 [96.230.249.157])
 by smtp.gmail.com with ESMTPSA id g1sm1534825qkd.89.2021.10.20.14.30.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Oct 2021 14:30:26 -0700 (PDT)
Message-ID: <44f678228c1654af51f2781304b96bb1885b14f2.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Ville =?ISO-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
 nouveau@lists.freedesktop.org, stable@vger.kernel.org, Jani Nikula
 <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>,  Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,  Sean
 Paul <seanpaul@chromium.org>, open list <linux-kernel@vger.kernel.org>
Date: Wed, 20 Oct 2021 17:30:25 -0400
In-Reply-To: <YW8J8Nc7UJnISaVg@intel.com>
References: <20211006024018.320394-1-lyude@redhat.com>
 <20211006024018.320394-2-lyude@redhat.com> <YW8J8Nc7UJnISaVg@intel.com>
Organization: Red Hat
User-Agent: Evolution 3.40.4 (3.40.4-2.fc34)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v3 1/5] drm/i915: Add support for panels
 with VESA backlights with PWM enable/disable
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

On Tue, 2021-10-19 at 21:09 +0300, Ville Syrjälä wrote:
> On Tue, Oct 05, 2021 at 10:40:14PM -0400, Lyude Paul wrote:
> > This simply adds proper support for panel backlights that can be
> > controlled
> > via VESA's backlight control protocol, but which also require that we
> > enable and disable the backlight via PWM instead of via the DPCD
> > interface.
> > We also enable this by default, in order to fix some people's backlights
> > that were broken by not having this enabled.
> > 
> > For reference, backlights that require this and use VESA's backlight
> > interface tend to be laptops with hybrid GPUs, but this very well may
> > change in the future.
> > 
> > Signed-off-by: Lyude Paul <lyude@redhat.com>
> > Link: https://gitlab.freedesktop.org/drm/intel/-/issues/3680
> > Fixes: fe7d52bccab6 ("drm/i915/dp: Don't use DPCD backlights that need PWM
> > enable/disable")
> > Cc: <stable@vger.kernel.org> # v5.12+
> > ---
> >  .../drm/i915/display/intel_dp_aux_backlight.c | 24 ++++++++++++++-----
> >  1 file changed, 18 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > index 569d17b4d00f..594fdc7453ca 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > @@ -293,6 +293,10 @@ intel_dp_aux_vesa_enable_backlight(const struct
> > intel_crtc_state *crtc_state,
> >         struct intel_panel *panel = &connector->panel;
> >         struct intel_dp *intel_dp = enc_to_intel_dp(connector->encoder);
> >  
> > +       if (!panel->backlight.edp.vesa.info.aux_enable)
> > +               panel->backlight.pwm_funcs->enable(crtc_state, conn_state,
> > +                                                  panel-
> > >backlight.pwm_level_max);
> 
> What't the story here with the non-inverted max vs. pontetially inverted
> 0 in the counterpart?

OH! Nice catch,  I wonder if this explains some of the weirdness with samus-
fi-bdw…

Anyway-unfortunately I don't know the precise answer to if we're supposed to
be inverting the panel backlight level or not, so I'd say we should probably
just go with whatever the Intel HDR AUX interface is currently doing - which
is inverting the panel PWM level when needed. Will fix this in a respin
shortly

> 
> > +
> >         drm_edp_backlight_enable(&intel_dp->aux, &panel-
> > >backlight.edp.vesa.info, level);
> >  }
> >  
> > @@ -304,6 +308,10 @@ static void intel_dp_aux_vesa_disable_backlight(const
> > struct drm_connector_state
> >         struct intel_dp *intel_dp = enc_to_intel_dp(connector->encoder);
> >  
> >         drm_edp_backlight_disable(&intel_dp->aux, &panel-
> > >backlight.edp.vesa.info);
> > +
> > +       if (!panel->backlight.edp.vesa.info.aux_enable)
> > +               panel->backlight.pwm_funcs->disable(old_conn_state,
> > +                                                  
> > intel_backlight_invert_pwm_level(connector, 0));
> >  }
> >  
> >  static int intel_dp_aux_vesa_setup_backlight(struct intel_connector
> > *connector, enum pipe pipe)
> > @@ -321,6 +329,15 @@ static int intel_dp_aux_vesa_setup_backlight(struct
> > intel_connector *connector,
> >         if (ret < 0)
> >                 return ret;
> >  
> > +       if (!panel->backlight.edp.vesa.info.aux_enable) {
> > +               ret = panel->backlight.pwm_funcs->setup(connector, pipe);
> > +               if (ret < 0) {
> > +                       drm_err(&i915->drm,
> > +                               "Failed to setup PWM backlight controls
> > for eDP backlight: %d\n",
> > +                               ret);
> > +                       return ret;
> > +               }
> > +       }
> >         panel->backlight.max = panel->backlight.edp.vesa.info.max;
> >         panel->backlight.min = 0;
> >         if (current_mode == DP_EDP_BACKLIGHT_CONTROL_MODE_DPCD) {
> > @@ -340,12 +357,7 @@ intel_dp_aux_supports_vesa_backlight(struct
> > intel_connector *connector)
> >         struct intel_dp *intel_dp = intel_attached_dp(connector);
> >         struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> >  
> > -       /* TODO: We currently only support AUX only backlight
> > configurations, not backlights which
> > -        * require a mix of PWM and AUX controls to work. In the mean
> > time, these machines typically
> > -        * work just fine using normal PWM controls anyway.
> > -        */
> > -       if ((intel_dp->edp_dpcd[1] & DP_EDP_BACKLIGHT_AUX_ENABLE_CAP) &&
> > -           drm_edp_backlight_supported(intel_dp->edp_dpcd)) {
> > +       if (drm_edp_backlight_supported(intel_dp->edp_dpcd)) {
> >                 drm_dbg_kms(&i915->drm, "AUX Backlight Control
> > Supported!\n");
> >                 return true;
> >         }
> > -- 
> > 2.31.1
> 

-- 
Cheers,
 Lyude Paul (she/her)
 Software Engineer at Red Hat

