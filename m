Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ACBA90C5D8
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2024 12:07:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 613FD10E616;
	Tue, 18 Jun 2024 10:07:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="b1Opb+E4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com
 [209.85.219.169])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D12FD10E18E
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2024 10:07:45 +0000 (UTC)
Received: by mail-yb1-f169.google.com with SMTP id
 3f1490d57ef6-dfe43dca3bfso5818167276.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2024 03:07:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1718705265; x=1719310065; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=OCx7fOAnUmTX/Xe4ctYyfLYc6JY69uTQO3mrnLIZgkE=;
 b=b1Opb+E4Vu4Y4JgedY8yk3C7uuGBpuruiw4gS55pkz/n+JOpTE29XlBNM2Apn6RW42
 zQqn9YIi2o9BRp4YisEkcrFQ2NGY/ruEQcPb8rdEWL2N79BF72ban/YduAmkerloUH7A
 82JSAOk2s79HlClSolE8zI1KAP0n1qtQwaBH0f58LghjUjTzc3IsO3KgA1v2UTVaxWWR
 hlup8ejy6Vxb5KxpzrlLj8M3ih9wayiXPywXOQAAxez8bYyxeDQB6xN4Kqo+f+pYnCOW
 NQ0nmMdLO2otnQPvl/i88ya4U9UR0ESf+3oA0Bijx3AtDm2+oRfLj70Mn5KhckLMgvxU
 DMPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1718705265; x=1719310065;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=OCx7fOAnUmTX/Xe4ctYyfLYc6JY69uTQO3mrnLIZgkE=;
 b=RYo6n77HVAozn2DcjlOgaa/a+1gS+s1XO21qgwqqOjY4H8/o8spPCGhjNNfCAoIh5r
 A6pl/zj3fc73HmRSHY+D9YKGg3OpdfpqEixaMbYb1eyUyjOeqmHivbf/HfWchSicrF3l
 8ci8T2W5N2dtp1ilEbJOT+rWcnEOaQsTA1kmueUwFZYPgM/kfCSl3CwmqrM1Syie74Ij
 fktsrRqCLFslH4QRXIvN6P/RHEI9/jkb8Kl5gNo5rIvyas5lUkrC/aQETvtyALQ54PW1
 ZE/fTGzIr+O+QIectcVRxzuZKw6W7uJeZD3L/7a0BYpvJ+5oXzglXzQTCTF5u7+LMEvH
 PSGg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVODRwyaXjXPMoWws5e3qLcMyo0Uo9NtsS0/9n41QWnNz9laOQfLL4RWfbUsnZcie6N9yjj9JrtQz4tRhu5iWQrerzH4QS2uoVWRZ646isM
X-Gm-Message-State: AOJu0YyAd5aQpMcOcZTnt9Li2s//XimQLtqG34iptet+eHDJumupZpYY
 zjK+RPcSNi34G3SJ6m1Z2aD45+q9QzJtpvvCviLsD8pQh6KljqFi8vMgoCJYCfL2JJvE5S88ghZ
 HSInSOh0RvSrPPMC826mmL16Rsz/YUEsEYQLVEQ==
X-Google-Smtp-Source: AGHT+IFJ0kiksoEZDocVzYOcTdne8U7N6C+jsZexpeus6Jap6pxdsUb8A3nFZ7pup6bdeGO4XrwkK9/1Lawl6Ll+PGk=
X-Received: by 2002:a25:abe1:0:b0:de4:828:b73c with SMTP id
 3f1490d57ef6-dff154d21d2mr9969203276.54.1718705264631; Tue, 18 Jun 2024
 03:07:44 -0700 (PDT)
MIME-Version: 1.0
References: <20240618030024.500532-1-andrealmeid@igalia.com>
 <20240618030024.500532-3-andrealmeid@igalia.com> <878qz2h9pp.fsf@intel.com>
In-Reply-To: <878qz2h9pp.fsf@intel.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 18 Jun 2024 13:07:33 +0300
Message-ID: <CAA8EJpqM4iaG3PKM5c0Op7Y7c1SRDrOCk_oOnwG8YfdCxC8w6g@mail.gmail.com>
Subject: Re: [PATCH v7 2/9] drm: Support per-plane async flip configuration
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: =?UTF-8?Q?Andr=C3=A9_Almeida?= <andrealmeid@igalia.com>, 
 dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 nouveau@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 kernel-dev@igalia.com, Melissa Wen <mwen@igalia.com>, alexander.deucher@amd.com,
 christian.koenig@amd.com, Simon Ser <contact@emersion.fr>, 
 Pekka Paalanen <ppaalanen@gmail.com>, daniel@ffwll.ch,
 Daniel Stone <daniel@fooishbar.org>, 
 =?UTF-8?B?TWFyZWsgT2zFocOhaw==?= <maraeo@gmail.com>, 
 Dave Airlie <airlied@gmail.com>, ville.syrjala@linux.intel.com, 
 Xaver Hugl <xaver.hugl@gmail.com>, Joshua Ashton <joshua@froggi.es>, 
 =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel.daenzer@mailbox.org>, 
 Sam Ravnborg <sam@ravnborg.org>, Boris Brezillon <bbrezillon@kernel.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>,
 Nicolas Ferre <nicolas.ferre@microchip.com>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Karol Herbst <kherbst@redhat.com>, 
 Lyude Paul <lyude@redhat.com>
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

On Tue, 18 Jun 2024 at 12:38, Jani Nikula <jani.nikula@linux.intel.com> wro=
te:
>
> On Tue, 18 Jun 2024, Andr=C3=A9 Almeida <andrealmeid@igalia.com> wrote:
> > Drivers have different capabilities on what plane types they can or
> > cannot perform async flips. Create a plane::async_flip field so each
> > driver can choose which planes they allow doing async flips.
> >
> > Signed-off-by: Andr=C3=A9 Almeida <andrealmeid@igalia.com>
> > ---
> >  include/drm/drm_plane.h | 5 +++++
> >  1 file changed, 5 insertions(+)
> >
> > diff --git a/include/drm/drm_plane.h b/include/drm/drm_plane.h
> > index 9507542121fa..0bebc72af5c3 100644
> > --- a/include/drm/drm_plane.h
> > +++ b/include/drm/drm_plane.h
> > @@ -786,6 +786,11 @@ struct drm_plane {
> >        * @kmsg_panic: Used to register a panic notifier for this plane
> >        */
> >       struct kmsg_dumper kmsg_panic;
> > +
> > +     /**
> > +      * @async_flip: indicates if a plane can do async flips
> > +      */
>
> When is it okay to set or change the value of this member?
>
> If you don't document it, people will find creative uses for this.

Maybe it's better to have a callback instead of a static field? This
way it becomes clear that it's only relevant at the time of the
atomic_check().

> > +     bool async_flip;
> >  };
> >
> >  #define obj_to_plane(x) container_of(x, struct drm_plane, base)
>
> --
> Jani Nikula, Intel



--=20
With best wishes
Dmitry
