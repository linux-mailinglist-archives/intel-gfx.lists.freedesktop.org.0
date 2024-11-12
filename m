Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 841449C60C9
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2024 19:49:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D302F10E132;
	Tue, 12 Nov 2024 18:49:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="C04m1N82";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2536010E132
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2024 18:49:39 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 8FC29A41FBD
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2024 18:47:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 754E2C4CED6
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2024 18:49:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1731437377;
 bh=z7JRsFYW7tQ+7WpP2jcM/rU5Vh+/Y7+nyM7hGoMWZdk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=C04m1N82urfHHGsE5P2Z5RCyyX9BdaAiT0lf/J5oo27rpOvFv1P4UKj9Fr7V+MQg7
 HJMTf7vrdeeivh19qK1daR4QXEzdjlTE2w2Y6Y/LgDgOe76gseFkD11mX6h6jx6hMF
 jplx8Z/uTH7OulJ81h0B8dqmHy71NnsMQ3X9+DM6G4tKAbZTHqAl99/7EGCJZMJq11
 pC5zV68DIADuErGF938dkaSV+9BKyw9BxRXnTGZRLkq0gcSr8sig2mmRTw6lcuQgUv
 FvwSYRScEGt3YE9pGOi3xo2IWlAXOEPzx65g9AsfpqBge4JrwilhrYHF7WMFnTXU0g
 bYlsovWjdNJBg==
Received: by mail-oa1-f49.google.com with SMTP id
 586e51a60fabf-2958ddf99a7so1956765fac.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2024 10:49:37 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCXiC7Cshl4nmgiNlKcrS0VfZmxWIkbWjx3urCy5/rjLUIIKB8+seOjTk8iOF6r9NKkVQ7fsiAz47OU=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yw4LG9ylvxMfLM8mnWqJLdKNlAiMv2l90k6ARLss9Mc9QsZ0zmD
 a/ez9ZqWUEcgTHylJfRtPOtvPyIhKQENc6eDoUPMvK3gNe2NMNeS0t8WsINM+jnkRAVvWund0ty
 QM0Y7943XK3pd/uN4ystPv/KuPv0=
X-Google-Smtp-Source: AGHT+IFafCq/g6DWRhs/OJAND6AzIx5MGT/f2LUw81/pk2iR8GD5R/rjZ1vfWfWzDIyxmqTIF2r5lbhbgEyoWKGdCek=
X-Received: by 2002:a05:6870:3b15:b0:270:184b:ccd9 with SMTP id
 586e51a60fabf-29560309629mr14733495fac.39.1731437376745; Tue, 12 Nov 2024
 10:49:36 -0800 (PST)
MIME-Version: 1.0
References: <SJ1PR11MB6129EDBF22F8A90FC3A3EDC8B9582@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <CAJZ5v0gpg7sd3Qx25WFSbGxFN6-nptxK+QtkHZMMtXW-dnaozg@mail.gmail.com>
 <SJ1PR11MB6129A1C31D55C9ACE64D49F2B9592@SJ1PR11MB6129.namprd11.prod.outlook.com>
In-Reply-To: <SJ1PR11MB6129A1C31D55C9ACE64D49F2B9592@SJ1PR11MB6129.namprd11.prod.outlook.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 12 Nov 2024 19:49:25 +0100
X-Gmail-Original-Message-ID: <CAJZ5v0irM=4FCnqNLwzb75Dco143M_Tg7MFg+cUJiuXJpo1fDQ@mail.gmail.com>
Message-ID: <CAJZ5v0irM=4FCnqNLwzb75Dco143M_Tg7MFg+cUJiuXJpo1fDQ@mail.gmail.com>
Subject: Re: Regression on linux-next (next-20241106)
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, "Wysocki,
 Rafael J" <rafael.j.wysocki@intel.com>, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, 
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>, "Saarinen,
 Jani" <jani.saarinen@intel.com>, "Nikula, Jani" <jani.nikula@intel.com>, 
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>, 
 "srinivas.pandruvada@linux.intel.com" <srinivas.pandruvada@linux.intel.com>, 
 "ricardo.neri-calderon@linux.intel.com"
 <ricardo.neri-calderon@linux.intel.com>
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

