Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05AA79E1B6D
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2024 12:55:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE5DE10E342;
	Tue,  3 Dec 2024 11:55:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="swIpzDOq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3768710E31D;
 Tue,  3 Dec 2024 11:55:08 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id AF47BA41462;
 Tue,  3 Dec 2024 11:53:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A5D92C4CEDD;
 Tue,  3 Dec 2024 11:55:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1733226906;
 bh=N/o9QrpTvLGERh33N1iKh6DaRqNYdNgXwjWQfAK0g9k=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=swIpzDOqw+Ean7bXywtFyc96sxzlE+L9v2fFpXgTLoFrh4L8ISWn8Xl6P69kGerS1
 p57OgE5hQwnvXODczvo39EhrCMS07BNHWB4UvrGANNhRkddda+3Jc68mNkjelb/YtJ
 2FQ3SfAmbEz2pVB8OcB/WM0IRxQMpC9xyNP+iUY1fx7I0UxGwhKB6DKVcfgyLSfcPF
 gDzkIEZg8kC3k79Jh1uwO22VVPJ+v17v66O1yf3muzjkyW3UcbiGPj6KWMdUthzliw
 n0IM6+qkCzYDX6sPgZbF0siM7zWo5a3SpLQdr7iSTYtulf0iJa4Jqqfvkh2EDGRdqE
 MnFO/UPALfhMQ==
Received: by mail-oo1-f43.google.com with SMTP id
 006d021491bc7-5f1cec20a77so1752371eaf.1; 
 Tue, 03 Dec 2024 03:55:06 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCXjWCuLuM+n9LOnK6fpmrVpQfMMBj5bwMqU7q41GiTX9U+3uVKORSsKiqtiCM02+TQFRE17FUndwf4=@lists.freedesktop.org,
 AJvYcCXsKZpEByQg2ytOIbbtbxeSJP/9Jm5fLWrWEh/LQFZZcbGjNpB230Z8gDX3n2ydI81gwdUrYrnL7pU=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yze0ryZL2qY/XqhNd9wQCUgB3bJBbPpwdXtbEmvt/UHFudSM4cV
 PkpYEo10kYOK+mz5WyzagRLRO/0C5WtEZJ2OUhFwHf9Qa1W+A4PDS9sXTzpCjMI7TfoH09JONsl
 wrfPXmzE4Uh3yesfNFG4Ibrl0T4g=
X-Google-Smtp-Source: AGHT+IGwR11wmC26MnR8qrUzuGc81R3ZFhKQnYAGjMelBFIRYZk3yBB7hTR2KVin5ABaPEhvg7rYJaJEzZPTOUD7+lk=
X-Received: by 2002:a05:6870:46ac:b0:29e:6b6a:d6f4 with SMTP id
 586e51a60fabf-29e8890fbccmr1953346fac.37.1733226905887; Tue, 03 Dec 2024
 03:55:05 -0800 (PST)
MIME-Version: 1.0
References: <SJ1PR11MB6129CCD82CD78D8EE6E27EF4B9362@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <SJ1PR11MB612965ACA3E84745346F0400B9362@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <5e405ad4-34d6-4507-978f-3d81d4af2455@t-8ch.de>
In-Reply-To: <5e405ad4-34d6-4507-978f-3d81d4af2455@t-8ch.de>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 3 Dec 2024 12:54:54 +0100
X-Gmail-Original-Message-ID: <CAJZ5v0iXKvaxz-hmW2+qwTcSmtPJ23Hv04CMnmT=qPE0ytNwLg@mail.gmail.com>
Message-ID: <CAJZ5v0iXKvaxz-hmW2+qwTcSmtPJ23Hv04CMnmT=qPE0ytNwLg@mail.gmail.com>
Subject: Re: Regression on linux-next (next-20241120) and drm-tip
To: =?UTF-8?Q?Thomas_Wei=C3=9Fschuh?= <linux@weissschuh.net>
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

On Tue, Dec 3, 2024 at 7:51=E2=80=AFAM Thomas Wei=C3=9Fschuh <linux@weisssc=
huh.net> wrote:
>
> (+Cc Sebastian)
>
> Hi Chaitanya,
>
> On 2024-12-03 05:07:47+0000, Borah, Chaitanya Kumar wrote:
> > Hope you are doing well. I am Chaitanya from the linux graphics team in=
 Intel.
> >
> > This mail is regarding a regression we are seeing in our CI runs[1] on =
linux-next repository.
>
> Thanks for the report.
>
> > Since the version next-20241120 [2], we are seeing the following regres=
sion
> >
> > ```````````````````````````````````````````````````````````````````````=
``````````
> > <4>[   19.990743] Oops: general protection fault, probably for non-cano=
nical address 0xb11675ef8d1ccbce: 0000 [#1] PREEMPT SMP NOPTI
> > <4>[   19.990760] CPU: 21 UID: 110 PID: 867 Comm: prometheus-node Not t=
ainted 6.12.0-next-20241120-next-20241120-gac24e26aa08f+ #1
> > <4>[   19.990771] Hardware name: Intel Corporation Arrow Lake Client Pl=
atform/MTL-S UDIMM 2DPC EVCRB, BIOS MTLSFWI1.R00.4400.D85.2410100007 10/10/=
2024
> > <4>[   19.990782] RIP: 0010:power_supply_get_property+0x3e/0xe0
> > ```````````````````````````````````````````````````````````````````````=
``````````
> > Details log can be found in [3].
> >
> > After bisecting the tree, the following patch [4] seems to be the first=
 "bad"
> > commit
> >
> > ```````````````````````````````````````````````````````````````````````=
``````````````````````````````````
> > Commit 49000fee9e639f62ba1f965ed2ae4c5ad18d19e2
> > Author:     Thomas Wei=C3=9Fschuh <mailto:linux@weissschuh.net>
> > AuthorDate: Sat Oct 5 12:05:03 2024 +0200
> > Commit:     Sebastian Reichel <mailto:sebastian.reichel@collabora.com>
> > CommitDate: Tue Oct 15 22:22:20 2024 +0200
> >     power: supply: core: add wakeup source inhibit by power_supply_conf=
ig
> > ```````````````````````````````````````````````````````````````````````=
``````````````````````````````````
> >
> > This is now seen in our drm-tip runs as well. [5]
> >
> > Could you please check why the patch causes this regression and provide=
 a fix if necessary?
>
> I don't see how this patch can lead to this error.

It looks like the cfg->no_wakeup_source access reaches beyond the
struct boundary for some reason.



> Could you doublecheck the bisect?
>
> Note: Having line numbers in the trace would be very useful.
>
> > Thank you.
> >
> > Regards
> >
> > Chaitanya
>
> Thanks,
> Thomas
>
>
> >
> > P.S. We could not revert the patch cleanly and therefore we are yet to =
verify the bisect but we are currently working on it.
> >
> >
> > [1] https://intel-gfx-ci.01.org/tree/linux-next/combined-alt.html?
> > [2]https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/=
commit/?h=3Dnext-20241120
> > [3] https://intel-gfx-ci.01.org/tree/linux-next/next-20241120/bat-arls-=
6/boot0.txt
> > [4] https://cgit.freedesktop.org/drm-tip/commit/?id=3D49000fee9e639f62b=
a1f965ed2ae4c5ad18d19e2
> > [5] https://intel-gfx-ci.01.org/tree/drm-tip/index.html?
>
