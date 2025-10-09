Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB959BC7216
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Oct 2025 03:56:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C76B110E8FD;
	Thu,  9 Oct 2025 01:55:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="XecAPqZj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33BB310E8FD
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Oct 2025 01:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1759974957;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=03icDTT6exBr/SK6YSWLqUzJ/MmQeu7IZue8z+Fmp3M=;
 b=XecAPqZjbog4BLk60j/UU8dxaigcoq0VZQQzWmnIGuvpyIg0qWNQbk9KqBKpNOsGThzl4a
 8kwOkIf5JIeiUAuxsZ68yPh0bDJqbelP/Q1QUrrjH9ylvM8TA1IApHwAMVU1mk/gV2Zivc
 SatwgZe8IFVEau6rPbCFRL8urethocw=
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com
 [209.85.214.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-654-By1emecEO5OTLGVRF-10aA-1; Wed, 08 Oct 2025 21:55:55 -0400
X-MC-Unique: By1emecEO5OTLGVRF-10aA-1
X-Mimecast-MFC-AGG-ID: By1emecEO5OTLGVRF-10aA_1759974954
Received: by mail-pl1-f199.google.com with SMTP id
 d9443c01a7336-272ed8c106eso4376795ad.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Oct 2025 18:55:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1759974954; x=1760579754;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=03icDTT6exBr/SK6YSWLqUzJ/MmQeu7IZue8z+Fmp3M=;
 b=ZnkOhl5AoxC9butHvy2E7kegQtjZHClCK+IIq12m+MknXos6y55TNQDhkW6c7aw3j8
 3rE9U5in6iFnUrGUY7VOHw3VLFoSw2jPiqUaE55B6dFVZbNcW1WiKR+XLV7aSHl2rHDx
 NpN0BOGqoGS1OTjzlkh/GQXfSdd6n6DU/OTi7aJHuxRlTk/P+VM0KYBIOStyc8pATnjN
 sU/I6M3g/Pi5U3oXhu7YZPuDp8kpC+pEi2IzYO5U2zpri6BHrB8qafiXpOT4FTdxEEu/
 NHmhl152Dr60XKsZK4gZXcTs3KhmfEzRrWB3CbnLLN6Y8J3H6qwZuMnxrCgpEI96m6Vy
 MuaQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVQuTExxcF4tktYEaB6jNwoA8q37bHoByo2h1ww9vPEpvk7HXXfryU/PtvVt0d3O4GYP1X99Nu2trE=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YygN6pQJaeiib989toPxPGQYhKPZfQBm08ikqKLpdwBHnK3Ghvl
 mkRLkSGtFs/F0w79Vro/QGO5t5omc7T2Li5wHU+qFaF1bPTgu+AMAb7Vwm32DH9RJgIubLZPMhd
 elLDBSk7B0IRiIsEdBNi174rEYdF68bo47/6VzPtat5iV/0/EQCVl4pEvm9F1Dd7lclbMBYModJ
 K/BO90bz5VDX2O23eWivX/EsEoHBqsa+m+dRkT71P4bD65
X-Gm-Gg: ASbGncteC/TFTPisHdOhRi4KW9/zB+HuKh2FxJbtw4Ir8gM0QOuojhm6DIJ0pB12cCb
 EVn76r4WXIdciZr+T3+BnZQ6w4MJDx3vA+b345xVAaC6cVlTW4C8Ubo++pu49SFwqithMCT1OGL
 8JPlBQi93grGQfHY0mWom9CK7cHLs=
X-Received: by 2002:a17:902:fc4c:b0:28e:7841:d437 with SMTP id
 d9443c01a7336-290272c0474mr78913225ad.38.1759974954363; 
 Wed, 08 Oct 2025 18:55:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFw9Dv5qnsX26G/6xgtXTV8CVCpBILXewMwjwRpNGXEb71qb0CKFM6oJN0+fGs57TYTpeLB4rxC542sGnHFNSs=
X-Received: by 2002:a17:902:fc4c:b0:28e:7841:d437 with SMTP id
 d9443c01a7336-290272c0474mr78912945ad.38.1759974953987; Wed, 08 Oct 2025
 18:55:53 -0700 (PDT)
MIME-Version: 1.0
References: <20251007180634.912006-1-jia.yao@intel.com>
 <20251007202514.1661491-1-jia.yao@intel.com>
 <aOWFMICISzSZ_3nH@intel.com>
 <PH8PR11MB8040A2CB337190DC80B80BB3F4E0A@PH8PR11MB8040.namprd11.prod.outlook.com>
 <aOZXVYNnUvxnrr-6@intel.com>
 <PH8PR11MB80407C75DF808C33C70B1FBDF4E1A@PH8PR11MB8040.namprd11.prod.outlook.com>
 <aOaOJ1YI-NgTloIy@intel.com>
 <PH8PR11MB8040EA42E5CCC032B7C76737F4E1A@PH8PR11MB8040.namprd11.prod.outlook.com>
In-Reply-To: <PH8PR11MB8040EA42E5CCC032B7C76737F4E1A@PH8PR11MB8040.namprd11.prod.outlook.com>
From: Pingfan Liu <piliu@redhat.com>
Date: Thu, 9 Oct 2025 09:55:42 +0800
X-Gm-Features: AS18NWDaMcClWm8ueaRa2bjrITvodJoIX8yRWdZTrHzwSAERrpGrmoimM-fT2jo
Message-ID: <CAF+s44RZtL9_u5PqQn42FC5yfzwwRrvqPP2Da1U_bXDLdApqHQ@mail.gmail.com>
Subject: Re: [PATCH v2] drm/i915: Setting/clearing the memory access bit when
 en/disabling i915
To: "Yao, Jia" <jia.yao@intel.com>
Cc: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Zuo,
 Alex" <alex.zuo@intel.com>, 
 "Lin, Shuicheng" <shuicheng.lin@intel.com>, Askar Safin <safinaskar@gmail.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: WZ7QbzdgBfOekxopD9UJobZ7nAUuTx-pjbp7o0yFcNQ_1759974954
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

On Thu, Oct 9, 2025 at 1:14=E2=80=AFAM Yao, Jia <jia.yao@intel.com> wrote:
>
> Good questions.   @Pingfan Liu  @Ville Syrj=C3=A4l=C3=A4
>
> Driver-wise,  no other access except for pxp stuff,  for that after disab=
ling PCI_COMMAND_MEMORY,  any access will cause MMIO failure,  they will no=
t be able to be hidden.
> And the invalid access is not from pxp,  otherwise just doing   intel_pxp=
_fini   in i915_driver_shutdown will fix the issue, it might come from firm=
ware or other that i915 driver can't see.
>

Thank you for the clear explanation.

> Current solution is defensive,  not harmful just like turning on write pr=
otection on a floppy disk when not using it.
>

I have a couple of questions about this patch:
First, at what point (in the shutdown sequence) should the
PCI_COMMAND_MEMORY bit be cleared in i915_driver_shutdown()? Does your
patch clear it too late?
Second, in the second kernel (after kexec), is there a proactive way
to force the i915 driver into a clean state so it can recover from
invalid memory accesses that occurred in the first kernel? I think
this will be a better choice.

I realize I may be nitpicking a bit, since these details might not be
publicly documented. So I think your patch is reasonable.


Thanks,

Pingfan


> Thanks,
> Jia
>
> -----Original Message-----
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Sent: Wednesday, October 8, 2025 9:16 AM
> To: Yao, Jia <jia.yao@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Zuo, Alex <alex.zuo@intel.com>; Lin,=
 Shuicheng <shuicheng.lin@intel.com>; Askar Safin <safinaskar@gmail.com>; P=
ingfan Liu <piliu@redhat.com>; Chris Wilson <chris.p.wilson@linux.intel.com=
>
> Subject: Re: [PATCH v2] drm/i915: Setting/clearing the memory access bit =
when en/disabling i915
>
> On Wed, Oct 08, 2025 at 04:06:39PM +0000, Yao, Jia wrote:
> > The actual bug is showing in https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/14598
> > if CONFIG_INTEL_IOMMU_DEFAULT_ON=3Dy  ,  that IOMMU prevent the invalid=
 access,  but if  CONFIG_INTEL_IOMMU_DEFAULT_ON=3Dn,   the invalid access w=
ill directly cause system crash after kexec reboot.
>
> I was asking you whether that invalid access was caused by that pxp stuff=
 or not?
>
> If yes, then just fix it.
>
> If not, then I guess someone needs to keep on debugging.
>
> >
> > -----Original Message-----
> > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> > Sent: Wednesday, October 8, 2025 5:22 AM
> > To: Yao, Jia <jia.yao@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org; Zuo, Alex <alex.zuo@intel.com>;
> > Lin, Shuicheng <shuicheng.lin@intel.com>; Askar Safin
> > <safinaskar@gmail.com>; Pingfan Liu <piliu@redhat.com>; Chris Wilson
> > <chris.p.wilson@linux.intel.com>
> > Subject: Re: [PATCH v2] drm/i915: Setting/clearing the memory access
> > bit when en/disabling i915
> >
> > On Tue, Oct 07, 2025 at 09:40:45PM +0000, Yao, Jia wrote:
> > > You mean  intel_pxp_fini(i915)  ?
> > > This is because mei_me_shutdown  is called after
> > > i915_driver_shutdown in pci_device_shutdown sequence.  If we don't
> > > close pxp in advance, it will cause
> > >
> > > [  295.584775] i915 0000:00:02.0: [drm] *ERROR* gt: MMIO unreliable (=
forcewake register returns 0xFFFFFFFF)!
> >
> > So that is the actual bug you're trying to fix? Please just submit the =
pxp fix on its own.
> >
> > >
> > > Since we disabled PCI_COMMAND_MEMORY in  i915_driver_shutdown
> > >
> > > Thanks,
> > > Jia
> > >
> > > -----Original Message-----
> > > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> > > Sent: Tuesday, October 7, 2025 2:25 PM
> > > To: Yao, Jia <jia.yao@intel.com>
> > > Cc: intel-gfx@lists.freedesktop.org; Zuo, Alex <alex.zuo@intel.com>;
> > > Lin, Shuicheng <shuicheng.lin@intel.com>; Askar Safin
> > > <safinaskar@gmail.com>; Pingfan Liu <piliu@redhat.com>; Chris Wilson
> > > <chris.p.wilson@linux.intel.com>
> > > Subject: Re: [PATCH v2] drm/i915: Setting/clearing the memory access
> > > bit when en/disabling i915
> > >
> > > On Tue, Oct 07, 2025 at 08:25:14PM +0000, Jia Yao wrote:
> > > > Make i915's PCI device management more robust by always
> > > > setting/clearing the memory access bit when enabling/disabling the
> > > > device, and by consolidating this logic into helper functions.
> > > >
> > > > It fixes kexec reboot issue by disabling memory access before
> > > > shutting down the device, which can block unsafe and unwanted acces=
s from DMA.
> > > >
> > > > v2:
> > > >   - follow brace style
> > > >
> > > > Link:
> > > > https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14598
> > > > Cc: Alex Zuo <alex.zuo@intel.com>
> > > > Cc: Shuicheng Lin <shuicheng.lin@intel.com>
> > > > Cc: Askar Safin <safinaskar@gmail.com>
> > > > Cc: Pingfan Liu <piliu@redhat.com>
> > > > Suggested-by: Chris Wilson <chris.p.wilson@linux.intel.com>
> > > > Signed-off-by: Jia Yao <jia.yao@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/i915_driver.c | 35
> > > > +++++++++++++++++++++++++++---
> > > >  1 file changed, 32 insertions(+), 3 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/i915_driver.c
> > > > b/drivers/gpu/drm/i915/i915_driver.c
> > > > index b46cb54ef5dc..766f85726b67 100644
> > > > --- a/drivers/gpu/drm/i915/i915_driver.c
> > > > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > > > @@ -118,6 +118,33 @@
> > > >
> > > >  static const struct drm_driver i915_drm_driver;
> > > >
> > > > +static int i915_enable_device(struct pci_dev *pdev) {
> > > > + u32 cmd;
> > > > + int ret;
> > > > +
> > > > + ret =3D pci_enable_device(pdev);
> > > > + if (ret)
> > > > +         return ret;
> > > > +
> > > > + pci_read_config_dword(pdev, PCI_COMMAND, &cmd);
> > > > + if (!(cmd & PCI_COMMAND_MEMORY))
> > > > +         pci_write_config_dword(pdev, PCI_COMMAND, cmd |
> > > > +PCI_COMMAND_MEMORY);
> > > > +
> > > > + return 0;
> > > > +}
> > >
> > > NAK. If the pci code is broken then fix the problem there.
> > > Do not add ugly hacks into random drivers.
> > >
> > > > +
> > > > +static void i915_disable_device(struct pci_dev *pdev) {
> > > > + u32 cmd;
> > > > +
> > > > + pci_read_config_dword(pdev, PCI_COMMAND, &cmd);
> > > > + if (cmd & PCI_COMMAND_MEMORY)
> > > > +         pci_write_config_dword(pdev, PCI_COMMAND, cmd &
> > > > +~PCI_COMMAND_MEMORY);
> > > > +
> > > > + pci_disable_device(pdev);
> > > > +}
> > > > +
> > > >  static int i915_workqueues_init(struct drm_i915_private *dev_priv)=
  {
> > > >   /*
> > > > @@ -788,7 +815,7 @@ int i915_driver_probe(struct pci_dev *pdev, con=
st struct pci_device_id *ent)
> > > >   struct intel_display *display;
> > > >   int ret;
> > > >
> > > > - ret =3D pci_enable_device(pdev);
> > > > + ret =3D i915_enable_device(pdev);
> > > >   if (ret) {
> > > >           pr_err("Failed to enable graphics device: %pe\n", ERR_PTR=
(ret));
> > > >           return ret;
> > > > @@ -796,7 +823,7 @@ int i915_driver_probe(struct pci_dev *pdev,
> > > > const struct pci_device_id *ent)
> > > >
> > > >   i915 =3D i915_driver_create(pdev, ent);
> > > >   if (IS_ERR(i915)) {
> > > > -         pci_disable_device(pdev);
> > > > +         i915_disable_device(pdev);
> > > >           return PTR_ERR(i915);
> > > >   }
> > > >
> > > > @@ -885,7 +912,7 @@ int i915_driver_probe(struct pci_dev *pdev, con=
st struct pci_device_id *ent)
> > > >   enable_rpm_wakeref_asserts(&i915->runtime_pm);
> > > >   i915_driver_late_release(i915);
> > > >  out_pci_disable:
> > > > - pci_disable_device(pdev);
> > > > + i915_disable_device(pdev);
> > > >   i915_probe_error(i915, "Device initialization failed (%d)\n", ret=
);
> > > >   return ret;
> > > >  }
> > > > @@ -1003,6 +1030,7 @@ void i915_driver_shutdown(struct
> > > > drm_i915_private *i915)
> > > >
> > > >   intel_dmc_suspend(display);
> > > >
> > > > + intel_pxp_fini(i915);
> > >
> > > What is that doing in this patch?
> > >
> > > >   i915_gem_suspend(i915);
> > > >
> > > >   /*
> > > > @@ -1020,6 +1048,7 @@ void i915_driver_shutdown(struct drm_i915_pri=
vate *i915)
> > > >   enable_rpm_wakeref_asserts(&i915->runtime_pm);
> > > >
> > > >   intel_runtime_pm_driver_last_release(&i915->runtime_pm);
> > > > + i915_disable_device(to_pci_dev(i915->drm.dev));
> > > >  }
> > > >
> > > >  static bool suspend_to_idle(struct drm_i915_private *dev_priv)
> > > > --
> > > > 2.34.1
> > >
> > > --
> > > Ville Syrj=C3=A4l=C3=A4
> > > Intel
> >
> > --
> > Ville Syrj=C3=A4l=C3=A4
> > Intel
>
> --
> Ville Syrj=C3=A4l=C3=A4
> Intel
>

