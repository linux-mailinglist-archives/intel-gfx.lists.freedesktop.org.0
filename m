Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4883C463F3B
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Nov 2021 21:28:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86D376E5C3;
	Tue, 30 Nov 2021 20:28:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9986B89F5B
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Nov 2021 20:28:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1638304123;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=KvkwqD/bubpD0F34Eg7zQjYNKUCEwQXRbQFHOjINJ58=;
 b=Oy32OBLM0OFsjFCa2wSDA0Ve0OFw5SeDUmHa8nSErM/CP2oCVkGQG/ErF814NXEJR5ojPq
 P6Jn2uX5D3LFpVHmMMNBWhDvKGRxfR5A2L03JXa0YRQLIg1BDqkLCn3Ow0V1MHychZnIj0
 UKfo7o5UMNXgHpSIDTtFOn48QluACKo=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-589-X7cwj9EXMfWl2o3ArKWC_w-1; Tue, 30 Nov 2021 15:28:42 -0500
X-MC-Unique: X7cwj9EXMfWl2o3ArKWC_w-1
Received: by mail-qv1-f71.google.com with SMTP id
 q2-20020a05621419e200b003aeeeff5417so30929540qvc.9
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Nov 2021 12:28:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=KvkwqD/bubpD0F34Eg7zQjYNKUCEwQXRbQFHOjINJ58=;
 b=8BBQ28jm2jGMZWxFEUgOZ/jNey9EanGQ3P1pWnUmfNoG4P/+Sor+KwfSaUHvXahUsi
 ybQOj9hNoLpIXTaI4Nod59q2PrzqPfPIHG96a/n0AHnZXC31pjuo6SUXuRU4AQfA8Ro2
 vsWygOFFcyZf4uTyDltph6S3aF5aY48+0nIXPqxhzX9a9Uxn8l23FEb4IwnN0jrT/53g
 g/3kj0277WWjQqRdXL+vaMeacsnmGJf1oKe5/pf71EgPBxJhIYTnjtILVll2nHkYzKt0
 m4r+6QBonpZwpvKvihRbr9nvR159Bs/P3NOP1dDECVjpS4o/vQbvrx5noHoX8M8lzAFN
 /r/Q==
X-Gm-Message-State: AOAM533wsf0k7e5mxQr1HvQTz+OZkdmh0CSvE4WjaDGFDSu3xTM3MdPI
 QpLZZe9W19RgMvv8fKdJ9FznwWvjmWZ9w+h53k8/qgU9aRIFIbTZrwNRicEZvKyyNd7/Oy5+ba8
 VbMuYiK9hQf3Q56JlM1Qtn9LJGBxs
X-Received: by 2002:ac8:7b2f:: with SMTP id l15mr2025601qtu.654.1638304121647; 
 Tue, 30 Nov 2021 12:28:41 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyvKnquRBrDqm2mVdIrMlTldc7skuALmWxKwXsNfWpZnTH4kvySFW2hXBaKbTc9Jm0ArD6jtg==
X-Received: by 2002:ac8:7b2f:: with SMTP id l15mr2025570qtu.654.1638304121408; 
 Tue, 30 Nov 2021 12:28:41 -0800 (PST)
Received: from [192.168.8.138] (pool-96-230-249-157.bstnma.fios.verizon.net.
 [96.230.249.157])
 by smtp.gmail.com with ESMTPSA id h13sm11240708qtk.25.2021.11.30.12.28.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 30 Nov 2021 12:28:40 -0800 (PST)
Message-ID: <fedb77e30ab44b858d6c9b06f294816635d82402.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, intel-gfx@lists.freedesktop.org
Date: Tue, 30 Nov 2021 15:28:39 -0500
In-Reply-To: <871r2yj5fp.fsf@intel.com>
References: <20211129233354.101347-1-lyude@redhat.com>
 <871r2yj5fp.fsf@intel.com>
Organization: Red Hat Inc.
User-Agent: Evolution 3.42.1 (3.42.1-1.fc35)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/dp: Perform 30ms delay after
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

