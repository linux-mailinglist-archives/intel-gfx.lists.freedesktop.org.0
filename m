Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E962119FE88
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Apr 2020 21:56:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E8AC6E499;
	Mon,  6 Apr 2020 19:56:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-il1-x143.google.com (mail-il1-x143.google.com
 [IPv6:2607:f8b0:4864:20::143])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFE0C6E499
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Apr 2020 19:56:54 +0000 (UTC)
Received: by mail-il1-x143.google.com with SMTP id r5so744803ilq.6
 for <intel-gfx@lists.freedesktop.org>; Mon, 06 Apr 2020 12:56:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fnZ6pExW/U6h46wgY9rWZOzZT0GV3QCI6s9Mlxp3WgU=;
 b=KFkem/LC1MPyOeQ8gprhr2bwARr/FErtNsI8vnaEJg/xiylixuShCm0Ero8GENGAsc
 Mjvz0FEyzb0Q0x6uu5M+rvUGojWDq9DmsJBb8rNBukP+rUHsEMoEvehWbqu0YJQtARrc
 0oml0hoZShhDVCDQZBfly+LOX9wpcFaqe0SM9dS+yUGlHZD+PrxNAZVM39yKjbBfqG4w
 FFZoJx8bXsbqQXzuHrzkgTLkWXe2A0HD7A59uMnqWwu0RyQrZMdROAojng2++SBPplZ2
 kV+33A4M1BXdXn3gOImbPTLaxDBbzQIUGbBGy/uHAgB8tbI9F/yBHhdS0arYwhJ0vIux
 K/IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fnZ6pExW/U6h46wgY9rWZOzZT0GV3QCI6s9Mlxp3WgU=;
 b=tbEe78l57ahC6RNRDF6iFBfvYVNwSoSvWpoBx8tDyJpzALN8HQK7FPBXAVXM09W/5X
 blYzXhi8s4gpPMv0BcvD/6CVYSVzTELS0sVnMEigvxiEC7JG1x4417Au78a02rfxbZSU
 4J7g1PEUaJbbT/nF1CT5/aaJjd83xuLsmUNg0AOn/CZ4LU7mpRiB4eiIQEMqX+FePyje
 9EJhmvzULEXeqIxVPX7iXKdO0Mkc4guEPbhhB701PGumhPDsNYZnXWnN8BuuVNeSKyl/
 8u46KPvuFkLOWKQLxrrKmEQzrQOWkLwa2kThf8xIBahFHMqwNm+B3jKU9IbK8Xr/6ikE
 AvGQ==
X-Gm-Message-State: AGi0PuawU4v6Ic+RZcu1HZ9w6OCpqRs6p3zqvsR7h7YjHRxf0lXJm+Ku
 k/81B52Oe9YVu+O+QI4GqBvoLSMeRAmnDse95aVFbA==
X-Google-Smtp-Source: APiQypK9acCe47XaSYdZCjI/gE8nQ+1Lo1fLbrq/jUyLE1JNTsHe/R+oDJmP1D8tA9K9/PU93xjVdykoWrqHRNxl4Lc=
X-Received: by 2002:a92:9f9c:: with SMTP id z28mr1094973ilk.71.1586203014176; 
 Mon, 06 Apr 2020 12:56:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200403222251.937740-1-lyude@redhat.com>
In-Reply-To: <20200403222251.937740-1-lyude@redhat.com>
From: Sean Paul <sean@poorly.run>
Date: Mon, 6 Apr 2020 15:56:18 -0400
Message-ID: <CAMavQKKXVuvcU=TjA8MZpjLDmLC6nga+uDu8zcX5Ps9wFQoyMw@mail.gmail.com>
To: Lyude Paul <lyude@redhat.com>
Subject: Re: [Intel-gfx] [PATCH] drm/dp_mst: Remove drm_dp_mst_has_audio()
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
Cc: David Airlie <airlied@linux.ie>, Lucas De Marchi <lucas.demarchi@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Apr 3, 2020 at 6:23 PM Lyude Paul <lyude@redhat.com> wrote:
>
> Drive-by fix I noticed the other day - drm_dp_mst_has_audio() only ever
> made sense back when we still had to validate ports before accessing
> them in order to (attempt to) avoid NULL dereferences. Since we have
> proper reference counting that guarantees we always can safely access
> the MST port, there's no use in keeping this function around as all it
> does is validate the port pointer before checking the audio status.
>
> Note - drm_dp_mst_port->has_audio is technically protected by
> drm_device->mode_config.connection_mutex, since it's only ever updated
> from drm_dp_mst_get_edid(). Additionally, we change the declaration for
> port in struct intel_connector to be properly typed, so we can directly
> access it.
>

This is kind of burying the lede. I'd almost prefer a 2 patch series:

drm/i915: Allow connectors to directly access drm_dp_mst_port
drm/dp_mst: Remove unused drm_dp_mst_port_has_audio()

That way if anyone objects to the idea of accessing mst_port directly
from i915 driver, it's more obvious from the patch subject.

