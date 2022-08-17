Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 401135966FC
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Aug 2022 03:49:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9ECD10E192;
	Wed, 17 Aug 2022 01:49:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2F4310E09C
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Aug 2022 01:49:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1660700942;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=2TVY8TMJPxioaZBXVec5JdNU9LSGZ0P5etQctTE53pw=;
 b=fIbenng1hgeLy1jyLghgh4grmwgK/NYJaA6yO8uNVm5oDw7VzxPFELpuYSe87U/eTOjbss
 6qgjjhVetLD56wuWHXdowTazrVSGSewNIE5kWHAsyFcW8D8wMVZ30D9fiqREdW2HTh4VeS
 7Vz0bI59qqxzuwnh/xtzScRW1aFoP3o=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-594-1BOwplwCPda9qVZzHMjEuw-1; Tue, 16 Aug 2022 21:49:01 -0400
X-MC-Unique: 1BOwplwCPda9qVZzHMjEuw-1
Received: by mail-qv1-f70.google.com with SMTP id
 oo27-20020a056214451b00b00477249248e2so5362840qvb.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Aug 2022 18:49:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc;
 bh=2TVY8TMJPxioaZBXVec5JdNU9LSGZ0P5etQctTE53pw=;
 b=RuYtT+7de1OO5TdzPLWXg6O8dPjPZIV+XPwY85YyWlz3go0oG3ENX3aNwhc8k1kna9
 6YgEDLWcaYp+DSoIe+Hd2h0qLOSO7Qec4di8DttkVlRnq0SWsskm2t5mP3zrQgTs1axG
 pS1ZmjEYqZyYjf3+jmb6YxwjTCDSn++dFrlzoyrbvupMsVw5dprLhUN5gvT8gWDPpyGA
 Db+M6ebE3eemwdVy1ONj3ryYn7nyECdESQCF58Tkk8dGppOKAXG5URuSIBX3ySux4Nce
 Ng/2RDVFKwtff3A7SmwgSMnBkVxSDE5OxNVJb5zVQkZ71ejGCPMW0zND+cRAy56D9qAm
 Duiw==
X-Gm-Message-State: ACgBeo0o7soC5hJlF5r7+Y5iJwJVBcNnWNFj0U4dAaWTYhWGyDeL2TXu
 SIBIggYFWEq1FYq9hO4IFVInHPVvRZGXIIuwmwx+vht7mGBfc+f32V9F2EDM58qySsDaOeQxFPQ
 gMEgB63WhR2DY3uSVLMhX/AjwJMUy4JidT47AZHawxKJJ
X-Received: by 2002:a05:622a:53:b0:344:6f46:9b16 with SMTP id
 y19-20020a05622a005300b003446f469b16mr5792718qtw.664.1660700941278; 
 Tue, 16 Aug 2022 18:49:01 -0700 (PDT)
X-Google-Smtp-Source: AA6agR4gHCrR40uV7QffHRDW/lFTeHdJ8qvvyniB8BpRcxgy0lUxNzSjdlNT4AIgpmsDR0LEaZfQGdV3c0pKtV+DBlM=
X-Received: by 2002:a05:622a:53:b0:344:6f46:9b16 with SMTP id
 y19-20020a05622a005300b003446f469b16mr5792703qtw.664.1660700940947; Tue, 16
 Aug 2022 18:49:00 -0700 (PDT)
MIME-Version: 1.0
References: <20220816025217.618181-1-kai.heng.feng@canonical.com>
 <CACO55tt=Op=0E94kK+1M8cDXNCk5Tkc=FMR8=OQFc5ohehjwaw@mail.gmail.com>
 <CAAd53p49X95MKrTDUq92LuHw3y2i09fUA2HEPzM1EcO8xO97Eg@mail.gmail.com>
In-Reply-To: <CAAd53p49X95MKrTDUq92LuHw3y2i09fUA2HEPzM1EcO8xO97Eg@mail.gmail.com>
From: Karol Herbst <kherbst@redhat.com>
Date: Wed, 17 Aug 2022 03:48:50 +0200
Message-ID: <CACO55tvgmb4Vog701idDYGuh125S9mjWPXhftxDMZ7hg-nQXBw@mail.gmail.com>
To: Kai-Heng Feng <kai.heng.feng@canonical.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
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
 rodrigo.vivi@intel.com, Zenghui Yu <yuzenghui@huawei.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Aug 17, 2022 at 3:18 AM Kai-Heng Feng
<kai.heng.feng@canonical.com> wrote:
>
> On Wed, Aug 17, 2022 at 2:50 AM Karol Herbst <kherbst@redhat.com> wrote:
> >
> > On Tue, Aug 16, 2022 at 4:53 AM Kai-Heng Feng
> > <kai.heng.feng@canonical.com> wrote:
> > >
> > > On mobile workstations like HP ZBook Fury G8, iGFX's DP-IN can switch to
> > > dGFX so external monitors are routed to dGFX, and more monitors can be
> > > supported as result.
> > >
> > > To switch the DP-IN to dGFX, the driver needs to invoke _DSM function 20
> > > on intel_dsm_guid2. This method is described in Intel document 632107.
> > >
> >
> > Can we please not do things like this just because?
>
> I there's a very good reason to support more external monitors,
> especially when eDP is already 4K so iGPU don't have enough buffer for
> more displays.
>

