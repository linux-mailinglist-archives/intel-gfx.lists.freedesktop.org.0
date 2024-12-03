Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 096269E1499
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2024 08:50:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 198BF10E920;
	Tue,  3 Dec 2024 07:50:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32E6C10E5F5;
 Tue,  3 Dec 2024 07:50:12 +0000 (UTC)
Received: from 91-155-254-6.elisa-laajakaista.fi ([91.155.254.6]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1tINfb-00000002bL6-0JDg; Tue, 03 Dec 2024 09:50:08 +0200
Message-ID: <7a84d900879c555dab675605ba925bc91b02510d.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Thomas =?ISO-8859-1?Q?Wei=DFschuh?= <linux@weissschuh.net>, "Borah,
 Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Cc: "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>, "Coelho, Luciano"	
 <luciano.coelho@intel.com>, "Saarinen, Jani" <jani.saarinen@intel.com>, 
 "Nikula, Jani" <jani.nikula@intel.com>, "De Marchi, Lucas"
 <lucas.demarchi@intel.com>,  "intel-gfx@lists.freedesktop.org"	
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"	
 <intel-xe@lists.freedesktop.org>, "linux-pm@vger.kernel.org"	
 <linux-pm@vger.kernel.org>, Sebastian Reichel
 <sebastian.reichel@collabora.com>
Date: Tue, 03 Dec 2024 09:50:05 +0200
In-Reply-To: <5e405ad4-34d6-4507-978f-3d81d4af2455@t-8ch.de>
References: <SJ1PR11MB6129CCD82CD78D8EE6E27EF4B9362@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <SJ1PR11MB612965ACA3E84745346F0400B9362@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <5e405ad4-34d6-4507-978f-3d81d4af2455@t-8ch.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.1-1 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1-pre1 (2023-11-21) on
 farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
 version=4.0.1-pre1
Subject: Re: Regression on linux-next (next-20241120) and drm-tip
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

Hi,

On Tue, 2024-12-03 at 07:50 +0100, Thomas Wei=C3=9Fschuh wrote:
> (+Cc Sebastian)
>=20
> Hi Chaitanya,
>=20
> On 2024-12-03 05:07:47+0000, Borah, Chaitanya Kumar wrote:
> > Hope you are doing well. I am Chaitanya from the linux graphics team in=
 Intel.
> >=20
> > This mail is regarding a regression we are seeing in our CI runs[1] on =
linux-next repository.
>=20
> Thanks for the report.
>=20
> > Since the version next-20241120 [2], we are seeing the following regres=
sion
> >=20
> > ```````````````````````````````````````````````````````````````````````=
``````````
> > <4>[=C2=A0=C2=A0 19.990743] Oops: general protection fault, probably fo=
r non-canonical address 0xb11675ef8d1ccbce: 0000 [#1] PREEMPT SMP NOPTI
> > <4>[=C2=A0=C2=A0 19.990760] CPU: 21 UID: 110 PID: 867 Comm: prometheus-=
node Not tainted 6.12.0-next-20241120-next-20241120-gac24e26aa08f+ #1
> > <4>[=C2=A0=C2=A0 19.990771] Hardware name: Intel Corporation Arrow Lake=
 Client Platform/MTL-S UDIMM 2DPC EVCRB, BIOS MTLSFWI1.R00.4400.D85.2410100=
007 10/10/2024
> > <4>[=C2=A0=C2=A0 19.990782] RIP: 0010:power_supply_get_property+0x3e/0x=
e0
> > ```````````````````````````````````````````````````````````````````````=
``````````
> > Details log can be found in [3].=20
> >=20
> > After bisecting the tree, the following patch [4] seems to be the first=
 "bad"
> > commit
> >=20
> > ```````````````````````````````````````````````````````````````````````=
``````````````````````````````````
> > Commit 49000fee9e639f62ba1f965ed2ae4c5ad18d19e2
> > Author: =C2=A0 =C2=A0 Thomas Wei=C3=9Fschuh <mailto:linux@weissschuh.ne=
t>
> > AuthorDate: Sat Oct 5 12:05:03 2024 +0200
> > Commit: =C2=A0 =C2=A0 Sebastian Reichel <mailto:sebastian.reichel@colla=
bora.com>
> > CommitDate: Tue Oct 15 22:22:20 2024 +0200
> > =C2=A0 =C2=A0 power: supply: core: add wakeup source inhibit by power_s=
upply_config=C2=A0 =C2=A0=C2=A0
> > ```````````````````````````````````````````````````````````````````````=
``````````````````````````````````
> >=20
> > This is now seen in our drm-tip runs as well. [5]
> >=20
> > Could you please check why the patch causes this regression and provide=
 a fix if necessary?
>=20
> I don't see how this patch can lead to this error.
> Could you doublecheck the bisect?

FWIW I also bisected this and came to the same conclusion, this is the
first bad commit.  My guess is that some component is not yet setting
things up properly for the new feature.

This is very easily reproducible in our system, with vanilla 6.13-rc1,
so if there's anything you want to try, let us know.

--
Cheers,
Luca.
