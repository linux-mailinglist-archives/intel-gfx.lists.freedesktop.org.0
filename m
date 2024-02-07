Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89ECE84D37F
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Feb 2024 22:11:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E59FC10E761;
	Wed,  7 Feb 2024 21:11:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="KUq7oqn4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com
 [209.85.160.169])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3D0610E761
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Feb 2024 21:11:51 +0000 (UTC)
Received: by mail-qt1-f169.google.com with SMTP id
 d75a77b69052e-42a99dc9085so44661cf.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 07 Feb 2024 13:11:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1707340311; x=1707945111;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=pW28iX6KIVBtvtjzICL/te0QeihY9cawvgUOGVCQrgc=;
 b=KUq7oqn4S+Dq0Cy9/AO6v3LQ9MTpyLnHGq9df0d71XvHGCopB8owDJMDADXBiartIn
 lEcnItxVuzzF44bgSnaDMCVibGAjRLf7cBv60LI98dqrtdhoM0b5oMcdZdkidDhj8fmg
 i/R76dM4xrDqiC9ya2CvyJQBI4ZIVccROvOVP2GksDZJ0XhBKpNWNVILhG+iudJ9oxR+
 MG2/Z7tT7kJY/7ix4CX3XWXEtEN9FrCK4BojEIPJk0RJBNhjdna3Lo4SYfOljum9FV0m
 1AAE7k5heIG8Zb8uQkR0oHimMKMZskD1FQ5jJGh2qmbxRoDnZTbcTaX9UOaxniioz6vU
 Lm/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1707340311; x=1707945111;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=pW28iX6KIVBtvtjzICL/te0QeihY9cawvgUOGVCQrgc=;
 b=c8Ym+UzpUWhHXP4GX5bf7djOCvcOWNk/kVBbk7aHDONh29YpZWf8L6aTUKrAJNaJtn
 l5TItxXJ74s5oQxz4XFjkNU9pvEg1sc6S05UY4+gP7e73q26peP6qpfbzAhMS8bWWKt/
 c7G/q/K2ck690o1yIP0i7CHqJJ0AzqEwP0cf8yHUkGwY1ta1SKUqWzCFxhuuXPM/RCYW
 2lhJLeHk9RsxfcvzzHDB7LlPCvNsfOiRQpA+zAEvDPBs9Vlprpl9KDoBvaQriEOZ4ixO
 Dsk8DWn8/xAezs4qXvkE1ybJiapv9iwEqN14nlXlep8ygM5gpD4WX1GtlTzsefXkjzgP
 +OKQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUJ7TiQyTl8DvL7NVHHdjBTY7WTuT2Ngm+dBOR+qRepDJ9QWPRbyDVF+QSS4qE80KszpZXZ5Z7rGeGRHfUxiNGG+d+58O2zHsIoK/eqx7oa
X-Gm-Message-State: AOJu0YzCePGWbh8Y5ABhPECSgzKSBWDVofhJ2itUyNjO/VcZI+UyJtQS
 oJxzVG3XipFBS1EZl7ZlZbAIMgyshuvVa8yo2Q1iNb8f3krAO6cBIb6RKfh8MiNOSY+ooYjAK3h
 2ylA4pvgL5kAaTSuRG16x0DaYvmKTuKQocNKD
X-Google-Smtp-Source: AGHT+IGjkQ4vwciNuicvZuMpXoICkkqK6RD7xqZv/i6SCSru8J2w2x3R+ElthRxkYJ7ULf9xIwKRFJEMFfdx31dRnTY=
X-Received: by 2002:a05:622a:1987:b0:42c:2706:bad4 with SMTP id
 u7-20020a05622a198700b0042c2706bad4mr251429qtc.27.1707340310654; Wed, 07 Feb
 2024 13:11:50 -0800 (PST)
MIME-Version: 1.0
References: <20240201060437.861155-2-davidgow@google.com>
 <CA+GJov6Swgvc+wrCvW3Ujqh_UW1BSRDrp9ccHUX2CVRjWpe1dQ@mail.gmail.com>
 <878r3wcs7e.fsf@intel.com>
In-Reply-To: <878r3wcs7e.fsf@intel.com>
From: Rae Moar <rmoar@google.com>
Date: Wed, 7 Feb 2024 16:11:38 -0500
Message-ID: <CA+GJov4zrcbiANMgJ5uSQs6Siv0+NAB5big0bec-WWgkhfFJ+Q@mail.gmail.com>
Subject: Re: [PATCH] kunit: device: Unregister the kunit_bus on shutdown
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: David Gow <davidgow@google.com>, Shuah Khan <skhan@linuxfoundation.org>, 
 Matti Vaittinen <mazziesaccount@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Brendan Higgins <brendan.higgins@linux.dev>, Maxime Ripard <mripard@kernel.org>,
 linux-kselftest@vger.kernel.org, kunit-dev@googlegroups.com, 
 linux-kernel@vger.kernel.org, 
 Chaitanya Kumar <chaitanya.kumar.borah@intel.com>,
 Jani <jani.saarinen@intel.com>, 
 Richard Fitzgerald <rf@opensource.cirrus.com>, intel-gfx@lists.freedesktop.org
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

On Wed, Feb 7, 2024 at 8:36=E2=80=AFAM Jani Nikula <jani.nikula@linux.intel=
.com> wrote:
>
> On Fri, 02 Feb 2024, Rae Moar <rmoar@google.com> wrote:
> > On Thu, Feb 1, 2024 at 1:06=E2=80=AFAM David Gow <davidgow@google.com> =
wrote:
> >>
> >> If KUnit is built as a module, and it's unloaded, the kunit_bus is not
> >> unregistered. This causes an error if it's then re-loaded later, as we
> >> try to re-register the bus.
> >>
> >> Unregister the bus and root_device on shutdown, if it looks valid.
> >>
> >> In addition, be more specific about the value of kunit_bus_device. It
> >> is:
> >> - a valid struct device* if the kunit_bus initialised correctly.
> >> - an ERR_PTR if it failed to initialise.
> >> - NULL before initialisation and after shutdown.
> >>
> >> Fixes: d03c720e03bd ("kunit: Add APIs for managing devices")
> >> Signed-off-by: David Gow <davidgow@google.com>
> >
> > Hello,
> >
> > I have tested this with modules and it looks good to me!
> >
> > Thanks!
> > -Rae
> >
> > Reviewed-by: Rae Moar <rmoar@google.com>
>
> Thanks for the patch and review!
>
> Is this on its way to some v6.8-rc's? The regression in -rc1 is hurting
> our CI.

Hello!

This patch has been accepted on the kselftest/kunit-fixes branch
(https://git.kernel.org/pub/scm/linux/kernel/git/shuah/linux-kselftest.git/=
commit/?h=3Dkunit-fixes&id=3D829388b725f8d266ccec32a2f446717d8693eaba)
and is heading towards a future v6.8-rc.

Thanks!
-Rae

>
>
> Thanks,
> Jani.
>
>
> --
> Jani Nikula, Intel
