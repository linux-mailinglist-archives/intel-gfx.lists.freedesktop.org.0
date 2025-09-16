Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54CD7B59AF0
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Sep 2025 16:55:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69D4610E7EE;
	Tue, 16 Sep 2025 14:55:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Yju+/4fY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com
 [209.85.208.46])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13C2910E548
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Sep 2025 01:55:39 +0000 (UTC)
Received: by mail-ed1-f46.google.com with SMTP id
 4fb4d7f45d1cf-62f5bfd0502so1146458a12.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Sep 2025 18:55:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1757987737; x=1758592537; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=3JiJuCf5fDbcsVFqie8KviQvSHh9fw4OMPm4D25E3/I=;
 b=Yju+/4fYxw0qe27ccSRbTIHRK4Gi1IlFtQH7ePzpCAnhngCC1UzmIGFaTfMjxPUpAm
 kwRBhZwS2Lzv91R1sGJS5FmLxrayMfywbUivAxjBvbU5MqId+HaegnyusiQLgIidHHPr
 J9ykKFSTxUvQGkcy6q4WkePvI/d5OxbevndlB9i1GGun5uD0QE5rXaTNnR3tJsN53AtP
 m8r7pbx+eIRW2i/m8UP0uDSyXXOvNbbdYeP7ZtMG14Og5xIHSah8BLPcwD/AfFCDpJCy
 39ijseRBlxZUsWVBfJV0V2xfSxhEy5XSwKSrhc/fnJ2iZNjbGaU3BLL+xK/9es2n0cFW
 8ksA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1757987737; x=1758592537;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=3JiJuCf5fDbcsVFqie8KviQvSHh9fw4OMPm4D25E3/I=;
 b=lBOYWTgMHfgFmPff9PPFhmYCi8qSgMIWUKFcZYpQTfDWRkVRSh5h86zJXUMCGLDrDd
 g1Ec80JpxUyjOFUMkHC0YSF92ziyuuchR5Nu+IKQQgFXNlZ8wYjscet3CIXjnQA/86D7
 lxN2f4B7JFio8HCVpKonpEBSf3mu+8+09Wgdq9NA6BRTdE5Dq9jKpY+lVY0tB3Y804bV
 uV+ErpxfQ2vZPMck+s9/Z++SU2u0NNu3mHODZMFYAzDyiKVmBqSMO6uIiHgRNSmigDZh
 s+VzacMJaCDZruSLqus8sUFBPgsrg9n75nM8a9qyI9sgVdbibFD4V3fN5psVii/azWx8
 mWJQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXKf6bdZyuGfIpuG5lLA3EQ8oAAoFkBHRNxyysXGXsLbP/w0TEomWY3GI1VebFVsY7QiWjfArmJnVM=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Ywuau4sOel/USaS83jJ1ZN7uhCDpy58iCWAIroymh3EIBPCDP7i
 4Nqe30HV4eZ0mdSj7lva1kROd4mfARvptKWkaCCPuvdqJ198w1nkQtlUTqsYxFFD+xHtfFhHUai
 yUYUzT1fl+GUTwgL0pWkiy0OkSykXkd0=
X-Gm-Gg: ASbGnct557qYC3+HfUPdoweA537FFalF0ZFJcVna/bN55rObsbVBiQ3w/HnYaP1q4F6
 unwqS6082riUSDZ5FjnqYyywOD1LfN3sYVGGSIvfC8U3WoqMVecxLpnv/Ss0VwW1L2WbFdywpcp
 9w/wu4wJJjZm9xEIki6V6eXTGJLijs61CQophvjXydmmmFCKLRsMixEjqO7FNLzg5U2bigffO1K
 u6Ec9uL
X-Google-Smtp-Source: AGHT+IHJugXW7PgqM4C561Es6pZ+yMEeghRxxr249HgOnA0uY3PnwVnYPJp7RZWq/M8Ro+g8NAKFEnS73k9uc/Q2N9g=
X-Received: by 2002:a17:907:969e:b0:b04:6c19:ed8d with SMTP id
 a640c23a62f3a-b07c35bdfa1mr1378153066b.26.1757987737286; Mon, 15 Sep 2025
 18:55:37 -0700 (PDT)
