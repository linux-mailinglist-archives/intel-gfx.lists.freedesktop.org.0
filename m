Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4270BAEE890
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jun 2025 22:52:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA3E510E00D;
	Mon, 30 Jun 2025 20:52:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="eBcm0c0S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
 [209.85.221.51])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C784910E00D;
 Mon, 30 Jun 2025 20:52:21 +0000 (UTC)
Received: by mail-wr1-f51.google.com with SMTP id
 ffacd0b85a97d-3a536ecbf6fso2865542f8f.2; 
 Mon, 30 Jun 2025 13:52:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1751316740; x=1751921540; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=AVzYd4Tl2gpultj1nN0TR0VicNkFT38l1p0mf0zbhn8=;
 b=eBcm0c0SgF8RQ1E1u1l8kEBeHxKBqB5LVAAvyZwo4SrWcfhG6cto0BeZbH3z8w8tzZ
 bUnsKgCo9K/sG05FUQJLkgUliifDkpUSA4xYEwaZJFsOMi5zKA57LX+ciGmAIWpLqcen
 9VxpzPtVFnWO7bwFOheYhp5Xp+A4LYUuo7ZCzrQBgGtrUeNLkiTNp4Cs0IodbYOxxeWx
 tISYkgs/tNlrRb/VdbOGAE5l9W/wPPJ4jep5ODvH4i+HeLzjIGexONZL6iR7HXyzQQij
 RtpmXzc+BFQEh5LLpY9nGEpV7BlAGXn8IDj+jGipCEvI2vdoccOVrK1Bd8KS3gQwRThq
 IPlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1751316740; x=1751921540;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=AVzYd4Tl2gpultj1nN0TR0VicNkFT38l1p0mf0zbhn8=;
 b=uAlG4YSHgqk/kZp94B4OcCuh/mX+Mq7JHIdTg2ccGm7+TTjgJQV9gjAhmnu3h1rkrw
 LE0S4heLbBVeav+Xu+gcWeQFxzXlP+4+rkVRpNjP11nWY54Y0rHA2XQYoHMyh2W56nMG
 xGWXgYJiTXKELFIgEpWCcb1PHTQzEvJgCyV3U+PLW+sPM+j8qvp55yycxoAxgdz3bBnF
 ch7gATJ2fumA6HRdV1ew2zGeye0K1bxPxoLc9UMn1QKrmGM7Ww0FKxWtrbv7SshRfQKP
 nD1DVxAUmnj3X6NVCJYNi0XhbDJgSQGpwhbfIi7mu6P0QLy7TQQX6RLe462jqYPRrQud
 JqiA==
X-Forwarded-Encrypted: i=1;
 AJvYcCV7yU6s1WuvYGJCJPuSwjCK/KsBM0xrgvBAZhRYYvEGFu++xMda8E8tHL5fZdty0+hYJ9pkNe3ud24=@lists.freedesktop.org,
 AJvYcCVVlXQgfJQ/TBHYr60e1+r1gMtLvfwmrrcjoQOZRIUAvbC1GrPZXLEFCbkVfL5BKjQnczWmlRE+snw=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwOwqbZupAtQGj/5VClPjLFtD+l8+t8GxpwiWtr6uYuXeSov1iC
 h5cN4BMWwf89d5scvPh3RyU2c+u2GnpbOFPLqUjzcaSm87WXDbdFb/Fg
X-Gm-Gg: ASbGncu3q/U7Igc/zty3nKIabt9eEUnp6icsjubcqLYWUMXcjhCNjg/s3hctOpVcYFt
 Rz5wtFG6qZ9dV7H/3wjy1pOVW/GilbI4RwpJt7OVZBlrmylzqNIN2oI/xqG5aBS0uMHEH84wfoA
 Cl+DCpn3223LYOZhPqyrkNpOdSi18nIMWgSdm2lhyXoddRDi1AjbVq4artUZaBIBN2MtzViIHMJ
 eiCmvb4ipe4mGBtKBuQLpMs4eItG8hnWXaCMmGHrTM9ZQZL0Y1MWE/pljiZRg79hCq8AK15zO7N
 csvDHGdVpaTFep9GyPHnqupWxuMWvt+eaPFUM2Wq0ihdobwtVByAPj/P1/0isAcIz6dZhpH+moq
 4WDv9aZSJ83o0/lVubA==
X-Google-Smtp-Source: AGHT+IEFvhQ3DTRLYUvObs/6Q4XMPW+98gFdO8K5H8wccOv0hl+MsyFbeGywTiTBWhgruq8DPrYGvg==
X-Received: by 2002:a05:6000:4404:b0:3a5:2ec5:35ba with SMTP id
 ffacd0b85a97d-3a8ffbd4bc3mr7478685f8f.30.1751316739739; 
 Mon, 30 Jun 2025 13:52:19 -0700 (PDT)
