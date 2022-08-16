Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 04D54595A39
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Aug 2022 13:35:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 595E211BCE9;
	Tue, 16 Aug 2022 11:35:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 360 seconds by postgrey-1.36 at gabe;
 Tue, 16 Aug 2022 11:35:27 UTC
Received: from smtp-relay-internal-1.canonical.com
 (smtp-relay-internal-1.canonical.com [185.125.188.123])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB50D11BCE9
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Aug 2022 11:35:27 +0000 (UTC)
Received: from mail-oa1-f70.google.com (mail-oa1-f70.google.com
 [209.85.160.70])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 2CF3F40AFB
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Aug 2022 11:29:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1660649366;
 bh=aSmJyx7D+51w1LpJgRV3eRqde7lEGdt1JKguqJZK45s=;
 h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
 To:Cc:Content-Type;
 b=dHalwpEu3omyda1I5IGxIu/SF2e/Rlkw5HSK9Qm5loTF3VIaXu/+ZEWopawrWFG4i
 58uPhncVGMD0b5ys9xrgG0sAM10fyjRyR+wgj4kKaqbT12LL3f+O4AMgRkEnwXOthR
 RD2TTc9wtvPjouJQqiQ5jHgMZ7jf4WFyVBKmlXFXeMp9mvQoArSVFDXBxHnYuLrBo+
 n8CrNiOv3Vo+swhyVQXGGK7/A+sfAp48JisyhgIw5xyKGU2CF4OCeMhSXFfPjn8uvN
 Qa3P2MIvFSQqtsMlY5HTLTOA9WM3bfof69WodCPx9/Uv7IvSdcvHU/saXF8Q2EbWNd
 PV3n+P9ojGGBw==
Received: by mail-oa1-f70.google.com with SMTP id
 586e51a60fabf-10e715ad38aso2476449fac.17
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Aug 2022 04:29:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc;
 bh=aSmJyx7D+51w1LpJgRV3eRqde7lEGdt1JKguqJZK45s=;
 b=y4Eg0b2hDmQBIZih4IATfprrvLKNea3C+NEBU/Us5DhCxJZpA+vzcEJMlSeQHrFPbv
 JtOw3LPzTWRMdTzDmTOvNydJrfz/T8UIp7HeeKw5pnxY11Dkf1G0axt2ht312VnZ1iEg
 eFY1TLd4jneeLDqqMiK+gs/Fub1UlTPtgv5pArNVPpaf/jneJxA8zZj0yPoJzcjv53+O
 DxkbcvpdUjYmuvvutil4+AODqxFRM1n9p5wR9o9YJdci/Qweo3n6X2sM86fJYyKqe8fJ
 ZuwLwo5PiuzcJX6Kdt6tp/VA+ngti2NKrwLwAZD9p8/+1C/xkqfhUp6v8OO1g9y9aMtt
 4T4A==
X-Gm-Message-State: ACgBeo3o2Q8H95oG7cBzFaXoRcXn5unsIsBbjjQJ0+VpyHLVQtLcjHqC
 9C/13VaIYkto2/2Ylqz+Ex9e6kN+anFPm4/6Vsd9CPvfg6wZ+Abf5La87hvhQqqLjiivZFNd6t3
 S7mFh57g/w4f9ECbw7v76Ul2k0HKd7YBT7p36fopxJUY9HoKXjm3p/GAw+hicrw==
X-Received: by 2002:a9d:f05:0:b0:637:1068:1081 with SMTP id
 5-20020a9d0f05000000b0063710681081mr7028772ott.224.1660649364939; 
 Tue, 16 Aug 2022 04:29:24 -0700 (PDT)
X-Google-Smtp-Source: AA6agR40aLi1aejRJbmvKkK+SamiRZIPYXn99+43Y4C0pFABoznjtNDPzRNRT6iTGkRayNIBEZgpA6ErMuo6SjBRYzA=
X-Received: by 2002:a9d:f05:0:b0:637:1068:1081 with SMTP id
 5-20020a9d0f05000000b0063710681081mr7028758ott.224.1660649364645; Tue, 16 Aug
 2022 04:29:24 -0700 (PDT)
