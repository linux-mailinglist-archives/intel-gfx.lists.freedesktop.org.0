Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 758144AF341
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 14:51:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E82AB10E478;
	Wed,  9 Feb 2022 13:51:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-io1-xd2f.google.com (mail-io1-xd2f.google.com
 [IPv6:2607:f8b0:4864:20::d2f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FEF910E730
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Feb 2022 16:20:24 +0000 (UTC)
Received: by mail-io1-xd2f.google.com with SMTP id s18so21719042ioa.12
 for <intel-gfx@lists.freedesktop.org>; Tue, 08 Feb 2022 08:20:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=semihalf-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=D4G359qGyFqpKIwIOAwVvgxJFqtl6xrt9kKH0uEKLYU=;
 b=z351ALnbGpDgEt8ODI2EQarmr1vQ3JfUFtw5N5X9r/6vrCI0gEChBbz3to8xA1CF/E
 eXt7xU/kJmIJgNVn0OFO/PT4qZzWLgT+pygxCOPEfhpr8BSzAs3k0KhLG8dSUrPFtQIv
 jZndbj/f3wfXJmQ46ly3L702PBv92wGb6uww+qmPilUg6qJi5aEpgH5e6HUXa+tnEfdu
 H/lbUi4vKKCenZKE4wcFvTEf9SyRGSQSWajXIVeBZ3P04chFDDd3bUnY6vZC/I7bVy0F
 tDas4J9l03VyTuGuoYoOsE/W32vKxLFKkMimO5StigE34UV8DhI/xGa8fShPxlTcGFTI
 IEEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=D4G359qGyFqpKIwIOAwVvgxJFqtl6xrt9kKH0uEKLYU=;
 b=uyEEgJ4EOp+y5ZOaTyEfujCq5i1ZaMTj7gGNdeKz7ISvv222eW3ZRKZ+pqtCtMI+2X
 s4kVkP80RgRedvk5J+rorSBf7S9CCgSbuobFz5aXKE2fTnwgXjP/2bd/ZCvcieS3DMe4
 PnHmBaIzSP3A+MGC7d90t/yafIN/T4GYKpwUkLeMli1OgweTgKmKgjSC8m2wuWh7egrF
 fAN7UC7ojvHR9p77sEiGr6MsRzNl484VJG3ZSD+erR2ZTmk1ltaQN6t1bbNTJz7pczV4
 tc5yRWzw/Gt91oPP/NxHqlEITTaJ7hDJs8PQwyEgFqb4Jb50NgMrz/986iHlW9Q7W6u9
 aREw==
X-Gm-Message-State: AOAM5310aZen5C3eJ+3uaXKf4nbfRD6euZrp0IA9CJw8ORe6gwdbHvNb
 dAxc3oRXQk+eu6EwBYua9VD0ssV46rTaSvBs1yvr
X-Google-Smtp-Source: ABdhPJwE2ued5IyAicmnZXgeyxKACLI0n0/dODXIpNzDqLh9pZsOcosBYci+IJO2+zE7VArPYkY33TkuJ+Ye9S63Ncs=
X-Received: by 2002:a05:6638:3486:: with SMTP id
 t6mr285272jal.74.1644337222498; 
 Tue, 08 Feb 2022 08:20:22 -0800 (PST)
MIME-Version: 1.0
References: <20220201153354.11971-1-lukasz.bartosik@semihalf.com>
 <87r18mtwn7.fsf@intel.com>
In-Reply-To: <87r18mtwn7.fsf@intel.com>
From: =?UTF-8?Q?=C5=81ukasz_Bartosik?= <lb@semihalf.com>
Date: Tue, 8 Feb 2022 17:20:11 +0100
Message-ID: <CAK8ByeKSWfeyUB73rVXQr2VKMFxNYZk9KxwYjsws3URFGfk50A@mail.gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Wed, 09 Feb 2022 13:51:16 +0000
Subject: Re: [Intel-gfx] [PATCH v1] drm/i915: fix null pointer dereference
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
Cc: upstream@semihalf.com, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Have you had a chance to review the patch ? The crash is still there
on v5.17-rc3.

Thanks,
Lukasz

wt., 1 lut 2022 o 16:49 Jani Nikula <jani.nikula@linux.intel.com> napisa=C5=
=82(a):
>
>
> Thanks for the patch, adding some Cc's from the commit that regressed.
>
> BR,
> Jani.
>
> On Tue, 01 Feb 2022, Lukasz Bartosik <lb@semihalf.com> wrote:
> > From: =C5=81ukasz Bartosik <lb@semihalf.com>
> >
> > Asus chromebook CX550 crashes during boot on v5.17-rc1 kernel.
> > The root cause is null pointer defeference of bi_next
> > in tgl_get_bw_info() in drivers/gpu/drm/i915/display/intel_bw.c.
> >
> > BUG: kernel NULL pointer dereference, address: 000000000000002e
> > PGD 0 P4D 0
> > Oops: 0002 [#1] PREEMPT SMP NOPTI
> > CPU: 0 PID: 1 Comm: swapper/0 Tainted: G     U            5.17.0-rc1
> > Hardware name: Google Delbin/Delbin, BIOS Google_Delbin.13672.156.3 05/=
14/2021
> > RIP: 0010:tgl_get_bw_info+0x2de/0x510
> > ...
> > [    2.554467] Call Trace:
> > [    2.554467]  <TASK>
> > [    2.554467]  intel_bw_init_hw+0x14a/0x434
> > [    2.554467]  ? _printk+0x59/0x73
> > [    2.554467]  ? _dev_err+0x77/0x91
> > [    2.554467]  i915_driver_hw_probe+0x329/0x33e
> > [    2.554467]  i915_driver_probe+0x4c8/0x638
> > [    2.554467]  i915_pci_probe+0xf8/0x14e
> > [    2.554467]  ? _raw_spin_unlock_irqrestore+0x12/0x2c
> > [    2.554467]  pci_device_probe+0xaa/0x142
> > [    2.554467]  really_probe+0x13f/0x2f4
> > [    2.554467]  __driver_probe_device+0x9e/0xd3
> > [    2.554467]  driver_probe_device+0x24/0x7c
> > [    2.554467]  __driver_attach+0xba/0xcf
> > [    2.554467]  ? driver_attach+0x1f/0x1f
> > [    2.554467]  bus_for_each_dev+0x8c/0xc0
> > [    2.554467]  bus_add_driver+0x11b/0x1f7
> > [    2.554467]  driver_register+0x60/0xea
> > [    2.554467]  ? mipi_dsi_bus_init+0x16/0x16
> > [    2.554467]  i915_init+0x2c/0xb9
> > [    2.554467]  ? mipi_dsi_bus_init+0x16/0x16
> > [    2.554467]  do_one_initcall+0x12e/0x2b3
> > [    2.554467]  do_initcall_level+0xd6/0xf3
> > [    2.554467]  do_initcalls+0x4e/0x79
> > [    2.554467]  kernel_init_freeable+0xed/0x14d
> > [    2.554467]  ? rest_init+0xc1/0xc1
> > [    2.554467]  kernel_init+0x1a/0x120
> > [    2.554467]  ret_from_fork+0x1f/0x30
> > [    2.554467]  </TASK>
> > ...
> > Kernel panic - not syncing: Fatal exception
> >
> > Fixes: c64a9a7c05be ("drm/i915: Update memory bandwidth formulae")
> > Signed-off-by: =C5=81ukasz Bartosik <lb@semihalf.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_bw.c | 16 +++++++++-------
> >  1 file changed, 9 insertions(+), 7 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/=
i915/display/intel_bw.c
> > index 2da4aacc956b..bd0ed68b7faa 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bw.c
> > +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> > @@ -404,15 +404,17 @@ static int tgl_get_bw_info(struct drm_i915_privat=
e *dev_priv, const struct intel
> >               int clpchgroup;
> >               int j;
> >
> > -             if (i < num_groups - 1)
> > -                     bi_next =3D &dev_priv->max_bw[i + 1];
> > -
> >               clpchgroup =3D (sa->deburst * qi.deinterleave / num_chann=
els) << i;
> >
> > -             if (i < num_groups - 1 && clpchgroup < clperchgroup)
> > -                     bi_next->num_planes =3D (ipqdepth - clpchgroup) /=
 clpchgroup + 1;
> > -             else
> > -                     bi_next->num_planes =3D 0;
> > +             if (i < num_groups - 1) {
> > +                     bi_next =3D &dev_priv->max_bw[i + 1];
> > +
> > +                     if (clpchgroup < clperchgroup)
> > +                             bi_next->num_planes =3D (ipqdepth - clpch=
group) /
> > +                                                    clpchgroup + 1;
> > +                     else
> > +                             bi_next->num_planes =3D 0;
> > +             }
> >
> >               bi->num_qgv_points =3D qi.num_points;
> >               bi->num_psf_gv_points =3D qi.num_psf_points;
>
> --
> Jani Nikula, Intel Open Source Graphics Center
