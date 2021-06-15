Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 601C33A7781
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jun 2021 09:01:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88E296E182;
	Tue, 15 Jun 2021 07:01:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AF3F6E17F
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Jun 2021 07:01:52 +0000 (UTC)
Received: from mail-ed1-f70.google.com ([209.85.208.70])
 by youngberry.canonical.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <kai.heng.feng@canonical.com>) id 1lt354-0003D0-Od
 for intel-gfx@lists.freedesktop.org; Tue, 15 Jun 2021 07:01:50 +0000
Received: by mail-ed1-f70.google.com with SMTP id
 x12-20020a05640226ccb0290393aaa6e811so11802255edd.19
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Jun 2021 00:01:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RLIhQ5PXrLvdYmFmLwCtPCnE63dd34mWBn86fHsJHAY=;
 b=EFBs0o3dJEq9n+tSGkUcULhcMKjoaeqlDZZog1M4s5za3Xiv5RjvdMJwWSciX9C3jV
 hkjGP+p/BPuUXaz3/1AwAK1HKwcnVZbPjuAYesGaRiYaviG5a7Ahzbc79bcP9LGpUEpO
 V307XuIU1MLVGCRzheBXTc6870owddrGZgb0O0SignKpLxEveB96Op6E12uCaLRTb0Bb
 3qJSRBcRAPMtWH4XPBtryxp/AdFV1N3ioVE54H1zVG3EF5KVK/rOxS362ReDQf9W3az0
 9CEJfXW32iHaL0xmSHdfLgCzMNKOGxlqzlBorbvbTPQyKDLlAO289MsVu2PgYUzULXHO
 6evw==
X-Gm-Message-State: AOAM533FlFmOPnNSh5lzNpC98Win6Bz7Yrcn9xPkScRleNys4OsKeWfv
 jQ6J8y/vLYLBNJ0uZcYoAsO/dEgZnst+DI3UhAvpvGC/MC0BUGlicD5kx4XZqifcY3GmfwHD35Z
 IgOZENc/G7ke7e0dmhSykeWv+dJjW5IxLL466ddUac509GgtsZ2z5/Q2Q81ag5g==
X-Received: by 2002:a17:907:9c2:: with SMTP id
 bx2mr508193ejc.322.1623740510320; 
 Tue, 15 Jun 2021 00:01:50 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzFw2trtSLk8k2LAomln5c9EFUyGliZfM/0G9KDSfYd2UaI1t5fTBwl2b3H2qUtcXD/+HS0RfkRO3F8ka1BPxc=
X-Received: by 2002:a17:907:9c2:: with SMTP id
 bx2mr508161ejc.322.1623740510061; 
 Tue, 15 Jun 2021 00:01:50 -0700 (PDT)
MIME-Version: 1.0
References: <20210520065832.614245-1-kai.heng.feng@canonical.com>
 <CAAd53p4mYybfBsSpd497jOTKwE+aiCvTD9OEvMtROkgjdRHp=g@mail.gmail.com>
In-Reply-To: <CAAd53p4mYybfBsSpd497jOTKwE+aiCvTD9OEvMtROkgjdRHp=g@mail.gmail.com>
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
Date: Tue, 15 Jun 2021 15:01:38 +0800
Message-ID: <CAAd53p7mN7Lumqbe+g1w9D2C3whEUn53c01Otf3hiOoqjtzk8g@mail.gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915: Invoke another _DSM to enable
 MUX on HP Workstation laptops
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
 Lucas De Marchi <lucas.demarchi@intel.com>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:DRM DRIVERS" <dri-devel@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>, Takashi Iwai <tiwai@suse.de>,
 Thomas Zimmermann <tzimmermann@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jun 4, 2021 at 11:57 PM Kai-Heng Feng
<kai.heng.feng@canonical.com> wrote:
>
> On Thu, May 20, 2021 at 2:58 PM Kai-Heng Feng
> <kai.heng.feng@canonical.com> wrote:
> >
> > On HP Fury G7 Workstations, graphics output is re-routed from Intel GFX
> > to discrete GFX after S3. This is not desirable, because userspace will
> > treat connected display as a new one, losing display settings.
> >
> > The expected behavior is to let discrete GFX drives all external
> > displays.
> >
> > The platform in question uses ACPI method \_SB.PCI0.HGME to enable MUX.
> > The method is inside the another _DSM, so add the _DSM and call it
> > accordingly.
> >
> > I also tested some MUX-less and iGPU only laptops with that _DSM, no
> > regression was found.
> >
> > v4:
> >  - Rebase.
> >  - Change the DSM name to avoid confusion.
> >  - Move the function call to intel_opregion.
> >
> > v3:
> >  - Remove BXT from names.
> >  - Change the parameter type.
> >  - Fold the function into intel_modeset_init_hw().
> >
> > v2:
> >  - Forward declare struct pci_dev.
> >
> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/3113
> > References: https://lore.kernel.org/intel-gfx/1460040732-31417-4-git-send-email-animesh.manna@intel.com/
> > Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
>
> A gentle ping...

