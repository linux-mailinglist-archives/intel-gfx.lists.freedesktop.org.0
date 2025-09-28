Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C993ABA6F34
	for <lists+intel-gfx@lfdr.de>; Sun, 28 Sep 2025 12:33:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F54D10E0DD;
	Sun, 28 Sep 2025 10:33:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="ud20ASVs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7571F10E04F
 for <intel-gfx@lists.freedesktop.org>; Sun, 28 Sep 2025 10:33:24 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 9B2B762156
 for <intel-gfx@lists.freedesktop.org>; Sun, 28 Sep 2025 10:33:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 473CDC4CEF0
 for <intel-gfx@lists.freedesktop.org>; Sun, 28 Sep 2025 10:33:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1759055603;
 bh=W1P4GzY1bC9YgmxJ2fNnWAboDU4JuIT0DBDqxALFX0M=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ud20ASVsnYuE5kNMszyEQpSoR0Bq4bejcUKHOUGjiL35VMUaD5yL3aWJSfDAcC6Td
 gZvVM+w5J+fLJk+M+cm+C5F6V8+n4QeTYvqpgUamaRejIQgk3V0BlYAFNlqYQL24Bc
 DWcQUU6VEeKpDUxZxLhye5/BzKyKh/wIMTJhcQ4gOf6DwgjgyJduc9FxYI2tEQHU8G
 Smimz0KWLOn1bqbGAIREMMYENc9PlF8rWaED7GAKDBcxtwEhefJidnd2amv8AtvhLY
 P0w6Rw13h6lhC3C6zgIAqhb2YGn56pNaWFWlqBEqDnFrzkyAsiQ1FYLlftVUlNnfCZ
 N4zqSVcCig0bw==
Received: by mail-oa1-f53.google.com with SMTP id
 586e51a60fabf-31d6b8be249so3514846fac.0
 for <intel-gfx@lists.freedesktop.org>; Sun, 28 Sep 2025 03:33:23 -0700 (PDT)
X-Forwarded-Encrypted: i=1;
 AJvYcCVN2J444p2bC9eQW2XnW2Y5oB8p/4KZbiNSu5imUUihJ64wwJCyu62m4ydVBbHOAy5y6AjYyV8/ChM=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxZLCF+vImJF6BUCmrqUfL7Wxe9NCUYHZX5Vp4rXCvw4pxfdljS
 q2pO1IXPe4qSa2AA7/pq4H45ZmBBgG7Vp9DfoNY/1jcNEpvHa6f66l/hVNTupC9+PtktK6Uhb9X
 8ik0M5wf7dGP4PfwWLbwHaOc25FPjoOI=
X-Google-Smtp-Source: AGHT+IHHkBehFxa/bp8CnX34GBVpEV5VAfmAS0oqHk9Wg6vhKkRCMfTaIXQ9hfF+1UwB0EGnwQh5Kq0MuUSpqvkAupk=
X-Received: by 2002:a05:6870:a118:b0:315:b618:d6be with SMTP id
 586e51a60fabf-35ef20c8e8fmr6297578fac.51.1759055602481; Sun, 28 Sep 2025
 03:33:22 -0700 (PDT)
MIME-Version: 1.0
References: <20250916044735.2316171-1-dolinux.peng@gmail.com>
 <20250916044735.2316171-2-dolinux.peng@gmail.com>
 <03ad08d9-4510-19fb-bbad-652159308119@huawei.com>
In-Reply-To: <03ad08d9-4510-19fb-bbad-652159308119@huawei.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Sun, 28 Sep 2025 12:33:11 +0200
X-Gmail-Original-Message-ID: <CAJZ5v0ix+taHWpKAeYsNBQMoxG6f7E9vyO=yqjrh5_AnjrXZbg@mail.gmail.com>
X-Gm-Features: AS18NWDE1zAXVuNiUSbLmdX4xI4485zsbYvsUyBO0gNsC9FdVLBA2B2bjlgQB_4
Message-ID: <CAJZ5v0ix+taHWpKAeYsNBQMoxG6f7E9vyO=yqjrh5_AnjrXZbg@mail.gmail.com>
Subject: Re: [PATCH v3 01/14] ACPI: APEI: Remove redundant
 rcu_read_lock/unlock() in spin_lock
