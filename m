Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0969E849BE1
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Feb 2024 14:35:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CDDE10F9A9;
	Mon,  5 Feb 2024 13:34:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="zeWvoRx2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
 [209.85.160.182])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9617310E4F0
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Feb 2024 20:16:18 +0000 (UTC)
Received: by mail-qt1-f182.google.com with SMTP id
 d75a77b69052e-42a88ad0813so51861cf.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 02 Feb 2024 12:16:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1706904977; x=1707509777;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=y/YAw3L55aC5kXJ1OC6qpduxr2eZyNH6Gl/E97WVz/o=;
 b=zeWvoRx2Lgyb1hEmV8DL8duVL2tOdCmZJGpB2MTKC02gj7spkTTKUMS9KRvv95myE8
 rivi6fl1Cd1MlRleu2JLSmqrXSWYgl0GHdVSCeKphigAmNM0Xo0sqP8Vt9gvELn/KFON
 MwTN1Pa0SA3ouMR/Kt2pV06VK8x/9iO2xpfcVG1D9l//KvZx2R4MCxBb7k1husxENyzA
 QJEJxSa13qLaLqla6eFyhvUjONUuRUiIPeczqCFkktRD9Om1Lb09s5+QWTHyq00gUTPc
 43IdSCHnvPqcOSyiDxK/AzBrUvDC7hukhaQIyqXROqiNUo7q/wHRjU+agogxfUjtuLQ+
 EPFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706904977; x=1707509777;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=y/YAw3L55aC5kXJ1OC6qpduxr2eZyNH6Gl/E97WVz/o=;
 b=nOsDpx2jPwScdsjep8Z6fRALFfArd7vy3HQXLHE9G0rr3uoeIcdKWvjsjOZGXT80OI
 sdl055751tlcLoSTR9icexYTPlO6GRVhGmSFqLLTXWR837YHysQMhzVny+iT27f75H+I
 T393BjLcgHOPBKpXmsYo0Ol2EMh8u2garMA3EUbJggQZFm9v2gmS1Ce+fkGzBmiH8J0+
 IDUGXWShh/VpOXqrIcjDAINRgGEm5RHNaUbtxt4hsQbfgafrPK0mZYnvyCVxy0BLAsMp
 mUVTUP2UcxxY1/IIW0/77bXKWTwVQEJfQsDJB3M8yQV2ykhn8V9q8ep8atbyvssnUHLm
 tmww==
X-Gm-Message-State: AOJu0YyU8woONohJ6VYkdFdujlm5qy4Rt0oWoxdwINuYQDmwG8DDbUoP
 49T0pjcUGkvYAZdrzmYbNx6xeyMw6/IRA8sG4nHTTj/m6F69DmD3eH7Sl1HZZWAQKYQlTKRIXF/
 wZRA748EAlB+wXJ1dAgLYjnQxfy8+pVq4Z60m
X-Google-Smtp-Source: AGHT+IGbunbL7fYRGBQ5S8wwMT6ranidv7JKOXh/UXkQZypSu0gtmvvH3y43WGPtcqy6V2DArx+zVQoYmBsKEqIQkhU=
X-Received: by 2002:ac8:6658:0:b0:42a:84cf:1005 with SMTP id
 j24-20020ac86658000000b0042a84cf1005mr6736qtp.20.1706904977310; Fri, 02 Feb
 2024 12:16:17 -0800 (PST)
MIME-Version: 1.0
References: <20240201060437.861155-2-davidgow@google.com>
In-Reply-To: <20240201060437.861155-2-davidgow@google.com>
From: Rae Moar <rmoar@google.com>
Date: Fri, 2 Feb 2024 15:16:04 -0500
Message-ID: <CA+GJov6Swgvc+wrCvW3Ujqh_UW1BSRDrp9ccHUX2CVRjWpe1dQ@mail.gmail.com>
Subject: Re: [PATCH] kunit: device: Unregister the kunit_bus on shutdown
To: David Gow <davidgow@google.com>
Cc: Shuah Khan <skhan@linuxfoundation.org>,
 Matti Vaittinen <mazziesaccount@gmail.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Brendan Higgins <brendan.higgins@linux.dev>, 
 Maxime Ripard <mripard@kernel.org>, linux-kselftest@vger.kernel.org, 
 kunit-dev@googlegroups.com, linux-kernel@vger.kernel.org, 
 Chaitanya Kumar <chaitanya.kumar.borah@intel.com>,
 Jani <jani.saarinen@intel.com>, 
 Richard Fitzgerald <rf@opensource.cirrus.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Mon, 05 Feb 2024 13:34:56 +0000
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

