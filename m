Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A8273E7C01
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Aug 2021 17:20:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AAA289CBC;
	Tue, 10 Aug 2021 15:20:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-relay-canonical-0.canonical.com
 (smtp-relay-canonical-0.canonical.com [185.125.188.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D1E189CC1
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Aug 2021 15:20:37 +0000 (UTC)
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-canonical-0.canonical.com (Postfix) with ESMTPS id 934173F0AA
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Aug 2021 15:20:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1628608835;
 bh=j9DOWe5Q6j3DUs1eHs4nfI997kH7LOvieiXjqOQd8tQ=;
 h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
 To:Cc:Content-Type;
 b=ndodUjKIl7UEba2kmwqwopzNPWA1+9qfJPk7dziyjb3pkFI4GmKcR8eOPzJNeHHxa
 8uwIFbf9NxkIsVh/2+LM8sPytbUx+qkFVAqmAhLF+MaBWBje1/pK12YMXFMtiO6uCG
 iBnw1tQx1C45hXT2Qa8CYiVdmgtyeyT4xKTyZ462IhTve/OLSEqi+H7KkSUIj/17/a
 QqgP5K5Amf/oCInBOJkpAc7eHW2QsQuzQIJC7GHzQ3P3eaeVQ7SGmLyslVLmhLMR7y
 S7nv+W0YQovWsbaRDF40B1EZGjAIJqHHF0Bn3jQnnVLE7L6h1ASlhu9huVpIyB/nOv
 X+t9hTZ9kk3fw==
Received: by mail-ed1-f69.google.com with SMTP id
 dh21-20020a0564021d35b02903be0aa37025so8672279edb.7
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Aug 2021 08:20:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=j9DOWe5Q6j3DUs1eHs4nfI997kH7LOvieiXjqOQd8tQ=;
 b=in4x7mvzrWsblT2ZAkDYoyLD9vj1F9/fC9CJxe/P2GAB83fm0P/BhyaYlAUdR+O5Ex
 nEk33+El3WCyq6cW9UMhIgOC2rFsZDCuAdEp3MMnM0MAUMGEhWCiYLGwLO6lMx5GdM5r
 fyd1rMwwDROpwO6FIhdMHETCLM+zZZDSNkz8yV714L1jQJoP1xAKQvAOOZcnuUFi0oLE
 GNd+gTkLRmQTpnGHKTvQqJ7pdWh6QtXTl0lhSFrLJT7wixehrQtMU1wLexd3MlgzbIeG
 lLWqsRCn83COHMeusVUcN/7K+9wa0Wq/W6k/TlzBjLuvXojOKsJ9i1pTtjL0QX/xRTt7
 w0xw==
X-Gm-Message-State: AOAM531NBoOSxg5aynSVDQ7hTpr/RKar2OpmoR58AzILG8lmt+u9Axai
 hM9PrGVuyESwTK105OmZzO64nu0lgxWXXp43II+yRJQakPQr9fYR8CvgXRsvxorAjmMTRRXiMmV
 IILaGcB5BmAPkcGeZ7980GURF1+StzcwqRBWQQctn1MpTrlbsMdFfB1GZQFiw/Q==
X-Received: by 2002:aa7:cdcf:: with SMTP id h15mr5626390edw.45.1628608835219; 
 Tue, 10 Aug 2021 08:20:35 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyuZy47wtwcB9Gw+55XBurmzvrA0vkpYUNh3X8h7fQCjQ2uHs9ZCGRVLmEL1d4FvH35E7Wn+sTyo5Af4znxNJ0=
X-Received: by 2002:aa7:cdcf:: with SMTP id h15mr5626352edw.45.1628608834872; 
 Tue, 10 Aug 2021 08:20:34 -0700 (PDT)
MIME-Version: 1.0
References: <20210802133551.1904964-1-imre.deak@intel.com>
 <20210809133146.2478382-1-imre.deak@intel.com>
 <20210810083629.GA2517380@ideak-desk.fi.intel.com>
 <CADnq5_Pjz2gP2465S1aEzKMZXiSB2WqEPUdkpqh58XzJcKLu+g@mail.gmail.com>
In-Reply-To: <CADnq5_Pjz2gP2465S1aEzKMZXiSB2WqEPUdkpqh58XzJcKLu+g@mail.gmail.com>
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
Date: Tue, 10 Aug 2021 23:20:23 +0800
Message-ID: <CAAd53p7N0Z+7hNmomaqRSWhzDjhOnwhgn6oPHQ_b4mep=xzTwg@mail.gmail.com>
To: Alex Deucher <alexdeucher@gmail.com>
Cc: Imre Deak <imre.deak@intel.com>, 
 "open list:EFIFB FRAMEBUFFER DRIVER" <linux-fbdev@vger.kernel.org>,
 Alex Deucher <alexander.deucher@amd.com>, 
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, 
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH v2] fbdev/efifb: Release PCI device's
 runtime PM ref during FB destroy
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

On Tue, Aug 10, 2021 at 10:49 PM Alex Deucher <alexdeucher@gmail.com> wrote:
>
> On Tue, Aug 10, 2021 at 4:36 AM Imre Deak <imre.deak@intel.com> wrote:
> >
> > Hi Kai-Heng, Alex,
> >
> > could you add your ack if the fix looks ok and you're ok if I push it to
> > the i915 tree?
> >
>
> Acked-by: Alex Deucher <alexander.deucher@amd.com>

Acked-by: Kai-Heng Feng <kai.heng.feng@canonical.com>

>
> > Thanks,
> > Imre
> >
> > On Mon, Aug 09, 2021 at 04:31:46PM +0300, Imre Deak wrote:
> > > Atm the EFI FB platform driver gets a runtime PM reference for the
> > > associated GFX PCI device during probing the EFI FB platform device and
> > > releases it only when the platform device gets unbound.
> > >
> > > When fbcon switches to the FB provided by the PCI device's driver (for
> > > instance i915/drmfb), the EFI FB will get only unregistered without the
> > > EFI FB platform device getting unbound, keeping the runtime PM reference
> > > acquired during the platform device probing. This reference will prevent
> > > the PCI driver from runtime suspending the device.
> > >
> > > Fix this by releasing the RPM reference from the EFI FB's destroy hook,
> > > called when the FB gets unregistered.
> > >
> > > While at it assert that pm_runtime_get_sync() didn't fail.
> > >
> > > v2:
> > > - Move pm_runtime_get_sync() before register_framebuffer() to avoid its
> > >   race wrt. efifb_destroy()->pm_runtime_put(). (Daniel)
> > > - Assert that pm_runtime_get_sync() didn't fail.
> > > - Clarify commit message wrt. platform/PCI device/driver and driver
> > >   removal vs. device unbinding.
> > >
> > > Fixes: a6c0fd3d5a8b ("efifb: Ensure graphics device for efifb stays at PCI D0")
> > > Cc: Kai-Heng Feng <kai.heng.feng@canonical.com>
> > > Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> > > Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch> (v1)
> > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > ---
> > >  drivers/video/fbdev/efifb.c | 21 ++++++++++++++-------
> > >  1 file changed, 14 insertions(+), 7 deletions(-)
> > >
> > > diff --git a/drivers/video/fbdev/efifb.c b/drivers/video/fbdev/efifb.c
> > > index 8ea8f079cde26..edca3703b9640 100644
> > > --- a/drivers/video/fbdev/efifb.c
> > > +++ b/drivers/video/fbdev/efifb.c
> > > @@ -47,6 +47,8 @@ static bool use_bgrt = true;
> > >  static bool request_mem_succeeded = false;
> > >  static u64 mem_flags = EFI_MEMORY_WC | EFI_MEMORY_UC;
> > >
> > > +static struct pci_dev *efifb_pci_dev;        /* dev with BAR covering the efifb */
> > > +
> > >  static struct fb_var_screeninfo efifb_defined = {
> > >       .activate               = FB_ACTIVATE_NOW,
> > >       .height                 = -1,
> > > @@ -243,6 +245,9 @@ static inline void efifb_show_boot_graphics(struct fb_info *info) {}
> > >
> > >  static void efifb_destroy(struct fb_info *info)
> > >  {
> > > +     if (efifb_pci_dev)
> > > +             pm_runtime_put(&efifb_pci_dev->dev);
> > > +
> > >       if (info->screen_base) {
> > >               if (mem_flags & (EFI_MEMORY_UC | EFI_MEMORY_WC))
> > >                       iounmap(info->screen_base);
> > > @@ -333,7 +338,6 @@ ATTRIBUTE_GROUPS(efifb);
> > >
> > >  static bool pci_dev_disabled;        /* FB base matches BAR of a disabled device */
> > >
> > > -static struct pci_dev *efifb_pci_dev;        /* dev with BAR covering the efifb */
> > >  static struct resource *bar_resource;
> > >  static u64 bar_offset;
> > >
> > > @@ -569,17 +573,22 @@ static int efifb_probe(struct platform_device *dev)
> > >               pr_err("efifb: cannot allocate colormap\n");
> > >               goto err_groups;
> > >       }
> > > +
> > > +     if (efifb_pci_dev)
> > > +             WARN_ON(pm_runtime_get_sync(&efifb_pci_dev->dev) < 0);
> > > +
> > >       err = register_framebuffer(info);
> > >       if (err < 0) {
> > >               pr_err("efifb: cannot register framebuffer\n");
> > > -             goto err_fb_dealoc;
> > > +             goto err_put_rpm_ref;
> > >       }
> > >       fb_info(info, "%s frame buffer device\n", info->fix.id);
> > > -     if (efifb_pci_dev)
> > > -             pm_runtime_get_sync(&efifb_pci_dev->dev);
> > >       return 0;
> > >
> > > -err_fb_dealoc:
> > > +err_put_rpm_ref:
> > > +     if (efifb_pci_dev)
> > > +             pm_runtime_put(&efifb_pci_dev->dev);
> > > +
> > >       fb_dealloc_cmap(&info->cmap);
> > >  err_groups:
> > >       sysfs_remove_groups(&dev->dev.kobj, efifb_groups);
> > > @@ -603,8 +612,6 @@ static int efifb_remove(struct platform_device *pdev)
> > >       unregister_framebuffer(info);
> > >       sysfs_remove_groups(&pdev->dev.kobj, efifb_groups);
> > >       framebuffer_release(info);
> > > -     if (efifb_pci_dev)
> > > -             pm_runtime_put(&efifb_pci_dev->dev);
> > >
> > >       return 0;
> > >  }
> > > --
> > > 2.27.0
> > >
