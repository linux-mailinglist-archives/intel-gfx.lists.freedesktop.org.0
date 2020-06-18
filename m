Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 107781FFAF5
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2020 20:21:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E3556EB9F;
	Thu, 18 Jun 2020 18:20:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-io1-xd44.google.com (mail-io1-xd44.google.com
 [IPv6:2607:f8b0:4864:20::d44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 851686EB9E
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jun 2020 18:20:58 +0000 (UTC)
Received: by mail-io1-xd44.google.com with SMTP id f23so2835388iof.6
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jun 2020 11:20:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tu/2iAqxEVznMtkHyMRWXYb6Qqve847KI+y26u4voTA=;
 b=WCRHmkbFFR2VaZdOPQzj7fYwcxVmBNK+Umg88d0y1kbcyAch1Y7Ouzd2Y7JNUXN1Tk
 FLCbt7yCfHrY1QCMgkCAmasg11TgKI+ggbeajCDscwA4MkuEJjDhg1YnZJ/ZffQL8axT
 qEbxhoeAK4/hrpnzQccG+ot3oZgQUmRXuALjFDzL1ik+lw54/lOPoHpZ+bJQb0yB56By
 a7ymWL+zRpZym73AdH/9mW0rOcu5n0aBaRpmTLZupkojUjG1aOrOlAL3dXEOUtDbncMV
 Gsk+boVplvsPdfUfR5BGMhsS/hjTf+x86i+YqHLB0pcxz0dJxkXpWb3+QswAht+/oB58
 hw3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tu/2iAqxEVznMtkHyMRWXYb6Qqve847KI+y26u4voTA=;
 b=QD/Zfjl/2fUTkvfl+Buj7p9Qg/s3XRSU3DJ4xsrZ7DDoRwQ7BVZH2JQ6qy7YyII8ou
 9rD3yhSszEwsjCIn+mUc5DWYm39Osibhu5gfiq0HhGT8TxVGerBEmFkHfGGRICym3yd4
 pzpzw/3EGVa0sZVNGWbDiuOlth56WCXvZeE+0ISr/uVQzgfuT+yeZjj3Umr0s2J+v79k
 untU7N/66YCMn59YSw4lA48erNxNmLtGflKm+XVRdHVPXy2C1MhXK5SVQbTDGyU3GkIN
 u0aFB7cG+knS7WdkPW1jNIrvdDuzIkO4IXCX8Cc68GVbyhwnEAIaA8IT59MmM1097rCR
 hZoQ==
X-Gm-Message-State: AOAM531vqvW439QunfIM/49LKJ7q5+SEI3OqXfs1tBfm5Zw8Q2MNL9Ve
 vG6LwihW3+s4xvWgzV8ry73xNLz3bMCPhfatHeeFBg==
X-Google-Smtp-Source: ABdhPJzaiROb8+PQP8f7KklNiaohlwJ4wTm++WACmyGyfC+g3qFu58kZAZ/EsUK/iuNIuVLQQ18QQJAz7RaGQEBwQPM=
X-Received: by 2002:a5d:858a:: with SMTP id f10mr6668ioj.184.1592504457681;
 Thu, 18 Jun 2020 11:20:57 -0700 (PDT)
MIME-Version: 1.0
References: <20200429195502.39919-1-sean@poorly.run>
 <20200429195502.39919-17-sean@poorly.run>
 <20200515144255.GA11877@intel.com>
In-Reply-To: <20200515144255.GA11877@intel.com>
From: Sean Paul <sean@poorly.run>
Date: Thu, 18 Jun 2020 14:20:22 -0400
Message-ID: <CAMavQK+GQD8xxTzzTP3SdPTWdViBvU=KVGeqBnwgEDeex=tGFA@mail.gmail.com>
To: Ramalingam C <ramalingam.c@intel.com>
Subject: Re: [Intel-gfx] [PATCH v6 16/16] drm/i915: Add HDCP 1.4 support for
 MST connectors
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
Cc: dri-devel <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Sean Paul <seanpaul@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, May 15, 2020 at 10:43 AM Ramalingam C <ramalingam.c@intel.com> wrote:
>
> On 2020-04-29 at 15:55:02 -0400, Sean Paul wrote:
> > From: Sean Paul <seanpaul@chromium.org>
> >
> > Now that all the groundwork has been laid, we can turn on HDCP 1.4 over
> > MST. Everything except for toggling the HDCP signalling and HDCP 2.2
> > support is the same as the DP case, so we'll re-use those callbacks
> >
> > Cc: Juston Li <juston.li@intel.com>
> > Signed-off-by: Sean Paul <seanpaul@chromium.org>
> > Link: https://patchwork.freedesktop.org/patch/msgid/20191203173638.94919-12-sean@poorly.run #v1
> > Link: https://patchwork.freedesktop.org/patch/msgid/20191212190230.188505-13-sean@poorly.run #v2
> > Link: https://patchwork.freedesktop.org/patch/msgid/20200117193103.156821-13-sean@poorly.run #v3
> > Link: https://patchwork.freedesktop.org/patch/msgid/20200218220242.107265-15-sean@poorly.run #v4
> > Link: https://patchwork.freedesktop.org/patch/msgid/20200305201236.152307-17-sean@poorly.run #v5
> >
> > Changes in v2:
> > -Toggle HDCP from encoder disable/enable
> > -Don't disable HDCP on MST connector destroy, leave that for encoder
> >  disable, just ensure the check_work routine isn't running any longer
> > Changes in v3:
> > -Place the shim in the new intel_dp_hdcp.c file (Ville)
> > Changes in v4:
> > -Actually use the mst shim for mst connections (Juston)
> > -Use QUERY_STREAM_ENC_STATUS MST message to verify channel is encrypted
> > Changes in v5:
> > -Add sleep on disable signalling to match hdmi delay
> > Changes in v6:
> > -Disable HDCP over MST on GEN12+ since I'm unsure how it should work and I
> >  don't have hardware to test it
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 107 ++++++++++++++++++-
> >  drivers/gpu/drm/i915/display/intel_dp_mst.c  |  18 ++++
> >  2 files changed, 124 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> > index 4e3dafbea1f9..331fdb312e05 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> > @@ -7,10 +7,12 @@
> >   */
> >
> >  #include <drm/drm_dp_helper.h>
> > +#include <drm/drm_dp_mst_helper.h>
> >  #include <drm/drm_hdcp.h>
> >  #include <drm/drm_print.h>
> >
> >  #include "intel_display_types.h"
> > +#include "intel_ddi.h"
> >  #include "intel_dp.h"
> >  #include "intel_hdcp.h"
> >
> > @@ -618,6 +620,106 @@ static const struct intel_hdcp_shim intel_dp_hdcp_shim = {
> >       .protocol = HDCP_PROTOCOL_DP,
> >  };
> >
> > +static int
> > +intel_dp_mst_hdcp_toggle_signalling(struct intel_digital_port *intel_dig_port,
> > +                                 enum transcoder cpu_transcoder,
> > +                                 bool enable)
> > +{
> > +     struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
> > +     int ret;
> > +
> > +     if (!enable)
> > +             usleep_range(6, 60); /* Bspec says >= 6us */
> > +
> > +     ret = intel_ddi_toggle_hdcp_signalling(&intel_dig_port->base,
> > +                                            cpu_transcoder, enable);
> Sean,
>
> The bit configured here is meant for HDMI and DVI only. Ignore for DP.
> Thanks anshuman for pointing that out.

The bspec says "Select HDCP for the desired stream using the Pipe DDI
Function Control register." this is required to get stream level
encryption (confirmed via the QUERY_STREAM_ENCRYPTION_STATUS sideband
message).


> > +     if (ret)
> > +             drm_dbg_kms(&i915->drm, "%s HDCP signalling failed (%d)\n",
> > +                           enable ? "Enable" : "Disable", ret);
> > +     return ret;
> > +}

\snip

> > +static const struct intel_hdcp_shim intel_dp_mst_hdcp_shim = {
> > +     .write_an_aksv = intel_dp_hdcp_write_an_aksv,
> > +     .read_bksv = intel_dp_hdcp_read_bksv,
> > +     .read_bstatus = intel_dp_hdcp_read_bstatus,
> > +     .repeater_present = intel_dp_hdcp_repeater_present,
> > +     .read_ri_prime = intel_dp_hdcp_read_ri_prime,
> > +     .read_ksv_ready = intel_dp_hdcp_read_ksv_ready,
> > +     .read_ksv_fifo = intel_dp_hdcp_read_ksv_fifo,
> > +     .read_v_prime_part = intel_dp_hdcp_read_v_prime_part,
> > +     .toggle_signalling = intel_dp_mst_hdcp_toggle_signalling,
> > +     .check_link = intel_dp_mst_hdcp_check_link,
> > +     .hdcp_capable = intel_dp_hdcp_capable,
> > +
> > +     .write_2_2_msg = intel_dp_mst_hdcp2_write_msg,
> > +     .read_2_2_msg = intel_dp_mst_hdcp2_read_msg,
> > +     .config_stream_type = intel_dp_mst_hdcp2_config_stream_type,
> > +     .check_2_2_link = intel_dp_mst_hdcp2_check_link,
> > +     .hdcp_2_2_capable = intel_dp_mst_hdcp2_capable,
> IMO, we dont need to introduce dummy functions for HDCP2.2 on MST shim,
> when we are not enabling HDCP2.2 on it.
>
> At is_hdcp2_supported() just add
> if (connector->mst_port)
>         return false;

Ok, will do.

> > +
> > +     .protocol = HDCP_PROTOCOL_DP,
> > +};
> > +

\snip

> > +
> > +     /* Enable hdcp if it's desired */
> > +     if (conn_state->content_protection ==
> > +         DRM_MODE_CONTENT_PROTECTION_DESIRED)
> > +             intel_hdcp_enable(to_intel_connector(conn_state->connector),
> > +                               pipe_config->cpu_transcoder,
> > +                               (u8)conn_state->hdcp_content_type);
>
> I am afraid I am not seeing the stream level HDCP encryption set
> anywhere. How the userspace will indicate the streams that needs to be
> hdcp encrypted?
>

See above. Stream level encryption is achieved via the
toggle_hdcp_signalling above (that's why it's needed).

Sean

> Thanks,
> -Ram
> >  }
> >
> >  static bool intel_dp_mst_enc_get_hw_state(struct intel_encoder *encoder,
> > @@ -748,6 +758,14 @@ static struct drm_connector *intel_dp_add_mst_connector(struct drm_dp_mst_topolo
> >       intel_attach_force_audio_property(connector);
> >       intel_attach_broadcast_rgb_property(connector);
> >
> > +
> > +     /* TODO: Figure out how to make HDCP work on GEN12+ */
> > +     if (INTEL_GEN(dev_priv) < 12) {
> > +             ret = intel_dp_init_hdcp(intel_dig_port, intel_connector);
> > +             if (ret)
> > +                     DRM_DEBUG_KMS("HDCP init failed, skipping.\n");
> > +     }
> > +
> >       /*
> >        * Reuse the prop from the SST connector because we're
> >        * not allowed to create new props after device registration.
> > --
> > Sean Paul, Software Engineer, Google / Chromium OS
> >
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
