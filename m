Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 979AA3F7438
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Aug 2021 13:17:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA38D6E1D3;
	Wed, 25 Aug 2021 11:17:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-relay-internal-0.canonical.com
 (smtp-relay-internal-0.canonical.com [185.125.188.122])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54C976E1D6
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Aug 2021 11:17:04 +0000 (UTC)
Received: from mail-ua1-f69.google.com (mail-ua1-f69.google.com
 [209.85.222.69])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 594DB406F6
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Aug 2021 11:17:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1629890222;
 bh=U9QQFl5Opzoo7vM4oOl3EDgsVMzT1JgHmeDCV1Rl+dE=;
 h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
 To:Cc:Content-Type;
 b=s1ohigfiJebWixlsgJC/cqk5oaGJyOHKho3NHEH8/F3n7BGSGUvfHJqnsRaFTXW4l
 niS94qyjVHgxQk+WBGnfYdCZ3nOWrPvoAcy6/cvBPrEy7Sv1/TnwaPvZgebOTxD+Ef
 qEcatrcPJ7jLAoyC04+rmxP8SqBkQ8yFTk8WWPgE8BjNnZ4yzVgRmHGzBedWImXvTV
 UTG5Of49o0nybPkCvt4kdN+3kYpoqgw9NA+GlJeMiVTWBihsPxgkpoPPmQb0thxMN+
 7TYq/ZIE8kXIPEnp33TGaOcoyuJCogLfe9u7mfi79NF/PEzflV/JnBczzhpFZmdAIt
 nOeOHBMcA+H3g==
Received: by mail-ua1-f69.google.com with SMTP id
 b24-20020ab02398000000b002abb9087041so6571095uan.11
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Aug 2021 04:17:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=U9QQFl5Opzoo7vM4oOl3EDgsVMzT1JgHmeDCV1Rl+dE=;
 b=rORogdkayyPJE6/HucSP2M6SJJ4Jsx5eANh1CqK3rtvARcslFzzX5XDhG14uT6yLQj
 V7X/bhqhh2I6mMPYQs8mBgLxrxvY4Cbb0UJsB+mVOUyR81mnJ+Ad2nM8OJfG4FG8MB/O
 fQ+1oH7rMxAauZxFql/aWClu4UK/mR0EAwa0ZFbpKjmxTtEloSfvabBw9aLTEPriSyT4
 RFiDY5DqI04uXytaDh4QXgcNF0tTrTs1zqlLuPLcnHhsIWz+vQTT8/yz9iB8Kh6PrsgL
 kBlJcyDeMrVHTdIGULegxa7NQBYl0MEwELlBz7aDFTILtll7MYwcuyhCtkM73Va9ejYu
 ux9g==
X-Gm-Message-State: AOAM533fH3H9p0kd31vaaC3rgCBZXUCAwWmTaC8hylz2upylgkB5wX8T
 LtYN8xIMgh6BlRK+zwXq8RFxxkHh2epdHw+uScQC6dIsBYjJ9KsVB3TKDsATRf9O3+YRFPSzIz2
 IUQL+U6A1fIYznzteMO4kwM22gXDl9/LWr+Sbb3eYuD+1nIO/55ZRUNamd++Lpg==
X-Received: by 2002:a1f:4603:: with SMTP id t3mr28784120vka.18.1629890221313; 
 Wed, 25 Aug 2021 04:17:01 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzfQMmGZ+VAjItxBG9b2Zmz5F0+Y1F54Vj1E3z6ZjBS7IBcworuARNWFfikqOgWPUirjD3reZGUYoqB9y6IzRQ=
X-Received: by 2002:a1f:4603:: with SMTP id t3mr28784105vka.18.1629890221023; 
 Wed, 25 Aug 2021 04:17:01 -0700 (PDT)
MIME-Version: 1.0
References: <20210825043522.346512-1-koba.ko@canonical.com>
 <20210825043522.346512-2-koba.ko@canonical.com> <87y28pev59.fsf@intel.com>
 <CAJB-X+X2Vbj9bAj98yxfAhi2-LMk0=_Hq=b1-1o5iOykQRj5fQ@mail.gmail.com>
 <87sfyxes9b.fsf@intel.com>
In-Reply-To: <87sfyxes9b.fsf@intel.com>
From: Koba Ko <koba.ko@canonical.com>
Date: Wed, 25 Aug 2021 19:16:50 +0800
Message-ID: <CAJB-X+WAS0-O436qbXAHO9Q0GDEoUW8bU7VvgX74fonUiBD1Ew@mail.gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, 
 amd-gfx list <amd-gfx@lists.freedesktop.org>, "Feng,
 Kenneth" <Kenneth.Feng@amd.com>
Content-Type: text/plain; charset="UTF-8"
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