MIME-Version: 1.0
References: <20220816025217.618181-1-kai.heng.feng@canonical.com>
 <87leror4sl.fsf@intel.com>
In-Reply-To: <87leror4sl.fsf@intel.com>
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
Date: Tue, 16 Aug 2022 19:29:11 +0800
Message-ID: <CAAd53p76ut7QRFdM4NjaRua=Hc4bu9_=7+Q_t8ExJysEAhJf=Q@mail.gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Switch TGL-H DP-IN to dGFX when
 it's supported
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
Cc: Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, rodrigo.vivi@intel.com,
 Zenghui Yu <yuzenghui@huawei.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Aug 16, 2022 at 4:06 PM Jani Nikula <jani.nikula@linux.intel.com> wrote:
>
> On Tue, 16 Aug 2022, Kai-Heng Feng <kai.heng.feng@canonical.com> wrote:
> > On mobile workstations like HP ZBook Fury G8, iGFX's DP-IN can switch to
> > dGFX so external monitors are routed to dGFX, and more monitors can be
> > supported as result.
> >
> > To switch the DP-IN to dGFX, the driver needs to invoke _DSM function 20
> > on intel_dsm_guid2. This method is described in Intel document 632107.
>
> Is this the policy decision that we want to unconditionally make,
> though?

I believes so, so more external monitors can be supported at the same time.

Kai-Heng

>
> BR,
> Jani.
>
> >
> > Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_acpi.c | 18 +++++++++++++++++-
> >  1 file changed, 17 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_acpi.c b/drivers/gpu/drm/i915/display/intel_acpi.c
> > index e78430001f077..3bd5930e2769b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_acpi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_acpi.c
> > @@ -20,6 +20,7 @@ static const guid_t intel_dsm_guid =
> >                 0xa8, 0x54, 0x0f, 0x13, 0x17, 0xb0, 0x1c, 0x2c);
> >
> >  #define INTEL_DSM_FN_GET_BIOS_DATA_FUNCS_SUPPORTED 0 /* No args */
> > +#define INTEL_DSM_FN_DP_IN_SWITCH_TO_DGFX 20 /* No args */
> >
> >  static const guid_t intel_dsm_guid2 =
> >       GUID_INIT(0x3e5b41c6, 0xeb1d, 0x4260,
> > @@ -187,6 +188,7 @@ void intel_dsm_get_bios_data_funcs_supported(struct drm_i915_private *i915)
> >       struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
> >       acpi_handle dhandle;
> >       union acpi_object *obj;
> > +     int supported = 0;
> >
> >       dhandle = ACPI_HANDLE(&pdev->dev);
> >       if (!dhandle)
> > @@ -194,8 +196,22 @@ void intel_dsm_get_bios_data_funcs_supported(struct drm_i915_private *i915)
> >
> >       obj = acpi_evaluate_dsm(dhandle, &intel_dsm_guid2, INTEL_DSM_REVISION_ID,
> >                               INTEL_DSM_FN_GET_BIOS_DATA_FUNCS_SUPPORTED, NULL);
> > -     if (obj)
> > +     if (obj) {
> > +             if (obj->type == ACPI_TYPE_INTEGER)
> > +                     supported = obj->integer.value;
> > +
> >               ACPI_FREE(obj);
> > +     }
> > +
> > +     /* Tiger Lake H DP-IN Boot Time Switching from iGfx to dGfx */
> > +     if (supported & BIT(20)) {
> > +             obj = acpi_evaluate_dsm(dhandle, &intel_dsm_guid2,
> > +                                     INTEL_DSM_REVISION_ID,
> > +                                     INTEL_DSM_FN_DP_IN_SWITCH_TO_DGFX,
> > +                                     NULL);
> > +             if (obj)
> > +                     ACPI_FREE(obj);
> > +     }
> >  }
> >
> >  /*
>
> --
> Jani Nikula, Intel Open Source Graphics Center
