Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5748C9C3F8E
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 14:28:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE5BA10E4AF;
	Mon, 11 Nov 2024 13:28:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="JaZyU7dG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDE8B10E4AF
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2024 13:28:17 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id B91F9A41636
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2024 13:26:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BDB97C4AF0B
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2024 13:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1731331696;
 bh=QA+UdmVAeLa1VBvB6rchMMzqUMFVoJt4nfDCtXXBIlM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=JaZyU7dGwspmK5ez/G8RKBn1XeIVVdFC5QX8oQnpfq06ztusogipW1kufCofj+W3E
 NdiD9M7IfZRTayw2HYe/qKCYl5q50MtpxECNMwrZ6DrGfOV/L3HvYFaohpwJplk6EM
 VTSjNmOXJVXoM0bTp5VPdZgb47TiO2kEBtFM35XhWn2eRo7YoigBxYcAGT5jeZ8Y6U
 z2/ND5V3WfQQLIZsAj31EwxK/ppHoLPoSVRu8C8MGwYq0la1k0+oYIhOz9UWqdeM/H
 kPmmHFZDJavpb1D3HOTV1MxKYGrtYOeFa8GN4ghaOqTfpgpHU7PmgnPgO7dQVoqDxg
 Uy/3e9kvtxDXg==
Received: by mail-oa1-f47.google.com with SMTP id
 586e51a60fabf-2884910c846so1977896fac.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2024 05:28:16 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCXr/CnJs/8sernUIN8lZNFsy0J0g6+1zg8ZQoyLrcI7cmngJ6d7y96mesl+o5XLgQ54IRSmLz5uayI=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxDeFIYTtLh+Lprf2sG5Ml94eKcu2kpa1G1V2n9hkJsOfqLgSRb
 ll1TbLvfRcYvIfIIvOe/LJ/VCgm+E4oAQZsS0/O6uw1IXEIjep5nZ6IAiF9TB/a6tI/rW+ADjUH
 qbwHb3CwCqznR6owAcO4zN7DK50U=
X-Google-Smtp-Source: AGHT+IGYgR8ourgCdqtWaq9Sms7fV0VS34c6acRTtQ+CE85dZjybhdxjOKmldO/dg1mzLHFs7QlfdsGO+dQDeW5yPEo=
X-Received: by 2002:a05:6871:a987:b0:270:449:291e with SMTP id
 586e51a60fabf-295603213camr8598049fac.36.1731331696069; Mon, 11 Nov 2024
 05:28:16 -0800 (PST)
MIME-Version: 1.0
References: <SJ1PR11MB6129EDBF22F8A90FC3A3EDC8B9582@SJ1PR11MB6129.namprd11.prod.outlook.com>
In-Reply-To: <SJ1PR11MB6129EDBF22F8A90FC3A3EDC8B9582@SJ1PR11MB6129.namprd11.prod.outlook.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Mon, 11 Nov 2024 14:28:01 +0100
X-Gmail-Original-Message-ID: <CAJZ5v0gpg7sd3Qx25WFSbGxFN6-nptxK+QtkHZMMtXW-dnaozg@mail.gmail.com>
Message-ID: <CAJZ5v0gpg7sd3Qx25WFSbGxFN6-nptxK+QtkHZMMtXW-dnaozg@mail.gmail.com>
Subject: Re: Regression on linux-next (next-20241106)
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Cc: "Wysocki, Rafael J" <rafael.j.wysocki@intel.com>, 
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

Hi Chaitanya,

On Mon, Nov 11, 2024 at 6:41=E2=80=AFAM Borah, Chaitanya Kumar
<chaitanya.kumar.borah@intel.com> wrote:
>
> Hello Rafael,
>
> Hope you are doing well. I am Chaitanya from the linux graphics team in I=
ntel.
>
> This mail is regarding a regression we are seeing in our CI runs[1] on li=
nux-next repository.
>
> Since the version next-20241106 [2], we are seeing the following regressi=
on
>
> `````````````````````````````````````````````````````````````````````````=
````````
> <4>[    7.246473] WARNING: possible circular locking dependency detected
> <4>[    7.246476] 6.12.0-rc6-next-20241106-next-20241106-g5b913f5d7d7f+ #=
1 Not tainted
> <4>[    7.246479] ------------------------------------------------------
> <4>[    7.246481] swapper/0/1 is trying to acquire lock:
> <4>[    7.246483] ffffffff8264aef0 (cpu_hotplug_lock){++++}-{0:0}, at: st=
atic_key_enable+0xd/0x20
> <4>[    7.246493]
>                   but task is already holding lock:
> <4>[    7.246495] ffffffff82832068 (hybrid_capacity_lock){+.+.}-{4:4}, at=
: intel_pstate_register_driver+0xd3/0x1c0
> `````````````````````````````````````````````````````````````````````````=
````````
> Details log can be found in [3].

Thanks for the report!

> After bisecting the tree, the following patch [4] seems to be the first "=
bad"
> commit
>
> `````````````````````````````````````````````````````````````````````````=
````````````````````````````````
> commit 92447aa5f6e7fbad9427a3fd1bb9e0679c403206
> Author: Rafael J. Wysocki mailto:rafael.j.wysocki@intel.com
> Date:   Mon Nov 4 19:53:53 2024 +0100
>
>     cpufreq: intel_pstate: Update asym capacity for CPUs that were offlin=
e initially
> `````````````````````````````````````````````````````````````````````````=
````````````````````````````````
>
> We also verified that if we revert the patch the issue is not seen.
>
> Could you please check why the patch causes this regression and provide a=
 fix if necessary?
>
> [1] https://intel-gfx-ci.01.org/tree/linux-next/combined-alt.html?
> [2] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/c=
ommit/?h=3Dnext-20241106
> [3] https://intel-gfx-ci.01.org/tree/linux-next/next-20241106/bat-arls-1/=
boot0.txt
> [4] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/c=
ommit/?h=3Dnext-20241106&id=3D92447aa5f6e7fbad9427a3fd1bb9e0679c403206

The problem is that cpus_read_lock() should not be called under
hybrid_capacity_lock because the latter is acquired in CPU
online/offline paths and this is exposed by the above commit, but if
I'm not mistaken, the issue is there regardless of it.

A good news is that is should be addressed by a patch that has been
posted already:

https://lore.kernel.org/linux-pm/12554508.O9o76ZdvQC@rjwysocki.net/

so please let me know if it makes the splat go away.

Even if its changelog says that it has no functional impact, this is
not really the case.

Thanks!
