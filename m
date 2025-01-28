Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55F46A20D45
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2025 16:43:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9597010E691;
	Tue, 28 Jan 2025 15:43:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=paul-moore.com header.i=@paul-moore.com header.b="SgQsCISD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com
 [209.85.219.175])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC7D210E692
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2025 15:43:22 +0000 (UTC)
Received: by mail-yb1-f175.google.com with SMTP id
 3f1490d57ef6-e549b0f8d57so9734991276.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2025 07:43:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paul-moore.com; s=google; t=1738079001; x=1738683801;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=4CM+Y34LzyqTPbJa964bMKTZoegb6ZCbeVLJYvxkr2Y=;
 b=SgQsCISD2ARChUn+FanJHHayZDVewcLyRNdvgsO9EhiJEeiS4IfOnSggU+bOeyaSN4
 Ol+koI+Ru2JOAWwVpqXZlrxJ9aIBW4LayBojP99bdCr+73YZxd9KThHsHprmSrB42JGe
 Uf6XaJikmf3bHqbi51phHGJR6VcJ8KsAV1jWnHQnOTYjeLRqvOvaaLD8JdPHWDJPuEvp
 DbXjza7nkmW5CIQBF3qfm/B0pxVUrHWSqBVbNBJ3Rox3Y+zLxVA7P4OrPa3QvuTs8uvV
 yw+LdjNqhbAg4MstUoKFuE82qI3mza5LoexOQpJP9rL9Ujo9naBBTxqKkGWcVoSUJubB
 Vrag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1738079001; x=1738683801;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=4CM+Y34LzyqTPbJa964bMKTZoegb6ZCbeVLJYvxkr2Y=;
 b=UXXfr2BbUACIvM5mKcHFmUSSVFGkZNIoCnVJ6OXVReQlngcx5l5rCkigWGrezyNFNO
 jvF/O97ha5pJ6ELf/wGc6Z/So9Ad1M8pdxohhmvZ3SXXMcKI6k74w6BWZPVhRyAO+7zl
 nkUomjWwDWZ9bdS3BktyJzgluRPVWj6Y0wMIxdpbrVKUR4duW2svVcSfINKYkaxL+Jke
 liThxcNJjM06lrS8B6tZlFcnMdx0QfF27/Qy0r8fwv8lYvQ6AHfGu26sBbKWMbY54j2s
 PTubZzwwEV03sH3Qgz2aJ1mXYDkBqElaB53Zyct7UwhFH1hEm6wpLevNpAABXkTk4Xbj
 ZAkA==
X-Forwarded-Encrypted: i=1;
 AJvYcCW7QQadbZMkrD0KoD7zNwRFZCTnjVuD6eMTEUpRCrNYm/0eASoS417xyFw5CDQgGMTGvuk11oKuRXg=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yw8p/YQU1giM42+mnerOcyjbmyL6f+LXnTwyiEgYIAHQ66HUUpL
 V8HXc+ykOzO7Y1lq0DiFRkjdRJOczEtcFdcBrW6Q2MkGE5oQHtm8STbkRjg7yHQun7kJlwB+Y1K
 R+aIuDA3acUwHH/+bxN6/zqx0jnnIBCxJnly2
X-Gm-Gg: ASbGncsxWRnwyt8hPF/RZ6bGMnYLMr7425sjwoz9eHuNLRLt+cvQLQn//Fvz3XcrZwz
 Lxxn4MMqco1zB8hXDFAiUpPJ18tynWhZwlJTMKF49+BjoCJhNibz3sjorEtZwar6avx3G+S8=
X-Google-Smtp-Source: AGHT+IGuLqrmdoXiE8apV7tzhOJZ5Xm1OF/NxWm8Kjkh7RMoG05FR1MdO9WMx2ebniwyt0o5rEC0Jv+xP432BtVJDY0=
X-Received: by 2002:a05:690c:4d02:b0:6ef:6646:b50a with SMTP id
 00721157ae682-6f6eb6b2881mr361409457b3.20.1738079001445; Tue, 28 Jan 2025
 07:43:21 -0800 (PST)
