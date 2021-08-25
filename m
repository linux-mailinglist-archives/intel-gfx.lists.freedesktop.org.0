Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A7D3F72A8
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Aug 2021 12:08:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB6E56E174;
	Wed, 25 Aug 2021 10:08:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-relay-internal-1.canonical.com
 (smtp-relay-internal-1.canonical.com [185.125.188.123])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC6236E174
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Aug 2021 10:08:50 +0000 (UTC)
Received: from mail-vk1-f199.google.com (mail-vk1-f199.google.com
 [209.85.221.199])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 1C4C73F322
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Aug 2021 10:08:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1629886128;
 bh=p4WRDyPgyM0cpJuOad4k1lt81zvr80KEwBbO+rMLL8E=;
 h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
 To:Cc:Content-Type;
 b=NWTgRRGnins22xhWwL49LxmmAbtLIb91l6Dm0t8XqQGzqTo3DW6YeuC2/PAHeASm2
 IQv9tz3xWWfFn1G/YwQkl3utjmfVybb5C06UQxov+LR1LD2XkSO41UucUvLoIr8YuR
 +85VqyLIa0q8sWGiq02qFchuzsPBz+SmtsgU1Zh7+U+GKL9ArOE4dZcWDaEoxI+/3W
 CXWjC+pZKBya+K3/IGNrtRl7o0hO0qLCpsM0qhYoYWsEovr1LSZHifKlUP7odo0YGh
 soLaFJsrXgnwaBBkzhWVw2p6EVCbH7ej67+X11plTV9bYKYfKVNPVvvgbMHdMr67dN
 FuEnEnLW/4Zhg==
Received: by mail-vk1-f199.google.com with SMTP id
 m23-20020ac5cfd70000b029028646306098so4379561vkf.15
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Aug 2021 03:08:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=p4WRDyPgyM0cpJuOad4k1lt81zvr80KEwBbO+rMLL8E=;
 b=pl/qUEHHgo08Ulj8wK1qz6Zb/4Qg/iUjubRT98zQbqvIkSMYqbsNUJ+PUIgV+yyulw
 5GJ4dqwYgW5YG4XjZ1QQjaqHoTL6kQA83NGMxeRbbxrfcIKDu77449mZQMMD1/+wiJd5
 S7e7O9vuEev5zoQhlwIE5IK/D5rqDMkj6wBta9fP6hVdz2FFDUtRiP/0MIP34AFC/fAM
 gxxEUZbAPQ+zUXqEgqS8QkfBaV1ohH8XfdzidRW2ykH48v0O5yymwWApj67dKdQUWLUw
 Gsf7aa2PgENxzUATwGXQXubBMjAUrdAH1e+KXg7AftCE3aIYCU+yTjl4F6s0ZH1sa11R
 BtNQ==
X-Gm-Message-State: AOAM530aRBOXHLuxxjRUI0kWeBtLCV8+lT9e4UmcSdpAcvho81N5A/p4
 56ktA3yDTW6DYQAG5IEM3bJY2AMNyUW5ya1k02j5k4p+nJqiCLeoJ20Ch7f1Qd0dcToh4sT+6Bn
 MG+K+WVjd+Iuy+xF009g2vMhJmw+OmUhXwTgsKHdoiy0W/becVOP/KGVcyTbfHQ==
X-Received: by 2002:a05:6102:2150:: with SMTP id
 h16mr14150365vsg.28.1629886127040; 
 Wed, 25 Aug 2021 03:08:47 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzy8Wqe9FklXqblDInmkUSt7WP/BWubQBg381Ns7QWeMa6HtYfXjnUgour+26+Mdjay/XbOErsZMqreHKZN6dg=
X-Received: by 2002:a05:6102:2150:: with SMTP id
 h16mr14150360vsg.28.1629886126607; 
 Wed, 25 Aug 2021 03:08:46 -0700 (PDT)
MIME-Version: 1.0
References: <20210825043522.346512-1-koba.ko@canonical.com>
 <20210825043522.346512-2-koba.ko@canonical.com> <87y28pev59.fsf@intel.com>
In-Reply-To: <87y28pev59.fsf@intel.com>
From: Koba Ko <koba.ko@canonical.com>
Date: Wed, 25 Aug 2021 18:08:35 +0800
Message-ID: <CAJB-X+X2Vbj9bAj98yxfAhi2-LMk0=_Hq=b1-1o5iOykQRj5fQ@mail.gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, 
 amd-gfx list <amd-gfx@lists.freedesktop.org>
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

