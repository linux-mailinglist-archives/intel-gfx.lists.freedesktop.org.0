Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 060967D5A8E
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 20:31:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52B6810E46E;
	Tue, 24 Oct 2023 18:31:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com
 [209.85.167.180])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE67310E46E
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 18:31:46 +0000 (UTC)
Received: by mail-oi1-f180.google.com with SMTP id
 5614622812f47-3b41132c33aso556950b6e.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 11:31:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698172306; x=1698777106;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=XDoF8Vf3VyZumUoLFjmWZx8r9xJBfxkPhJpQuVboEpw=;
 b=rLLgS0zcPQUT32+bCeO1zyPKmXXkWViMyNir/sCHiK08W4Ru9ZCY+LF5mOX3plTt0E
 OAdAv/PEGq1XJa9ofFt62F4pHkSufpsrakdd4RBZIv9SYqVaKYFv7udE4WZjH0qR5RVI
 1dLJhEvsZCSRF6LZwOhSAmZwxDUXwSvcgXNtKAENKrM+6+Urfws/PrVBiGCTTliZG03y
 wmvKGQ0l4dhJuSluulBL9St6erDnk06Cqae/l9/JYc+/9w+8WRJfwgRVU9Kzvwexp8ia
 U1IMyEXIn8HJ1Dq0tZvAhXH7nvx4FSBPBT+HvqPKmSEDPzUNJLDQMH1fmo7GnLTXf7rz
 S4lg==
X-Gm-Message-State: AOJu0YxeTYAygfD9O9WNQFcGlBBsP0I45aLaen344pSfgOfDILoJPpaH
 3jp+12KB9w+nfyfb37GnMW+PW5m2Te8lsus8UB0=
X-Google-Smtp-Source: AGHT+IH2EFbLWL/v9E/dQTTscrQum2xp8EVbFFAxX4pQ+ccP9+k7qxANEe03vrJQNqg6WZSi/OqmgP88n4f5zhsp9/A=
X-Received: by 2002:a05:6871:3317:b0:1bf:9fa2:bfa3 with SMTP id
 nf23-20020a056871331700b001bf9fa2bfa3mr14098531oac.1.1698172305854; Tue, 24
 Oct 2023 11:31:45 -0700 (PDT)
MIME-Version: 1.0
References: <20231004183455.27797-1-ville.syrjala@linux.intel.com>
 <6d207eef73fb2ad32264921ae7d1a536b6b8da61.camel@intel.com>
 <ZR22I-9YgGW9vADB@intel.com> <ZTf6qwCLR3YEwL9K@intel.com>
In-Reply-To: <ZTf6qwCLR3YEwL9K@intel.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 24 Oct 2023 20:31:34 +0200
Message-ID: <CAJZ5v0jzqZBHqh8dxChwJ65wT-pU3+9HxVi5f7DAcOTFpYTb9Q@mail.gmail.com>
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] powercap: intel_rapl: Don't warn about BIOS
 locked limits during resume
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
Cc: "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Wysocki,
 Rafael J" <rafael.j.wysocki@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Pandruvada,
 Srinivas" <srinivas.pandruvada@intel.com>, "Zhang, Rui" <rui.zhang@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Oct 24, 2023 at 7:11=E2=80=AFPM Ville Syrj=C3=A4l=C3=A4
<ville.syrjala@linux.intel.com> wrote:
>
> On Wed, Oct 04, 2023 at 09:59:47PM +0300, Ville Syrj=C3=A4l=C3=A4 wrote:
> > On Wed, Oct 04, 2023 at 06:45:22PM +0000, Pandruvada, Srinivas wrote:
> > > On Wed, 2023-10-04 at 21:34 +0300, Ville Syrjala wrote:
> > > > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> > > >
> > > > Restore enough of the original behaviour to stop spamming
> > > > dmesg with warnings about BIOS locked limits when trying
> > > > to restore them during resume.
> > > >
> > > > This still doesn't 100% match the original behaviour
> > > > as we no longer attempt to blindly restore the BIOS locked
> > > > limits. No idea if that makes any difference in practice.
> > > >
> > > I lost the context here. Why can't we simply change pr_warn to pr_deb=
ug
> > > here?
> >
> > I presume someone wanted to make it pr_warn() for a reason.
> > I don't mind either way.
>
> Ping. Can someone make a decision on how this should get fixed
> so we get this moving forward?