On Wed, Aug 25, 2021 at 6:24 PM Jani Nikula <jani.nikula@linux.intel.com> wrote:
>
> On Wed, 25 Aug 2021, Koba Ko <koba.ko@canonical.com> wrote:
> > On Wed, Aug 25, 2021 at 5:22 PM Jani Nikula <jani.nikula@linux.intel.com> wrote:
> >>
> >> On Wed, 25 Aug 2021, Koba Ko <koba.ko@canonical.com> wrote:
> >> > AMD polaris GPUs have an issue about audio noise on RKL platform,
> >> > they provide a commit to fix but for SMU7-based GPU still
> >> > need another module parameter,
> >> >
> >> > For avoiding the module parameter, switch PCI_DPM by determining
> >> > intel platform in amd drm driver.
> >>
> >> I'll just note that you could have a Tiger Lake PCH combined with a
> >> number of platforms other than Rocket Lake, including not just the
> >> obvious Tiger Lake but also Sky Lake, Kaby Lake, Coffee Lake, and Comet
> >> Lake.
> >>
> >> Again, I don't know what the root cause or fix should be, the workaround
> >> presented here impacts a much larger number of platforms than where
> >> you're claiming the issue is.
> >
> > Hi Jani, thanks for your feedback.
> > Is there any way to identify the RKL PCH?
> > I trace the intel_pch.c and can't find the only pch id for RKL.
> >
> > INTEL_PCH_TGP_DEVICE_ID_TYPE is used by both TGL and RKL.
> >
> > so it seems that using IS_ROCKETLAKE() is the only way.
>
> I don't think there is a Rocket Lake PCH. But is the problem related to
> the PCH or not?

I thought its' not because the issue wouldn't be observed on the TGL platform.
I only tried RKL platform and it use
INTEL_PCH_TGP_DEVICE_ID_TYPE/INTEL_PCH_TGP2_DEVICE_ID_TYPE,
As per AMD guys, they said the issue is only triggered in RKL platform.

>
> The GPU PCI IDs are in i915_pciids.h. See INTEL_RKL_IDS() for
> RKL. There's a lot of indirection, but that's what IS_ROCKETLAKE() boils
> down to. But again, I'm not sure if that's what you want or not.
Thanks for suggestions,

Just want a way to check if it's a RKL platform,
After tracing the kernel, can check by CPU VENDOR(lacks type), check
igpu(but there're cpus without igpu)
and check pch type(it seems one pch has multiple combinations with CPU).
for check igpu, as per my current understanding,  only found RKL CPU with igpu.
Is there a RKL CPU without integrated gpu?

>
> BR,
> Jani.
>
>
> >
> > Thanks
> >>
> >> BR,
> >> Jani.
> >>
> >>
> >> >
> >> > Fixes: 1a31474cdb48 ("drm/amd/pm: workaround for audio noise issue")
> >> > Ref: https://lists.freedesktop.org/archives/amd-gfx/2021-August/067413.html
> >> > Signed-off-by: Koba Ko <koba.ko@canonical.com>
> >> > ---
> >> >  .../drm/amd/pm/powerplay/hwmgr/smu7_hwmgr.c   | 21 ++++++++++++++++++-
> >> >  1 file changed, 20 insertions(+), 1 deletion(-)
> >> >
> >> > diff --git a/drivers/gpu/drm/amd/pm/powerplay/hwmgr/smu7_hwmgr.c b/drivers/gpu/drm/amd/pm/powerplay/hwmgr/smu7_hwmgr.c
> >> > index 0541bfc81c1b..346110dd0f51 100644
> >> > --- a/drivers/gpu/drm/amd/pm/powerplay/hwmgr/smu7_hwmgr.c
> >> > +++ b/drivers/gpu/drm/amd/pm/powerplay/hwmgr/smu7_hwmgr.c
> >> > @@ -1733,6 +1733,25 @@ static int smu7_disable_dpm_tasks(struct pp_hwmgr *hwmgr)
> >> >       return result;
> >> >  }
> >> >
> >> > +#include <drm/intel_pch.h>
> >> > +
> >> > +static bool intel_tgp_chk(void)
> >> > +{
> >> > +     struct pci_dev *pch = NULL;
> >> > +     unsigned short id;
> >> > +
> >> > +     while ((pch = pci_get_class(PCI_CLASS_BRIDGE_ISA << 8, pch))) {
> >> > +             if (pch->vendor != PCI_VENDOR_ID_INTEL)
> >> > +                     continue;
> >> > +
> >> > +             id = pch->device & INTEL_PCH_DEVICE_ID_MASK;
> >> > +             if (id == INTEL_PCH_TGP_DEVICE_ID_TYPE || INTEL_PCH_TGP2_DEVICE_ID_TYPE)
> >>
> >> PS. This is always true. ;)
> >
> > got, thanks
> >
> >>
> >> > +                     return true;
> >> > +     }
> >> > +
> >> > +     return false;
> >> > +}
> >> > +
> >> >  static void smu7_init_dpm_defaults(struct pp_hwmgr *hwmgr)
> >> >  {
> >> >       struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);
> >> > @@ -1758,7 +1777,7 @@ static void smu7_init_dpm_defaults(struct pp_hwmgr *hwmgr)
> >> >
> >> >       data->mclk_dpm_key_disabled = hwmgr->feature_mask & PP_MCLK_DPM_MASK ? false : true;
> >> >       data->sclk_dpm_key_disabled = hwmgr->feature_mask & PP_SCLK_DPM_MASK ? false : true;
> >> > -     data->pcie_dpm_key_disabled = hwmgr->feature_mask & PP_PCIE_DPM_MASK ? false : true;
> >> > +     data->pcie_dpm_key_disabled = intel_tgp_chk() || !(hwmgr->feature_mask & PP_PCIE_DPM_MASK);
> >> >       /* need to set voltage control types before EVV patching */
> >> >       data->voltage_control = SMU7_VOLTAGE_CONTROL_NONE;
> >> >       data->vddci_control = SMU7_VOLTAGE_CONTROL_NONE;
> >>
> >> --
> >> Jani Nikula, Intel Open Source Graphics Center
>
> --
> Jani Nikula, Intel Open Source Graphics Center
