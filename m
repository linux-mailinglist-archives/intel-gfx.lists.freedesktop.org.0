Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0214E9E1FF8
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2024 15:50:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A542010E0BF;
	Tue,  3 Dec 2024 14:50:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=weissschuh.net header.i=@weissschuh.net header.b="g6agdCey";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from todd.t-8ch.de (todd.t-8ch.de [159.69.126.157])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 567E110E0BF;
 Tue,  3 Dec 2024 14:50:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=weissschuh.net;
 s=mail; t=1733237428;
 bh=GLJShMnF+WJ/9U3BIf/jN0zrGkdazQoeXPuNBDe8wpU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=g6agdCeyTAF+1+1XUss3bdvPdZ2upt+fwHEbnV8LmTjT1eqOATXrbK9dxHj+XkGnn
 +UusIpXF2vchuL03mJHb2/R+EK1nM5l271SKCHbLhLwfpIgroObcr7TXYtbdO9dFZR
 VbFQg7P+4kcOrWLnpZAurDinTiZZcbi0rVkLgKXo=
Date: Tue, 3 Dec 2024 15:50:28 +0100
From: Thomas =?utf-8?Q?Wei=C3=9Fschuh?= <linux@weissschuh.net>
To: "Rafael J. Wysocki" <rafael@kernel.org>
Cc: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>, 
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>, "Coelho,
 Luciano" <luciano.coelho@intel.com>, 
 "Saarinen, Jani" <jani.saarinen@intel.com>, "Nikula,
 Jani" <jani.nikula@intel.com>, 
 "De Marchi, Lucas" <lucas.demarchi@intel.com>, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, 
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: Regression on linux-next (next-20241120) and drm-tip
Message-ID: <2ad31476-3f37-43cb-96cf-379d50d7b799@t-8ch.de>
References: <SJ1PR11MB6129CCD82CD78D8EE6E27EF4B9362@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <SJ1PR11MB612965ACA3E84745346F0400B9362@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <5e405ad4-34d6-4507-978f-3d81d4af2455@t-8ch.de>
 <CAJZ5v0iXKvaxz-hmW2+qwTcSmtPJ23Hv04CMnmT=qPE0ytNwLg@mail.gmail.com>
 <56d574c6-6eab-4388-8cb8-70cd615a8941@t-8ch.de>
 <CAJZ5v0gFwu+6Cm7ORs7+TAc5jzXZRBO1uGcttBTTvK4OqT3Q6g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAJZ5v0gFwu+6Cm7ORs7+TAc5jzXZRBO1uGcttBTTvK4OqT3Q6g@mail.gmail.com>
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

On 2024-12-03 15:33:21+0100, Rafael J. Wysocki wrote:
> On Tue, Dec 3, 2024 at 1:04 PM Thomas Weißschuh <linux@weissschuh.net> wrote:
> >
> > On 2024-12-03 12:54:54+0100, Rafael J. Wysocki wrote:
> > > On Tue, Dec 3, 2024 at 7:51 AM Thomas Weißschuh <linux@weissschuh.net> wrote:
> > > >
> > > > (+Cc Sebastian)
> > > >
> > > > Hi Chaitanya,
> > > >
> > > > On 2024-12-03 05:07:47+0000, Borah, Chaitanya Kumar wrote:
> > > > > Hope you are doing well. I am Chaitanya from the linux graphics team in Intel.
> > > > >
> > > > > This mail is regarding a regression we are seeing in our CI runs[1] on linux-next repository.
> > > >
> > > > Thanks for the report.
> > > >
> > > > > Since the version next-20241120 [2], we are seeing the following regression
> > > > >
> > > > > `````````````````````````````````````````````````````````````````````````````````
> > > > > <4>[   19.990743] Oops: general protection fault, probably for non-canonical address 0xb11675ef8d1ccbce: 0000 [#1] PREEMPT SMP NOPTI
> > > > > <4>[   19.990760] CPU: 21 UID: 110 PID: 867 Comm: prometheus-node Not tainted 6.12.0-next-20241120-next-20241120-gac24e26aa08f+ #1
> > > > > <4>[   19.990771] Hardware name: Intel Corporation Arrow Lake Client Platform/MTL-S UDIMM 2DPC EVCRB, BIOS MTLSFWI1.R00.4400.D85.2410100007 10/10/2024
> > > > > <4>[   19.990782] RIP: 0010:power_supply_get_property+0x3e/0xe0
> > > > > `````````````````````````````````````````````````````````````````````````````````
> > > > > Details log can be found in [3].
> > > > >
> > > > > After bisecting the tree, the following patch [4] seems to be the first "bad"
> > > > > commit
> > > > >
> > > > > `````````````````````````````````````````````````````````````````````````````````````````````````````````
> > > > > Commit 49000fee9e639f62ba1f965ed2ae4c5ad18d19e2
> > > > > Author:     Thomas Weißschuh <mailto:linux@weissschuh.net>
> > > > > AuthorDate: Sat Oct 5 12:05:03 2024 +0200
> > > > > Commit:     Sebastian Reichel <mailto:sebastian.reichel@collabora.com>
> > > > > CommitDate: Tue Oct 15 22:22:20 2024 +0200
> > > > >     power: supply: core: add wakeup source inhibit by power_supply_config
> > > > > `````````````````````````````````````````````````````````````````````````````````````````````````````````
> > > > >
> > > > > This is now seen in our drm-tip runs as well. [5]
> > > > >
> > > > > Could you please check why the patch causes this regression and provide a fix if necessary?
> > > >
> > > > I don't see how this patch can lead to this error.
> > >
> > > It looks like the cfg->no_wakeup_source access reaches beyond the
> > > struct boundary for some reason.
> >
> > But the access to this field is only done in __power_supply_register().
> > The error reports however don't show this function at all,
> > they come from power_supply_uevent() and power_supply_get_property() by
> > which time the call to __power_supply_register() is long over.
> >
> > FWIW there is an uninitialized 'struct power_supply_config' in
> > drivers/hid/hid-corsair-void.c. But I highly doubt the test machines are
> > using that. (I'll send a patch later for it)
> 
> So the only way I can think about in which the commit in question may
> lead to the reported issues is that changing the size of struct
> power_supply_config or its alignment makes an unexpected functional
> difference somewhere.

Indeed. I'd really like to see this issue reproduced with KASAN.

> AFAICS, this commit cannot be reverted by itself, so which commits on
> top of it need to be reverted in order to revert it cleanly?

All the other patches from this series:
https://lore.kernel.org/lkml/20241005-power-supply-no-wakeup-source-v1-0-1d62bf9bcb1d@weissschuh.net/

Could you point me to the full boot log in the drm-tip CI?
