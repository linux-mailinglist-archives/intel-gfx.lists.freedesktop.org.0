Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5916445114B
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Nov 2021 20:02:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 869FD6E9F9;
	Mon, 15 Nov 2021 19:01:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA3326E3F9
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Nov 2021 19:01:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1637002916;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=y+AGOj0vGT7Kx30tbYhHAuBiiveQewuzvTLITCIbAlE=;
 b=RSAOz7iHIV+qCUWVoiIoekdEBBhbHqez5J8Iy+AUavRmqgZDVedmK+ruo9h5D9eQEXq0/3
 l8lwYyHZolCckylJfgijUrxS/DV2In9KGbSJFQBQEyyxHmhU4asF4y+HMeUyUqii1b4s4B
 E8+ROodYEbCRTY995j6RDYlrq5LA6ok=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-24-AhEokRgcN6qM8jVcNapMAw-1; Mon, 15 Nov 2021 14:01:54 -0500
X-MC-Unique: AhEokRgcN6qM8jVcNapMAw-1
Received: by mail-qv1-f72.google.com with SMTP id
 jn10-20020ad45dea000000b003bd74c93df4so16891242qvb.15
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Nov 2021 11:01:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=y+AGOj0vGT7Kx30tbYhHAuBiiveQewuzvTLITCIbAlE=;
 b=OHnF9p8Yuz3UN8dr3q//Dr9JFeMJlYqkVTYXielERN7gxXYwbBpFOUpekigYyLYH06
 ZvF5VhpXARVBQtV+jPyQPocp8W3Le1Jyx+z060LUY+6y7mDuXacJ2bE9vQP1AUphGvz7
 VVxjvfo0PjH/2nVOY+wa2EdhRziyenm5bqDu4pNA6By3eL33ZRYCl8TsSI3WErOJcfzo
 zryZ1kcKFGRydwv8TqZSoJQ7OueygKepMdS5cm4bya3jh3xlNGWGEyNS+oSng82Dqo8g
 H5OsoLP+XZghVpTbooUqbSnjEcJ8CXUX3sqXhc2B2t3s9UtIYGtpWPJFDeskgEAUyfL+
 bNWg==
X-Gm-Message-State: AOAM533BUWFyoOOK9V9crQdOsLt7aG8Nv3d8IvzQ7bW/HdHPc6fqZNpE
 YBFYYcxO5YBhQ3bOUTVijJYVNa0g2s2KwUUEPBEW/jmp2XSer1TxYNIj7ReTGIlLvM03FAXVaBW
 2E5LSS4qbtjkMb/f9ksyFhBZZFmrZ
X-Received: by 2002:a05:620a:f0f:: with SMTP id
 v15mr1120726qkl.234.1637002913816; 
 Mon, 15 Nov 2021 11:01:53 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyYZPe8/3uNMDNiTOoujpcwLTZha3L5CanGCs37GOSaS1MP2LuI/ABPevQjIL09HltkORj3SA==
X-Received: by 2002:a05:620a:f0f:: with SMTP id
 v15mr1120685qkl.234.1637002913512; 
 Mon, 15 Nov 2021 11:01:53 -0800 (PST)
Received: from [192.168.8.138] (pool-96-230-249-157.bstnma.fios.verizon.net.
 [96.230.249.157])
 by smtp.gmail.com with ESMTPSA id c11sm3782284qtb.8.2021.11.15.11.01.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Nov 2021 11:01:52 -0800 (PST)
Message-ID: <548e59a951a662304a281239a8a964dc9a19b368.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, intel-gfx@lists.freedesktop.org
Date: Mon, 15 Nov 2021 14:01:51 -0500
In-Reply-To: <878rxp3d1n.fsf@intel.com>
References: <20211112215016.270267-1-lyude@redhat.com>
 <878rxp3d1n.fsf@intel.com>
Organization: Red Hat Inc.
User-Agent: Evolution 3.40.4 (3.40.4-2.fc34)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: Perform 30ms delay after
 source OUI write
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
Cc: "open list:DRM DRIVERS" <dri-devel@lists.freedesktop.org>,
 David Airlie <airlied@linux.ie>, open list <linux-kernel@vger.kernel.org>,
 stable@vger.kernel.org, Dave Airlie <airlied@redhat.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 2021-11-15 at 12:53 +0200, Jani Nikula wrote:
> On Fri, 12 Nov 2021, Lyude Paul <lyude@redhat.com> wrote:
> > While working on supporting the Intel HDR backlight interface, I noticed
> > that there's a couple of laptops that will very rarely manage to boot up
> > without detecting Intel HDR backlight support - even though it's supported
> > on the system. One example of such a laptop is the Lenovo P17 1st
> > generation.
> > 
> > Following some investigation Ville Syrjälä did through the docs they have
> > available to them, they discovered that there's actually supposed to be a
> > 30ms wait after writing the source OUI before we begin setting up the rest
> > of the backlight interface.
> > 
> > This seems to be correct, as adding this 30ms delay seems to have
> > completely fixed the probing issues I was previously seeing. So - let's
> > start performing a 30ms wait after writing the OUI, which we do in a
> > manner
> > similar to how we keep track of PPS delays (e.g. record the timestamp of
> > the OUI write, and then wait for however many ms are left since that
> > timestamp right before we interact with the backlight) in order to avoid
> > waiting any longer then we need to. As well, this also avoids us
> > performing
> > this delay on systems where we don't end up using the HDR backlight
> > interface.
> 
> Ugh. Thanks for digging into this.

haha, np! You should thank Ville for finding the hidden docs that told us
about this :).

> 
> The only thing that I dislike with the implementation is splitting the
> implementation to two places. See how well we've managed to shove all of
> the PPS waits inside intel_pps.c. Almost all of intel_dp->pps is managed
> within intel_pps.c.

gotcha, I think I meant to do this after I got things working but forgot
before I sent this out, will respin ASAP

> 
> I think I'd actually add a intel_dp_wait_source_oui() or something in
> intel_dp.c, so all of the details about source OUI and
> intel_dp->last_oui_write access would be localized.
> 
> 
> BR,
> Jani.
> 
> 
> > 
> > Signed-off-by: Lyude Paul <lyude@redhat.com>
> > Fixes: 4a8d79901d5b ("drm/i915/dp: Enable Intel's HDR backlight interface
> > (only SDR for now)")
> > Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Cc: <stable@vger.kernel.org> # v5.12+
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_types.h    |  3 +++
> >  drivers/gpu/drm/i915/display/intel_dp.c               |  3 +++
> >  drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 11 +++++++++++
> >  3 files changed, 17 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index ea1e8a6e10b0..b9c967837872 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1653,6 +1653,9 @@ struct intel_dp {
> >         struct intel_dp_pcon_frl frl;
> >  
> >         struct intel_psr psr;
> > +
> > +       /* When we last wrote the OUI for eDP */
> > +       unsigned long last_oui_write;
> >  };
> >  
> >  enum lspcon_vendor {
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 0a424bf69396..77d9a9390c1e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -29,6 +29,7 @@
> >  #include <linux/i2c.h>
> >  #include <linux/notifier.h>
> >  #include <linux/slab.h>
> > +#include <linux/timekeeping.h>
> >  #include <linux/types.h>
> >  
> >  #include <asm/byteorder.h>
> > @@ -2010,6 +2011,8 @@ intel_edp_init_source_oui(struct intel_dp *intel_dp,
> > bool careful)
> >  
> >         if (drm_dp_dpcd_write(&intel_dp->aux, DP_SOURCE_OUI, oui,
> > sizeof(oui)) < 0)
> >                 drm_err(&i915->drm, "Failed to write source OUI\n");
> > +
> > +       intel_dp->last_oui_write = jiffies;
> >  }
> >  
> >  /* If the device supports it, try to set the power state appropriately */
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > index 569d17b4d00f..2c35b999ec2c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > @@ -96,6 +96,13 @@
> >  #define INTEL_EDP_BRIGHTNESS_OPTIMIZATION_1                           
> > 0x359
> >  
> >  /* Intel EDP backlight callbacks */
> > +static void
> > +wait_for_oui(struct drm_i915_private *i915, struct intel_dp *intel_dp)
> > +{
> > +       drm_dbg_kms(&i915->drm, "Performing OUI wait\n");
> > +       wait_remaining_ms_from_jiffies(intel_dp->last_oui_write, 30);
> > +}
> > +
> >  static bool
> >  intel_dp_aux_supports_hdr_backlight(struct intel_connector *connector)
> >  {
> > @@ -106,6 +113,8 @@ intel_dp_aux_supports_hdr_backlight(struct
> > intel_connector *connector)
> >         int ret;
> >         u8 tcon_cap[4];
> >  
> > +       wait_for_oui(i915, intel_dp);
> > +
> >         ret = drm_dp_dpcd_read(aux, INTEL_EDP_HDR_TCON_CAP0, tcon_cap,
> > sizeof(tcon_cap));
> >         if (ret != sizeof(tcon_cap))
> >                 return false;
> > @@ -204,6 +213,8 @@ intel_dp_aux_hdr_enable_backlight(const struct
> > intel_crtc_state *crtc_state,
> >         int ret;
> >         u8 old_ctrl, ctrl;
> >  
> > +       wait_for_oui(i915, intel_dp);
> > +
> >         ret = drm_dp_dpcd_readb(&intel_dp->aux,
> > INTEL_EDP_HDR_GETSET_CTRL_PARAMS, &old_ctrl);
> >         if (ret != 1) {
> >                 drm_err(&i915->drm, "Failed to read current backlight
> > control mode: %d\n", ret);
> 

-- 
Cheers,
 Lyude Paul (she/her)
 Software Engineer at Red Hat