To: Hanjun Guo <guohanjun@huawei.com>, pengdonglin <dolinux.peng@gmail.com>
Cc: tj@kernel.org, tony.luck@intel.com, jani.nikula@linux.intel.com, 
 ap420073@gmail.com, jv@jvosburgh.net, freude@linux.ibm.com, bcrl@kvack.org, 
 trondmy@kernel.org, longman@redhat.com, kees@kernel.org, 
 bigeasy@linutronix.de, hdanton@sina.com, paulmck@kernel.org, 
 linux-kernel@vger.kernel.org, linux-rt-devel@lists.linux.dev, 
 linux-nfs@vger.kernel.org, linux-aio@kvack.org, linux-fsdevel@vger.kernel.org, 
 linux-security-module@vger.kernel.org, netdev@vger.kernel.org, 
 intel-gfx@lists.freedesktop.org, linux-wireless@vger.kernel.org, 
 linux-acpi@vger.kernel.org, linux-s390@vger.kernel.org, 
 cgroups@vger.kernel.org, "Rafael J. Wysocki" <rafael@kernel.org>, 
 pengdonglin <pengdonglin@xiaomi.com>
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

On Sat, Sep 27, 2025 at 5:22=E2=80=AFAM Hanjun Guo <guohanjun@huawei.com> w=
rote:
>
> On 2025/9/16 12:47, pengdonglin wrote:
> > From: pengdonglin <pengdonglin@xiaomi.com>
> >
> > Since commit a8bb74acd8efe ("rcu: Consolidate RCU-sched update-side fun=
ction definitions")
> > there is no difference between rcu_read_lock(), rcu_read_lock_bh() and
> > rcu_read_lock_sched() in terms of RCU read section and the relevant gra=
ce
> > period. That means that spin_lock(), which implies rcu_read_lock_sched(=
),
> > also implies rcu_read_lock().
> >
> > There is no need no explicitly start a RCU read section if one has alre=
ady
> > been started implicitly by spin_lock().
> >
> > Simplify the code and remove the inner rcu_read_lock() invocation.
> >
> > Cc: "Rafael J. Wysocki" <rafael@kernel.org>
> > Cc: Tony Luck <tony.luck@intel.com>
> > Cc: Hanjun Guo <guohanjun@huawei.com>
> > Signed-off-by: pengdonglin <pengdonglin@xiaomi.com>
> > Signed-off-by: pengdonglin <dolinux.peng@gmail.com>
> > ---
> >   drivers/acpi/apei/ghes.c | 2 --
> >   1 file changed, 2 deletions(-)
> >
> > diff --git a/drivers/acpi/apei/ghes.c b/drivers/acpi/apei/ghes.c
> > index a0d54993edb3..97ee19f2cae0 100644
> > --- a/drivers/acpi/apei/ghes.c
> > +++ b/drivers/acpi/apei/ghes.c
> > @@ -1207,12 +1207,10 @@ static int ghes_notify_hed(struct notifier_bloc=
k *this, unsigned long event,
> >       int ret =3D NOTIFY_DONE;
> >
> >       spin_lock_irqsave(&ghes_notify_lock_irq, flags);
> > -     rcu_read_lock();
> >       list_for_each_entry_rcu(ghes, &ghes_hed, list) {
> >               if (!ghes_proc(ghes))
> >                       ret =3D NOTIFY_OK;
> >       }
> > -     rcu_read_unlock();
> >       spin_unlock_irqrestore(&ghes_notify_lock_irq, flags);
> >
> >       return ret;
>
> Reviewed-by: Hanjun Guo <guohanjun@huawei.com>

Applied as 6.18 material, thanks!