Received: from pumpkin (host-92-21-58-28.as13285.net. [92.21.58.28])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-4538a40766csm147053875e9.32.2025.06.30.13.52.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Jun 2025 13:52:19 -0700 (PDT)
Date: Mon, 30 Jun 2025 21:52:18 +0100
From: David Laight <david.laight.linux@gmail.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: Ville =?UTF-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, Imre Deak
 <imre.deak@intel.com>, Geert Uytterhoeven <geert+renesas@glider.be>, Matt
 Wagantall <mattw@codeaurora.org>, Dejin Zheng <zhengdejin5@gmail.com>,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 18/18] drm/i915/ddi: prefer read_poll_timeout() over
 readx_poll_timeout()
Message-ID: <20250630215218.1aa32a1f@pumpkin>
In-Reply-To: <1b5d73351eda2d86437a597673bd892baf90fafa@intel.com>
References: <cover.1751023767.git.jani.nikula@intel.com>
 <59bcc15dd4debf00ee0c7b430a3b701462ac9de7.1751023767.git.jani.nikula@intel.com>
 <aF6UOCLdO0fGHGA9@intel.com>
 <f922ec0a42855e17228d3f22d7291b389abe2df0@intel.com>
 <aF67cxjlfWiWMx-4@intel.com>
 <1b5d73351eda2d86437a597673bd892baf90fafa@intel.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; arm-unknown-linux-gnueabihf)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

On Fri, 27 Jun 2025 19:26:22 +0300
Jani Nikula <jani.nikula@intel.com> wrote:

> On Fri, 27 Jun 2025, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.c=
om> wrote:
> > On Fri, Jun 27, 2025 at 04:34:23PM +0300, Jani Nikula wrote: =20
> >> Internally the macro has:
> >>=20
> >> #define read_poll_timeout(op, val, cond, sleep_us, timeout_us, \
> >> 				sleep_before_read, args...) \
> >>=20
> >> ...
> >>=20
> >> 		(val) =3D op(args); \
> >>=20
> >> So you do need to provide an lvalue val, and you need to be able to add
> >> () after op. I think GCC allows not passing varargs. IOW you'd need to
> >> implement another macro (which could be used to implement the existing
> >> one, but not the other way round). =20
> >
> > Just get rid of the 'args' and 'val' and it'll work just fine.
> > Then it'll be almost identical to wait_for() (basically just missing the
> > increasing backoff stuff).
> >
> > AFAICS this thing was originally added just for reading a single
> > register and checking some bit/etc, so the name made some sense.
> > But now we're abusing it for all kinds of random things, so even
> > the name no longer makes that much sense. =20
>=20
> Yeah, evolution not intelligent design.
>=20
> > So I think just something like this would work fine for us: =20
>=20
> LGTM, with the _atomic version for completeness.
>=20
> Want to send it to lkml?
>=20
>=20
> BR,
> Jani.
>=20
>=20
> >
> > diff --git a/include/linux/iopoll.h b/include/linux/iopoll.h
> > index 91324c331a4b..9c38fd732028 100644
> > --- a/include/linux/iopoll.h
> > +++ b/include/linux/iopoll.h
> > @@ -14,27 +14,24 @@
> >  #include <linux/io.h>
> > =20
> >  /**
> > - * read_poll_timeout - Periodically poll an address until a condition =
is
> > - *			met or a timeout occurs
> > - * @op: accessor function (takes @args as its arguments)
> > - * @val: Variable to read the value into
> > - * @cond: Break condition (usually involving @val)
> > - * @sleep_us: Maximum time to sleep between reads in us (0 tight-loops=
). Please
> > - *            read usleep_range() function description for details and
> > + * poll_timeout - Periodically poll and perform an operaion until
> > + *                a condition is met or a timeout occurs
> > + *
> > + * @op: Operation
> > + * @cond: Break condition
> > + * @sleep_us: Maximum time to sleep between operations in us (0 tight-=
loops).
> > + *            Please read usleep_range() function description for deta=
ils and
> >   *            limitations.
> >   * @timeout_us: Timeout in us, 0 means never timeout
> > - * @sleep_before_read: if it is true, sleep @sleep_us before read.
> > - * @args: arguments for @op poll
> > + * @sleep_before_read: if it is true, sleep @sleep_us before operation.
> >   *
> >   * When available, you'll probably want to use one of the specialized
> >   * macros defined below rather than this macro directly.
> >   *
> > - * Returns: 0 on success and -ETIMEDOUT upon a timeout. In either
> > - * case, the last read value at @args is stored in @val. Must not
> > + * Returns: 0 on success and -ETIMEDOUT upon a timeout. Must not
> >   * be called from atomic context if sleep_us or timeout_us are used.
> >   */
> > -#define read_poll_timeout(op, val, cond, sleep_us, timeout_us, \
> > -				sleep_before_read, args...) \
> > +#define poll_timeout(op, cond, sleep_us, timeout_us, sleep_before_read=
) \

I might name it poll_timeout_us(...) so that the units are obvious
at the call site.
There are so many different units for timeouts its is worth always
appending _sec, _ms, _us (etc) just to avoid all the silly bugs.

	David