I thought we were going to replace the pr_warn() with pr_debug().

> > > > Cc: Zhang Rui <rui.zhang@intel.com>
> > > > Cc: Wang Wendy <wendy.wang@intel.com>
> > > > Cc: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> > > > Cc: Srinivas Pandruvada <srinivas.pandruvada@intel.com>
> > > > Fixes: 9050a9cd5e4c ("powercap: intel_rapl: Cleanup Power Limits
> > > > support")
> > > > Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.c=
om>
> > > > ---
> > > >  drivers/powercap/intel_rapl_common.c | 28 ++++++++++++++++++++----=
--
> > > > --
> > > >  1 file changed, 20 insertions(+), 8 deletions(-)
> > > >
> > > > diff --git a/drivers/powercap/intel_rapl_common.c
> > > > b/drivers/powercap/intel_rapl_common.c
> > > > index 40a2cc649c79..9a6a40c83f82 100644
> > > > --- a/drivers/powercap/intel_rapl_common.c
> > > > +++ b/drivers/powercap/intel_rapl_common.c
> > > > @@ -882,22 +882,34 @@ static int rapl_read_pl_data(struct rapl_doma=
in
> > > > *rd, int pl,
> > > >         return rapl_read_data_raw(rd, prim, xlate, data);
> > > >  }
> > > >
> > > > -static int rapl_write_pl_data(struct rapl_domain *rd, int pl,
> > > > -                              enum pl_prims pl_prim,
> > > > -                              unsigned long long value)
> > > > +static int rapl_write_pl_data_nowarn(struct rapl_domain *rd, int p=
l,
> > > > +                                    enum pl_prims pl_prim,
> > > > +                                    unsigned long long value)
> > > >  {
> > > >         enum rapl_primitives prim =3D get_pl_prim(rd, pl, pl_prim);
> > > >
> > > >         if (!is_pl_valid(rd, pl))
> > > >                 return -EINVAL;
> > > >
> > > > -       if (rd->rpl[pl].locked) {
> > > > -               pr_warn("%s:%s:%s locked by BIOS\n", rd->rp->name,
> > > > rd->name, pl_names[pl]);
> > > > +       if (rd->rpl[pl].locked)
> > > >                 return -EACCES;
> > > > -       }
> > > >
> > > >         return rapl_write_data_raw(rd, prim, value);
> > > >  }
> > > > +
> > > > +static int rapl_write_pl_data(struct rapl_domain *rd, int pl,
> > > > +                             enum pl_prims pl_prim,
> > > > +                             unsigned long long value)
> > > > +{
> > > > +       int ret;
> > > > +
> > > > +       ret =3D rapl_write_pl_data_nowarn(rd, pl, pl_prim, value);
> > > > +       if (ret =3D=3D -EACCES)
> > > > +               pr_warn("%s:%s:%s locked by BIOS\n", rd->rp->name,
> > > > rd->name, pl_names[pl]);
> > > > +
> > > > +       return ret;
> > > > +}
> > > > +
> > > >  /*
> > > >   * Raw RAPL data stored in MSRs are in certain scales. We need to
> > > >   * convert them into standard units based on the units reported in
> > > > @@ -1634,8 +1646,8 @@ static void power_limit_state_restore(void)
> > > >                 rd =3D power_zone_to_rapl_domain(rp->power_zone);
> > > >                 for (i =3D POWER_LIMIT1; i < NR_POWER_LIMITS; i++)
> > > >                         if (rd->rpl[i].last_power_limit)
> > > > -                               rapl_write_pl_data(rd, i, PL_LIMIT,
> > > > -                                              rd-
> > > > >rpl[i].last_power_limit);
> > > > +                               rapl_write_pl_data_nowarn(rd, i,
> > > > PL_LIMIT,
> > > > +                                                         rd-
> > > > >rpl[i].last_power_limit);
> > > >         }
> > > >         cpus_read_unlock();
> > > >  }
> > >
> >
> > --
