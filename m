Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A484D47AA
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Mar 2022 14:05:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3296F10E6AD;
	Thu, 10 Mar 2022 13:05:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-io1-xd2b.google.com (mail-io1-xd2b.google.com
 [IPv6:2607:f8b0:4864:20::d2b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4720E10E2CA
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Mar 2022 15:38:36 +0000 (UTC)
Received: by mail-io1-xd2b.google.com with SMTP id r11so16728907ioh.10
 for <intel-gfx@lists.freedesktop.org>; Tue, 08 Mar 2022 07:38:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=semihalf-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=f2MIGqGROSS4B6IS3kLK8RP83cttLIWAYj96r+/F2IU=;
 b=0YYeU2yloh3RdGJQfw1BsVmjrwZV4PrlMfAsfMyusTV2vGibDkVa/OHbbkKknsUJGx
 M4pQ8RCRDA/kEpU/5K7bvR10E+DP80JaIRRjh49xgMb8SAFDXFrAdhxAn/4InvJpSduG
 gi7SQYT3a0C477dzHVdxMo8jF0FlpXQ+ntf+XZJIjcgbE+gOtv5xuebklKzxsF9pfF0D
 2HRDmUq2KF3M3xsTCrmoZ7ub96Pmi6+ZS2uEmMOt8BEshv+JuHH+sbnrQBwUDy5TfkiC
 f6DBt+qtoaWab7TcSSmzXUembT5treE9hrO6I9yfZoBDq4xjnDrSyFPsJDt4hawnlQ3G
 Roxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=f2MIGqGROSS4B6IS3kLK8RP83cttLIWAYj96r+/F2IU=;
 b=jwE6Su2BXBmoUDL61i6uxSaCTfhpQoAEL4uqRhzVteHfMbOrlz/Q1+DgdtKi6vMSsb
 b0Koz1Sp3alxjN/nc9DAPW8H3F0P6C6O3f2GUEv0apEzXPzsIDiNfQvmN8FuD1IoWNoL
 iXDPp2RlaTwfhQRSi5CgMilFQo7dCw7K0hqcnamLK2T7mH7cHVaTR33hjPXeFKmx25RR
 a/KlApkphSsv6YB8J7YGBam/1ukfwc0kq9FG2YV2izMFOMWSEQMvjFtbIqH6+je2ohKg
 XW631B4rHuWcZ9gehKlMCm7CtWksK4ob4HBSJCZw1Ef4Rd3oHaOIpcsrGhfWHWRcZNOX
 q4aw==
X-Gm-Message-State: AOAM5319KNF1FkfLWU1cmeZFA2NVWVVCFqjZfg93MXppn6MW2c/uwpja
 xGuZfK11PXxXOUDnkCtTDJC0EY5jQn3dRhsEU/v9
X-Google-Smtp-Source: ABdhPJzuM+Bjzwd21ok1LtEa+n99hz6tQGcnjt7TIG3HcEhHBo61e+tg6gDZHgqZ7NriASLJNhEfoWF47YkoUbB8pJ8=
X-Received: by 2002:a05:6602:1355:b0:63d:a9ab:7e30 with SMTP id
 i21-20020a056602135500b0063da9ab7e30mr15188054iov.119.1646753915475; Tue, 08
 Mar 2022 07:38:35 -0800 (PST)
MIME-Version: 1.0
References: <20220201153354.11971-1-lukasz.bartosik@semihalf.com>
 <87r18mtwn7.fsf@intel.com>
 <CAK8ByeKSWfeyUB73rVXQr2VKMFxNYZk9KxwYjsws3URFGfk50A@mail.gmail.com>
 <f43df8568a9a49cc9ee21f917ab4cb4a@intel.com> <YgOYBfQJF7hIzEPE@intel.com>
In-Reply-To: <YgOYBfQJF7hIzEPE@intel.com>
From: =?UTF-8?Q?=C5=81ukasz_Bartosik?= <lb@semihalf.com>
Date: Tue, 8 Mar 2022 16:38:24 +0100
Message-ID: <CAK8ByeKt30AkaRwmXwdUxzY-PScFO+mV2B1iZ-eHAc8-GDp0Hw@mail.gmail.com>
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, 
 "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Thu, 10 Mar 2022 13:05:46 +0000
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
Cc: "upstream@semihalf.com" <upstream@semihalf.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

>
> On Wed, Feb 09, 2022 at 02:02:05AM +0000, Sripada, Radhakrishna wrote:
> >
> >
> > > -----Original Message-----
> > > From: =C5=81ukasz Bartosik <lb@semihalf.com>
> > > Sent: Tuesday, February 8, 2022 8:20 AM
> > > To: Jani Nikula <jani.nikula@linux.intel.com>; Joonas Lahtinen
> > > <joonas.lahtinen@linux.intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.=
com>;
> > > Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> > > Cc: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>; intel-
> > > gfx@lists.freedesktop.org; upstream@semihalf.com; Ville Syrj=C3=A4l=
=C3=A4
> > > <ville.syrjala@linux.intel.com>; Roper, Matthew D
> > > <matthew.d.roper@intel.com>; Srivatsa, Anusha <anusha.srivatsa@intel.=
com>
> > > Subject: Re: [PATCH v1] drm/i915: fix null pointer dereference
> > >
> > > Have you had a chance to review the patch ? The crash is still there
> > > on v5.17-rc3.
> > >
> > > Thanks,
> > > Lukasz
> > >
> > > wt., 1 lut 2022 o 16:49 Jani Nikula <jani.nikula@linux.intel.com> nap=
isa=C5=82(a):
> > > >
> > > >
> > > > Thanks for the patch, adding some Cc's from the commit that regress=
ed.
> > > >
> > > > BR,
> > > > Jani.
> > > >
> > > > On Tue, 01 Feb 2022, Lukasz Bartosik <lb@semihalf.com> wrote:
> > > > > From: =C5=81ukasz Bartosik <lb@semihalf.com>
> > > > >
> > > > > Asus chromebook CX550 crashes during boot on v5.17-rc1 kernel.
> > > > > The root cause is null pointer defeference of bi_next
> > > > > in tgl_get_bw_info() in drivers/gpu/drm/i915/display/intel_bw.c.
> > > > >
> > > > > BUG: kernel NULL pointer dereference, address: 000000000000002e
> > > > > PGD 0 P4D 0
> > > > > Oops: 0002 [#1] PREEMPT SMP NOPTI
> > > > > CPU: 0 PID: 1 Comm: swapper/0 Tainted: G     U            5.17.0-=
rc1
> > > > > Hardware name: Google Delbin/Delbin, BIOS Google_Delbin.13672.156=
.3
> > > 05/14/2021
> > > > > RIP: 0010:tgl_get_bw_info+0x2de/0x510
> > > > > ...
> > > > > [    2.554467] Call Trace:
> > > > > [    2.554467]  <TASK>
> > > > > [    2.554467]  intel_bw_init_hw+0x14a/0x434
> > > > > [    2.554467]  ? _printk+0x59/0x73
> > > > > [    2.554467]  ? _dev_err+0x77/0x91
> > > > > [    2.554467]  i915_driver_hw_probe+0x329/0x33e
> > > > > [    2.554467]  i915_driver_probe+0x4c8/0x638
> > > > > [    2.554467]  i915_pci_probe+0xf8/0x14e
> > > > > [    2.554467]  ? _raw_spin_unlock_irqrestore+0x12/0x2c
> > > > > [    2.554467]  pci_device_probe+0xaa/0x142
> > > > > [    2.554467]  really_probe+0x13f/0x2f4
> > > > > [    2.554467]  __driver_probe_device+0x9e/0xd3
> > > > > [    2.554467]  driver_probe_device+0x24/0x7c
> > > > > [    2.554467]  __driver_attach+0xba/0xcf
> > > > > [    2.554467]  ? driver_attach+0x1f/0x1f
> > > > > [    2.554467]  bus_for_each_dev+0x8c/0xc0
> > > > > [    2.554467]  bus_add_driver+0x11b/0x1f7
> > > > > [    2.554467]  driver_register+0x60/0xea
> > > > > [    2.554467]  ? mipi_dsi_bus_init+0x16/0x16
> > > > > [    2.554467]  i915_init+0x2c/0xb9
> > > > > [    2.554467]  ? mipi_dsi_bus_init+0x16/0x16
> > > > > [    2.554467]  do_one_initcall+0x12e/0x2b3
> > > > > [    2.554467]  do_initcall_level+0xd6/0xf3
> > > > > [    2.554467]  do_initcalls+0x4e/0x79
> > > > > [    2.554467]  kernel_init_freeable+0xed/0x14d
> > > > > [    2.554467]  ? rest_init+0xc1/0xc1
> > > > > [    2.554467]  kernel_init+0x1a/0x120
> > > > > [    2.554467]  ret_from_fork+0x1f/0x30
> > > > > [    2.554467]  </TASK>
> > > > > ...
> > > > > Kernel panic - not syncing: Fatal exception
> > > > >
> > > > > Fixes: c64a9a7c05be ("drm/i915: Update memory bandwidth formulae"=
)
> >
> > LGTM,
> > Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> >
> > > > > Signed-off-by: =C5=81ukasz Bartosik <lb@semihalf.com>
> > > > > ---
> > > > >  drivers/gpu/drm/i915/display/intel_bw.c | 16 +++++++++-------
> > > > >  1 file changed, 9 insertions(+), 7 deletions(-)
> > > > >
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_bw.c
> > > b/drivers/gpu/drm/i915/display/intel_bw.c
> > > > > index 2da4aacc956b..bd0ed68b7faa 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_bw.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> > > > > @@ -404,15 +404,17 @@ static int tgl_get_bw_info(struct
> > > drm_i915_private *dev_priv, const struct intel
> > > > >               int clpchgroup;
> > > > >               int j;
> > > > >
> > > > > -             if (i < num_groups - 1)
> > > > > -                     bi_next =3D &dev_priv->max_bw[i + 1];
> > > > > -
> > > > >               clpchgroup =3D (sa->deburst * qi.deinterleave / num=
_channels) << i;
> > > > >
> > > > > -             if (i < num_groups - 1 && clpchgroup < clperchgroup=
)
> > > > > -                     bi_next->num_planes =3D (ipqdepth - clpchgr=
oup) / clpchgroup + 1;
> > > > > -             else
> > > > > -                     bi_next->num_planes =3D 0;
> > > > > +             if (i < num_groups - 1) {
> > > > > +                     bi_next =3D &dev_priv->max_bw[i + 1];
> > > > > +
> > > > > +                     if (clpchgroup < clperchgroup)
> > > > > +                             bi_next->num_planes =3D (ipqdepth -=
 clpchgroup) /
> > > > > +                                                    clpchgroup +=
 1;
> > > > > +                     else
> > > > > +                             bi_next->num_planes =3D 0;
> > > > > +             }
>
> BTW this code makes me rather suspicious overall. num_planes=3D=3D0 means
> no planes can be enabled at all. Is that even correct? IIRC the icl
> code did not have qgv points that had num_planes=3D=3D0.
>
> Also IIRC I added that 'num_planes =3D ... + 1' to the icl code
> ot make it actually sensible. The icl sample code didn't have
> that +1 and instead it used '>' as opposed to '>=3D' in the
> comparison to the actual number of enabled planes thus
> implying the +1. But now here in the tgl+ code we have the
> +1 for in one branch of the if, but the other branch just has
> a 0 (so no +1).
>
> And it doesn't help that the code is doing this weird [i] + [i+1]
> stuff inside the single loop. Would be a lot more legible if we
> just did two loops I think. Though I see the same awkward construct
> is used in spec sample code as well.
>
> --
> Ville Syrj=C3=A4l=C3=A4
> Intel

The crash still occurs in the v5.17-rc7.

Regards,
Lukasz