MIME-Version: 1.0
References: <20250110-jag-ctl_table_const-v2-1-0000e1663144@kernel.org>
 <Z4+jwDBrZNRgu85S@li-008a6a4c-3549-11b2-a85c-c5cc2836eea2.ibm.com>
 <nslqrapp4v3rknjgtfk4cg64ha7rewrrg24aslo2e5jmxfwce5@t4chrpuk632k>
 <CAMj1kXEZPe8zk7s67SADK9wVH3cfBup-sAZSC6_pJyng9QT7aw@mail.gmail.com>
 <f4lfo2fb7ajogucsvisfd5sg2avykavmkizr6ycsllcrco4mo3@qt2zx4zp57zh>
 <87jzag9ugx.fsf@intel.com> <Z5epb86xkHQ3BLhp@casper.infradead.org>
 <u2fwibsnbfvulxj6adigla6geiafh2vuve4hcyo4vmeytwjl7p@oz6xonrq5225>
In-Reply-To: <u2fwibsnbfvulxj6adigla6geiafh2vuve4hcyo4vmeytwjl7p@oz6xonrq5225>
From: Paul Moore <paul@paul-moore.com>
Date: Tue, 28 Jan 2025 10:43:10 -0500
X-Gm-Features: AWEUYZkHRaUuCTQsu1U9C5jhigmIE9c2_8OmkE_i2Qv7ILXtAaTfDLC5EcLBZNk
Message-ID: <CAHC9VhQnB_bsQaezBfAcA0bE7Zoc99QXrvO1qjpHA-J8+_doYg@mail.gmail.com>
Subject: Re: Re: Re: Re: [PATCH v2] treewide: const qualify ctl_tables where
 applicable
To: Joel Granados <joel.granados@kernel.org>
Cc: Matthew Wilcox <willy@infradead.org>, Jani Nikula <jani.nikula@intel.com>, 
 Ard Biesheuvel <ardb@kernel.org>,
 Alexander Gordeev <agordeev@linux.ibm.com>, 
 =?UTF-8?Q?Thomas_Wei=C3=9Fschuh?= <linux@weissschuh.net>, 
 Kees Cook <kees@kernel.org>, Luis Chamberlain <mcgrof@kernel.org>, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linuxppc-dev@lists.ozlabs.org, linux-riscv@lists.infradead.org, 
 linux-s390@vger.kernel.org, linux-crypto@vger.kernel.org, 
 openipmi-developer@lists.sourceforge.net, intel-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 linux-hyperv@vger.kernel.org, linux-rdma@vger.kernel.org, 
 linux-raid@vger.kernel.org, linux-scsi@vger.kernel.org, 
 linux-serial@vger.kernel.org, xen-devel@lists.xenproject.org, 
 linux-aio@kvack.org, linux-fsdevel@vger.kernel.org, netfs@lists.linux.dev, 
 codalist@coda.cs.cmu.edu, linux-mm@kvack.org, linux-nfs@vger.kernel.org, 
 ocfs2-devel@lists.linux.dev, fsverity@lists.linux.dev, 
 linux-xfs@vger.kernel.org, io-uring@vger.kernel.org, bpf@vger.kernel.org, 
 kexec@lists.infradead.org, linux-trace-kernel@vger.kernel.org, 
 linux-hardening@vger.kernel.org, apparmor@lists.ubuntu.com, 
 linux-security-module@vger.kernel.org, keyrings@vger.kernel.org, 
 Song Liu <song@kernel.org>, "Steven Rostedt (Google)" <rostedt@goodmis.org>, 
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 "Darrick J. Wong" <djwong@kernel.org>, Corey Minyard <cminyard@mvista.com>
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

On Tue, Jan 28, 2025 at 6:22=E2=80=AFAM Joel Granados <joel.granados@kernel=
.org> wrote:
> On Mon, Jan 27, 2025 at 03:42:39PM +0000, Matthew Wilcox wrote:
> > On Mon, Jan 27, 2025 at 04:55:58PM +0200, Jani Nikula wrote:
> > > You could have static const within functions too. You get the rodata
> > > protection and function local scope, best of both worlds?
> >
> > timer_active is on the stack, so it can't be static const.
> >
> > Does this really need to be cc'd to such a wide distribution list?
> That is a very good question. I removed 160 people from the original
> e-mail and left the ones that where previously involved with this patch
> and left all the lists for good measure. But it seems I can reduce it
> even more.
>
> How about this: For these treewide efforts I just leave the people that
> are/were involved in the series and add two lists: linux-kernel and
> linux-hardening.
>
> Unless someone screams, I'll try this out on my next treewide.

I'm not screaming about it :) but anything that touches the LSM,
SELinux, or audit code (or matches the regex in MAINTAINERS) I would
prefer to see on the associated mailing list.

--=20
paul-moore.com
