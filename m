Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 924EB3F7AB1
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Aug 2021 18:35:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FC986E3CE;
	Wed, 25 Aug 2021 16:35:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-relay-internal-1.canonical.com
 (smtp-relay-internal-1.canonical.com [185.125.188.123])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 620046E3CE
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Aug 2021 16:35:06 +0000 (UTC)
Received: from mail-ua1-f70.google.com (mail-ua1-f70.google.com
 [209.85.222.70])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id BB75240763
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Aug 2021 16:35:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1629909304;
 bh=rhkDjoFPy6FFzrEKjMnHnxKqLfuq7uDKA/aCpRZI6Co=;
 h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
 To:Cc:Content-Type;
 b=C5E7vvtJsU+tV4VWpC54F2+C+8O0Wes/KgaVi27sO4Y5AiXVdyGKvb6mLsFQwEbiG
 h8CYpqPU50m2U8NQwzvR5Un+69LJLyPJEvpe7KTuKDnuc5c1J8X/tKb6YN9L6XJ714
 Dvex6cdhXic6u+W5EbbBq3n9eNToQOtVIlhSklbYycitjjoX+QThFOWTi4WnIp8tFv
 7lv946ifZs7kDcj9hPzzBkJy/htC4KKLSW/K1VNtF3aCSs7jNzvRt8fRWSTEUu8y64
 s1qPFVYMSyR+4q6D0xKuBF8L0W9dVCOVdO2D2wOfJtRsFLNXrd2tJkEamBSXMoP6Xw
 rly7bU1lKyt9w==
Received: by mail-ua1-f70.google.com with SMTP id
 v14-20020ab0730e000000b002abb810c843so39195uao.6
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Aug 2021 09:35:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=rhkDjoFPy6FFzrEKjMnHnxKqLfuq7uDKA/aCpRZI6Co=;
 b=nG3JWUMK0tiWjGyCHU1v9g8ecvd/tQeZWtCPN1TlEAu61su/7xQAm9qFPCCALEk96c
 S11ByVenTrADbgZC1Ylvd3Oa6TTFFvWYCWMqRdviQD+WLMtz8YQKLs8Uue3cIe7kaNtz
 lsfngP1Q5Qebn9MKemchudeN3BJ9He53ZG6bYG5IDfPNL4HSK6B4Smk3Y+HneoHgLXq3
 mdYrY0iAakHkhSMnDVYcxtSkvb97HnhsEpQp9IJeacsg2pUfNi4ICzZ2GNQzP9DD+VZ0
 70sfQkzl254wfPQTqsEZDV8NlcVkInDazcz0FJFxR1nH96jCmeK9a0Mw6q83Zyvwcoz/
 6ciA==
X-Gm-Message-State: AOAM530gMeVFyzUiT6aiC+y6BUU++p44sVibGbalrZxFR5kDs06186U1
 p/Xoyeit7u7EUydFmudz2TZJg5bLDesA6oeHwlkplGol7i6+S+WMrwvwHcg2ySVTfKuJ/XtKg0f
 186nqZhiK9FjcRJKDb2/VCsKyrEIKnLTBlufqhlF7Kv4yKJ+t9ZUamkNOMEIUiw==
X-Received: by 2002:a9f:35ca:: with SMTP id u10mr3080557uad.82.1629909303710; 
 Wed, 25 Aug 2021 09:35:03 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy1qnchkaTZcBfmWyq/1yQYdyXp/+Z3M+FOK2Yf4cbXw9y0IEOC91NUl67v9mEPJ/sBm9dc4ezIMm6/HeKu2RY=
X-Received: by 2002:a9f:35ca:: with SMTP id u10mr3080517uad.82.1629909303378; 
 Wed, 25 Aug 2021 09:35:03 -0700 (PDT)
MIME-Version: 1.0
References: <20210825043522.346512-1-koba.ko@canonical.com>
 <20210825043522.346512-2-koba.ko@canonical.com> <87y28pev59.fsf@intel.com>
 <CAJB-X+X2Vbj9bAj98yxfAhi2-LMk0=_Hq=b1-1o5iOykQRj5fQ@mail.gmail.com>
 <87sfyxes9b.fsf@intel.com>
 <CAJB-X+WAS0-O436qbXAHO9Q0GDEoUW8bU7VvgX74fonUiBD1Ew@mail.gmail.com>
 <b784af82-4876-6c76-db7a-d130c3991894@amd.com>
 <CADnq5_MSeTeFcrceejjUHL_ftckAvYxMZ964nLFkj5r3k=gN0A@mail.gmail.com>
