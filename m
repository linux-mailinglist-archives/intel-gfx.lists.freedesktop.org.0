Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4B1259669A
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Aug 2022 03:19:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5B588876A;
	Wed, 17 Aug 2022 01:19:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-relay-internal-0.canonical.com
 (smtp-relay-internal-0.canonical.com [185.125.188.122])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67D3310E16E
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Aug 2022 01:18:54 +0000 (UTC)
Received: from mail-ot1-f71.google.com (mail-ot1-f71.google.com
 [209.85.210.71])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 7270E3FBB0
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Aug 2022 01:18:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1660699130;
 bh=QB/N93Jt8jeRbC+nYshhBQqqf2b7gP/bAzKdLJW4IoY=;
 h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
 To:Cc:Content-Type;
 b=HISsSCdgUYfni94RX+6wDkr6oG1BmV9Jg5js5r62uFeAC7fAJtE0E1w1Z4Ztyc7QI
 MF7PdweOY8hpX2QOf8LlTG9HHllBOjO0iLnJxzjVy/1Cey6yOZBVuGMCRrNV4kYVEn
 HvdeIXcF1ADA90iObkK6nyf7sFbCPSZ8P8QBHxGbkmqZBhVHZWAv7Hj37y647caQBp
 06vTQpcFaN6zNFivgsV8ytZ9EIORjrwaCdW8MpN9krhnHI1wH3qvzpDra5Zo4atVn5
 mTlUyv5sH4yU6Z8gE9dBzjB6ZN4W8chFvqt0CyjaB94DBjUBPYSRLluZQwxzd8Aa1y
 OROiVNYl5SI0w==
Received: by mail-ot1-f71.google.com with SMTP id
 f22-20020a056830205600b0063724673c3aso4655300otp.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Aug 2022 18:18:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc;
 bh=QB/N93Jt8jeRbC+nYshhBQqqf2b7gP/bAzKdLJW4IoY=;
 b=O2Dn8D0dl+sfjtBJTXVUBPp2blfR6ewJVsI3Ak/ofeyXrXVmrU5XXHxfGs5wEAoWmR
 H2lC4X0SkER++VOqPqiUdLAFGCqrY4+tYa/1GZWklqoB9A+LIUJvKSIa21Xe7riDggqF
 iy0kP6KwsXrq0cnX6zCXeftJwzGyrWZaDVWNE0J29Sw7JWrZ8O7PsIRVWyAA29vrkk+z
 Hms0szZ0AmLrKG0Y4StuniqGojL0STRHrpQd2wQ7Lm/xlqiM8oserqiCv9pfVD89uJmI
 RDMkJhVdPbMWgT29kW8Zg6qE01Nb7hORmqzyMkgO4Oz7h3/a0UJMXyxoPD+L6dSNgh5M
 0r2g==
X-Gm-Message-State: ACgBeo3iwHUYlnUxHxKoTplkUIWII841AR8aTTYITOYce5Jq0iXKd8rx
 Mz9eZYi5DeVyk7UtiDD9H+jwRjokel36o/McRSC7kDlLn49/4kPB0uAkIBkfuLK8BNoomZhv8C8
 vCaTfOamI11SgvjMXH2DRsJlkVGCkUSQIjVi+EpQO9sXjKvEUntxuIemIyaykKQ==
X-Received: by 2002:a05:6808:209f:b0:344:8f50:1f29 with SMTP id
 s31-20020a056808209f00b003448f501f29mr538899oiw.42.1660699128692; 
 Tue, 16 Aug 2022 18:18:48 -0700 (PDT)
X-Google-Smtp-Source: AA6agR4z0ckBseo0DvhMsjK8u68wPgPVvhD5xGInUN9KS3WKNbIl+FGWT86akRupbmaylKkx03qn6le2zNiMt4kSPAI=
X-Received: by 2002:a05:6808:209f:b0:344:8f50:1f29 with SMTP id
 s31-20020a056808209f00b003448f501f29mr538889oiw.42.1660699128446; Tue, 16 Aug
 2022 18:18:48 -0700 (PDT)
MIME-Version: 1.0
References: <20220816025217.618181-1-kai.heng.feng@canonical.com>
 <CACO55tt=Op=0E94kK+1M8cDXNCk5Tkc=FMR8=OQFc5ohehjwaw@mail.gmail.com>
