Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC94259667F
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Aug 2022 03:03:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA55E10E05C;
	Wed, 17 Aug 2022 01:02:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-relay-internal-1.canonical.com
 (smtp-relay-internal-1.canonical.com [185.125.188.123])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6681310E05C
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Aug 2022 01:02:52 +0000 (UTC)
Received: from mail-oi1-f200.google.com (mail-oi1-f200.google.com
 [209.85.167.200])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 7BC223F043
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Aug 2022 01:02:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1660698170;
 bh=xGFP+iN6DfSG465LWXa4neySYOfhkSAdDwVqeXEIiOY=;
 h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
 To:Cc:Content-Type;
 b=JXK2CPifH8Y5Xr992lM+IJCcIkUhqe57Ktl2IX7BA1JpAaNpRuLrcRZX6c5pyugiC
 lR0Mffv3pGjYw/+k33tObXWWJPW8ImjID4ki1a8tjRQLEhki1w4OJ4Iw9yIVt8eVtA
 bBc9o1L1WGYajztQrFJ6FINw1S+A+Y6N6/0Oy6fgAnHMzdJXOQ8WpzfxuRpVwFrzzO
 1xxKTSm4qBggiXs0jjBnB7E9ArxLqZHQHTEgLUloG/iNR0/YKOxhXl1V2sIKo1LnRE
 38mM0AkbJzf7/nfaXPHGMZgFvOSySRFh5rs6GTZYJXndG+lQFXl8C1PPTe/e/mEwAS
 LvaLlkjXdF1pA==
Received: by mail-oi1-f200.google.com with SMTP id
 t28-20020a0568080b3c00b003433d8d19f0so3193244oij.17
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Aug 2022 18:02:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc;
 bh=xGFP+iN6DfSG465LWXa4neySYOfhkSAdDwVqeXEIiOY=;
 b=J/68hC2JI2tRNYoDwuiqLYOVBdrtF1Mi6rsIYiCSF/lf0z+bPZmrRGaN7KuF/L8Qgc
 T/PcirSJTQcwLH7GlEahFbZarumyuA/JuZXFMlQ08mEsy0AVUzTm7KswDNK1hJGWHScd
 JDcRe16TRwKR43JlBueevYkOhKDOWlYgJahcSjgiCUCEGKZoLG4Pb2oSOyDicsos68pM
 1XQ1GL5yTCs4fm+txJJCzyRDoZveKFyiiua3FyHKWteWYutNMR0aYAy6ehn4iacYygbV
 N8MY5IIytW089eMaqv0cX0x268RnsHpaA1mSFaHUGIR7j8uAvb0L+wHu7d+SXZ8uAWPw
 pNSw==
X-Gm-Message-State: ACgBeo2fgnLNIPXJK+4q28fn+WBC+SYr0lhL7Kg1WmuRLPeGALCWh2Uv
 4sdriUEr+pvKpUCKgO3Q71KMaOfqXKTeZXYHFyEEcE0t5J8z13IbrpsEhOoifRRfvsTpgXvKTft
 5NAiKPstvg2pDAsS6FE1VHR1cEPQBKER0fADUog8b3IR01s8YYdtX+sniTx7JjA==
X-Received: by 2002:a05:6830:6111:b0:61c:ffc8:7b31 with SMTP id
 ca17-20020a056830611100b0061cffc87b31mr8612088otb.161.1660698169067; 
 Tue, 16 Aug 2022 18:02:49 -0700 (PDT)
X-Google-Smtp-Source: AA6agR73z6anNFKLhpge00ukokz1TzGq6FFULc/+V5V189dILAoBmVpVY84xqlTJtPzP7HPsyjluhfUiB4Zd6VwfWJw=
X-Received: by 2002:a05:6830:6111:b0:61c:ffc8:7b31 with SMTP id
 ca17-20020a056830611100b0061cffc87b31mr8612065otb.161.1660698168681; Tue, 16
 Aug 2022 18:02:48 -0700 (PDT)
MIME-Version: 1.0
References: <20220816025217.618181-1-kai.heng.feng@canonical.com>
 <87leror4sl.fsf@intel.com>
 <CAAd53p76ut7QRFdM4NjaRua=Hc4bu9_=7+Q_t8ExJysEAhJf=Q@mail.gmail.com>
 <b8ebc447ea464371102df765882fc5010cc0c784.camel@redhat.com>
In-Reply-To: <b8ebc447ea464371102df765882fc5010cc0c784.camel@redhat.com>
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
Date: Wed, 17 Aug 2022 09:02:36 +0800
Message-ID: <CAAd53p4GoU6_ExWB=0b3_X7STd2Fnq764QpmzgOEwn3jdCUBxQ@mail.gmail.com>
To: Lyude Paul <lyude@redhat.com>
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

