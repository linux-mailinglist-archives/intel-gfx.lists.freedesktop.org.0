Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3E3C8BAC9E
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 14:38:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F9C910EC7C;
	Fri,  3 May 2024 12:38:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gigaio-com.20230601.gappssmtp.com header.i=@gigaio-com.20230601.gappssmtp.com header.b="ZZj4d8Js";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com
 [209.85.210.48])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FCD510E14C
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2024 01:22:39 +0000 (UTC)
Received: by mail-ot1-f48.google.com with SMTP id
 46e09a7af769-6ee575da779so2407461a34.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 02 May 2024 18:22:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gigaio-com.20230601.gappssmtp.com; s=20230601; t=1714699359; x=1715304159;
 darn=lists.freedesktop.org; 
 h=to:references:message-id:content-transfer-encoding:cc:date
 :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=k3nkCSoTperPlX+PtC8qWAin0Hv01DoPF7+bPAgfSgA=;
 b=ZZj4d8JseZXXiICswGinGCT9GsNv7nEC0rD5ufcM7JleyXmYYKuzXu6Gs/bLr1zX34
 LXZPQtFn2PvklLuJSt78vJ33MmaxVZoGtS83WN1V4b9y52yE82TcDkML86hc1zA/p4Yw
 ZFQ/VzTU39QjrrDs1KwbRppUHGHAYXFWL40ZFBQ06ZwIPjRM2ataVvwiTDAOix9VVAOX
 4giSroQS4fj9RAqf3oKLRzZm0PDo/jlJL7eId2K5vszV0/8FvYB/2ec1GrzpxnxeUAQ3
 2K2yRjJ2gQf6NoDSexox7z7beBI9qAnZdI2uy5kjIj+uM21m3LO/IFR7k689+uQ4xfQm
 B6DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1714699359; x=1715304159;
 h=to:references:message-id:content-transfer-encoding:cc:date
 :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=k3nkCSoTperPlX+PtC8qWAin0Hv01DoPF7+bPAgfSgA=;
 b=xB/t1gzsAp+dy7qtLr7k39u1MUuYQpr2c9ZJRPpHMiePOr+T1zI6aGBdtoEYdk7o4V
 uLXgEKhgsGG/PbWRRuy5vuoQtPAjsbE2kwR3xZTuYAuiSAOKqFB8CrnqgY9ofwGu35Zh
 lDuDGE6d8Sq3bwwLU/uiwzXExxaiTqUlv0gMjZjkLBALxoaMa/iibBp4iil2oxGTW2HW
 qvc/1ycsbDj1F/D+88OCKRTC+uPbWjJjD98XLL1O6t2XIjlPjAkaVL6QpnMbOvWIF1BV
 Cpr20NWIZJ5rmCJv0ulJNmn+1FQA4aB6z3U9JBLxdmQG1O0v9Lr1FChcPvvVOLBdilRq
 BkzQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUZcwgZmwzO2Iy/fceEdFlsyuct06jade7M5MuTLWeFsORZbhnkgG13cpnDUO+y2OkCvLPBMByc3xWK5fMasZxkSgAbKpSyTnLVf7JTchJ8
X-Gm-Message-State: AOJu0YwIzWzwaNZx8p1PaGP8NFhbH6lShcUWdoa80lS4LAAgJkXKiNQa
 e8N4JHx8P0mWJUQFCKW7XZ0IoUieSsxopoY2VDfPlHJFlkG9wbr7SUHTbdWgA/w=
X-Google-Smtp-Source: AGHT+IGYuWQGoJVifB5ByXnZOOtnc0jo+Gwcp8Ftoa0rZdJC9qXcD/CvZftAT0HRvOGe4Jw7d7sdMw==
X-Received: by 2002:a05:6830:3490:b0:6ea:30bc:a6b5 with SMTP id
 c16-20020a056830349000b006ea30bca6b5mr1921224otu.22.1714699358803; 
 Thu, 02 May 2024 18:22:38 -0700 (PDT)
