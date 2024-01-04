Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 787248246C1
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 17:56:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56F8D10E499;
	Thu,  4 Jan 2024 16:56:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA6A710E499;
 Thu,  4 Jan 2024 16:56:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704387396; x=1735923396;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=QPgU4DszC1TXxoDFhhUy9/8f2wmoqpuuVRyK16ykLcU=;
 b=KmrHLdxjv/Umk680RZRj9fme97wMOrAtXCfrntdG2ac5mTtLF/VgX5Z/
 yQKUdHwPWTbeLkna8bJDhZ7cmdhobvglzgOHGe9OAJgpmyXOQKs7Jcbfa
 QYbO87pSlW4PcIIEtxjNc3AtFdw9T7C393pnNjzAbLRsZq1L+O/OqHn/g
 MzSteXRoC0/0g9TI1hjy9IS9hRnwG41xKSMhbMR7h5EBs2zmzTkkIR2sp
 kWy0j7D0gH82SVBymZPRGmLxQyxuRJIf6LUlQXlA8ku+h27JiZ+2ccq5Y
 awVZmqkID71Q3U4M+2FOMlvwTh1s6+M6xCiD4GdeCBWmgMW8LXPsHkTyO w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="400070705"
X-IronPort-AV: E=Sophos;i="6.04,331,1695711600"; d="scan'208";a="400070705"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 08:56:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="850870586"
X-IronPort-AV: E=Sophos;i="6.04,331,1695711600"; d="scan'208";a="850870586"
Received: from pdelarag-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.32])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 08:56:34 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: =?utf-8?Q?Jos=C3=A9?= Roberto de Souza <jose.souza@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v4 2/3] drm/xe: Fix definition of intel_wakeref_t
In-Reply-To: <20240104162411.56085-2-jose.souza@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240104162411.56085-1-jose.souza@intel.com>
 <20240104162411.56085-2-jose.souza@intel.com>
Date: Thu, 04 Jan 2024 18:56:31 +0200
Message-ID: <87a5plyr40.fsf@intel.com>
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

On Thu, 04 Jan 2024, Jos=C3=A9 Roberto de Souza <jose.souza@intel.com> wrot=
e:
> i915 defines it as unsigned long so Xe should do the same to avoid
> compilation warnings:
>
>   CC [M]  drivers/gpu/drm/i915/i915_gem.o
>   CC [M]  drivers/gpu/drm/xe/i915-display/intel_display_power_well.o
> In file included from ./include/drm/drm_mm.h:51,
>                  from drivers/gpu/drm/xe/xe_bo_types.h:11,
>                  from drivers/gpu/drm/xe/xe_bo.h:11,
>                  from ./drivers/gpu/drm/xe/compat-i915-headers/gem/i915_g=
em_object.h:11,
>                  from ./drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h=
:15,
>                  from drivers/gpu/drm/i915/display/intel_display_power.c:=
8:
> drivers/gpu/drm/i915/display/intel_display_power.c: In function =E2=80=98=
print_async_put_domains_state=E2=80=99:
> drivers/gpu/drm/i915/display/intel_display_power.c:408:29: warning: forma=
t =E2=80=98%lu=E2=80=99 expects argument of type =E2=80=98long unsigned int=
=E2=80=99, but argument 5 has type =E2=80=98int=E2=80=99 [-Wformat=3D]
>   408 |         drm_dbg(&i915->drm, "async_put_wakeref %lu\n",
>       |                             ^~~~~~~~~~~~~~~~~~~~~~~~~
>   409 |                 power_domains->async_put_wakeref);
>       |                 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>       |                              |
>       |                              int
> ./include/drm/drm_print.h:410:39: note: in definition of macro =E2=80=98d=
rm_dev_dbg=E2=80=99
>   410 |         __drm_dev_dbg(NULL, dev, cat, fmt, ##__VA_ARGS__)
>       |                                       ^~~
> ./include/drm/drm_print.h:510:33: note: in expansion of macro =E2=80=98dr=
m_dbg_driver=E2=80=99
>   510 | #define drm_dbg(drm, fmt, ...)  drm_dbg_driver(drm, fmt, ##__VA_A=
RGS__)
>       |                                 ^~~~~~~~~~~~~~
> drivers/gpu/drm/i915/display/intel_display_power.c:408:9: note: in expans=
ion of macro =E2=80=98drm_dbg=E2=80=99
>   408 |         drm_dbg(&i915->drm, "async_put_wakeref %lu\n",
>       |         ^~~~~~~
> drivers/gpu/drm/i915/display/intel_display_power.c:408:50: note: format s=
tring is defined here
>   408 |         drm_dbg(&i915->drm, "async_put_wakeref %lu\n",
>       |                                                ~~^
>       |                                                  |
>       |                                                  long unsigned int
>       |                                                %u
>   CC [M]  drivers/gpu/drm/i915/i915_gem_evict.o
>   CC [M]  drivers/gpu/drm/i915/i915_gem_gtt.o
>   CC [M]  drivers/gpu/drm/xe/i915-display/intel_display_trace.o
>   CC [M]  drivers/gpu/drm/xe/i915-display/intel_display_wa.o
>   CC [M]  drivers/gpu/drm/i915/i915_query.o
>
> Fixes: 44e694958b95 ("drm/xe/display: Implement display support")
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Signed-off-by: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>

I think the real issue is that we're trying to print the value of
something that's supposed to be an opaque cookie, and the fix for that
is [1].

However, no harm in syncing the types.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


[1] https://patchwork.freedesktop.org/patch/msgid/20240104164600.783371-1-j=
ani.nikula@intel.com


> ---
>  drivers/gpu/drm/xe/compat-i915-headers/intel_wakeref.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_wakeref.h b/dri=
vers/gpu/drm/xe/compat-i915-headers/intel_wakeref.h
> index 1c5e30cf10caa..ecb1c07077069 100644
> --- a/drivers/gpu/drm/xe/compat-i915-headers/intel_wakeref.h
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_wakeref.h
> @@ -5,4 +5,4 @@
>=20=20
>  #include <linux/types.h>
>=20=20
> -typedef bool intel_wakeref_t;
> +typedef unsigned long intel_wakeref_t;

--=20
Jani Nikula, Intel
