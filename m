Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D5409E1F41
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2024 15:33:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2038A10EA36;
	Tue,  3 Dec 2024 14:33:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="tgycmLxe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37E6610EA34;
 Tue,  3 Dec 2024 14:33:35 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id DD51CA4163E;
 Tue,  3 Dec 2024 14:31:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D133EC4CED9;
 Tue,  3 Dec 2024 14:33:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1733236413;
 bh=vkfocJidFOsWJ8j4r+2upwNbeaCg2X4r0idWMhyeuzk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=tgycmLxenk4BVErw7oDmDKzYWEi/lJ7j2qV1fODOZzNJ+DBrJOFj9wKp9h1vZucQL
 mVX3bd/uYvyRkKFAANZREdfo6hmau6A8AwmNafB2ws4feDnzmEh28ulv32qRszIf2W
 tJ/k48U3z0Pj4gfjskzqpJu9sXXf9bqa2FC9QtaeOH0XGRmAEh4OPB6zlo8h8LRlX+
 mDqdDnRHEgm4lAEyxdIufrrH+Rhlz9jBeXl0ELbPsMjdKq9VVMSKeTuiBdy7Hjh44W
 dNF01Zj30SIjSM0p1en7HNjWN40zgFz2WQWC5HicRJXNjMz1byjRgUjuDpQSVQ7tjc
 zRhWOgpTqN+Xg==
Received: by mail-oa1-f54.google.com with SMTP id
 586e51a60fabf-29e3721ded9so1960311fac.0; 
 Tue, 03 Dec 2024 06:33:33 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCUJ6vtlSEyDfUGVbT22M12l9yHl70AcY/pjQzx1s/+a5A5v+/iQEYMybdcIuFiopNzcY5Y4HV2R0h4=@lists.freedesktop.org,
 AJvYcCUszdQvbETzN9m9vXFN27qt7jJwu7BOedskZb0Pkwx1utHhRDdrRjqn1uSNCo6A9oZ+5ekJ22efuBs=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yz+JpND5UDIAL8wvhP5WslIWCOBv5Skie3vvHYUrMdMtG/KJLG/
 7V6ungKGbg+eydcASsCT8c7O6JSeSNRcvHLIU7SpFidqPdodEqC6Y6ed+glJmqme+pm6K2TFK4C
 CmXPdR3EdkErh1szSNnURNDuLRR0=
X-Google-Smtp-Source: AGHT+IHpr7QHC7AIP/SBz1FrBthPRXkSIECwIwn6uZOMArYMtH1Q7RTuZ78swhIHEAEOKi+pvFatzpdTEtl4v9YyFFo=
X-Received: by 2002:a05:6871:606:b0:296:ee2e:a23c with SMTP id
 586e51a60fabf-29e88560c9bmr2902777fac.5.1733236413021; Tue, 03 Dec 2024
 06:33:33 -0800 (PST)
MIME-Version: 1.0
References: <SJ1PR11MB6129CCD82CD78D8EE6E27EF4B9362@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <SJ1PR11MB612965ACA3E84745346F0400B9362@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <5e405ad4-34d6-4507-978f-3d81d4af2455@t-8ch.de>
 <CAJZ5v0iXKvaxz-hmW2+qwTcSmtPJ23Hv04CMnmT=qPE0ytNwLg@mail.gmail.com>
 <56d574c6-6eab-4388-8cb8-70cd615a8941@t-8ch.de>
In-Reply-To: <56d574c6-6eab-4388-8cb8-70cd615a8941@t-8ch.de>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 3 Dec 2024 15:33:21 +0100
X-Gmail-Original-Message-ID: <CAJZ5v0gFwu+6Cm7ORs7+TAc5jzXZRBO1uGcttBTTvK4OqT3Q6g@mail.gmail.com>
Message-ID: <CAJZ5v0gFwu+6Cm7ORs7+TAc5jzXZRBO1uGcttBTTvK4OqT3Q6g@mail.gmail.com>
Subject: Re: Regression on linux-next (next-20241120) and drm-tip
To: =?UTF-8?Q?Thomas_Wei=C3=9Fschuh?= <linux@weissschuh.net>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, 
 "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>, 
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>, "Coelho,
 Luciano" <luciano.coelho@intel.com>, 
 "Saarinen, Jani" <jani.saarinen@intel.com>, "Nikula,
 Jani" <jani.nikula@intel.com>, 
 "De Marchi, Lucas" <lucas.demarchi@intel.com>, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, 
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, 
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
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