On Wed, Aug 25, 2021 at 5:22 PM Jani Nikula <jani.nikula@linux.intel.com> wrote:
>
> On Wed, 25 Aug 2021, Koba Ko <koba.ko@canonical.com> wrote:
> > AMD polaris GPUs have an issue about audio noise on RKL platform,
> > they provide a commit to fix but for SMU7-based GPU still
> > need another module parameter,
> >
> > For avoiding the module parameter, switch PCI_DPM by determining
> > intel platform in amd drm driver.
>
> I'll just note that you could have a Tiger Lake PCH combined with a
> number of platforms other than Rocket Lake, including not just the
> obvious Tiger Lake but also Sky Lake, Kaby Lake, Coffee Lake, and Comet
> Lake.
>
> Again, I don't know what the root cause or fix should be, the workaround
> presented here impacts a much larger number of platforms than where
> you're claiming the issue is.

Hi Jani, thanks for your feedback.
Is there any way to identify the RKL PCH?
I trace the intel_pch.c and can't find the only pch id for RKL.

INTEL_PCH_TGP_DEVICE_ID_TYPE is used by both TGL and RKL.

so it seems that using IS_ROCKETLAKE() is the only way.

Thanks
>
> BR,
> Jani.
>
>
> >
> > Fixes: 1a31474cdb48 ("drm/amd/pm: workaround for audio noise issue")
> > Ref: https://lists.freedesktop.org/archives/amd-gfx/2021-August/067413.html
> > Signed-off-by: Koba Ko <koba.ko@canonical.com>
> > ---
> >  .../drm/amd/pm/powerplay/hwmgr/smu7_hwmgr.c   | 21 ++++++++++++++++++-
> >  1 file changed, 20 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/amd/pm/powerplay/hwmgr/smu7_hwmgr.c b/drivers/gpu/drm/amd/pm/powerplay/hwmgr/smu7_hwmgr.c
> > index 0541bfc81c1b..346110dd0f51 100644
> > --- a/drivers/gpu/drm/amd/pm/powerplay/hwmgr/smu7_hwmgr.c
> > +++ b/drivers/gpu/drm/amd/pm/powerplay/hwmgr/smu7_hwmgr.c
> > @@ -1733,6 +1733,25 @@ static int smu7_disable_dpm_tasks(struct pp_hwmgr *hwmgr)
> >       return result;
> >  }
> >
> > +#include <drm/intel_pch.h>
> > +
> > +static bool intel_tgp_chk(void)
> > +{
> > +     struct pci_dev *pch = NULL;
> > +     unsigned short id;
> > +
> > +     while ((pch = pci_get_class(PCI_CLASS_BRIDGE_ISA << 8, pch))) {
> > +             if (pch->vendor != PCI_VENDOR_ID_INTEL)
> > +                     continue;
> > +
> > +             id = pch->device & INTEL_PCH_DEVICE_ID_MASK;
> > +             if (id == INTEL_PCH_TGP_DEVICE_ID_TYPE || INTEL_PCH_TGP2_DEVICE_ID_TYPE)
>
> PS. This is always true. ;)

got, thanks

>
> > +                     return true;
> > +     }
> > +
> > +     return false;
> > +}
> > +
> >  static void smu7_init_dpm_defaults(struct pp_hwmgr *hwmgr)
> >  {
> >       struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);
> > @@ -1758,7 +1777,7 @@ static void smu7_init_dpm_defaults(struct pp_hwmgr *hwmgr)
> >
> >       data->mclk_dpm_key_disabled = hwmgr->feature_mask & PP_MCLK_DPM_MASK ? false : true;
> >       data->sclk_dpm_key_disabled = hwmgr->feature_mask & PP_SCLK_DPM_MASK ? false : true;
> > -     data->pcie_dpm_key_disabled = hwmgr->feature_mask & PP_PCIE_DPM_MASK ? false : true;
> > +     data->pcie_dpm_key_disabled = intel_tgp_chk() || !(hwmgr->feature_mask & PP_PCIE_DPM_MASK);
> >       /* need to set voltage control types before EVV patching */
> >       data->voltage_control = SMU7_VOLTAGE_CONTROL_NONE;
> >       data->vddci_control = SMU7_VOLTAGE_CONTROL_NONE;
>
> --
> Jani Nikula, Intel Open Source Graphics Center