In-Reply-To: <CACO55tt=Op=0E94kK+1M8cDXNCk5Tkc=FMR8=OQFc5ohehjwaw@mail.gmail.com>
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
Date: Wed, 17 Aug 2022 09:18:36 +0800
Message-ID: <CAAd53p49X95MKrTDUq92LuHw3y2i09fUA2HEPzM1EcO8xO97Eg@mail.gmail.com>
To: Karol Herbst <kherbst@redhat.com>
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

On Wed, Aug 17, 2022 at 2:50 AM Karol Herbst <kherbst@redhat.com> wrote:
>
> On Tue, Aug 16, 2022 at 4:53 AM Kai-Heng Feng
> <kai.heng.feng@canonical.com> wrote:
> >
> > On mobile workstations like HP ZBook Fury G8, iGFX's DP-IN can switch to
> > dGFX so external monitors are routed to dGFX, and more monitors can be
> > supported as result.
> >
> > To switch the DP-IN to dGFX, the driver needs to invoke _DSM function 20
> > on intel_dsm_guid2. This method is described in Intel document 632107.
> >
>
> Can we please not do things like this just because?

I there's a very good reason to support more external monitors,
especially when eDP is already 4K so iGPU don't have enough buffer for
more displays.

>
> It forces the discrete GPU to be on leading to higher thermal pressure
> and power consumption of the system. Lower battery runtime or higher
> fan noise is the result. Not everybody wants to use an AC simply just
> because they attach an external display.

The system is designed in this way.

And many (if not all) gaming laptops and mobile workstations use
discrete GPU for external monitors.
We just recently found out we have to use a switch to make it work.

>
> If the problem is "we run out of displays" then can we have something
> more dynamic, where we are doing this only and only if we run out of
> resources to drive as that many displays.

This is a boot-time switch, so it's not possible to switch it dynamically.

>
> Most users will be fine with ports being driven by the iGPU. Why hurt
> most users, because of some weird special case with mostly only
> drawbacks?

This is a use case that hardware vendor never bother to test.
And this is not a special case - the system is designed to use dGPU
for external monitors.

Kai-Heng

>
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
> >                   0xa8, 0x54, 0x0f, 0x13, 0x17, 0xb0, 0x1c, 0x2c);
> >
> >  #define INTEL_DSM_FN_GET_BIOS_DATA_FUNCS_SUPPORTED 0 /* No args */
> > +#define INTEL_DSM_FN_DP_IN_SWITCH_TO_DGFX 20 /* No args */
> >
> >  static const guid_t intel_dsm_guid2 =
> >         GUID_INIT(0x3e5b41c6, 0xeb1d, 0x4260,
> > @@ -187,6 +188,7 @@ void intel_dsm_get_bios_data_funcs_supported(struct drm_i915_private *i915)
> >         struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
> >         acpi_handle dhandle;
> >         union acpi_object *obj;
> > +       int supported = 0;
> >
> >         dhandle = ACPI_HANDLE(&pdev->dev);
> >         if (!dhandle)
> > @@ -194,8 +196,22 @@ void intel_dsm_get_bios_data_funcs_supported(struct drm_i915_private *i915)
> >
> >         obj = acpi_evaluate_dsm(dhandle, &intel_dsm_guid2, INTEL_DSM_REVISION_ID,
> >                                 INTEL_DSM_FN_GET_BIOS_DATA_FUNCS_SUPPORTED, NULL);
> > -       if (obj)
> > +       if (obj) {
> > +               if (obj->type == ACPI_TYPE_INTEGER)
> > +                       supported = obj->integer.value;
> > +
> >                 ACPI_FREE(obj);
> > +       }
> > +
> > +       /* Tiger Lake H DP-IN Boot Time Switching from iGfx to dGfx */
> > +       if (supported & BIT(20)) {
> > +               obj = acpi_evaluate_dsm(dhandle, &intel_dsm_guid2,
> > +                                       INTEL_DSM_REVISION_ID,
> > +                                       INTEL_DSM_FN_DP_IN_SWITCH_TO_DGFX,
> > +                                       NULL);
> > +               if (obj)
> > +                       ACPI_FREE(obj);
> > +       }
> >  }
> >
> >  /*
> > --
> > 2.36.1
> >
>