On Thu, Feb 1, 2024 at 1:06=E2=80=AFAM David Gow <davidgow@google.com> wrot=
e:
>
> If KUnit is built as a module, and it's unloaded, the kunit_bus is not
> unregistered. This causes an error if it's then re-loaded later, as we
> try to re-register the bus.
>
> Unregister the bus and root_device on shutdown, if it looks valid.
>
> In addition, be more specific about the value of kunit_bus_device. It
> is:
> - a valid struct device* if the kunit_bus initialised correctly.
> - an ERR_PTR if it failed to initialise.
> - NULL before initialisation and after shutdown.
>
> Fixes: d03c720e03bd ("kunit: Add APIs for managing devices")
> Signed-off-by: David Gow <davidgow@google.com>

Hello,

I have tested this with modules and it looks good to me!

Thanks!
-Rae

Reviewed-by: Rae Moar <rmoar@google.com>

> ---
>
> This will hopefully resolve some of the issues linked to from:
> https://lore.kernel.org/intel-gfx/DM4PR11MB614179CB9C387842D8E8BB40B97C2@=
DM4PR11MB6141.namprd11.prod.outlook.com/
>
> ---
>  lib/kunit/device-impl.h |  2 ++
>  lib/kunit/device.c      | 14 ++++++++++++++
>  lib/kunit/test.c        |  3 +++
>  3 files changed, 19 insertions(+)
>
> diff --git a/lib/kunit/device-impl.h b/lib/kunit/device-impl.h
> index 54bd55836405..5fcd48ff0f36 100644
> --- a/lib/kunit/device-impl.h
> +++ b/lib/kunit/device-impl.h
> @@ -13,5 +13,7 @@
>
>  // For internal use only -- registers the kunit_bus.
>  int kunit_bus_init(void);
> +// For internal use only -- unregisters the kunit_bus.
> +void kunit_bus_shutdown(void);
>
>  #endif //_KUNIT_DEVICE_IMPL_H
> diff --git a/lib/kunit/device.c b/lib/kunit/device.c
> index 074c6dd2e36a..644a38a1f5b1 100644
> --- a/lib/kunit/device.c
> +++ b/lib/kunit/device.c
> @@ -54,6 +54,20 @@ int kunit_bus_init(void)
>         return error;
>  }
>
> +/* Unregister the 'kunit_bus' in case the KUnit module is unloaded. */
> +void kunit_bus_shutdown(void)
> +{
> +       /* Make sure the bus exists before we unregister it. */
> +       if (IS_ERR_OR_NULL(kunit_bus_device))
> +               return;
> +
> +       bus_unregister(&kunit_bus_type);
> +
> +       root_device_unregister(kunit_bus_device);
> +
> +       kunit_bus_device =3D NULL;
> +}
> +
>  /* Release a 'fake' KUnit device. */
>  static void kunit_device_release(struct device *d)
>  {
> diff --git a/lib/kunit/test.c b/lib/kunit/test.c
> index 31a5a992e646..1d1475578515 100644
> --- a/lib/kunit/test.c
> +++ b/lib/kunit/test.c
> @@ -928,6 +928,9 @@ static void __exit kunit_exit(void)
>  #ifdef CONFIG_MODULES
>         unregister_module_notifier(&kunit_mod_nb);
>  #endif
> +
> +       kunit_bus_shutdown();
> +
>         kunit_debugfs_cleanup();
>  }
>  module_exit(kunit_exit);
> --
> 2.43.0.429.g432eaa2c6b-goog
>