well.. they do have it. What's the limit? 3 or 4 4K displays with gen
11th+? I find conflicting information, but 3 4K displays are no
problem. It might be if you get to higher refresh rates or something.

I know that 2 work quite reliably and I know I can put even more on
the Intel GPU.

> >
> > It forces the discrete GPU to be on leading to higher thermal pressure
> > and power consumption of the system. Lower battery runtime or higher
> > fan noise is the result. Not everybody wants to use an AC simply just
> > because they attach an external display.
>
> The system is designed in this way.
>

?!? This makes no sense. If the discrete GPU is turned on, it means
the system has to cool away more heat, because it consumes more power.
It then causes louder fans. No idea how a "system design" can just go
around simple physics...

Even the CPU consumes more power, because on some systems it prevents
deeper package sleeping modes due to the active PCIe bridge
controller.

But if you have certain systems where you want to enable this behavior
despite the drawbacks, maybe maintain a list of systems where to apply
this method?

> And many (if not all) gaming laptops and mobile workstations use
> discrete GPU for external monitors.
> We just recently found out we have to use a switch to make it work.
>

yeah some do, and if people buy those, they already deal with loud
fans and just accept this fact.

Others might want silent fans... and why do you have to switch? Out of
the box Intel GPUs support 3 4K displays. I want to see the general
use case for 4 4K displays.

So what systems are actually affected and do users have the option to
disable it, if they prefer a more silent system?

> >
> > If the problem is "we run out of displays" then can we have something
> > more dynamic, where we are doing this only and only if we run out of
> > resources to drive as that many displays.
>
> This is a boot-time switch, so it's not possible to switch it dynamically.
>

This makes it even worse.

> >
> > Most users will be fine with ports being driven by the iGPU. Why hurt
> > most users, because of some weird special case with mostly only
> > drawbacks?
>
> This is a use case that hardware vendor never bother to test.
> And this is not a special case - the system is designed to use dGPU
> for external monitors.
>
> Kai-Heng
>

so instead of hard wiring, they added a software switch to do the same thing?

And then don't bother to test both possibilities?

Anyway.. it doesn't make any sense and this opens up more questions
than I initially had.

I honestly still don't see the point here and still doubt that
pleasing a handful of users is worth accepting the drawbacks.

I also have no say if it comes to the i915 driver, but from a user
perspective none of this makes much sense tbh.

> >
> > > Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_acpi.c | 18 +++++++++++++++++-
> > >  1 file changed, 17 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_acpi.c b/drivers/gpu/drm/i915/display/intel_acpi.c
> > > index e78430001f077..3bd5930e2769b 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_acpi.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_acpi.c
> > > @@ -20,6 +20,7 @@ static const guid_t intel_dsm_guid =
> > >                   0xa8, 0x54, 0x0f, 0x13, 0x17, 0xb0, 0x1c, 0x2c);
> > >
> > >  #define INTEL_DSM_FN_GET_BIOS_DATA_FUNCS_SUPPORTED 0 /* No args */
> > > +#define INTEL_DSM_FN_DP_IN_SWITCH_TO_DGFX 20 /* No args */
> > >
> > >  static const guid_t intel_dsm_guid2 =
> > >         GUID_INIT(0x3e5b41c6, 0xeb1d, 0x4260,
> > > @@ -187,6 +188,7 @@ void intel_dsm_get_bios_data_funcs_supported(struct drm_i915_private *i915)
> > >         struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
> > >         acpi_handle dhandle;
> > >         union acpi_object *obj;
> > > +       int supported = 0;
> > >
> > >         dhandle = ACPI_HANDLE(&pdev->dev);
> > >         if (!dhandle)
> > > @@ -194,8 +196,22 @@ void intel_dsm_get_bios_data_funcs_supported(struct drm_i915_private *i915)
> > >
> > >         obj = acpi_evaluate_dsm(dhandle, &intel_dsm_guid2, INTEL_DSM_REVISION_ID,
> > >                                 INTEL_DSM_FN_GET_BIOS_DATA_FUNCS_SUPPORTED, NULL);
> > > -       if (obj)
> > > +       if (obj) {
> > > +               if (obj->type == ACPI_TYPE_INTEGER)
> > > +                       supported = obj->integer.value;
> > > +
> > >                 ACPI_FREE(obj);
> > > +       }
> > > +
> > > +       /* Tiger Lake H DP-IN Boot Time Switching from iGfx to dGfx */
> > > +       if (supported & BIT(20)) {
> > > +               obj = acpi_evaluate_dsm(dhandle, &intel_dsm_guid2,
> > > +                                       INTEL_DSM_REVISION_ID,
> > > +                                       INTEL_DSM_FN_DP_IN_SWITCH_TO_DGFX,
> > > +                                       NULL);
> > > +               if (obj)
> > > +                       ACPI_FREE(obj);
> > > +       }
> > >  }
> > >
> > >  /*
> > > --
> > > 2.36.1
> > >
> >
>

