Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 669EFBC478E
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Oct 2025 12:58:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D942C10E249;
	Wed,  8 Oct 2025 10:58:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="EdSPjwSz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 467FD10E249
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Oct 2025 10:58:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1759921120;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=pdQ0sO7S19Wj65FEV04wq2nrcuRLKCrIivo1txFA6GI=;
 b=EdSPjwSzi+l4zXVEzSJQ4bZRODO/hv2Pybn1s1Gn+UF4vMsbNTgchfup3XfWpeZnk3Imo0
 Qyicv2jSXX1LuDrraq8JqsrFB4tbJsuqW3lBT5Z2zipsiYdYvVkk9OBT8+iXxkC+R+X4Oh
 1fWjZT0NNThDJJIF86mPt9GnRaQMzpE=
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com
 [209.85.214.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-25-Sg_Pbw37PO6uAavMr0q09A-1; Wed, 08 Oct 2025 06:58:38 -0400
X-MC-Unique: Sg_Pbw37PO6uAavMr0q09A-1
X-Mimecast-MFC-AGG-ID: Sg_Pbw37PO6uAavMr0q09A_1759921118
Received: by mail-pl1-f199.google.com with SMTP id
 d9443c01a7336-2699ed6d43dso76213615ad.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Oct 2025 03:58:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1759921118; x=1760525918;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=pdQ0sO7S19Wj65FEV04wq2nrcuRLKCrIivo1txFA6GI=;
 b=rqCYse18Sp9HCTCSJeAP/IUCZOoM4ob7/FclF2BFIytfiuUeWOuud3E18lv2FKncC2
 bGLbRq123oOnGGLdiD1ImWJOU8V9eqH60iD7Uca4i8KG0hSyhweB8ziWOsXh2jUWxL/3
 JnxaMpXS8mz/w199ig97dC9nwSIDu55RfuJkpZLY9PbUbL02afTHbAYJ2yvOrzXqfONW
 zB/ZBfLWsOMHEf+zFbitqOgnnmZlg+mhy+KRAtHSnIaFa1CeAyM4i2TgFibqU9Kxft0G
 9TQKuj03erfzSIpDK15r0m5l8TgrqwKrahnouym/a4pjqPd0cbXEhbV3VSYGkHeszDrL
 dE+g==
X-Gm-Message-State: AOJu0YxHp4w6eqkKBSuM8X11O4Vx6uMlGgYudkbLAgLXIIOFM4TVW0Po
 vzSdtyrDyW7iHmOCnScooaRIhae+e7qVx2GG/uL0MshKNjPH6YsLwELuKMsqDxJgXiYgLXYFvc1
 pM7aGjCNGQKZgoqfRUBHIW7JQWnDiPin4g1bcZuGs6QqwVaGvF4A1+FX75Pxxxv1MVLftZtuG+8
 lnFYR4sAvGMK9tbf3ymjqvweonSIeAXd55VLc2MG+rHFLG
X-Gm-Gg: ASbGncuC2TNtc69lt+nMV3dt4extA4ki4W/Z4mmrA7nMAc+nd5RJES/ORcB/p6nk0tc
 TEg0mDJD3qRMHCeUcc1XpnTAvCbCi/99kAU9nay44Ia/zjN5iO8UFW3i74S1M//1MdL4WT/rgNE
 ingOki+2y7jGkGhhWNgUkug5VPbzY=
X-Received: by 2002:a17:903:380d:b0:26d:e984:8157 with SMTP id
 d9443c01a7336-29027356ab2mr35304515ad.8.1759921117822; 
 Wed, 08 Oct 2025 03:58:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE9wQ+BQhNZhLSvp0Sod3xCA5M8pcDPeEAt+RZ5totKr6WjasO7aVxZ0L6vIF0f/x/ZgiqA2gGtyx9KIGXLNNA=
X-Received: by 2002:a17:903:380d:b0:26d:e984:8157 with SMTP id
 d9443c01a7336-29027356ab2mr35304365ad.8.1759921117439; Wed, 08 Oct 2025
 03:58:37 -0700 (PDT)
MIME-Version: 1.0
References: <20251007180634.912006-1-jia.yao@intel.com>
 <20251007202514.1661491-1-jia.yao@intel.com>
 <CAF+s44SVMWnCRGvtYCPHdSEORoRVwUNNH2JVva-FnXbdgUOevw@mail.gmail.com>
 <PH8PR11MB8040EDBECAC02A4638DB4F39F4E1A@PH8PR11MB8040.namprd11.prod.outlook.com>
In-Reply-To: <PH8PR11MB8040EDBECAC02A4638DB4F39F4E1A@PH8PR11MB8040.namprd11.prod.outlook.com>
From: Pingfan Liu <piliu@redhat.com>
Date: Wed, 8 Oct 2025 18:58:26 +0800
X-Gm-Features: AS18NWDkEbamtfDTj9baZPiO8eSG5LQDNJshz24fK-efXIlVIRQe9gXDvmDh-nE
Message-ID: <CAF+s44Sx=h-y-TmrRNoHjDaNgiSiFTX-ACcAkECmqERY8dE_NA@mail.gmail.com>
Subject: Re: [PATCH v2] drm/i915: Setting/clearing the memory access bit when
 en/disabling i915
To: "Yao, Jia" <jia.yao@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Zuo,
 Alex" <alex.zuo@intel.com>, 
 "Lin, Shuicheng" <shuicheng.lin@intel.com>, Askar Safin <safinaskar@gmail.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: OKFKWOLv834M_hv3cTlT8I3AQT5t8MEnAQaoctHl1tw_1759921118
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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

On Wed, Oct 8, 2025 at 3:06=E2=80=AFPM Yao, Jia <jia.yao@intel.com> wrote:
>
> Hi Pingfan,
>
> You're welcome.  I guess you are referring to the following code,
>
> static void pci_device_shutdown(struct device *dev)
> {
>     struct pci_dev *pci_dev =3D to_pci_dev(dev);
>     struct pci_driver *drv =3D pci_dev->driver;
>
>     pm_runtime_resume(dev);
>
>     if (drv && drv->shutdown)
>         drv->shutdown(pci_dev);
>
>     /*
>      * If this is a kexec reboot, turn off Bus Master bit on the
>      * device to tell it to not continue to do DMA. Don't touch
>      * devices in D3cold or unknown states.
>      * If it is not a kexec reboot, firmware will hit the PCI
>      * devices with big hammer and stop their DMA any way.
>      */
>     if (kexec_in_progress && (pci_dev->current_state <=3D PCI_D3hot))
>         pci_clear_master(pci_dev);
> }
>
> but it just disables the i915 device as a DMA master,   not prevent DMA a=
ccess to i915 device.
>

That is not all of my questions. Let me rephrase my question in a
different way: which device accesses i915's memory? And does it send
i915 to an insane state, which can not be recovered in the second
kernel?


Thanks,

Pingfan

> Thanks,
> Jia
>
> -----Original Message-----
> From: Pingfan Liu <piliu@redhat.com>
> Sent: Tuesday, October 7, 2025 10:18 PM
> To: Yao, Jia <jia.yao@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Zuo, Alex <alex.zuo@intel.com>; Lin,=
 Shuicheng <shuicheng.lin@intel.com>; Askar Safin <safinaskar@gmail.com>; C=
hris Wilson <chris.p.wilson@linux.intel.com>
> Subject: Re: [PATCH v2] drm/i915: Setting/clearing the memory access bit =
when en/disabling i915
>
> Hi Jia,
>
> Thanks for the patch, please see the comments below.
>
> On Wed, Oct 8, 2025 at 4:25=E2=80=AFAM Jia Yao <jia.yao@intel.com> wrote:
> >
> > Make i915's PCI device management more robust by always
> > setting/clearing the memory access bit when enabling/disabling the
> > device, and by consolidating this logic into helper functions.
> >
> > It fixes kexec reboot issue by disabling memory access before shutting
> > down the device, which can block unsafe and unwanted access from DMA.
> >
>
> PCI_COMMAND_MEMORY blocks the access to i915 PCI_COMMAND_MASTER blocks i9=
15 from accessing the system memory.
>
> In the case of kexec-reboot, I think PCI_COMMAND_MASTER has been set on a=
ll pci devices. So I can not figure out how clearing PCI_COMMAND_MEMORY can=
 help in this case.
>
> Can you explain a little bit?
>
> Thanks,
>
> Pingfan
>
> > v2:
> >   - follow brace style
> >
> > Link: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14598
> > Cc: Alex Zuo <alex.zuo@intel.com>
> > Cc: Shuicheng Lin <shuicheng.lin@intel.com>
> > Cc: Askar Safin <safinaskar@gmail.com>
> > Cc: Pingfan Liu <piliu@redhat.com>
> > Suggested-by: Chris Wilson <chris.p.wilson@linux.intel.com>
> > Signed-off-by: Jia Yao <jia.yao@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_driver.c | 35
> > +++++++++++++++++++++++++++---
> >  1 file changed, 32 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_driver.c
> > b/drivers/gpu/drm/i915/i915_driver.c
> > index b46cb54ef5dc..766f85726b67 100644
> > --- a/drivers/gpu/drm/i915/i915_driver.c
> > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > @@ -118,6 +118,33 @@
> >
> >  static const struct drm_driver i915_drm_driver;
> >
> > +static int i915_enable_device(struct pci_dev *pdev) {
> > +       u32 cmd;
> > +       int ret;
> > +
> > +       ret =3D pci_enable_device(pdev);
> > +       if (ret)
> > +               return ret;
> > +
> > +       pci_read_config_dword(pdev, PCI_COMMAND, &cmd);
> > +       if (!(cmd & PCI_COMMAND_MEMORY))
> > +               pci_write_config_dword(pdev, PCI_COMMAND, cmd |
> > + PCI_COMMAND_MEMORY);
> > +
> > +       return 0;
> > +}
> > +
> > +static void i915_disable_device(struct pci_dev *pdev) {
> > +       u32 cmd;
> > +
> > +       pci_read_config_dword(pdev, PCI_COMMAND, &cmd);
> > +       if (cmd & PCI_COMMAND_MEMORY)
> > +               pci_write_config_dword(pdev, PCI_COMMAND, cmd &
> > + ~PCI_COMMAND_MEMORY);
> > +
> > +       pci_disable_device(pdev);
> > +}
> > +
> >  static int i915_workqueues_init(struct drm_i915_private *dev_priv)  {
> >         /*
> > @@ -788,7 +815,7 @@ int i915_driver_probe(struct pci_dev *pdev, const s=
truct pci_device_id *ent)
> >         struct intel_display *display;
> >         int ret;
> >
> > -       ret =3D pci_enable_device(pdev);
> > +       ret =3D i915_enable_device(pdev);
> >         if (ret) {
> >                 pr_err("Failed to enable graphics device: %pe\n", ERR_P=
TR(ret));
> >                 return ret;
> > @@ -796,7 +823,7 @@ int i915_driver_probe(struct pci_dev *pdev, const
> > struct pci_device_id *ent)
> >
> >         i915 =3D i915_driver_create(pdev, ent);
> >         if (IS_ERR(i915)) {
> > -               pci_disable_device(pdev);
> > +               i915_disable_device(pdev);
> >                 return PTR_ERR(i915);
> >         }
> >
> > @@ -885,7 +912,7 @@ int i915_driver_probe(struct pci_dev *pdev, const s=
truct pci_device_id *ent)
> >         enable_rpm_wakeref_asserts(&i915->runtime_pm);
> >         i915_driver_late_release(i915);
> >  out_pci_disable:
> > -       pci_disable_device(pdev);
> > +       i915_disable_device(pdev);
> >         i915_probe_error(i915, "Device initialization failed (%d)\n", r=
et);
> >         return ret;
> >  }
> > @@ -1003,6 +1030,7 @@ void i915_driver_shutdown(struct
> > drm_i915_private *i915)
> >
> >         intel_dmc_suspend(display);
> >
> > +       intel_pxp_fini(i915);
> >         i915_gem_suspend(i915);
> >
> >         /*
> > @@ -1020,6 +1048,7 @@ void i915_driver_shutdown(struct drm_i915_private=
 *i915)
> >         enable_rpm_wakeref_asserts(&i915->runtime_pm);
> >
> >         intel_runtime_pm_driver_last_release(&i915->runtime_pm);
> > +       i915_disable_device(to_pci_dev(i915->drm.dev));
> >  }
> >
> >  static bool suspend_to_idle(struct drm_i915_private *dev_priv)
> > --
> > 2.34.1
> >
>