Another gentle ping...

>
> > ---
> >  drivers/gpu/drm/i915/display/intel_acpi.c     | 19 +++++++++++++++++++
> >  drivers/gpu/drm/i915/display/intel_acpi.h     |  3 +++
> >  drivers/gpu/drm/i915/display/intel_opregion.c |  3 +++
> >  3 files changed, 25 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_acpi.c b/drivers/gpu/drm/i915/display/intel_acpi.c
> > index 833d0c1be4f1..7cfe91fc05f2 100644
> > --- a/drivers/gpu/drm/i915/display/intel_acpi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_acpi.c
> > @@ -19,6 +19,12 @@ static const guid_t intel_dsm_guid =
> >         GUID_INIT(0x7ed873d3, 0xc2d0, 0x4e4f,
> >                   0xa8, 0x54, 0x0f, 0x13, 0x17, 0xb0, 0x1c, 0x2c);
> >
> > +#define INTEL_DSM_FN_GET_BIOS_DATA_FUNCS_SUPPORTED 0 /* No args */
> > +
> > +static const guid_t intel_dsm_guid2 =
> > +       GUID_INIT(0x3e5b41c6, 0xeb1d, 0x4260,
> > +                 0x9d, 0x15, 0xc7, 0x1f, 0xba, 0xda, 0xe4, 0x14);
> > +
> >  static char *intel_dsm_port_name(u8 id)
> >  {
> >         switch (id) {
> > @@ -176,6 +182,19 @@ void intel_unregister_dsm_handler(void)
> >  {
> >  }
> >
> > +void intel_dsm_get_bios_data_funcs_supported(struct drm_i915_private *i915)
> > +{
> > +       struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
> > +       acpi_handle dhandle;
> > +
> > +       dhandle = ACPI_HANDLE(&pdev->dev);
> > +       if (!dhandle)
> > +               return;
> > +
> > +       acpi_evaluate_dsm(dhandle, &intel_dsm_guid2, INTEL_DSM_REVISION_ID,
> > +                         INTEL_DSM_FN_GET_BIOS_DATA_FUNCS_SUPPORTED, NULL);
> > +}
> > +
> >  /*
> >   * ACPI Specification, Revision 5.0, Appendix B.3.2 _DOD (Enumerate All Devices
> >   * Attached to the Display Adapter).
> > diff --git a/drivers/gpu/drm/i915/display/intel_acpi.h b/drivers/gpu/drm/i915/display/intel_acpi.h
> > index e8b068661d22..9f197401c313 100644
> > --- a/drivers/gpu/drm/i915/display/intel_acpi.h
> > +++ b/drivers/gpu/drm/i915/display/intel_acpi.h
> > @@ -11,11 +11,14 @@ struct drm_i915_private;
> >  #ifdef CONFIG_ACPI
> >  void intel_register_dsm_handler(void);
> >  void intel_unregister_dsm_handler(void);
> > +void intel_dsm_get_bios_data_funcs_supported(struct drm_i915_private *i915);
> >  void intel_acpi_device_id_update(struct drm_i915_private *i915);
> >  #else
> >  static inline void intel_register_dsm_handler(void) { return; }
> >  static inline void intel_unregister_dsm_handler(void) { return; }
> >  static inline
> > +void intel_dsm_get_bios_data_funcs_supported(struct drm_i915_private *i915) { return; }
> > +static inline
> >  void intel_acpi_device_id_update(struct drm_i915_private *i915) { return; }
> >  #endif /* CONFIG_ACPI */
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
> > index dfd724e506b5..3855fba70980 100644
> > --- a/drivers/gpu/drm/i915/display/intel_opregion.c
> > +++ b/drivers/gpu/drm/i915/display/intel_opregion.c
> > @@ -1078,6 +1078,9 @@ void intel_opregion_resume(struct drm_i915_private *i915)
> >                 opregion->asle->ardy = ASLE_ARDY_READY;
> >         }
> >
> > +       /* Some platforms abuse the _DSM to enable MUX */
> > +       intel_dsm_get_bios_data_funcs_supported(i915);
> > +
> >         intel_opregion_notify_adapter(i915, PCI_D0);
> >  }
> >
> > --
> > 2.31.1
> >
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
