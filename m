Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B64C6444D2E
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Nov 2021 03:01:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51DD66FA56;
	Thu,  4 Nov 2021 02:01:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com
 [IPv6:2607:f8b0:4864:20::635])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D85E27AC4D
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Nov 2021 23:16:58 +0000 (UTC)
Received: by mail-pl1-x635.google.com with SMTP id s24so4198716plp.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 03 Nov 2021 16:16:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=nPUeRo4P9qCmQn4DuIC8HZxfw8STfSLwfGHQpdZPJK0=;
 b=lJ54p1bpc5dNl1qn8G0PyZcQQ7nf9cImYbZNUZZkV6erYIXEvTEB00hKRtK8Ja949x
 EenvlthZ4PQ7D4q4Q2o2XFB3ae/TwEvA5VLlTp1v2abwL+aRNFIM2+Xza+cDzM8juKZx
 PBoqhnkoOoQYYQ7bCuwPRnxEx3AvxOFeYzV15E9Q4RrHQHyk+JAlSpokM4XRZU0/CMVm
 GGjMga7P9p4fylESj1nA8LSyrtIG1KMBuLloG2wXMoh74Y1vDYwWiYAd4xa7Gfy5Ps1o
 0RPm6Nq9q+fjGbGRES2xEmSTx/xMzj1FuO65R0ubXTEYQfauL8bo9RK61PldfsQ0PXhd
 sgnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=nPUeRo4P9qCmQn4DuIC8HZxfw8STfSLwfGHQpdZPJK0=;
 b=0zppxUUY6krEgTMiMh5ywvSilwxZ1cZICj5oxkEji2EspI0L/bURcr6bYlidH4/6UP
 KV4rT1/BJ10b7mPSfkonQ6eAkh5UPV3/fEBwaHxLJXnA5yJcHjsFZfeAydvDV11Z0B+N
 VZSGEf1qrmAJ9Flzwegi3B0Au/wl6ejyp6CaTN1mkASf5K1PbwcmwAqrmfYdKgzO3NJr
 2DqtOmvr7FcL70zcBhoqc0ipiScbj3+7vywIxPjC/H+YIVloRjYjH4SntBkLbY7Xj+Jn
 +NY/CwnjMgNNnSA8v5/sOPr3unG5vHDt74sDU0n3D/V8w2jSN8C6K2SY+tnba9j2boh8
 Pb4A==
X-Gm-Message-State: AOAM531L+Kfr2OGbqJup246dz3pddzGBPcYYwy7mw24VhDB1URsk6xLi
 hEfYZNFHJqKvED+Kzqck4uL7ecF0GVBvAfgHgml4AQ==
X-Google-Smtp-Source: ABdhPJzKhlfXKTBHLc2xE+rbAQct0n9ITCxXdeR2vJAAU+30V1dqR+a5D2swN4o40sRQWrb/PdQWaP7KzvwMnJMl7aY=
X-Received: by 2002:a17:90a:db81:: with SMTP id
 h1mr18291271pjv.46.1635981418075; 
 Wed, 03 Nov 2021 16:16:58 -0700 (PDT)
MIME-Version: 1.0
References: <20211005202322.700909-1-hdegoede@redhat.com>
 <20211005202322.700909-11-hdegoede@redhat.com>
 <YWdWyTVXMA3907no@intel.com>
In-Reply-To: <YWdWyTVXMA3907no@intel.com>
From: Rajat Jain <rajatja@google.com>
Date: Wed, 3 Nov 2021 16:16:21 -0700
Message-ID: <CACK8Z6GPu=Y_-0rrgN-S=HUrgqn_OoU0XroxAp--N0JKZxOnEQ@mail.gmail.com>
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Thu, 04 Nov 2021 02:01:45 +0000
Subject: Re: [Intel-gfx] [PATCH 10/10] drm/i915: Add privacy-screen support
 (v3)
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
Cc: Mark Pearson <markpearson@lenovo.com>,
 Marco Trevisan <marco.trevisan@canonical.com>,
 Sebastien Bacher <seb128@ubuntu.com>, David Airlie <airlied@linux.ie>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 platform-driver-x86@vger.kernel.org, Mark Gross <markgross@kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Pekka Paalanen <pekka.paalanen@collabora.com>,
 Mario Limonciello <mario.limonciello@outlook.com>,
 Andy Shevchenko <andy@infradead.org>, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello Hans,

Thanks a lot for working on this diligently and getting almost all of
it finally merged!

