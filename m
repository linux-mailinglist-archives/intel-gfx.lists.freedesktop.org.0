Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9426582EEFC
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jan 2024 13:28:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAB6910E55C;
	Tue, 16 Jan 2024 12:28:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-x1130.google.com (mail-yw1-x1130.google.com
 [IPv6:2607:f8b0:4864:20::1130])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8520110E594
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jan 2024 10:12:09 +0000 (UTC)
Received: by mail-yw1-x1130.google.com with SMTP id
 00721157ae682-5fa52e173f7so4024737b3.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jan 2024 02:12:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=yngvason.is; s=google; t=1704881528; x=1705486328; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=96G7DIyssciX4jnAzNrTPlryo3sWO8sgy39soI2lLIM=;
 b=aiBYE17WJRr4FhbVQVOqHd5sUD6rek/aCjpVDlxRv7qYTDi6HYYmZ9JPKOVOxNUrpH
 HmtNi8+3yhTG6e56XRvSkDoN/dFyNwHUKgYKYDFu7EVAVOvWHWyIj61P7NHEL5upkrQ/
 ef/5tDW+KQ8/Dqjqn2DDxCKJg45d8bM2xfLV0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1704881528; x=1705486328;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=96G7DIyssciX4jnAzNrTPlryo3sWO8sgy39soI2lLIM=;
 b=gFYOBwsbXyazkfD3hP4TjDHxEsCJK4CVB7R91ZJKPA9idlrkO48oO3I43Sp8PC4gD8
 JyAcU3IUYATIxz5fSNHjQtH6SMNfzIX0nk/Tp/ogJziJ+nv/UX2BkfQkgrblk7KkYiW8
 c3j6KsWq1dRbTbaE6X70zB+tWXW7JZiuQZhpVUQA/6El0x4kwmy2+/YnsmY3o/MHb5s2
 C78XUQeWIGPtFnJ6jTQ9T/SbvUzCGK9QJ7I5PKnNQf9s9XGMpH6EtgF29QVfnPjj4TiB
 1aJ99FofiH5ESDM9mQmDv2KJ6GS+alZQ6Z8hMj4GXUipljKKoEn7WmAkHH4cyJW8o5EH
 xF8Q==
X-Gm-Message-State: AOJu0YxEuqE+qlF6nTI1V6ilYwAWy3KaOnbg/NfIETPzyLhkb08kf+lB
 nWMSCiud7r0wFzdWD/ZQRIJ4Uvghdvt0rZfRc0vdvqWsSwb8Mg==
X-Google-Smtp-Source: AGHT+IGS4RF/sw1vbqlkX/KGSnVK4rjCwYusB936/yIZemFr40lAz/v1ty4wbuIZQF+WlPwAE3a+cK+ILR852Vcqmd4=
X-Received: by 2002:a25:f822:0:b0:dbf:227a:a2c with SMTP id
 u34-20020a25f822000000b00dbf227a0a2cmr504361ybd.126.1704881528497; Wed, 10
 Jan 2024 02:12:08 -0800 (PST)
MIME-Version: 1.0
References: <20240109181104.1670304-1-andri@yngvason.is>
 <20240109181104.1670304-6-andri@yngvason.is>
 <qdwv7sagqs5nmmsy5lko5hypldanfodafyzamrs3loj3n7jzlr@n5bacxkknkj4>
In-Reply-To: <qdwv7sagqs5nmmsy5lko5hypldanfodafyzamrs3loj3n7jzlr@n5bacxkknkj4>
From: Andri Yngvason <andri@yngvason.is>
Date: Wed, 10 Jan 2024 10:11:32 +0000
Message-ID: <CAFNQBQzijyE4wR34AOLM45m+ryx128igVKO9zPJ5-M3afFQMxQ@mail.gmail.com>
Subject: Re: [PATCH 5/7] drm/uAPI: Add "preferred color format" drm property
 as setting for userspace
To: Maxime Ripard <mripard@kernel.org>
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
 amd-gfx@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Alex Deucher <alexander.deucher@amd.com>, Simon Ser <contact@emersion.fr>,
 Harry Wentland <harry.wentland@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

mi=C3=B0., 10. jan. 2024 kl. 09:27 skrifa=C3=B0i Maxime Ripard <mripard@ker=
nel.org>:
> On Tue, Jan 09, 2024 at 06:11:02PM +0000, Andri Yngvason wrote:
> > From: Werner Sembach <wse@tuxedocomputers.com>
> >
> > Add a new general drm property "preferred color format" which can be us=
ed
> > by userspace to tell the graphic drivers to which color format to use.
> >
> > Possible options are:
> >     - auto (default/current behaviour)
> >     - rgb
> >     - ycbcr444
> >     - ycbcr422 (not supported by both amdgpu and i915)
> >     - ycbcr420
> >
> > In theory the auto option should choose the best available option for t=
he
> > current setup, but because of bad internal conversion some monitors loo=
k
> > better with rgb and some with ycbcr444.
>
> I looked at the patch and I couldn't find what is supposed to happen if
> you set it to something else than auto, and the driver can't match that.
> Are we supposed to fallback to the "auto" behaviour, or are we suppose
> to reject the mode entirely?
>
> The combination with the active output format property suggests the
> former, but we should document it explicitly.

It is also my understanding that it should fall back to the "auto"
behaviour. I will add this to the documentation.

Thanks,
Andri
