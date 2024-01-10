Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2711B82EEF4
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jan 2024 13:28:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71FB010E565;
	Tue, 16 Jan 2024 12:28:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-x112e.google.com (mail-yw1-x112e.google.com
 [IPv6:2607:f8b0:4864:20::112e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D51A10E5DC
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jan 2024 13:43:01 +0000 (UTC)
Received: by mail-yw1-x112e.google.com with SMTP id
 00721157ae682-5e734251f48so32402447b3.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jan 2024 05:43:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=yngvason.is; s=google; t=1704894180; x=1705498980; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=yQ/U0Sa8v/CRYiVU6kq/by3KQsxjn5M1baHcHHM4a3M=;
 b=Ziqzmh1GRHmgTrQxBD6ozhrPqY2R5YswZhdunJ6XUieLQsssY9f0c1Zh9q1ai4RY9n
 8y0NyS1cLjU731V16YtfUaGwznfNNS/BH2yawKGppYpnEkhLwiDWViXyqNioMq3V/RPv
 Il65HCrOMsZaY83AMOugFn8hLXaeWdHa1bDpA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1704894180; x=1705498980;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=yQ/U0Sa8v/CRYiVU6kq/by3KQsxjn5M1baHcHHM4a3M=;
 b=Q0ildclOYPUOUdooec16Z04HnmYj7CbHRK7BoGzgNx8HOcj3krsNa/gLRtZ6s75lth
 6uKeKdrVoVtLgIMoKJVB4x3ypxxT/vECO/3AzUgYtVheIox0aPqtjJVjaAKm+JZ9NhF9
 B7MMQUcvEAgwDrKYDptOuwwWM9Yx7PHEC6MEoC2OCzNH43K/pfuTLILiCg29hrzkuxjM
 4oOP5scMI7gT1Us5WVa5hjJ4KvPyvnghb1qFQvO8YRh9DkWn5h24AEZSJKYttzPd4ZTq
 g8hAkiu/cfJUvqKEztdvlNVXpZtStedtDmwiEX4c+ygeoKutSjuGoraml+WsfLRkHUTZ
 cKIg==
X-Gm-Message-State: AOJu0Yysf5SVNIeobotv3ykC0HiXpZaHJ+vwDdQoQchPFdGXACuJtG2Y
 Xa2s0Dq1bKs3F+k/lf6PTcF0uvEpCWd/1LXmSEVkaqOjIg7N8g==
X-Google-Smtp-Source: AGHT+IGDsuO4mYJVVDxBUOZbdTOdu8bmcbR4SC1ZuMtCkzl9DP9p6Vo22kYDPHUl7Rp57fzCruInRV3SA2OPXVlQoBk=
X-Received: by 2002:a0d:db57:0:b0:5e8:a75f:df63 with SMTP id
 d84-20020a0ddb57000000b005e8a75fdf63mr49273ywe.47.1704894180474; Wed, 10 Jan
 2024 05:43:00 -0800 (PST)
MIME-Version: 1.0
References: <20240109181104.1670304-1-andri@yngvason.is>
 <20240109181104.1670304-6-andri@yngvason.is>
 <qdwv7sagqs5nmmsy5lko5hypldanfodafyzamrs3loj3n7jzlr@n5bacxkknkj4>
 <CAFNQBQzijyE4wR34AOLM45m+ryx128igVKO9zPJ5-M3afFQMxQ@mail.gmail.com>
 <92e20f9b-2cbf-4efe-b61b-989da0cc1668@tuxedocomputers.com>
In-Reply-To: <92e20f9b-2cbf-4efe-b61b-989da0cc1668@tuxedocomputers.com>
From: Andri Yngvason <andri@yngvason.is>
Date: Wed, 10 Jan 2024 13:42:24 +0000
Message-ID: <CAFNQBQxnMh4aPfm+U8vEfxoTdQ+FByfqwUUDnMTzgkrW2+ZZqw@mail.gmail.com>
Subject: Re: [PATCH 5/7] drm/uAPI: Add "preferred color format" drm property
 as setting for userspace
To: Werner Sembach <wse@tuxedocomputers.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Tue, 16 Jan 2024 12:28:11 +0000
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
Cc: Thomas Zimmermann <tzimmermann@suse.de>, intel-gfx@lists.freedesktop.org,
 Leo Li <sunpeng.li@amd.com>, David Airlie <airlied@gmail.com>,
 dri-devel@lists.freedesktop.org, "Pan, Xinhui" <Xinhui.Pan@amd.com>,
 Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Alex Deucher <alexander.deucher@amd.com>, Simon Ser <contact@emersion.fr>,
 amd-gfx@lists.freedesktop.org, Harry Wentland <harry.wentland@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

mi=C3=B0., 10. jan. 2024 kl. 13:09 skrifa=C3=B0i Werner Sembach <wse@tuxedo=
computers.com>:
>
> Hi,
>
> Am 10.01.24 um 11:11 schrieb Andri Yngvason:
> > Hi,
> >
> > mi=C3=B0., 10. jan. 2024 kl. 09:27 skrifa=C3=B0i Maxime Ripard <mripard=
@kernel.org>:
> >> On Tue, Jan 09, 2024 at 06:11:02PM +0000, Andri Yngvason wrote:
> >>> From: Werner Sembach <wse@tuxedocomputers.com>
> >>>
> >>> Add a new general drm property "preferred color format" which can be =
used
> >>> by userspace to tell the graphic drivers to which color format to use=
.
> >>>
> >>> Possible options are:
> >>>      - auto (default/current behaviour)
> >>>      - rgb
> >>>      - ycbcr444
> >>>      - ycbcr422 (not supported by both amdgpu and i915)
> >>>      - ycbcr420
> >>>
> >>> In theory the auto option should choose the best available option for=
 the
> >>> current setup, but because of bad internal conversion some monitors l=
ook
> >>> better with rgb and some with ycbcr444.
> >> I looked at the patch and I couldn't find what is supposed to happen i=
f
> >> you set it to something else than auto, and the driver can't match tha=
t.
> >> Are we supposed to fallback to the "auto" behaviour, or are we suppose
> >> to reject the mode entirely?
> >>
> >> The combination with the active output format property suggests the
> >> former, but we should document it explicitly.
> > It is also my understanding that it should fall back to the "auto"
> > behaviour. I will add this to the documentation.
>
> Yes, that was the intention, and then userspace can check, but it wasn't =
well
> received: https://gitlab.freedesktop.org/drm/amd/-/issues/476#note_964530
>
> Actually a lot of the thoughts that went into the original patch set can =
be
> found in that topic.
>
> There was another iteration of the patch set that I never finished and se=
nt to
> the LKML because I got discouraged by this:
> https://lore.kernel.org/dri-devel/20210623102923.70877c1a@eldfell/

Well, I've implemented this for sway and wlroots now and Simon has
reacted positively, so this does appear likely to end up as a feature
in wlroots based compositors.

>
> I can try to dig it up, but it is completely untested and I don't think I=
 still
> have the respective TODO list anymore, so I don't know if it is a better =
or
> worst starting point than the last iteration I sent to the LKML.
>

You can send the patches to me if you want and I can see if they're
useful. I'm really only interested in the color format part though.
Alternatively, you can continue your work and post it to LKML and I
can focus on the userspace side and testing. By the way, I have an
HDMI analyzer that can tell me the actual color format.

Thanks,
Andri