On Wed, Oct 13, 2021 at 2:59 PM Ville Syrj=C3=A4l=C3=A4
<ville.syrjala@linux.intel.com> wrote:
>
> On Tue, Oct 05, 2021 at 10:23:22PM +0200, Hans de Goede wrote:
> > Add support for eDP panels with a built-in privacy screen using the
> > new drm_privacy_screen class.
> >
> > Changes in v3:
> > - Move drm_privacy_screen_get() call to intel_ddi_init_dp_connector()
> >
> > Changes in v2:
> > - Call drm_connector_update_privacy_screen() from
> >   intel_enable_ddi_dp() / intel_ddi_update_pipe_dp() instead of adding =
a
> >   for_each_new_connector_in_state() loop to intel_atomic_commit_tail()
> > - Move the probe-deferral check to the intel_modeset_probe_defer() help=
er
> >
> > Signed-off-by: Hans de Goede <hdegoede@redhat.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_atomic.c  |  1 +
> >  drivers/gpu/drm/i915/display/intel_ddi.c     | 16 ++++++++++++++++
> >  drivers/gpu/drm/i915/display/intel_display.c | 10 ++++++++++
> >  3 files changed, 27 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/=
drm/i915/display/intel_atomic.c
> > index b4e7ac51aa31..a62550711e98 100644
> > --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> > +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> > @@ -139,6 +139,7 @@ int intel_digital_connector_atomic_check(struct drm=
_connector *conn,
> >           new_conn_state->base.picture_aspect_ratio !=3D old_conn_state=
->base.picture_aspect_ratio ||
> >           new_conn_state->base.content_type !=3D old_conn_state->base.c=
ontent_type ||
> >           new_conn_state->base.scaling_mode !=3D old_conn_state->base.s=
caling_mode ||
> > +         new_conn_state->base.privacy_screen_sw_state !=3D old_conn_st=
ate->base.privacy_screen_sw_state ||
> >           !drm_connector_atomic_hdr_metadata_equal(old_state, new_state=
))
> >               crtc_state->mode_changed =3D true;
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm=
/i915/display/intel_ddi.c
> > index 0d4cf7fa8720..272714e07cc6 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -25,6 +25,7 @@
> >   *
> >   */
> >
> > +#include <drm/drm_privacy_screen_consumer.h>
> >  #include <drm/drm_scdc_helper.h>
> >
> >  #include "i915_drv.h"
> > @@ -2946,6 +2947,7 @@ static void intel_enable_ddi_dp(struct intel_atom=
ic_state *state,
> >       if (port =3D=3D PORT_A && DISPLAY_VER(dev_priv) < 9)
> >               intel_dp_stop_link_train(intel_dp, crtc_state);
> >
> > +     drm_connector_update_privacy_screen(conn_state);
> >       intel_edp_backlight_on(crtc_state, conn_state);
> >
> >       if (!dig_port->lspcon.active || dig_port->dp.has_hdmi_sink)
> > @@ -3161,6 +3163,7 @@ static void intel_ddi_update_pipe_dp(struct intel=
_atomic_state *state,
> >       intel_drrs_update(intel_dp, crtc_state);
> >
> >       intel_backlight_update(state, encoder, crtc_state, conn_state);
> > +     drm_connector_update_privacy_screen(conn_state);
> >  }
> >
> >  void intel_ddi_update_pipe(struct intel_atomic_state *state,
> > @@ -3979,6 +3982,19 @@ intel_ddi_init_dp_connector(struct intel_digital=
_port *dig_port)
> >               return NULL;
> >       }
> >
> > +     if (dig_port->base.type =3D=3D INTEL_OUTPUT_EDP) {
>
> Connector type check would be a bit more consistent with what this is
> about I think. But there's is 1:1 correspondence with the encoder type
> for eDP so not a particularly important point.
>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

I see only 8 out of 10 patches in this series were applied to drm-tip.
I'm curious if there is any reason for which the last 2 patches were
not applied:

[Patch 9/10]: drm/i915: Add intel_modeset_probe_defer() helper
[Patch 10/10]: drm/i915: Add privacy-screen support (v3)

I look forward to getting them merged so that I can use them.

Thanks & Best regards,

Rajat

>
> > +             struct drm_device *dev =3D dig_port->base.base.dev;
> > +             struct drm_privacy_screen *privacy_screen;
> > +
> > +             privacy_screen =3D drm_privacy_screen_get(dev->dev, NULL)=
;
> > +             if (!IS_ERR(privacy_screen)) {
> > +                     drm_connector_attach_privacy_screen_provider(&con=
nector->base,
> > +                                                                  priv=
acy_screen);
> > +             } else if (PTR_ERR(privacy_screen) !=3D -ENODEV) {
> > +                     drm_warn(dev, "Error getting privacy-screen\n");
> > +             }
> > +     }
> > +
> >       return connector;
> >  }
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu=
/drm/i915/display/intel_display.c
> > index 86dbe366a907..84715a779d9d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -42,6 +42,7 @@
> >  #include <drm/drm_edid.h>
> >  #include <drm/drm_fourcc.h>
> >  #include <drm/drm_plane_helper.h>
> > +#include <drm/drm_privacy_screen_consumer.h>
> >  #include <drm/drm_probe_helper.h>
> >  #include <drm/drm_rect.h>
> >
> > @@ -12769,6 +12770,8 @@ void intel_modeset_driver_remove_nogem(struct d=
rm_i915_private *i915)
> >
> >  bool intel_modeset_probe_defer(struct pci_dev *pdev)
> >  {
> > +     struct drm_privacy_screen *privacy_screen;
> > +
> >       /*
> >        * apple-gmux is needed on dual GPU MacBook Pro
> >        * to probe the panel if we're the inactive GPU.
> > @@ -12776,6 +12779,13 @@ bool intel_modeset_probe_defer(struct pci_dev =
*pdev)
> >       if (vga_switcheroo_client_probe_defer(pdev))
> >               return true;
> >
> > +     /* If the LCD panel has a privacy-screen, wait for it */
> > +     privacy_screen =3D drm_privacy_screen_get(&pdev->dev, NULL);
> > +     if (IS_ERR(privacy_screen) && PTR_ERR(privacy_screen) =3D=3D -EPR=
OBE_DEFER)
> > +             return true;
> > +
> > +     drm_privacy_screen_put(privacy_screen);
> > +
> >       return false;
> >  }
> >
> > --
> > 2.31.1
>
> --
> Ville Syrj=C3=A4l=C3=A4
> Intel