In-Reply-To: <CADnq5_MSeTeFcrceejjUHL_ftckAvYxMZ964nLFkj5r3k=gN0A@mail.gmail.com>
From: Koba Ko <koba.ko@canonical.com>
Date: Thu, 26 Aug 2021 00:34:52 +0800
Message-ID: <CAJB-X+VDQurMjGmD3PRXtX4w+LxrBpMYDtUMATsXihg3Lacpfw@mail.gmail.com>
To: Alex Deucher <alexdeucher@gmail.com>
Cc: "Lazar, Lijo" <lijo.lazar@amd.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>, 
 amd-gfx list <amd-gfx@lists.freedesktop.org>, "Feng,
 Kenneth" <Kenneth.Feng@amd.com>, Alex Deucher <Alexander.Deucher@amd.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/amdgpu: Disable PCIE_DPM on Intel
 RKL Platform
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Aug 25, 2021 at 10:33 PM Alex Deucher <alexdeucher@gmail.com> wrote=
:
>
> On Wed, Aug 25, 2021 at 10:22 AM Lazar, Lijo <lijo.lazar@amd.com> wrote:
> >
> >
> >
> > On 8/25/2021 4:46 PM, Koba Ko wrote:
> > > On Wed, Aug 25, 2021 at 6:24 PM Jani Nikula <jani.nikula@linux.intel.=
com> wrote:
> > >>
> > >> On Wed, 25 Aug 2021, Koba Ko <koba.ko@canonical.com> wrote:
> > >>> On Wed, Aug 25, 2021 at 5:22 PM Jani Nikula <jani.nikula@linux.inte=
l.com> wrote:
> > >>>>
> > >>>> On Wed, 25 Aug 2021, Koba Ko <koba.ko@canonical.com> wrote:
> > >>>>> AMD polaris GPUs have an issue about audio noise on RKL platform,
> > >>>>> they provide a commit to fix but for SMU7-based GPU still
> > >>>>> need another module parameter,
> > >>>>>
> > >>>>> For avoiding the module parameter, switch PCI_DPM by determining
> > >>>>> intel platform in amd drm driver.
> > >>>>
> > >>>> I'll just note that you could have a Tiger Lake PCH combined with =
a
> > >>>> number of platforms other than Rocket Lake, including not just the
> > >>>> obvious Tiger Lake but also Sky Lake, Kaby Lake, Coffee Lake, and =
Comet
> > >>>> Lake.
> > >>>>
> > >>>> Again, I don't know what the root cause or fix should be, the work=
around
> > >>>> presented here impacts a much larger number of platforms than wher=
e
> > >>>> you're claiming the issue is.
> > >>>
> > >>> Hi Jani, thanks for your feedback.
> > >>> Is there any way to identify the RKL PCH?
> > >>> I trace the intel_pch.c and can't find the only pch id for RKL.
> > >>>
> > >>> INTEL_PCH_TGP_DEVICE_ID_TYPE is used by both TGL and RKL.
> > >>>
> > >>> so it seems that using IS_ROCKETLAKE() is the only way.
> > >>
> > >> I don't think there is a Rocket Lake PCH. But is the problem related=
 to