MIME-Version: 1.0
References: <20250915134729.1801557-1-dolinux.peng@gmail.com>
 <20250915144052.VHYlgilw@linutronix.de>
In-Reply-To: <20250915144052.VHYlgilw@linutronix.de>
From: Donglin Peng <dolinux.peng@gmail.com>
Date: Tue, 16 Sep 2025 09:55:25 +0800
X-Gm-Features: AS18NWAOIt4gv03twwvlmnUbxI3Di3y_xFKnQycCNlJ75R-ks7_KB2ty8Keq5J8
Message-ID: <CAErzpmsW7=3RmLZxByxVD+vD=FV0YDF6POHVZZce784r7jMQyg@mail.gmail.com>
Subject: Re: [PATCH v2] rcu: Remove redundant rcu_read_lock/unlock() in
 spin_lock critical sections
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: tj@kernel.org, tony.luck@intel.com, jani.nikula@linux.intel.com, 
 ap420073@gmail.com, jv@jvosburgh.net, freude@linux.ibm.com, bcrl@kvack.org, 
 trondmy@kernel.org, longman@redhat.com, kees@kernel.org, 
 linux-kernel@vger.kernel.org, linux-rt-devel@lists.linux.dev, 
 linux-nfs@vger.kernel.org, linux-aio@kvack.org, linux-fsdevel@vger.kernel.org, 
 linux-security-module@vger.kernel.org, netdev@vger.kernel.org, 
 intel-gfx@lists.freedesktop.org, linux-acpi@vger.kernel.org, 
 linux-s390@vger.kernel.org, cgroups@vger.kernel.org, 
 Hillf Danton <hdanton@sina.com>, "Paul E . McKenney" <paulmck@kernel.org>, 
 pengdonglin <pengdonglin@xiaomi.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Tue, 16 Sep 2025 14:55:19 +0000
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

On Mon, Sep 15, 2025 at 10:40=E2=80=AFPM Sebastian Andrzej Siewior
<bigeasy@linutronix.de> wrote:
>
> On 2025-09-15 21:47:29 [+0800], pengdonglin wrote:
> > From: pengdonglin <pengdonglin@xiaomi.com>
> >
> > Per Documentation/RCU/rcu_dereference.rst [1], since Linux 4.20's RCU
> > consolidation [2][3], RCU read-side critical sections include:
> >   - Explicit rcu_read_lock()
> >   - BH/interrupt/preemption-disabling regions
> >   - Spinlock critical sections (including CONFIG_PREEMPT_RT kernels [4]=
)
> >
> > Thus, explicit rcu_read_lock()/unlock() calls within spin_lock*() regio=
ns are redundant.
> > This patch removes them, simplifying locking semantics while preserving=
 RCU protection.
> >
> > [1] https://elixir.bootlin.com/linux/v6.17-rc5/source/Documentation/RCU=
/rcu_dereference.rst#L407
> > [2] https://lore.kernel.org/lkml/20180829222021.GA29944@linux.vnet.ibm.=
com/
> > [3] https://lwn.net/Articles/777036/
> > [4] https://lore.kernel.org/lkml/6435833a-bdcb-4114-b29d-28b7f436d47d@p=
aulmck-laptop/
>
> What about something like this:
>
>   Since commit a8bb74acd8efe ("rcu: Consolidate RCU-sched update-side
>   function definitions") there is no difference between rcu_read_lock(),
>   rcu_read_lock_bh() and rcu_read_lock_sched() in terms of RCU read
>   section and the relevant grace period. That means that spin_lock(),
>   which implies rcu_read_lock_sched(), also implies rcu_read_lock().
>
>   There is no need no explicitly start a RCU read section if one has
>   already been started implicitly by spin_lock().
>
>   Simplify the code and remove the inner rcu_read_lock() invocation.
>
>
> The description above should make it clear what:
> - the intention is
> - the proposed solution to it and why it is correct.

Thanks, that's much clearer. I'll use this commit message in v3.

>
> You can't send a patch like this. You need to split it at the very least
> by subsystem. The networking bits need to follow to follow for instance
>    Documentation/process/maintainer-netdev.rst

Thanks, I will split this into a series for v3.

>
> and so on.
>
> Sebastian