Received: from smtpclient.apple (45-31-42-85.lightspeed.sndgca.sbcglobal.net.
 [45.31.42.85]) by smtp.gmail.com with ESMTPSA id
 d11-20020a656b8b000000b005f7ff496050sm1699721pgw.76.2024.05.02.18.22.37
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2024 18:22:38 -0700 (PDT)
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.500.171.1.1\))
Subject: Re: [PATCH v6 0/4] drm: Use full allocated minor range for DRM
From: Eric Pilmore <epilmore@gigaio.com>
In-Reply-To: <20230724211428.3831636-1-michal.winiarski@intel.com>
Date: Thu, 2 May 2024 18:22:26 -0700
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Simon Ser <contact@emersion.fr>,
 Matthew Wilcox <willy@infradead.org>, Oded Gabbay <ogabbay@kernel.org>,
 =?utf-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 James Zhu <James.Zhu@amd.com>,
 Pekka Paalanen <pekka.paalanen@collabora.com>,
 Emil Velikov <emil.l.velikov@gmail.com>
Content-Transfer-Encoding: quoted-printable
Message-Id: <83E51798-5335-49AA-8211-60EC29577617@gigaio.com>
References: <20230724211428.3831636-1-michal.winiarski@intel.com>
To: =?utf-8?Q?Micha=C5=82_Winiarski?= <michal.winiarski@intel.com>
X-Mailer: Apple Mail (2.3774.500.171.1.1)
X-Mailman-Approved-At: Fri, 03 May 2024 12:38:28 +0000
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



> On Jul 24, 2023, at 2:14=E2=80=AFPM, Micha=C5=82 Winiarski =
<michal.winiarski@intel.com> wrote:
>=20
> 64 DRM device nodes is not enough for everyone.
> Upgrade it to ~512K (which definitely is more than enough).
>=20
> To allow testing userspace support for >64 devices, add additional DRM
> modparam (force_extended_minors) which causes DRM to skip allocating =
minors
> in 0-192 range.
> Additionally - convert minors to use XArray instead of IDR to simplify =
the
> locking.
>=20
> v1 -> v2:
> Don't touch DRM_MINOR_CONTROL and its range (Simon Ser)
>=20
> v2 -> v3:
> Don't use legacy scheme for >=3D192 minor range (Dave Airlie)
> Add modparam for testing (Dave Airlie)
> Add lockdep annotation for IDR (Daniel Vetter)
>=20
> v3 -> v4:
> Convert from IDR to XArray (Matthew Wilcox)
>=20
> v4 -> v5:
> Fixup IDR to XArray conversion (Matthew Wilcox)
>=20
> v5 -> v6:
> Also convert Accel to XArray
> Rename skip_legacy_minors to force_extended_minors
>=20
> Micha=C5=82 Winiarski (4):
>  drm: Use XArray instead of IDR for minors
>  accel: Use XArray instead of IDR for minors
>  drm: Expand max DRM device number to full MINORBITS
>  drm: Introduce force_extended_minors modparam
>=20
> drivers/accel/drm_accel.c      | 110 +++------------------------------
> drivers/gpu/drm/drm_drv.c      | 105 ++++++++++++++++---------------
> drivers/gpu/drm/drm_file.c     |   2 +-
> drivers/gpu/drm/drm_internal.h |   4 --
> include/drm/drm_accel.h        |  18 +-----
> include/drm/drm_file.h         |   5 ++
> 6 files changed, 69 insertions(+), 175 deletions(-)
>=20
> --=20
> 2.41.0
>=20


Hi Michal,

What is the status on this patch? Did it ever get accepted upstream?
If so, what release? I don=E2=80=99t see the changes in the latest Linux =
kernel.
I am working on a system that involves a large number of GPUs, where
each GPU consumes a number of DRM devices. As such, I=E2=80=99m easily
exceeding the current limit of 64 in the (6.6) kernel. To workaround =
this issue,
I have temporarily picked up this patch which is doing the trick, but =
now
I=E2=80=99m wondering if this patch has seen the light of day in the =
Linux kernel.

Thanks for any info!

Regards,
Eric