> > >> the PCH or not?
> > >
> > > I thought its' not because the issue wouldn't be observed on the TGL =
platform.
> > > I only tried RKL platform and it use
> > > INTEL_PCH_TGP_DEVICE_ID_TYPE/INTEL_PCH_TGP2_DEVICE_ID_TYPE,
> > > As per AMD guys, they said the issue is only triggered in RKL platfor=
m.
> > >
> > >>
> > >> The GPU PCI IDs are in i915_pciids.h. See INTEL_RKL_IDS() for
> > >> RKL. There's a lot of indirection, but that's what IS_ROCKETLAKE() b=
oils
> > >> down to. But again, I'm not sure if that's what you want or not.
> > > Thanks for suggestions,
> > >
> > > Just want a way to check if it's a RKL platform,
> > > After tracing the kernel, can check by CPU VENDOR(lacks type), check
> > > igpu(but there're cpus without igpu)
> > > and check pch type(it seems one pch has multiple combinations with CP=
U).
> > > for check igpu, as per my current understanding,  only found RKL CPU =
with igpu.
> > > Is there a RKL CPU without integrated gpu?
> > >
> >
> > Just for RKL - you could do fetch the x86 info and check
> >
> > #ifdef CONFIG_X86_64
> >          struct cpuinfo_x86 *c =3D &cpu_data(0);
> >         // Family/Model check, find the model
> >         (c->x86 =3D=3D 6 && c->x86_model =3D=3D INTEL_FAM6_ROCKETLAKE)
> > #endif
> >
> > I think we don't use anything like this so far. So Alex should give a
> > nod as well.
>
> I think that makes sense.  For some background the issue that was
> observed with RKL was that the PCIE gen switching has a very high
> latency which can lead to audio problems during playback if PCIE DPM
> is enabled.
>
> Alex

Thanks, use Lazar's suggestion and don't need any information from i915.
I will send the next patch.

Thanks
Koba

>
> >
> > Thanks,
> > Lijo
> >
> > >>
> > >> BR,
> > >> Jani.
> > >>
> > >>
> > >>>
> > >>> Thanks
> > >>>>
> > >>>> BR,
> > >>>> Jani.
> > >>>>
> > >>>>
> > >>>>>
> > >>>>> Fixes: 1a31474cdb48 ("drm/amd/pm: workaround for audio noise issu=
e")
> > >>>>> Ref: https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%=
3A%2F%2Flists.freedesktop.org%2Farchives%2Famd-gfx%2F2021-August%2F067413.h=
tml&amp;data=3D04%7C01%7Clijo.lazar%40amd.com%7C888ab428f2bb4f32e4d408d967c=
4ae08%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637654916721463596%7CUnk=
nown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJX=
VCI6Mn0%3D%7C1000&amp;sdata=3DBgf14CmIx%2FTOD54LN6dccZL0U5gT9lv9yTw7MfKc2sQ=
%3D&amp;reserved=3D0
> > >>>>> Signed-off-by: Koba Ko <koba.ko@canonical.com>
> > >>>>> ---
> > >>>>>   .../drm/amd/pm/powerplay/hwmgr/smu7_hwmgr.c   | 21 ++++++++++++=
++++++-
> > >>>>>   1 file changed, 20 insertions(+), 1 deletion(-)
> > >>>>>
> > >>>>> diff --git a/drivers/gpu/drm/amd/pm/powerplay/hwmgr/smu7_hwmgr.c =
b/drivers/gpu/drm/amd/pm/powerplay/hwmgr/smu7_hwmgr.c
> > >>>>> index 0541bfc81c1b..346110dd0f51 100644
> > >>>>> --- a/drivers/gpu/drm/amd/pm/powerplay/hwmgr/smu7_hwmgr.c
> > >>>>> +++ b/drivers/gpu/drm/amd/pm/powerplay/hwmgr/smu7_hwmgr.c
> > >>>>> @@ -1733,6 +1733,25 @@ static int smu7_disable_dpm_tasks(struct p=
p_hwmgr *hwmgr)
> > >>>>>        return result;
> > >>>>>   }
> > >>>>>
> > >>>>> +#include <drm/intel_pch.h>
> > >>>>> +
> > >>>>> +static bool intel_tgp_chk(void)
> > >>>>> +{
> > >>>>> +     struct pci_dev *pch =3D NULL;
> > >>>>> +     unsigned short id;
> > >>>>> +
> > >>>>> +     while ((pch =3D pci_get_class(PCI_CLASS_BRIDGE_ISA << 8, pc=
h))) {
> > >>>>> +             if (pch->vendor !=3D PCI_VENDOR_ID_INTEL)
> > >>>>> +                     continue;
> > >>>>> +
> > >>>>> +             id =3D pch->device & INTEL_PCH_DEVICE_ID_MASK;
> > >>>>> +             if (id =3D=3D INTEL_PCH_TGP_DEVICE_ID_TYPE || INTEL=
_PCH_TGP2_DEVICE_ID_TYPE)
> > >>>>
> > >>>> PS. This is always true. ;)
> > >>>
> > >>> got, thanks
> > >>>
> > >>>>
> > >>>>> +                     return true;
> > >>>>> +     }
> > >>>>> +
> > >>>>> +     return false;
> > >>>>> +}
> > >>>>> +
> > >>>>>   static void smu7_init_dpm_defaults(struct pp_hwmgr *hwmgr)
> > >>>>>   {
> > >>>>>        struct smu7_hwmgr *data =3D (struct smu7_hwmgr *)(hwmgr->b=
ackend);
> > >>>>> @@ -1758,7 +1777,7 @@ static void smu7_init_dpm_defaults(struct p=
p_hwmgr *hwmgr)
> > >>>>>
> > >>>>>        data->mclk_dpm_key_disabled =3D hwmgr->feature_mask & PP_M=
CLK_DPM_MASK ? false : true;
> > >>>>>        data->sclk_dpm_key_disabled =3D hwmgr->feature_mask & PP_S=
CLK_DPM_MASK ? false : true;
> > >>>>> -     data->pcie_dpm_key_disabled =3D hwmgr->feature_mask & PP_PC=
IE_DPM_MASK ? false : true;
> > >>>>> +     data->pcie_dpm_key_disabled =3D intel_tgp_chk() || !(hwmgr-=
>feature_mask & PP_PCIE_DPM_MASK);
> > >>>>>        /* need to set voltage control types before EVV patching *=
/
> > >>>>>        data->voltage_control =3D SMU7_VOLTAGE_CONTROL_NONE;
> > >>>>>        data->vddci_control =3D SMU7_VOLTAGE_CONTROL_NONE;
> > >>>>
> > >>>> --
> > >>>> Jani Nikula, Intel Open Source Graphics Center
> > >>
> > >> --
> > >> Jani Nikula, Intel Open Source Graphics Center