On Wed, Aug 17, 2022 at 2:24 AM Lyude Paul <lyude@redhat.com> wrote:
>
> On Tue, 2022-08-16 at 19:29 +0800, Kai-Heng Feng wrote:
> > On Tue, Aug 16, 2022 at 4:06 PM Jani Nikula <jani.nikula@linux.intel.com> wrote:
> > >
> > > On Tue, 16 Aug 2022, Kai-Heng Feng <kai.heng.feng@canonical.com> wrote:
> > > > On mobile workstations like HP ZBook Fury G8, iGFX's DP-IN can switch to
> > > > dGFX so external monitors are routed to dGFX, and more monitors can be
> > > > supported as result.
> > > >
> > > > To switch the DP-IN to dGFX, the driver needs to invoke _DSM function 20
> > > > on intel_dsm_guid2. This method is described in Intel document 632107.
>
> Is this documentation released anywhere? We've been wondering about these
> interfaces for quite a long time, and it would be good to know if there's docs
> for this we haven't really been seeing.
>
> > >
> > > Is this the policy decision that we want to unconditionally make,
> > > though?
> >
> > I believes so, so more external monitors can be supported at the same time.
> >
> > Kai-Heng
>
> Is this for systems with dual Intel GPUs? I ask because if this affects
> Intel/Nvidia hybrid systems then this is a huge no from me. Nouveau is able to
> support these systems, but at a limited capacity. This would imply that we are
> making external displays work for users of the nvidia proprietary driver, at
> the expense making external display support for mainline kernel users
> substantially worse for people who are using the mainline kernel. Which isn't
> a choice we should be making, because nvidia's OOT driver is not a mainline
> kernel driver.

Yes it's for Intel/NVIDIA hybrid systems.

The problem is that hardware vendor design the systems to use NVIDIA
for external displays, so using external displays on Intel are never
tested by the vendors.
I don't think that's any good either.

Kai-Heng

>
> If this is just for Intel/Intel systems though that's probably fine, and it
> might also be fine for AMD systems.
>
> >
> > >
> > > BR,
> > > Jani.
> > >
> > > >
> > > > Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_acpi.c | 18 +++++++++++++++++-
> > > >  1 file changed, 17 insertions(+), 1 deletion(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_acpi.c b/drivers/gpu/drm/i915/display/intel_acpi.c
> > > > index e78430001f077..3bd5930e2769b 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_acpi.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_acpi.c
> > > > @@ -20,6 +20,7 @@ static const guid_t intel_dsm_guid =
> > > >                 0xa8, 0x54, 0x0f, 0x13, 0x17, 0xb0, 0x1c, 0x2c);
> > > >
> > > >  #define INTEL_DSM_FN_GET_BIOS_DATA_FUNCS_SUPPORTED 0 /* No args */
> > > > +#define INTEL_DSM_FN_DP_IN_SWITCH_TO_DGFX 20 /* No args */
> > > >
> > > >  static const guid_t intel_dsm_guid2 =
> > > >       GUID_INIT(0x3e5b41c6, 0xeb1d, 0x4260,
> > > > @@ -187,6 +188,7 @@ void intel_dsm_get_bios_data_funcs_supported(struct drm_i915_private *i915)
> > > >       struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
> > > >       acpi_handle dhandle;
> > > >       union acpi_object *obj;
> > > > +     int supported = 0;
> > > >
> > > >       dhandle = ACPI_HANDLE(&pdev->dev);
> > > >       if (!dhandle)
> > > > @@ -194,8 +196,22 @@ void intel_dsm_get_bios_data_funcs_supported(struct drm_i915_private *i915)
> > > >
> > > >       obj = acpi_evaluate_dsm(dhandle, &intel_dsm_guid2, INTEL_DSM_REVISION_ID,
> > > >                               INTEL_DSM_FN_GET_BIOS_DATA_FUNCS_SUPPORTED, NULL);
> > > > -     if (obj)
> > > > +     if (obj) {
> > > > +             if (obj->type == ACPI_TYPE_INTEGER)
> > > > +                     supported = obj->integer.value;
> > > > +
> > > >               ACPI_FREE(obj);
> > > > +     }
> > > > +
> > > > +     /* Tiger Lake H DP-IN Boot Time Switching from iGfx to dGfx */
> > > > +     if (supported & BIT(20)) {
> > > > +             obj = acpi_evaluate_dsm(dhandle, &intel_dsm_guid2,
> > > > +                                     INTEL_DSM_REVISION_ID,
> > > > +                                     INTEL_DSM_FN_DP_IN_SWITCH_TO_DGFX,
> > > > +                                     NULL);
> > > > +             if (obj)
> > > > +                     ACPI_FREE(obj);
> > > > +     }
> > > >  }
> > > >
> > > >  /*
> > >
> > > --
> > > Jani Nikula, Intel Open Source Graphics Center
> >
>
> --
> Cheers,
>  Lyude Paul (she/her)
>  Software Engineer at Red Hat
>
