Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B89FD90B20B
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2024 16:31:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A42C10E3FE;
	Mon, 17 Jun 2024 14:31:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dLqF3NjK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C61E110E3F6
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Jun 2024 14:31:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718634680; x=1750170680;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=mJxMnty4jjd1K+Cbxl6LDQYmuM3JxE6+5lyEZweU1os=;
 b=dLqF3NjKn7+7C49izdBWQMRsiTTyEokecJ1hXCpfyHvGmR8D1q3oA717
 OKz5aiaSCNPKHGUvyueG0DCUmKivdNHO48GdAKT3KsMQBY+zeOLODretc
 r7HpZi3ecez2xL3YqXOPMCJz0YeJwmDF36myzbqXEW1+C+/p0XaLIWjJC
 /vvUqFVaBEJ6iHlrimhSAqduH/oZVZxK1pUA1iPmAWLiL8Z2ww0P5VQm3
 pbnj33LkNnIahzhHWfW2LAWNUE6ikAlqItGeg+LnXP0E5HbtTQFBO2pWv
 1HO8eu5V7aNGpli5zhjEZ+YOUGSCNj2ayndcH58TBKgj2txeDh5wqVlHY A==;
X-CSE-ConnectionGUID: DnuJNk9jQOS1IxibkrOhDA==
X-CSE-MsgGUID: 3bueN+HlRGy2hM5kIYqAkQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11106"; a="15303338"
X-IronPort-AV: E=Sophos;i="6.08,244,1712646000"; d="scan'208";a="15303338"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2024 07:31:19 -0700
X-CSE-ConnectionGUID: xKNsb4iFREyCND3Dl5WQyA==
X-CSE-MsgGUID: mRUfzMG5SZiqR8haRaDjiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,244,1712646000"; d="scan'208";a="41679527"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.85])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2024 07:31:18 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Patchwork <patchwork@emeril.freedesktop.org>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?Q?=E2=9C=97?= Fi.CI.BUILD: failure for drm/i915: make
 struct intel_frontbuffer opaque
In-Reply-To: <171863444158.97967.2137691359892388292@a6498e030952>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1718633874.git.jani.nikula@intel.com>
 <171863444158.97967.2137691359892388292@a6498e030952>
Date: Mon, 17 Jun 2024 17:31:14 +0300
Message-ID: <87le33hc99.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
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

On Mon, 17 Jun 2024, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> =3D=3D Series Details =3D=3D
>
> Series: drm/i915: make struct intel_frontbuffer opaque
> URL   : https://patchwork.freedesktop.org/series/134957/
> State : failure
>
> =3D=3D Summary =3D=3D
>
> Error: make failed
>   CALL    scripts/checksyscalls.sh
>   DESCEND objtool
>   INSTALL libsubcmd_headers
>   CC [M]  drivers/gpu/drm/i915/gem/i915_gem_clflush.o
> In file included from ./include/linux/array_size.h:5,
>                  from ./include/linux/string.h:6,
>                  from ./include/linux/scatterlist.h:5,
>                  from ./include/drm/drm_cache.h:36,
>                  from drivers/gpu/drm/i915/gem/i915_gem_clflush.c:7:
> drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h: In function =E2=
=80=98i915_gem_object_flush_frontbuffer=E2=80=99:
> ./include/linux/rcupdate.h:463:9: error: dereferencing pointer to incompl=
ete type =E2=80=98struct intel_frontbuffer=E2=80=99
>   463 |  typeof(*p) *local =3D (typeof(*p) *__force)READ_ONCE(p); \

Ugh, so rcu requires the complete type even if it's about a pointer?

*sigh*

>       |         ^
> ./include/linux/compiler.h:77:42: note: in definition of macro =E2=80=98u=
nlikely=E2=80=99
>    77 | # define unlikely(x) __builtin_expect(!!(x), 0)
>       |                                          ^
> ./include/linux/rcupdate.h:582:31: note: in expansion of macro =E2=80=98_=
_rcu_access_pointer=E2=80=99
>   582 | #define rcu_access_pointer(p) __rcu_access_pointer((p), __UNIQUE_=
ID(rcu), __rcu)
>       |                               ^~~~~~~~~~~~~~~~~~~~
> drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h:24:15: note: in ex=
pansion of macro =E2=80=98rcu_access_pointer=E2=80=99
>    24 |  if (unlikely(rcu_access_pointer(obj->frontbuffer)))
>       |               ^~~~~~~~~~~~~~~~~~
> drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h: In function =E2=
=80=98i915_gem_object_get_frontbuffer=E2=80=99:
> ./include/linux/rcupdate.h:463:9: error: dereferencing pointer to incompl=
ete type =E2=80=98struct intel_frontbuffer=E2=80=99
>   463 |  typeof(*p) *local =3D (typeof(*p) *__force)READ_ONCE(p); \
>       |         ^
> ./include/linux/compiler.h:76:40: note: in definition of macro =E2=80=98l=
ikely=E2=80=99
>    76 | # define likely(x) __builtin_expect(!!(x), 1)
>       |                                        ^
> ./include/linux/rcupdate.h:582:31: note: in expansion of macro =E2=80=98_=
_rcu_access_pointer=E2=80=99
>   582 | #define rcu_access_pointer(p) __rcu_access_pointer((p), __UNIQUE_=
ID(rcu), __rcu)
>       |                               ^~~~~~~~~~~~~~~~~~~~
> drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h:50:14: note: in ex=
pansion of macro =E2=80=98rcu_access_pointer=E2=80=99
>    50 |  if (likely(!rcu_access_pointer(obj->frontbuffer)))
>       |              ^~~~~~~~~~~~~~~~~~
> make[6]: *** [scripts/Makefile.build:244: drivers/gpu/drm/i915/gem/i915_g=
em_clflush.o] Error 1
> make[5]: *** [scripts/Makefile.build:485: drivers/gpu/drm/i915] Error 2
> make[4]: *** [scripts/Makefile.build:485: drivers/gpu/drm] Error 2
> make[3]: *** [scripts/Makefile.build:485: drivers/gpu] Error 2
> make[2]: *** [scripts/Makefile.build:485: drivers] Error 2
> make[1]: *** [/home/kbuild/kernel/Makefile:1934: .] Error 2
> make: *** [Makefile:240: __sub-make] Error 2
> Build failed, no error log produced
>
>

--=20
Jani Nikula, Intel