On Tue, Nov 12, 2024 at 6:14=E2=80=AFPM Borah, Chaitanya Kumar
<chaitanya.kumar.borah@intel.com> wrote:
>
>
>
> > -----Original Message-----
> > From: Rafael J. Wysocki <rafael@kernel.org>
> > Sent: Monday, November 11, 2024 6:58 PM
> > To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> > Cc: Wysocki, Rafael J <rafael.j.wysocki@intel.com>; intel-
> > gfx@lists.freedesktop.org; Kurmi, Suresh Kumar
> > <suresh.kumar.kurmi@intel.com>; Saarinen, Jani <jani.saarinen@intel.com=
>;
> > Nikula, Jani <jani.nikula@intel.com>; linux-pm@vger.kernel.org;
> > srinivas.pandruvada@linux.intel.com; ricardo.neri-calderon@linux.intel.=
com
> > Subject: Re: Regression on linux-next (next-20241106)
> >
> > Hi Chaitanya,
> >
> > On Mon, Nov 11, 2024 at 6:41=E2=80=AFAM Borah, Chaitanya Kumar
> > <chaitanya.kumar.borah@intel.com> wrote:
> > >
> > > Hello Rafael,
> > >
> > > Hope you are doing well. I am Chaitanya from the linux graphics team =
in
> > Intel.
> > >
> > > This mail is regarding a regression we are seeing in our CI runs[1] o=
n linux-
> > next repository.
> > >
> > > Since the version next-20241106 [2], we are seeing the following
> > > regression
> > >
> > > `````````````````````````````````````````````````````````````````````=
````````````
> > > <4>[    7.246473] WARNING: possible circular locking dependency detec=
ted
> > > <4>[    7.246476] 6.12.0-rc6-next-20241106-next-20241106-g5b913f5d7d7=
f+
> > #1 Not tainted
> > > <4>[    7.246479] ---------------------------------------------------=
---
> > > <4>[    7.246481] swapper/0/1 is trying to acquire lock:
> > > <4>[    7.246483] ffffffff8264aef0 (cpu_hotplug_lock){++++}-{0:0}, at=
:
> > static_key_enable+0xd/0x20
> > > <4>[    7.246493]
> > >                   but task is already holding lock:
> > > <4>[    7.246495] ffffffff82832068 (hybrid_capacity_lock){+.+.}-{4:4}=
, at:
> > intel_pstate_register_driver+0xd3/0x1c0
> > > `````````````````````````````````````````````````````````````````````=
`
> > > ```````````
> > > Details log can be found in [3].
> >
> > Thanks for the report!
> >
> > > After bisecting the tree, the following patch [4] seems to be the fir=
st "bad"
> > > commit
> > >
> > > `````````````````````````````````````````````````````````````````````=
`
> > > ```````````````````````````````````
> > > commit 92447aa5f6e7fbad9427a3fd1bb9e0679c403206
> > > Author: Rafael J. Wysocki mailto:rafael.j.wysocki@intel.com
> > > Date:   Mon Nov 4 19:53:53 2024 +0100
> > >
> > >     cpufreq: intel_pstate: Update asym capacity for CPUs that were
> > > offline initially
> > > `````````````````````````````````````````````````````````````````````=
`
> > > ```````````````````````````````````
> > >
> > > We also verified that if we revert the patch the issue is not seen.
> > >
> > > Could you please check why the patch causes this regression and provi=
de a
> > fix if necessary?
> > >
> > > [1] https://intel-gfx-ci.01.org/tree/linux-next/combined-alt.html?
> > > [2]
> > > https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/c=
o
> > > mmit/?h=3Dnext-20241106 [3]
> > > https://intel-gfx-ci.01.org/tree/linux-next/next-20241106/bat-arls-1/=
b
> > > oot0.txt [4]
> > > https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/c=
o
> > > mmit/?h=3Dnext-
> > 20241106&id=3D92447aa5f6e7fbad9427a3fd1bb9e0679c403206
> >
> > The problem is that cpus_read_lock() should not be called under
> > hybrid_capacity_lock because the latter is acquired in CPU online/offli=
ne
> > paths and this is exposed by the above commit, but if I'm not mistaken,=
 the
> > issue is there regardless of it.
> >
> > A good news is that is should be addressed by a patch that has been pos=
ted
> > already:
> >
> > https://lore.kernel.org/linux-pm/12554508.O9o76ZdvQC@rjwysocki.net/
> >
> > so please let me know if it makes the splat go away.
> >
> > Even if its changelog says that it has no functional impact, this is no=
t really the
> > case.
> >
> > Thanks!
>
> Thank you Rafael for the patch, we can confirm that it helps.

Thanks for checking and letting me know, much appreciated!