Nitpicks aside, the code looks good to me, it's a nice cleanup!

Reviewed-by: Sean Paul <sean@poorly.run>

> Cc: "Lee, Shawn C" <shawn.c.lee@intel.com>
> Cc: Sean Paul <sean@poorly.run>
> Signed-off-by: Lyude Paul <lyude@redhat.com>
> ---
>  drivers/gpu/drm/drm_dp_mst_topology.c         | 21 -------------------
>  .../drm/i915/display/intel_display_debugfs.c  | 10 ++-------
>  .../drm/i915/display/intel_display_types.h    |  2 +-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   |  3 +--
>  include/drm/drm_dp_mst_helper.h               |  2 --
>  5 files changed, 4 insertions(+), 34 deletions(-)
>
> diff --git a/drivers/gpu/drm/drm_dp_mst_topology.c b/drivers/gpu/drm/drm_dp_mst_topology.c
> index 1ff49547b2e8..129126091e90 100644
> --- a/drivers/gpu/drm/drm_dp_mst_topology.c
> +++ b/drivers/gpu/drm/drm_dp_mst_topology.c
> @@ -4063,27 +4063,6 @@ drm_dp_mst_detect_port(struct drm_connector *connector,
>  }
>  EXPORT_SYMBOL(drm_dp_mst_detect_port);
>
> -/**
> - * drm_dp_mst_port_has_audio() - Check whether port has audio capability or not
> - * @mgr: manager for this port
> - * @port: unverified pointer to a port.
> - *
> - * This returns whether the port supports audio or not.
> - */
> -bool drm_dp_mst_port_has_audio(struct drm_dp_mst_topology_mgr *mgr,
> -                                       struct drm_dp_mst_port *port)
> -{
> -       bool ret = false;
> -
> -       port = drm_dp_mst_topology_get_port_validated(mgr, port);
> -       if (!port)
> -               return ret;
> -       ret = port->has_audio;
> -       drm_dp_mst_topology_put_port(port);
> -       return ret;
> -}
> -EXPORT_SYMBOL(drm_dp_mst_port_has_audio);
> -
>  /**
>   * drm_dp_mst_get_edid() - get EDID for an MST port
>   * @connector: toplevel connector to get EDID for
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 424f4e52f783..9f736420d83f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -631,15 +631,9 @@ static void intel_dp_info(struct seq_file *m,
>  }
>
>  static void intel_dp_mst_info(struct seq_file *m,
> -                         struct intel_connector *intel_connector)
> +                             struct intel_connector *intel_connector)
>  {
> -       struct intel_encoder *intel_encoder = intel_attached_encoder(intel_connector);
> -       struct intel_dp_mst_encoder *intel_mst =
> -               enc_to_mst(intel_encoder);
> -       struct intel_digital_port *intel_dig_port = intel_mst->primary;
> -       struct intel_dp *intel_dp = &intel_dig_port->dp;
> -       bool has_audio = drm_dp_mst_port_has_audio(&intel_dp->mst_mgr,
> -                                       intel_connector->port);
> +       bool has_audio = intel_connector->port->has_audio;
>
>         seq_printf(m, "\taudio support: %s\n", yesno(has_audio));
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 2bedd626c686..1de7bef0a49b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -436,7 +436,7 @@ struct intel_connector {
>            state of connector->polled in case hotplug storm detection changes it */
>         u8 polled;
>
> -       void *port; /* store this opaque as its illegal to dereference it */
> +       struct drm_dp_mst_port *port;
>
>         struct intel_dp *mst_port;
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 61605eb8c2af..c35efc9e628d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -114,8 +114,7 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
>
>         if (intel_conn_state->force_audio == HDMI_AUDIO_AUTO)
>                 pipe_config->has_audio =
> -                       drm_dp_mst_port_has_audio(&intel_dp->mst_mgr,
> -                                                 connector->port);
> +                       connector->port->has_audio;
>         else
>                 pipe_config->has_audio =
>                         intel_conn_state->force_audio == HDMI_AUDIO_ON;
> diff --git a/include/drm/drm_dp_mst_helper.h b/include/drm/drm_dp_mst_helper.h
> index 7af51c947b81..2d7c26592c05 100644
> --- a/include/drm/drm_dp_mst_helper.h
> +++ b/include/drm/drm_dp_mst_helper.h
> @@ -732,8 +732,6 @@ drm_dp_mst_detect_port(struct drm_connector *connector,
>                        struct drm_dp_mst_topology_mgr *mgr,
>                        struct drm_dp_mst_port *port);
>
> -bool drm_dp_mst_port_has_audio(struct drm_dp_mst_topology_mgr *mgr,
> -                                       struct drm_dp_mst_port *port);
>  struct edid *drm_dp_mst_get_edid(struct drm_connector *connector, struct drm_dp_mst_topology_mgr *mgr, struct drm_dp_mst_port *port);
>
>
> --
> 2.25.1
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
