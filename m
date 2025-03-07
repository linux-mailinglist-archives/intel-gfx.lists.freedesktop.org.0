Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA6C4A567CB
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 13:28:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A162710E13F;
	Fri,  7 Mar 2025 12:28:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eDmCmpIT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15BA610E13F
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Mar 2025 12:28:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741350502; x=1772886502;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:subject:from:to:date:message-id;
 bh=QkQGiEOuALFc4dWGTXbaUPqHSb6Ij6COcA8R6SePo5E=;
 b=eDmCmpITMSvh4KZ/8t4o2xT7v1a8RD5DZqQwm+4+DKKdv06joYhv0WPa
 cl8bJwzeGkiCbhnOCKgqwz+AMKzHyPKL6BA3F7o0plAC8+bmbowczNgbx
 kym37JAWyKZWW+DT7vGoy/QEKHSdORLBYgro8WDyFfwLwBy10yA40y40x
 Kjd2dAylo/S745VoPKrYfwNZPx8gjXz9HeHQ2v+8tDZYUOKvf4T+3Qkpd
 I7V7xtVzaNKLXPOF3GxmT1/wnhOFrL2f/YlngYRHvpu5JmxbHjbsPAdMP
 X1hVGZ5Kfn3IQjVqar6xItMFakl7CGl6RqCOZRzdtFvju9fiKekcChxKq g==;
X-CSE-ConnectionGUID: pyioQT0vQvKULtTmR7BnyQ==
X-CSE-MsgGUID: VjyiriBPSAad6HpYxIpW2w==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="53793093"
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="53793093"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 04:28:21 -0800
X-CSE-ConnectionGUID: Z4e0lGnmSd+BO9Fa7v2F4w==
X-CSE-MsgGUID: 3ODNJbX2QRaXnt0gglL7Dg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="119309963"
Received: from dev-409.igk.intel.com (HELO localhost) ([10.211.128.109])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 04:28:19 -0800
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <dt37uuikaae7odjrr2jrpoowt3ctdvcnuxn2lxx3x2vokxzyrx@5bplt56gquq6>
References: <dt37uuikaae7odjrr2jrpoowt3ctdvcnuxn2lxx3x2vokxzyrx@5bplt56gquq6>
Subject: Re: [PATCH v2] i915/gt/selftest_lrc: Disable timestamp test
From: Chris Wilson <chris.p.wilson@linux.intel.com>
To: Andi Shyti <andi.shyti@intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Mikolaj Wasiak <mikolaj.wasiak@intel.com>, intel-gfx@lists.freedesktop.org
Date: Fri, 07 Mar 2025 13:24:35 +0100
Message-ID: <174135027529.786147.7043339079588113022@DEV-409>
User-Agent: alot/0.10
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

s/selftest_lrc/selftests/
Disable lrc_timestamp test

Quoting Mikolaj Wasiak (2025-03-07 13:16:48)
> This test was supposed to show bug in tigerlake and dg2 hardware.
s/supposed/designed/
s/show/isolate a/

> The bug was found and fixed in newer generations.
> Since we won't support any new hardware with this driver, the test
> should now be turned off in the CI to not polute it with random failures
s/polute/pollute/

> on previous hardware.
>=20
> Signed-off-by: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
> ---
> Sorry for the duplicate, I've sent it to wrong mailing list.
>=20
> Fixes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13697

You can keep the fixes in the main portion of the changelog for future
reference.

>=20
> v1 -> v2: Disabled the test instead of removing it,
>                                         Change name from 'remove' to 'dis=
able'
>=20
>  drivers/gpu/drm/i915/gt/selftest_lrc.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i91=
5/gt/selftest_lrc.c
> index 22e750108c5f..419a7cd61b65 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> @@ -3,6 +3,7 @@
>   * Copyright =C2=A9 2018 Intel Corporation
>   */
> =20
> +#include "linux/kconfig.h"

<linux/kconfig.h>

>  #include <linux/prime_numbers.h>
> =20
>  #include "gem/i915_gem_internal.h"
> @@ -858,6 +859,16 @@ static int live_lrc_timestamp(void *arg)
>                 U32_MAX,
>         };
> =20
> +       /*
> +        * This test was created to show existence of hardware bug.
> +        * The bug was found and fixed in further generations but

s/further/future/

> +        * now this test polutes our CI on previous generations.
s/polutes/pollutes/

> +        *
> +        * https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13697
> +        */
> +       if (!IS_ENABLED(CONFIG_DRM_I915_SELFTEST_BROKEN))

We could GRAPHICS_VER(i915) =3D=3D 12 to illustrate the point more if you
want.

Nits notwithstanding,
Reviewed-by: Chris Wilson <chris.p.wilson@linux.intel.com>
-Chris
