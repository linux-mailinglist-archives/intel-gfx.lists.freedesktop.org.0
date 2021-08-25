Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89F7E3F7772
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Aug 2021 16:33:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A14E66E215;
	Wed, 25 Aug 2021 14:33:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com
 [IPv6:2607:f8b0:4864:20::22c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB5496E215;
 Wed, 25 Aug 2021 14:32:59 +0000 (UTC)
Received: by mail-oi1-x22c.google.com with SMTP id n27so13786366oij.0;
 Wed, 25 Aug 2021 07:32:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=C+KRFd7Kqkl0ah0lvdFARlhhhNjXHD7Ea7yp+15DaDY=;
 b=mhlGodFfpCV6toic780Q1UR0OvCGBEVUwmLR5r0G0/46x64grwFjfLAWAz0eZSxGFL
 kBhoFK82Fc7TGJPnxpYzGJ9fkLsCVhScVInta255RbCuDx1VBjTMGIoKUXXeF7eiqZQC
 D4UtivTNdlc4pzofbN4fCPhx/h6TH5l4xUkMOh59j5yQbLxV8c2vwp6Wx3lc6egitFcC
 M5aUta1sxM/+tMjwKlHwwyJDdtxvzcYmCJw2W1a7yk6jcqdn7jxLUDJnJZDpIUxXu7x/
 pXmeq0T7CFxeT9K3C1b0ImhSv9XUo63Zb/9g3g/RV69YqN15oekhWnYwxgQlKbW/BPSg
 YkfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=C+KRFd7Kqkl0ah0lvdFARlhhhNjXHD7Ea7yp+15DaDY=;
 b=R/Dc5AkCo3Fp+1JgPXufCVT9ZFOwvia0DEtlPvoeRo6ysL4gEqTDkE41Pm/7Y2p1hg
 Cw17Eu0wSpdEobE35S9fsRRTjiOSOn3DXlgnbPqyBKKC1NNtliSBZahfwbNjk0JMqy4C
 f0cSfQ9gJ+CKNq6QzQomP3KH9v/Im6SwplNtPskmDqD2YgBL0xZBkWKSP/bJ/gKnfeO5
 S8csXYbxvshhWQuDJ5uBrvQko30SqtJdCoXLCxTDc0l1r++xgrTOmNn+D5xbWi9q8VDL
 hTKJvy17JwhNu3FZrBzAJq5nZhfRKogaIEGGBA5OStg7PZlRopnKfFD518yispINpRF/
 jmkQ==
X-Gm-Message-State: AOAM532QR3yFQlbOnwT9ZQKS8fvSm3lovWNKnrtNKVPfWZcMGBQBdkmD
 AN7IGu5xSk3OMjHZaEqXMI7JgXKCe+EIj6PxTM4=
X-Google-Smtp-Source: ABdhPJwWKUX/O0nYAsMs0WtOtdblcPCQzOjH9MS/sF36R8S9vjimx3RkQhbpzOMtoa0Khc0WGxQsio3aLtthsVUUEVc=
X-Received: by 2002:a05:6808:1310:: with SMTP id
 y16mr6948256oiv.123.1629901979099; 
 Wed, 25 Aug 2021 07:32:59 -0700 (PDT)
MIME-Version: 1.0
References: <20210825043522.346512-1-koba.ko@canonical.com>
 <20210825043522.346512-2-koba.ko@canonical.com> <87y28pev59.fsf@intel.com>
 <CAJB-X+X2Vbj9bAj98yxfAhi2-LMk0=_Hq=b1-1o5iOykQRj5fQ@mail.gmail.com>
 <87sfyxes9b.fsf@intel.com>
 <CAJB-X+WAS0-O436qbXAHO9Q0GDEoUW8bU7VvgX74fonUiBD1Ew@mail.gmail.com>
 <b784af82-4876-6c76-db7a-d130c3991894@amd.com>
In-Reply-To: <b784af82-4876-6c76-db7a-d130c3991894@amd.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Wed, 25 Aug 2021 10:32:48 -0400
Message-ID: <CADnq5_MSeTeFcrceejjUHL_ftckAvYxMZ964nLFkj5r3k=gN0A@mail.gmail.com>
To: "Lazar, Lijo" <lijo.lazar@amd.com>
Cc: Koba Ko <koba.ko@canonical.com>, Jani Nikula <jani.nikula@linux.intel.com>,
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

On Wed, Aug 25, 2021 at 10:22 AM Lazar, Lijo <lijo.lazar@amd.com> wrote:
>
>
>
> On 8/25/2021 4:46 PM, Koba Ko wrote:
> > On Wed, Aug 25, 2021 at 6:24 PM Jani Nikula <jani.nikula@linux.intel.co=
m> wrote:
> >>
> >> On Wed, 25 Aug 2021, Koba Ko <koba.ko@canonical.com> wrote:
> >>> On Wed, Aug 25, 2021 at 5:22 PM Jani Nikula <jani.nikula@linux.intel.=
com> wrote:
> >>>>
> >>>> On Wed, 25 Aug 2021, Koba Ko <koba.ko@canonical.com> wrote:
> >>>>> AMD polaris GPUs have an issue about audio noise on RKL platform,
> >>>>> they provide a commit to fix but for SMU7-based GPU still
> >>>>> need another module parameter,
> >>>>>
> >>>>> For avoiding the module parameter, switch PCI_DPM by determining
> >>>>> intel platform in amd drm driver.
> >>>>
> >>>> I'll just note that you could have a Tiger Lake PCH combined with a
> >>>> number of platforms other than Rocket Lake, including not just the
> >>>> obvious Tiger Lake but also Sky Lake, Kaby Lake, Coffee Lake, and Co=
met
> >>>> Lake.
> >>>>
> >>>> Again, I don't know what the root cause or fix should be, the workar=
ound
> >>>> presented here impacts a much larger number of platforms than where
> >>>> you're claiming the issue is.
> >>>
> >>> Hi Jani, thanks for your feedback.
> >>> Is there any way to identify the RKL PCH?
> >>> I trace the intel_pch.c and can't find the only pch id for RKL.
> >>>
> >>> INTEL_PCH_TGP_DEVICE_ID_TYPE is used by both TGL and RKL.
> >>>
> >>> so it seems that using IS_ROCKETLAKE() is the only way.
> >>
> >> I don't think there is a Rocket Lake PCH. But is the problem related t=
o
> >> the PCH or not?
> >
> > I thought its' not because the issue wouldn't be observed on the TGL pl=
atform.
> > I only tried RKL platform and it use
> > INTEL_PCH_TGP_DEVICE_ID_TYPE/INTEL_PCH_TGP2_DEVICE_ID_TYPE,
> > As per AMD guys, they said the issue is only triggered in RKL platform.
> >
> >>
> >> The GPU PCI IDs are in i915_pciids.h. See INTEL_RKL_IDS() for
> >> RKL. There's a lot of indirection, but that's what IS_ROCKETLAKE() boi=
ls
> >> down to. But again, I'm not sure if that's what you want or not.
> > Thanks for suggestions,
> >
> > Just want a way to check if it's a RKL platform,
> > After tracing the kernel, can check by CPU VENDOR(lacks type), check
> > igpu(but there're cpus without igpu)
> > and check pch type(it seems one pch has multiple combinations with CPU)=
.
> > for check igpu, as per my current understanding,  only found RKL CPU wi=
th igpu.
> > Is there a RKL CPU without integrated gpu?
> >
>
> Just for RKL - you could do fetch the x86 info and check
>
> #ifdef CONFIG_X86_64
>          struct cpuinfo_x86 *c =3D &cpu_data(0);
>         // Family/Model check, find the model
>         (c->x86 =3D=3D 6 && c->x86_model =3D=3D INTEL_FAM6_ROCKETLAKE)
> #endif
>
> I think we don't use anything like this so far. So Alex should give a
> nod as well.

I think that makes sense.  For some background the issue that was
observed with RKL was that the PCIE gen switching has a very high
latency which can lead to audio problems during playback if PCIE DPM
is enabled.

Alex

>
> Thanks,
> Lijo
>
> >>
> >> BR,
> >> Jani.
> >>
> >>
> >>>
> >>> Thanks
> >>>>
> >>>> BR,
> >>>> Jani.
> >>>>
> >>>>
> >>>>>
> >>>>> Fixes: 1a31474cdb48 ("drm/amd/pm: workaround for audio noise issue"=
)
> >>>>> Ref: https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A=
%2F%2Flists.freedesktop.org%2Farchives%2Famd-gfx%2F2021-August%2F067413.htm=
l&amp;data=3D04%7C01%7Clijo.lazar%40amd.com%7C888ab428f2bb4f32e4d408d967c4a=
e08%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637654916721463596%7CUnkno=
wn%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVC=
I6Mn0%3D%7C1000&amp;sdata=3DBgf14CmIx%2FTOD54LN6dccZL0U5gT9lv9yTw7MfKc2sQ%3=
D&amp;reserved=3D0
> >>>>> Signed-off-by: Koba Ko <koba.ko@canonical.com>
> >>>>> ---
> >>>>>   .../drm/amd/pm/powerplay/hwmgr/smu7_hwmgr.c   | 21 ++++++++++++++=
++++-
> >>>>>   1 file changed, 20 insertions(+), 1 deletion(-)
> >>>>>
> >>>>> diff --git a/drivers/gpu/drm/amd/pm/powerplay/hwmgr/smu7_hwmgr.c b/=
drivers/gpu/drm/amd/pm/powerplay/hwmgr/smu7_hwmgr.c
> >>>>> index 0541bfc81c1b..346110dd0f51 100644
> >>>>> --- a/drivers/gpu/drm/amd/pm/powerplay/hwmgr/smu7_hwmgr.c
> >>>>> +++ b/drivers/gpu/drm/amd/pm/powerplay/hwmgr/smu7_hwmgr.c
> >>>>> @@ -1733,6 +1733,25 @@ static int smu7_disable_dpm_tasks(struct pp_=
hwmgr *hwmgr)
> >>>>>        return result;
> >>>>>   }
> >>>>>
> >>>>> +#include <drm/intel_pch.h>
> >>>>> +
> >>>>> +static bool intel_tgp_chk(void)
> >>>>> +{
> >>>>> +     struct pci_dev *pch =3D NULL;
> >>>>> +     unsigned short id;
> >>>>> +
> >>>>> +     while ((pch =3D pci_get_class(PCI_CLASS_BRIDGE_ISA << 8, pch)=
)) {
> >>>>> +             if (pch->vendor !=3D PCI_VENDOR_ID_INTEL)
> >>>>> +                     continue;
> >>>>> +
> >>>>> +             id =3D pch->device & INTEL_PCH_DEVICE_ID_MASK;
> >>>>> +             if (id =3D=3D INTEL_PCH_TGP_DEVICE_ID_TYPE || INTEL_P=
CH_TGP2_DEVICE_ID_TYPE)
> >>>>
> >>>> PS. This is always true. ;)
> >>>
> >>> got, thanks
> >>>
> >>>>
> >>>>> +                     return true;
> >>>>> +     }
> >>>>> +
> >>>>> +     return false;
> >>>>> +}
> >>>>> +
> >>>>>   static void smu7_init_dpm_defaults(struct pp_hwmgr *hwmgr)
> >>>>>   {
> >>>>>        struct smu7_hwmgr *data =3D (struct smu7_hwmgr *)(hwmgr->bac=
kend);
> >>>>> @@ -1758,7 +1777,7 @@ static void smu7_init_dpm_defaults(struct pp_=
hwmgr *hwmgr)
> >>>>>
> >>>>>        data->mclk_dpm_key_disabled =3D hwmgr->feature_mask & PP_MCL=
K_DPM_MASK ? false : true;
> >>>>>        data->sclk_dpm_key_disabled =3D hwmgr->feature_mask & PP_SCL=
K_DPM_MASK ? false : true;
> >>>>> -     data->pcie_dpm_key_disabled =3D hwmgr->feature_mask & PP_PCIE=
_DPM_MASK ? false : true;
> >>>>> +     data->pcie_dpm_key_disabled =3D intel_tgp_chk() || !(hwmgr->f=
eature_mask & PP_PCIE_DPM_MASK);
> >>>>>        /* need to set voltage control types before EVV patching */
> >>>>>        data->voltage_control =3D SMU7_VOLTAGE_CONTROL_NONE;
> >>>>>        data->vddci_control =3D SMU7_VOLTAGE_CONTROL_NONE;
> >>>>
> >>>> --
> >>>> Jani Nikula, Intel Open Source Graphics Center
> >>
> >> --
> >> Jani Nikula, Intel Open Source Graphics Center