On Tue, Dec 3, 2024 at 1:04=E2=80=AFPM Thomas Wei=C3=9Fschuh <linux@weisssc=
huh.net> wrote:
>
> On 2024-12-03 12:54:54+0100, Rafael J. Wysocki wrote:
> > On Tue, Dec 3, 2024 at 7:51=E2=80=AFAM Thomas Wei=C3=9Fschuh <linux@wei=
ssschuh.net> wrote:
> > >
> > > (+Cc Sebastian)
> > >
> > > Hi Chaitanya,
> > >
> > > On 2024-12-03 05:07:47+0000, Borah, Chaitanya Kumar wrote:
> > > > Hope you are doing well. I am Chaitanya from the linux graphics tea=
m in Intel.
> > > >
> > > > This mail is regarding a regression we are seeing in our CI runs[1]=
 on linux-next repository.
> > >
> > > Thanks for the report.
> > >
> > > > Since the version next-20241120 [2], we are seeing the following re=
gression
> > > >
> > > > ```````````````````````````````````````````````````````````````````=
``````````````
> > > > <4>[   19.990743] Oops: general protection fault, probably for non-=
canonical address 0xb11675ef8d1ccbce: 0000 [#1] PREEMPT SMP NOPTI
> > > > <4>[   19.990760] CPU: 21 UID: 110 PID: 867 Comm: prometheus-node N=
ot tainted 6.12.0-next-20241120-next-20241120-gac24e26aa08f+ #1
> > > > <4>[   19.990771] Hardware name: Intel Corporation Arrow Lake Clien=
t Platform/MTL-S UDIMM 2DPC EVCRB, BIOS MTLSFWI1.R00.4400.D85.2410100007 10=
/10/2024
> > > > <4>[   19.990782] RIP: 0010:power_supply_get_property+0x3e/0xe0
> > > > ```````````````````````````````````````````````````````````````````=
``````````````
> > > > Details log can be found in [3].
> > > >
> > > > After bisecting the tree, the following patch [4] seems to be the f=
irst "bad"
> > > > commit
> > > >
> > > > ```````````````````````````````````````````````````````````````````=
``````````````````````````````````````
> > > > Commit 49000fee9e639f62ba1f965ed2ae4c5ad18d19e2
> > > > Author:     Thomas Wei=C3=9Fschuh <mailto:linux@weissschuh.net>
> > > > AuthorDate: Sat Oct 5 12:05:03 2024 +0200
> > > > Commit:     Sebastian Reichel <mailto:sebastian.reichel@collabora.c=
om>
> > > > CommitDate: Tue Oct 15 22:22:20 2024 +0200
> > > >     power: supply: core: add wakeup source inhibit by power_supply_=
config
> > > > ```````````````````````````````````````````````````````````````````=
``````````````````````````````````````
> > > >
> > > > This is now seen in our drm-tip runs as well. [5]
> > > >
> > > > Could you please check why the patch causes this regression and pro=
vide a fix if necessary?
> > >
> > > I don't see how this patch can lead to this error.
> >
> > It looks like the cfg->no_wakeup_source access reaches beyond the
> > struct boundary for some reason.
>
> But the access to this field is only done in __power_supply_register().
> The error reports however don't show this function at all,
> they come from power_supply_uevent() and power_supply_get_property() by
> which time the call to __power_supply_register() is long over.
>
> FWIW there is an uninitialized 'struct power_supply_config' in
> drivers/hid/hid-corsair-void.c. But I highly doubt the test machines are
> using that. (I'll send a patch later for it)

So the only way I can think about in which the commit in question may
lead to the reported issues is that changing the size of struct
power_supply_config or its alignment makes an unexpected functional
difference somewhere.

AFAICS, this commit cannot be reverted by itself, so which commits on
top of it need to be reverted in order to revert it cleanly?
