Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9F188D0131
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2024 15:20:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 392F110F58E;
	Mon, 27 May 2024 13:20:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Dc+68W/P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com
 [209.85.208.46])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E70D10F4CF;
 Mon, 27 May 2024 13:20:14 +0000 (UTC)
Received: by mail-ed1-f46.google.com with SMTP id
 4fb4d7f45d1cf-578517c7ae9so3878660a12.3; 
 Mon, 27 May 2024 06:20:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1716816012; x=1717420812; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=583OMcuKvHNT1Ww+Sb5JEHcYkO2V/RPQQEiPPcbZRAU=;
 b=Dc+68W/PdmArLfyy7a38U3XT23pEEjxvbnow3rpTmWIBS22JqoM7X+dJqMWsQabxsP
 xLFaAwt1jIqauxES1EaXUxGYadHIQq70Qbdbvn+BX5kXFHA3q7RJWkD2u313stzQpfhJ
 Bw5LFyHrXyvIdxuIZSFgrG5xewMUvwKpq1SEFOSbBD/sZIFyuFwXk5FV/SlcGgtouQqP
 cLp/GnjvGgPgBq04bWOF0JZY2+NixRS/ExZTEz5YsdfBr2u97hT0M5p4lwxGed8uv2WG
 SfF7oBkjH3s3baaO9cjhIZVgnHY3da5efOpf0ZDrzz/3Dx/fg/BRYHGnfjqHYPIL43Uq
 C21A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1716816012; x=1717420812;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=583OMcuKvHNT1Ww+Sb5JEHcYkO2V/RPQQEiPPcbZRAU=;
 b=sBZbBlDnNcxo1jOwtk0TStoHYKnurVWyzFqukw1iwY/jN15lh2/D00kcH5fp9203Jk
 VBitvTc4ojndODf4w4HUSZilylz9SbIRhfO1PQm5chyvr9wKmU6vEX6L1L2AH5e0xkI4
 9FPH3XRcIv4oC20FolQu6sm23XTE1FcrGvF8ST6BLPJc2NQrY3Uh3v4nLXSz3fIunwaz
 EaziEQC7+x0KeMH5GBpbD4yG9SB7gfosDRe0eeqoKj1yCK30jiMcTcczkh34r6/QMxLv
 cEASq5+KLHfNyiRvQHCLGTC/fcnfzB6bPq08J/VG3Ch8OOvb4EOW70k6U0fdnMYiXf4H
 PKDQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCU0JIw/DuEryJaUIAqDsvhjFLixooXGSkmk2dgk/PzHyth5iRH9VcrOwnPUPZPyjZ9CZ0cqDfVYy0q4+9BcrSNRVmDioGCcA31x9i4eAIwXi3E9utNvPJ/to2VFApyBRns8qGtdYz33wKb9xr/QqR0h
X-Gm-Message-State: AOJu0YyZDOuGRr7rzxsxLBGdqAbdJXP/dMNNNNnCxZ/lx+Bckx78Ed51
 E6v8BVKEE7XvrjPGeZ5WgThlAul1ToSK8eGUKAS/oKzXbwUtjEoTiTBh/B2FpUovovgDT4RWsJn
 sK5OsqbRiX6W7d2emsfLUATIVBlg=
X-Google-Smtp-Source: AGHT+IFAU5YkoQQCpo2YBJF5cZ7P9SUOU+cK1hlCD0x11A8DdQnGvCOJ3WRTYFceD3JkPIeraFXM9GsH58VbgH3clsU=
X-Received: by 2002:a17:907:971c:b0:a62:cecd:26e3 with SMTP id
 a640c23a62f3a-a62cecd2767mr357363566b.39.1716816012441; Mon, 27 May 2024
 06:20:12 -0700 (PDT)
MIME-Version: 1.0
References: <20240527094320.2653177-1-jani.nikula@intel.com>
 <20240527094320.2653177-2-jani.nikula@intel.com>
In-Reply-To: <20240527094320.2653177-2-jani.nikula@intel.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 27 May 2024 16:19:35 +0300
Message-ID: <CAHp75Ve0vyOv3KNY_7286wLKd8u6HOvu0Trm17rs46h-BOGsfA@mail.gmail.com>
Subject: Re: [PATCH 2/2] drm: use mem_is_zero() instead of !memchr_inv(s, 0, n)
To: Jani Nikula <jani.nikula@intel.com>
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 intel-gfx@lists.freedesktop.org, Kees Cook <keescook@chromium.org>, 
 Andy Shevchenko <andy@kernel.org>
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

On Mon, May 27, 2024 at 12:43=E2=80=AFPM Jani Nikula <jani.nikula@intel.com=
> wrote:
>
> Use the mem_is_zero() helper where possible.

...

> -       if (memchr_inv(guid, 0, 16) =3D=3D NULL) {
> +       if (mem_is_zero(guid, 16)) {
>                 tmp64 =3D get_jiffies_64();
>                 memcpy(&guid[0], &tmp64, sizeof(u64));
>                 memcpy(&guid[8], &tmp64, sizeof(u64));

What is the type of guid? Shouldn't it be guid_t with the respective
guid_is_null()

...

> -       if (memchr_inv(guid, 0, 16))
> +       if (!mem_is_zero(guid, 16))
>                 return true;

Ditto.

--=20
With Best Regards,
Andy Shevchenko