On Tue, 2021-11-30 at 12:36 +0200, Jani Nikula wrote:
> On Mon, 29 Nov 2021, Lyude Paul <lyude@redhat.com> wrote:
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
> > 
> > V2:
> > * Move panel delays into intel_pps
> > 
> > Signed-off-by: Lyude Paul <lyude@redhat.com>
> > Fixes: 4a8d79901d5b ("drm/i915/dp: Enable Intel's HDR backlight interface
> > (only SDR for now)")
> > Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Cc: <stable@vger.kernel.org> # v5.12+
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_types.h    |  4 ++++
> >  drivers/gpu/drm/i915/display/intel_dp.c               | 11 +++++++++++
> >  drivers/gpu/drm/i915/display/intel_dp.h               |  2 ++
> >  drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c |  5 +++++
> >  4 files changed, 22 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index ea1e8a6e10b0..ad64f9caa7ff 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1485,6 +1485,7 @@ struct intel_pps {
> >         bool want_panel_vdd;
> >         unsigned long last_power_on;
> >         unsigned long last_backlight_off;
> > +       unsigned long last_oui_write;
> >         ktime_t panel_power_off_time;
> >         intel_wakeref_t vdd_wakeref;
> >  
> > @@ -1653,6 +1654,9 @@ struct intel_dp {
> >         struct intel_dp_pcon_frl frl;
> >  
> >         struct intel_psr psr;
> > +
> > +       /* When we last wrote the OUI for eDP */
> > +       unsigned long last_oui_write;
> 
> Now you're adding last_oui_write to both intel_pps and intel_dp, forgot
> to git add? ;)

Yep :P, will send out a different version in a bit
> 
> I guess I'd add this to intel_dp only, because it's not strictly about
> PPS. I just wanted the mechanism to be similar to that.
> 
> >  };
> >  
> >  enum lspcon_vendor {
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 0a424bf69396..45318891ba07 100644
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
> > @@ -2010,6 +2011,16 @@ intel_edp_init_source_oui(struct intel_dp
> > *intel_dp, bool careful)
> >  
> >         if (drm_dp_dpcd_write(&intel_dp->aux, DP_SOURCE_OUI, oui,
> > sizeof(oui)) < 0)
> >                 drm_err(&i915->drm, "Failed to write source OUI\n");
> > +
> > +       intel_dp->pps.last_oui_write = jiffies;
> 
> Set to intel_dp->last_oui_write.
> 
> With those fixes,
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> 
> > +}
> > +
> > +void intel_dp_wait_source_oui(struct intel_dp *intel_dp)
> > +{
> > +       struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> > +
> > +       drm_dbg_kms(&i915->drm, "Performing OUI wait\n");
> > +       wait_remaining_ms_from_jiffies(intel_dp->last_oui_write, 30);
> >  }
> >  
> >  /* If the device supports it, try to set the power state appropriately */
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.h
> > b/drivers/gpu/drm/i915/display/intel_dp.h
> > index ce229026dc91..b64145a3869a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> > @@ -119,4 +119,6 @@ void intel_dp_pcon_dsc_configure(struct intel_dp
> > *intel_dp,
> >                                  const struct intel_crtc_state
> > *crtc_state);
> >  void intel_dp_phy_test(struct intel_encoder *encoder);
> >  
> > +void intel_dp_wait_source_oui(struct intel_dp *intel_dp);
> > +
> >  #endif /* __INTEL_DP_H__ */
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > index 8b9c925c4c16..62c112daacf2 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > @@ -36,6 +36,7 @@
> >  
> >  #include "intel_backlight.h"
> >  #include "intel_display_types.h"
> > +#include "intel_dp.h"
> >  #include "intel_dp_aux_backlight.h"
> >  
> >  /* TODO:
> > @@ -106,6 +107,8 @@ intel_dp_aux_supports_hdr_backlight(struct
> > intel_connector *connector)
> >         int ret;
> >         u8 tcon_cap[4];
> >  
> > +       intel_dp_wait_source_oui(intel_dp);
> > +
> >         ret = drm_dp_dpcd_read(aux, INTEL_EDP_HDR_TCON_CAP0, tcon_cap,
> > sizeof(tcon_cap));
> >         if (ret != sizeof(tcon_cap))
> >                 return false;
> > @@ -204,6 +207,8 @@ intel_dp_aux_hdr_enable_backlight(const struct
> > intel_crtc_state *crtc_state,
> >         int ret;
> >         u8 old_ctrl, ctrl;
> >  
> > +       intel_dp_wait_source_oui(intel_dp);
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

